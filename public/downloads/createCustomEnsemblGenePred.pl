#!/usr/bin/env perl

#Note you may need Mozilla::CA to get access to the https request to work
#Or you might try this instead: LWP::Protocol::https

use strict;
use warnings;
use Data::Dumper;
use Getopt::Long;
use Term::ANSIColor qw(:constants);
use JSON;
use HTTP::Request::Common;
use LWP::Simple;

my $count = '';
my $enst_db_file = '';
my $ucsc_pred_file = '';
my $civic_pred_file = '';
my $allow_all = '';
my $canonical_transcripts_file = '';

GetOptions ('count=i'=>\$count, 'enst_db_file=s'=>\$enst_db_file,
            'ucsc_pred_file=s'=>\$ucsc_pred_file, 'civic_pred_file=s'=>\$civic_pred_file,
      	    'allow_all=s'=>\$allow_all, 'canonical_transcripts_file=s'=>\$canonical_transcripts_file);

my $usage=<<INFO;
  Example usage: 
  
  ./createCustomEnsemblGenePred.pl --count=100000 --enst_db_file='transcript.txt.gz' --ucsc_pred_file='Ensembl-v75_build37-hg19_UcscGenePred.ensGene.gz' --civic_pred_file='Ensembl-v75_build37-hg19_UcscGenePred_CIViC-Genes.ensGene' --canonical_transcripts_file='Ensembl-v75_build37_CanonicalTranscripts.txt'

  --count                       Number of CIViC IDs to query (1 .. count). e.g. use 100000 to include all genes  

  --enst_db_file                Simple TSV with (ENST and version) obtained from Ensembl mysql transcript table file (FTP download)
                                The transcript ID and version are expected in the 15th and 16th columns of this file
                                ftp://ftp.ensembl.org/pub/release-75/mysql/homo_sapiens_core_75_37/transcript.txt.gz

  --ucsc_pred_file              Gene prediction file for ensembl transcripts obtained from UCSC table browser
                                The transcript ID is expected to be in the 2nd column of this file
                                The gene symbol is expected to be in the 18th column of this file
                                Simply use the UCSC table browser to export the entire ensGene table 
                                When doing this include 'selected field from primary and related tables'
                                Then join the 'name' and 'value' columns from the table 'ensemblToGeneName'
                                This will give a modified Ensembl gene pred file with HUGO gene names appended

  --allow_all                   Allow all transcripts in the output file, even if not in CIViC

  --canonical_transcripts_file  Mapping file that identifies the Ensembl canonical transcript for each gene (see ensembl_canonical_transcripts_v75.txt)

INFO

unless ($count && -e $enst_db_file && -e $ucsc_pred_file && $civic_pred_file){
  print RED, "\n\nRequired parameter missing or invalid", RESET;
  print GREEN, "\n\n$usage", RESET;
  exit(1);
}

#If provided by the user, build a list of canonical transcripts
my %canonical_transcripts;
print GREEN, "\n\nObtaining list of Ensembl canonical transcripts", RESET;
if ($canonical_transcripts_file){
  die RED, "\n\nCanonical transcripts file not found: $canonical_transcripts_file\n\n", RESET unless (-e $canonical_transcripts_file);
  open(CAN, "$canonical_transcripts_file") || die RED, "\n\nCould not open canonical transcripts file: $canonical_transcripts_file\n\n", RESET;
  while(<CAN>){
    chomp $_;
    my @line = split("\t", $_);
    my $ensg = $line[1];
    my $enst = $line[0];
    $canonical_transcripts{$enst} = $ensg;
  }
  close(CAN);
  my $canonical_transcript_count = keys %canonical_transcripts;
  print GREEN, "\n\tFound $canonical_transcript_count transcripts", RESET;
}

#Get a list of all valid gene names used in the UCSC gene pred file
my %valid_genes;
print GREEN, "\n\nObtaining list of valid gene names from the UCSC gene pred file", RESET;
open(INPRED, "gunzip -c $ucsc_pred_file |") || die RED, "\n\nCould not open gene pred file: $ucsc_pred_file\n\n", RESET;
while(<INPRED>){
  chomp $_;
  my @line = split("\t", $_);
  my $symbol = $line[17];
  $valid_genes{$symbol} = 1;
}
close(INPRED);
my $valid_gene_count = keys %valid_genes;
print GREEN, "\n\tFound $valid_gene_count valid genes", RESET;

#Get gene names from the CIViC API by specifying a range of CIVIC gene ids to query
#Make this more efficient when we have a suitable endpoint
print GREEN, "\n\nQuerying CIViC for genes with variants", RESET;
my $genes = get_civic_genes('-count'=>$count, '-valid_genes'=>\%valid_genes);
my $gene_count = keys %{$genes};
print GREEN, "\n\tFound $gene_count genes with variants in CIViC (based on id range of 1 - $count)", RESET;

#Parse the Ensembl transcript table and obtain transcript version numbers for all Ensembl transcripts
print GREEN, "\n\nParsing Ensembl transcript table file to obtain transcript version numbers", RESET;
my %versions;
open(VERSIONS, "gunzip -c $enst_db_file |") || die RED, "\n\nCould not open enst_db file: $enst_db_file\n\n", RESET;
while(<VERSIONS>){
  chomp $_;
  my @line = split("\t", $_);
  my $enst = $line[14];
  my $version = $line[15];
  $versions{$enst} = $version;
}
close(VERSIONS);
my $version_count = keys %versions;
print GREEN, "\n\tObtained version information for $version_count ensembl transcripts", RESET;

#Create a new gene pred file based on a UCSC table browser query to include only the genes with CIViC variants
#Modify the gene pred file to use custom Ensembl transcript IDs with version info appended
print GREEN, "\n\nCreating a custom gene pred file for Ensembl transcripts with variants in CIViC", RESET;
open(OUTPRED, ">$civic_pred_file") || die RED, "\n\nCould not open output gene pred file: $civic_pred_file\n\n";
open(INPRED, "gunzip -c $ucsc_pred_file |") || die RED, "\n\nCould not open gene pred file: $ucsc_pred_file\n\n", RESET;
while(<INPRED>){
  chomp $_;
  my @line = split("\t", $_);
  my @pred_line = @line[0..15];

  if ($_ =~ /^\#/){
    my $string = join("\t", @pred_line);
    print OUTPRED "$string\n";
    next;
  }
  my $enst = $line[1];
  my $symbol = $line[17];

  #Skip all entries that do not match a CIVIC gene
  unless ($allow_all){
    next unless $genes->{$symbol};
  }

  #Append ensembl version info to the enst id
  #Also create a more useful gene name that shows both the symbol and ENST ID
  if ($versions{$enst}){
    my $enst_version = $enst . "." . $versions{$enst}. ".v75"; 
    $pred_line[1] = $enst_version;
    my $enst_name = $symbol . "_" . $enst_version;
    $pred_line[12] = $enst_name;

    #Append a marking for Ensembl canonical trasnscripts where possible
    my $enst_ver = $enst . "." . $versions{$enst};
    if ($canonical_transcripts{$enst_ver}){
      my $marker = "***";
      $pred_line[12] = $marker . $enst_name . $marker;
    }
  }

  my $string = join("\t", @pred_line);
  print OUTPRED "$string\n";
}
close(INPRED);
close(OUTPRED);

print GREEN, "\n\nNew gene pred file created: $civic_pred_file\n\n", RESET;

exit;


sub get_civic_genes{
  my %args = @_;
  my $count = $args{'-count'};
  my $valid_genes = $args{'-valid_genes'};

  my %genes;
  my $domain = 'https://civic.genome.wustl.edu';
  my $api_path = '/api/genes';
  my $url = $domain . $api_path . "?count=$count";
  my @decoded = @{from_json(get($url))};
  foreach my $entry (sort {$a <=> $b} @decoded){
    my $id = $entry->{'id'};
    my $name = $entry->{'name'};
    my @variants = @{$entry->{'variants'}};
    my $variant_count = scalar @variants;
    if (defined($name) && $variant_count > 0){
      $genes{$name} = $variant_count;
      
      #Grab fusion variants
      foreach my $var (@variants){
        my $var_name = $var->{'name'};
        if ($var_name =~ /^(\S+)\-(\S+)/){
          if ($valid_genes->{$1}){
            $genes{$1} = 1 unless defined($genes{$1});
          }
          if ($valid_genes->{$2}){
            $genes{$2} = 1 unless defined($genes{$2});
          }
        }
      }
    }
  }
  return \%genes;
}


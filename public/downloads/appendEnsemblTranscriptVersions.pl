#!/usr/bin/env perl

use strict;
use warnings;

use Getopt::Long;
use Term::ANSIColor qw(:constants);

my $versions_file = '';
my $gene_pred_file = '';

GetOptions ('versions_file=s'=>\$versions_file, 'gene_pred_file=s'=>\$gene_pred_file);

my $usage=<<INFO;
  Example usage: 
  
  appendEnsemblTranscriptVersions.pl --versions_file='transcript.txt' --gene_pred_file='Ensembl-v75_build37-hg19_UcscGenePred_CIViC-Genes.ensGene'

  --versions_file   Simple TSV with (ENST and version) obtained from Ensembl mysql transcript table file (FTP download)
                    The transcript ID and version are expected in the 15th and 16th columns of this file
                    ftp://ftp.ensembl.org/pub/release-75/mysql/homo_sapiens_core_75_37/transcript.txt.gz

  --gene_pred_file  Gene prediction file for ensembl transcripts obtained from UCSC table browser
                    The transcript ID is expected to be in the 2nd column of this file
                    Simply use the UCSC table browser to export the entire ensGene table 
                    When doing this include 'all fields from selected table'

INFO

unless (-e $versions_file && -e $gene_pred_file){
  print RED, "\n\nRequired parameter missing or invalid", RESET;
  print GREEN, "\n\n$usage", RESET;
  exit(1);
}

my %versions;
open(VERSIONS, "$versions_file") || die RED, "\n\nCould not open versions file: $versions_file\n\n", RESET;
while(<VERSIONS>){
  chomp $_;
  my @line = split("\t", $_);
  my $enst = $line[14];
  my $version = $line[15];
  $versions{$enst} = $version;
}
close(VERSIONS);

open(PRED, "$gene_pred_file") || die RED, "\n\nCould not open gene pred file: $gene_pred_file\n\n", RESET;
while(<PRED>){
  chomp $_;
  if ($_ =~ /^\#/){
    print "$_\n";
    next;
  }
  my @line = split("\t", $_);
  my $enst = $line[1];
  if ($versions{$enst}){
     $line[1] = $enst . "." . $versions{$enst}. ".v75";
  }
  my $string = join("\t", @line);
  print "$string\n";

}
close(PRED);

exit;


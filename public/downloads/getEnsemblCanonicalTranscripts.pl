#!/usr/bin/env perl

#Basically followed the instructions here to get this to work:
#https://groups.google.com/forum/#!topic/biomart-users/skO4zgqzGBA

use strict;
use warnings;
 
use lib "$ENV{HOME}/src/bioperl-1.6.1";
use lib "$ENV{HOME}/git/ensembl_v75_api/modules";

use Bio::EnsEMBL::Registry;

my $reg = "Bio::EnsEMBL::Registry";
 
$reg->load_registry_from_db(
   -host => 'ensembldb.ensembl.org',
   -user => 'anonymous',
   -dbname => 'homo_sapiens_core_75_37'
);
 
open (OUTFILE, ">ensembl_canonical_transcripts_v75.txt");

my $gene_adaptor = $reg->get_adaptor('human', 'core', 'gene');
#my @genes;
#push (@genes, $gene_adaptor->fetch_by_display_label('EGFR'));
my @genes = @{$gene_adaptor->fetch_all};

while(my $gene = shift @genes) {
  my $canonical_t_id = $gene->canonical_transcript->stable_id;
  my $canonical_t_version = $gene->canonical_transcript->version;
  my $gid = $gene->stable_id;
  my $symbol = $gene->external_name;
  my $result = "$canonical_t_id"."."."$canonical_t_version\t$gid\t$symbol";
  print (OUTFILE $result, "\n");
  print $result, "\n";
}

exit;

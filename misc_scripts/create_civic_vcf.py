from civicpy import civic
from civicpy.exports import VCFWriter
import argparse

parser = argparse.ArgumentParser(description='Create CIViC VCF')
parser.add_argument('vcf_path')
args = parser.parse_args()

with open(args.vcf_path, "w") as fh:
    writer = VCFWriter(fh)
    for variant in civic.get_all_variants():
        if variant.coordinates.chromosome and variant.coordinates.start and variant.coordinates.reference_bases and variant.coordinates.variant_bases:
            try:
                writer.addrecord(variant)
            except (ValueError,NotImplementedError):
                pass
    writer.writerecords()

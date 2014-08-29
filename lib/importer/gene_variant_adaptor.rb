module Importer
  class GeneVariantAdaptor
    def valid_row?(row)
      row['entrez_id']
    end

    def create_entities_for_row(row)
      gene = EntityMaps::Gene.get_entity_from_row(row)
      make_category(gene, row)
      make_event(gene, row)
      make_protein_motifs(gene, row)
      make_protein_function(gene, row)
      gene.save
    end

    private
    def make_category(gene, row)
      category = EntityMaps::Category.get_entity_from_row(row)
      category_gene = EntityMaps::CategoryGene.get_entity_from_row(row, true)

      category_gene.gene = gene
      category_gene.category = category

      category.save
      category_gene.save
    end

    def make_event(gene, row)
      event = EntityMaps::Event.get_entity_from_row(row)
      event.gene = gene
      event.save
    end

    def make_pathway(gene, row)
      pathway = EntityMaps::Pathway.get_entity_from_row(row)
      gene_pathway = EntityMaps::GenePathway.get_entity_from_row(row, true)

      gene_pathway.gene = gene
      gene_pathway.pathway = pathway

      pathway.save
      gene_pathway.save
    end

    def make_protein_motifs(gene, row)
      protein_motifs = EntityMaps::ProteinMotif.get_entity_from_row(row)
      protein_motifs.each do |protein_motif|
        protein_motif.save
        gene_protein_motif = EntityMaps::GeneProteinMotif.get_entity_from_row(row, true)
        gene_protein_motif.gene = gene
        gene_protein_motif.protein_motif = protein_motif
        gene_protein_motif.save
      end
    end

    def make_protein_function(gene, row)
      protein_function = EntityMaps::ProteinFunction.get_entity_from_row(row)
      gene_protein_function = EntityMaps::GeneProteinFunction.get_entity_from_row(row, true)
      gene_protein_function.gene = gene
      gene_protein_function.protein_function = protein_function

      protein_function.save
      gene_protein_function.save
    end
  end
end

#where do these go?
#mutation_biology	type_citation	treatments

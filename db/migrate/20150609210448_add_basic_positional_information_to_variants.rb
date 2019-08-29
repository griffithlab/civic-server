class AddBasicPositionalInformationToVariants < ActiveRecord::Migration[4.2]
  def change
    add_column :variants, :genome_build, :text
    add_column :variants, :chromosome, :text
    add_column :variants, :start, :text
    add_column :variants, :stop, :text
    add_column :variants, :reference_bases, :text
    add_column :variants, :variant_bases, :text
    add_column :variants, :representative_transcript, :text

    add_column :variants, :chromosome2, :text
    add_column :variants, :start2, :text
    add_column :variants, :stop2, :text
  end
end

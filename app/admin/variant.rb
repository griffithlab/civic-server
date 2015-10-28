ActiveAdmin.register Variant do
  menu :priority => 4
  permit_params :name, :description, :genome_build, :chromosome, :start, :stop, :reference_bases, :variant_bases, :representative_transcript, :chromosome2, :start2, :stop2, :reference_build, :representative_transcript2, :ensembl_version

  config.sort_order = 'updated_at_desc'

  filter :gene, as: :select, collection: ->(){ Gene.order(:name).all }
  filter :name
  filter :description
  filter :chromosome, as: :select, collection: ->() { Variant.uniq.pluck(:chromosome).compact.sort }
  filter :reference_build, as: :select, collection: ->() { Variant.reference_builds }

  controller do
    def scoped_collection
      resource_class.includes(:gene)
    end

    def destroy
      obj = resource_class.find_by!(id: params[:id])
      obj.soft_delete!
      redirect_to admin_variants_path, notice: 'Deleted'
    end
  end

  batch_action :destroy do |ids|
    resource_class.find(ids).each do |obj|
      obj.deleted = true
      obj.save
    end
    redirect_to admin_variants_path, notice: 'Deleted'
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name
      f.input :description
      f.input :gene
      f.input :chromosome, as: :string
      f.input :start, as: :string
      f.input :stop, as: :string
      f.input :reference_build, as: :select, collection: Variant.reference_builds.keys
      f.input :reference_bases, as: :string
      f.input :variant_bases, as: :string
      f.input :representative_transcript, as: :string
      f.input :ensembl_version, as: :string
      f.input :chromosome2, as: :string
      f.input :start2, as: :string
      f.input :stop2, as: :string
      f.input :representative_transcript2, as: :string
      f.input :ensembl_version, as: :string
    end
    f.actions
  end

  index do
    selectable_column
    column :gene
    column :name
    column :description
    column :updated_at
    column :created_at
    column :chromosome
    column :start
    column :stop
    column :reference_bases
    column :variant_bases
    column :representative_transcript
    column :reference_build
    actions
  end

  show do |f|
    attributes_table do
      row :gene
      row :name
      row :description
      row :updated_at
      row :created_at
      row :reference_build
      row :ensembl_version
      row :chromosome
      row :start
      row :stop
      row :reference_bases
      row :variant_bases
      row :representative_transcript
      row :chromosome2
      row :start2
      row :stop2
      row :representative_transcript2
    end
  end
end

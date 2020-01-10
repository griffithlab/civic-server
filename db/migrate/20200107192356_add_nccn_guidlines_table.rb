class AddNccnGuidlinesTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :assertions, :nccn_guideline, :nccn_guideline_old
    create_table :nccn_guidelines do |t|
      t.text :name, null: false
      t.timestamp
    end
    add_reference :assertions, :nccn_guideline, index: true, foreign_key: true

    NccnGuideline.reset_column_information
    NccnGuideline.create(:name => 'Acute Lymphoblastic Leukemia')
    NccnGuideline.create(:name => 'Acute Myeloid Leukemia')
    NccnGuideline.create(:name => 'Anal Carcinoma')
    NccnGuideline.create(:name => 'Bladder Cancer')
    NccnGuideline.create(:name => 'Bone Cancer')
    NccnGuideline.create(:name => 'Breast Cancer')
    NccnGuideline.create(:name => 'Central Nervous System Cancers')
    NccnGuideline.create(:name => 'Cervical Cancer')
    NccnGuideline.create(:name => 'Chronic Lymphocytic Leukemia/Small Lymphocytic Lymphoma')
    NccnGuideline.create(:name => 'Chronic Myeloid Leukemia')
    NccnGuideline.create(:name => 'Colon/Rectal Cancer')
    NccnGuideline.create(:name => 'Colon Cancer')
    NccnGuideline.create(:name => 'Rectal Cancer')
    NccnGuideline.create(:name => 'Esophageal and Esophagogastric Junction Cancers')
    NccnGuideline.create(:name => 'Gastric Cancer')
    NccnGuideline.create(:name => 'Hairy Cell Leukemia')
    NccnGuideline.create(:name => 'Head and Neck Cancers')
    NccnGuideline.create(:name => 'Hepatobiliary Cancers')
    NccnGuideline.create(:name => 'Hodgkin Lymphoma')
    NccnGuideline.create(:name => 'Kidney Cancer')
    NccnGuideline.create(:name => 'Malignant Pleural Mesothelioma')
    NccnGuideline.create(:name => 'Melanoma')
    NccnGuideline.create(:name => 'Multiple Myeloma/Other Plasma Cell Neoplasms')
    NccnGuideline.create(:name => 'Multiple Myeloma')
    NccnGuideline.create(:name => 'Systemic Light Chain Amyloidosis')
    NccnGuideline.create(:name => "Waldenström's Macroglobulinemia / Lymphoplasmacytic Lymphoma")
    NccnGuideline.create(:name => 'Myelodysplastic Syndromes')
    NccnGuideline.create(:name => 'Myeloproliferative Neoplasms')
    NccnGuideline.create(:name => 'Neuroendocrine Tumors')
    NccnGuideline.create(:name => "Non-Hodgkin's Lymphomas")
    NccnGuideline.create(:name => 'B-Cell Lymphomas')
    NccnGuideline.create(:name => 'Primary Cutaneous B-Cell Lymphomas')
    NccnGuideline.create(:name => 'T-Cell Lymphomas')
    NccnGuideline.create(:name => 'Non-Melanoma Skin Cancers')
    NccnGuideline.create(:name => 'Basal Cell Skin Cancer')
    NccnGuideline.create(:name => 'Dermatofibrosarcoma Protuberans')
    NccnGuideline.create(:name => 'Merkel Cell Carcinoma')
    NccnGuideline.create(:name => 'Squamous Cell Skin Cancer')
    NccnGuideline.create(:name => 'Non-Small Cell Lung Cancer')
    NccnGuideline.create(:name => 'Occult Primary')
    NccnGuideline.create(:name => 'Ovarian Cancer')
    NccnGuideline.create(:name => 'Pancreatic Adenocarcinoma')
    NccnGuideline.create(:name => 'Penile Cancer')
    NccnGuideline.create(:name => 'Prostate Cancer')
    NccnGuideline.create(:name => 'Small Cell Lung Cancer')
    NccnGuideline.create(:name => 'Soft Tissue Sarcoma')
    NccnGuideline.create(:name => 'Testicular Cancer')
    NccnGuideline.create(:name => 'Thymomas and Thymic Carcinomas')
    NccnGuideline.create(:name => 'Thyroid Carcinoma')
    NccnGuideline.create(:name => 'Uterine Neoplasms')
    NccnGuideline.create(:name => 'Vulvar Cancer')

    Assertion.where.not(nccn_guideline_old: nil).each do |a|
      a.nccn_guideline = NccnGuideline.find_by(name: a.nccn_guideline_old)
      a.save
    end
  end
end

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY users (id, email, name, url, username, created_at, updated_at, orcid) FROM stdin;
\.


--
-- Data for Name: audits; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY audits (id, auditable_id, auditable_type, associated_id, associated_type, user_id, user_type, username, action, audited_changes, version, comment, remote_address, request_uuid, created_at) FROM stdin;
1	1	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 238\nname: ALK\ndescription: ALK amplifications, fusions and mutations have been shown to be driving\n  events in non-small cell lung cancer. While crizontinib has demonstrated efficacy\n  in treating the amplification, mutations in ALK have been shown to confer resistance\n  to current tyrosine kinase inhibitors. Second-generation TKI's have seen varied\n  success in treating these resistant cases, and the HSP90 inhibitor 17-AAG has been\n  shown to be cytostatic in ALK-altered cell lines.\nofficial_name: anaplastic lymphoma receptor tyrosine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	12a4b0f4-214c-44bd-888f-b89f63f5008d	2015-06-02 22:28:52.993736
2	2	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 207\nname: AKT1\ndescription: AKT1, also referred to as protein kinase B, is a known oncogene. AKT\n  activation relies on the PI3K pathway, and is recognized as a critical node in the\n  pathway. The E17 hotspot is the most characterized of AKT1 mutations, and has been\n  shown to result in activation of the protein. Mutations in AKT1 have also been shown\n  to confer resistance to allosteric kinase inhibitors in vitro.\nofficial_name: v-akt murine thymoma viral oncogene homolog 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	89ff738c-e861-4d95-bce0-617eff52f4eb	2015-06-02 22:28:53.393872
3	3	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 369\nname: ARAF\ndescription: ARAF has recently become increasingly considered for its oncogenic potential.\n  Its potential as a target for informing clinical action was demonstrated by a single\n  case of advanced lung adenocarcinoma harboring an S214C mutation that, when treated\n  with sorafenib, acheived near-complete clinical remission. This finding has brought\n  new focus on ARAF as a marker that should be assayed for in cancer treatment.\nofficial_name: A-Raf proto-oncogene, serine/threonine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	7717a076-d9a1-4126-871d-26ad66035b7f	2015-06-02 22:28:53.716093
4	4	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 25\nname: ABL1\ndescription: ABL1 is most relevant to cancer in its role in the BCR-ABL fusion protein\n  that has become a signature of chronic myeloid leukemia (CML). Cells harboring this\n  fusion have shown sensitivity to imatinib, greatly improving the prognostic outlook\n  of the disease. However, additional mutations in ABL1 have been shown to confer\n  resistance to imatinib. In these resistance cases, second-generation tyrosine kinase\n  inhibitors such as dasatinib and nilotinib have exhibited some efficacy and are\n  currently undergoing clinical trials for treating acquired resistance in CML.\nofficial_name: ABL proto-oncogene 1, non-receptor tyrosine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	3157c294-753e-450f-99d0-02d446ac591b	2015-06-02 22:28:53.972699
5	5	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 673\nname: BRAF\ndescription: BRAF mutations are found to be recurrent in many cancer types. Of these,\n  the mutation of valine 600 to glutamic acid (V600E) is the most prevalent. V600E\n  has been determined to be an activating mutation, and cells that harbor it, along\n  with other V600 mutations are sensitive to the BRAF inhibitor dabrafenib. It is\n  also common to use MEK inhibition as a substitute for BRAF inhibitors, and the MEK\n  inhibitor trametinib has seen some success in BRAF mutant melanomas. BRAF mutations\n  have also been correlated with poor prognosis in many cancer types, although there\n  is at least one study that questions this conclusion in papillary thyroid cancer.\nofficial_name: B-Raf proto-oncogene, serine/threonine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	8f4f4110-290a-451d-b045-f153f55f51c2	2015-06-02 22:28:54.311404
6	6	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 672\nname: BRCA1\ndescription: BRCA1 mutations in the germline have become a hallmark for hereditary\n  breast and ovarian cancers. Variants that have been demonstrated to reduce the function\n  of the protein have been shown to increase risk for these cancers, as well as prostate\n  and pancreatic cancer. These findings have been the impetus for the increased popularity\n  of genetic testing of healthy indivudals to assess risk.\nofficial_name: breast cancer 1, early onset\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	d23fd2e0-60ca-416e-94ed-324872dd76a5	2015-06-02 22:28:54.690391
7	7	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 675\nname: BRCA2\ndescription: BRCA2 mutations in the germline have become a hallmark for hereditary\n  breast and ovarian cancers. Variants that have been demonstrated to reduce the function\n  of the protein have been shown to increase risk for these cancers, as well as prostate\n  and pancreatic cancer. These findings have been the impetus for the increased popularity\n  of genetic testing of healthy indivudals to assess risk.\nofficial_name: breast cancer 2, early onset\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	d98c89c5-b73e-4a1c-85e4-c6c04857ca4c	2015-06-02 22:28:55.000453
8	8	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 595\nname: CCND1\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, ranging from genomic amplification to changes in promoter methylation.\n  While Cyclin D2 has only been found to be significantly deregulated in glioma, Cyclin\n  D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been\n  shown to lead to poorer outcomes in a number of studies, and currently there are\n  no FDA-approved targeted therapies.\nofficial_name: cyclin D1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	1b75115c-57fb-4ad5-8d64-a1c3309fd5c4	2015-06-02 22:28:55.36763
9	9	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 894\nname: CCND2\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, ranging from genomic amplification to changes in promoter methylation.\n  While Cyclin D2 has only been found to be significantly deregulated in glioma, Cyclin\n  D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been\n  shown to lead to poorer outcomes in a number of studies, and currently there are\n  no FDA-approved targeted therapies.\nofficial_name: cyclin D2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	458aae36-7be7-4020-bc9a-979d714d887b	2015-06-02 22:28:55.77158
10	10	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 896\nname: CCND3\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, ranging from genomic amplification to changes in promoter methylation.\n  Cyclin D3 loss has been reported in T-ALL, a seemingly unique trend when compared\n  to the amplifcations and overexpressions of the other cyclin D's. In a mouse study,\n  the targeted therapeutic palbociclib significantly increased the median survival\n  of the cyclin D3 knockouts.\nofficial_name: cyclin D3\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	4f8dc27f-ecba-4fa2-9a24-c6384793b1fd	2015-06-02 22:28:56.17867
11	11	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 898\nname: CCNE1\ndescription: Cyclin E, while currenly not as widely implicated as its cyclin D counterparts,\n  has been implicated in various carcinomas, including breast, gastric, stomach and\n  colorectal. High levels of cyclin E, either by gene amplification or overexpression,\n  have been shown to lead to poorer prognosis in gastic carcinoma, and these measurements\n  are correlated with later stage disease. In lung cancer, neoplastic cells with higher\n  levels of the cyclin E/CDK2 complex are more radiosensitive than their more lowly\n  expressed counterparts.\nofficial_name: cyclin E1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	a6b4c660-c845-4acb-be80-f4d8c50b29bc	2015-06-02 22:28:56.880336
12	12	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1021\nname: CDK6\ndescription: CDK6, along with its partner CDK4, are key players in cell cycle progression.\n  The complex has been implicated in a number of cancer types, and is the focus of\n  therapeutic research and development. One targeted therapy for CDK inhibition is\n  palbociclib, which may slow the growth of advanced stage breast cancers. It has\n  also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors\n  to PI3K inhibitors.\nofficial_name: cyclin-dependent kinase 6\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	675e3e00-a912-4bff-b327-60f3027a90a1	2015-06-02 22:28:57.131998
13	13	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1019\nname: CDK4\ndescription: CDK4, along with its partner CDK6, are key players in cell cycle progression.\n  The complex has been implicated in a number of cancer types, and is the focus of\n  therapeutic research and development. One targeted therapy for CDK inhibition is\n  palbociclib, which may slow the growth of advanced stage breast cancers. It has\n  also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors\n  to PI3K inhibitors.\nofficial_name: cyclin-dependent kinase 4\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	d5dc0571-2096-4af6-b77b-d83f38ade677	2015-06-02 22:28:57.462864
14	14	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1029\nname: CDKN2A\ndescription: CDKN2A loss has been shown to be a significant event in a number of cancer\n  types. While no targeted therapeutic has been engaged in clinical trials, the prognostic\n  impact has been studied by a number of meta-analyses. One mechanism by which loss\n  of CDKN2A can occur is by hypermethylation of the promoter region for the gene.\n  However, the prognostic impact of promoter hypermethylation has been relatively\n  ambiguous. Many studies have suggesting poorer prognostic outcome for patients with\n  hypermethylation in colorectal, liver, and younger lung cancer patients. This being\n  said, there is still research to be done before this becomes a widely-accepted prognostic\n  indicator.\nofficial_name: cyclin-dependent kinase inhibitor 2A\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	9cd6b41a-25fd-4425-9a6e-2610d13bd31d	2015-06-02 22:28:57.797197
15	15	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1050\nname: CEBPA\ndescription: AML with mutated CEBPA' is a provisional entity in the WHO classification\n  of acute myeloid leukemia (AML) and is recommended to be tested for in patients\n  with AML. CEBPA mutations are particularly associated with cytogenetically normal\n  AML (CN-AML). CEBPA is an intronless gene that is required for granulocyte formation\n  in mice. N-terminal nonsense mutations result in a dominant negative C/EBP-alpha\n  protein while C-terminal mutations reduce the DNA-binding potential of this transcription\n  factor. CEBPA mutations are associated with a favorable prognosis, however, NPM1\n  and FLT3 mutations should also be assessed in CN-AML patients as concurrent mutations\n  may have prognostic implications.\nofficial_name: CCAAT/enhancer binding protein (C/EBP), alpha\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	ead93465-1f7c-475c-a387-cb0f09e8e3cb	2015-06-02 22:28:58.075233
16	16	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3337\nname: DNAJB1\ndescription: DNAJB1 works upstream of MDM2, stabilizing the complex and facilitating\n  p53 turnover. In hepatocellular fibrolamellar carcinoma (FL-HCC), the fusion DNAJB1\n  to PRKACA is suggested to be a diagnostic marker for this rare subtype of HCC. In\n  one study, this fusion was observed in 15/15 FL-HCC cases examined and functional\n  studies found that the fusion retained kinase activity.\nofficial_name: DnaJ (Hsp40) homolog, subfamily B, member 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	fff3c665-6ae4-40e7-8f50-f499f5ffbd9d	2015-06-02 22:28:58.454817
17	17	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5566\nname: PRKACA\ndescription: PRKACA has been studied in breast cancer and has been found to mediate\n  resistance to HER2 targeted therapies. It has also been found to contain a mutation\n  hotspot that contributes to neoplastic behavior in neuroendocrine cancers. In hepatocellular\n  fibrolamellar carcinoma (FL-HCC), the fusion DNAJB1 to PRKACA is suggested to be\n  a diagnostic marker for this rare subtype of HCC. In one study, this fusion was\n  observed in 15/15 FL-HCC cases examined and functional studies found that the fusion\n  retained kinase activity.\nofficial_name: protein kinase, cAMP-dependent, catalytic, alpha\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	b9e3c2c2-94c8-4dba-b73b-ec0f2e38ea44	2015-06-02 22:28:58.720377
18	18	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1788\nname: DNMT3A\ndescription: DNMT3A is one of several epigenetic modifiers identified as recurrently\n  mutated in acute myeloid leukemia (AML). DNMT3A mutations are associated with cytogenetically\n  normal AML. In vitro experiments indicate that the R882H mutation acts in a dominant\n  negative manner to disrupt the de novo methyltransferase activity of wildtype homotetramers.\n  AML patient bone marrow harboring R882 mutations were similarly demonstrated to\n  be hypomethylated compared to patients with wildtype DNMT3A. These studies also\n  indicated that non-R882 DNMT3A mutations may act in a functionally distinct manner\n  from R882 mutations. Alternative mechanisms indicate independent prognostic outcomes\n  and treatment protocols may need to be considered for these two classes of DNMT3A\n  mutations.\nofficial_name: DNA (cytosine-5-)-methyltransferase 3 alpha\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	a4ad921a-4a67-4f68-931e-559a5f398099	2015-06-02 22:28:58.974017
19	19	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1956\nname: EGFR\ndescription: EGFR is widely recognized for its importance in cancer. Amplification\n  and mutations have been shown to be driving events in many cancer types. Its role\n  in non-small cell lung cancer has spurred many research and drug development efforts.\n  Tyrosine kinase inhibitors have shown efficacy in EGFR amplfied tumors, most notably\n  gefitinib and erlotinib. Mutations in EGFR have been shown to confer resistance\n  to these drugs, particularly the variant T790M, which has been functionally characterized\n  as a resistance marker for both of these drugs. The later generation TKI's have\n  seen some success in treating these resistant cases, and targeted sequencing of\n  the EGFR locus has become a common practice in non-small cell lung cancer.\nofficial_name: epidermal growth factor receptor\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	f15f027a-3d08-4b52-a636-f1fb9b69966f	2015-06-02 22:28:59.374226
52	52	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4921\nname: DDR2\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: discoidin domain receptor tyrosine kinase 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	cdf4d6f4-ffba-41c4-bd32-d5dd393b8006	2015-06-02 22:29:10.194538
20	20	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2064\nname: ERBB2\ndescription: ERBB2, commonly referred to as HER2, is amplified in HER2-positive breast\n  cancer, and is treated in a separate manner than the other subtypes of breast cancer.\n  Apart from being amplified, ERBB2 activating mutations have been shown to have clinical\n  importance in HER2-negative breast cancer. These mutations have shown sensitivity\n  to the tyrosine kinase inhibitor neratinib, and highlight the importance of clinical\n  sequencing efforts in treating breast cancer.\nofficial_name: erb-b2 receptor tyrosine kinase 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	301ec291-6323-4246-9c32-c8532338035f	2015-06-02 22:28:59.652383
21	21	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2099\nname: ESR1\ndescription: ESR1 has been a focus in breast cancer for quite some time, but has also\n  shown significance in endometrial, ovarian and other cancer types. ER-positive breast\n  cancer that is resistant to hormone therapy has instigated clinical sequencing efforts\n  to shed light on the mechanisms of this resistance. A number of mutations in the\n  ligand binding domain of the protein have been implicated in hormone resistance\n  and anti-estrogen therapies. This has spurred efforts to develop therapeutics that\n  act to degrade the protein, rather than act as an antagonist. These agents are currently\n  in clinical trials and have seen some success, highlighting the importance of sequencing\n  efforts in treating breast cancer.\nofficial_name: estrogen receptor 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	6ea1dcaf-5cfa-42e9-b904-2dfc13daa100	2015-06-02 22:28:59.973698
22	22	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2263\nname: FGFR2\ndescription: The FGFR proteins are involved in a wide array of pathways known to play\n  a signficant role in cancer. Activation of these receptors can lead to activation\n  of the RAS-MAPK pathway and the PI3K-AKT pathway, among others. The mechanisms by\n  which FGFR can be misregulated vary between cancers. Amplification of the receptors\n  has been observed in lung and breast cancers, coding mutations and deletions have\n  been seen in many cancers, and more recently, FGFR fusions that lead to pathway\n  actiation have been demonstrated to have oncogenic potential across multiple cancer\n  types. The targeted therapeutics ponatinib, dovitinib and pazopanib have seen success\n  in treating over-active FGFR signalling, prompting use of diagnostic sequencing\n  targeting the FGFR genes, especially in lung cancer patients.\nofficial_name: fibroblast growth factor receptor 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	9b16b420-1695-4c3c-8f67-18a406a83877	2015-06-02 22:29:00.307757
23	23	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2261\nname: FGFR3\ndescription: The FGFR proteins are involved in a wide array of pathways known to play\n  a signficant role in cancer. Activation of these receptors can lead to activation\n  of the RAS-MAPK pathway and the PI3K-AKT pathway, among others. The mechanisms by\n  which FGFR can be misregulated vary between cancers. Amplification of the receptors\n  has been observed in lung and breast cancers, coding mutations and deletions have\n  been seen in many cancers, and more recently, FGFR fusions that lead to pathway\n  actiation have been demonstrated to have oncogenic potential across multiple cancer\n  types. The targeted therapeutics ponatinib, dovitinib and pazopanib have seen success\n  in treating over-active FGFR signalling, prompting use of diagnostic sequencing\n  targeting the FGFR genes, especially in lung cancer patients.\nofficial_name: fibroblast growth factor receptor 3\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	cb44ece5-d314-4787-b28f-babddf4e1ccf	2015-06-02 22:29:00.781465
24	24	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2322\nname: FLT3\ndescription: FLT3 is an important cytokine receptor involved in normal hematopoiesis.\n  Mutations in this gene are common in acute myeloid leukemia (AML) and screening\n  for mutations in this gene has been recommended by the World Health Organization\n  in patients with AML, particularly in cases of cytogenetically normal AML (CN-AML).\n  FLT3 mutations commonly co-occur with mutations such as NPM1 that are associated\n  with CN-AML and likely modulate prognostic impact. While FLT3-ITD mutations have\n  been associated with poorer prognosis in AML, the prognostic impact of FLT3-TKD\n  mutations are still up for debate.\nofficial_name: fms-related tyrosine kinase 3\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	ef7de0ba-34a7-41c5-aa03-9900b7adcef8	2015-06-02 22:29:01.042162
25	25	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2624\nname: GATA2\ndescription: GATA2 is a transcription factor involved in stem cell maintenance with\n  key roles in hematopoietic development. GATA2 mutations are associated with a variety\n  of inherited and acquired immune disorders including myelodysplastic syndrome and\n  acute myeloid leukemia. In addition to a role in hematopoiesis, the maintenance\n  GATA2 expression has been implicated as a requirement in KRAS-driven non-small cell\n  lung cancer. Preclinical models have indicated therapeutic benefit from targeting\n  GATA2-mediated pathways in the context of KRAS-driven NSCLC.\nofficial_name: GATA binding protein 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	81b7f17b-99b5-47ba-bbe6-321dab2d4cf8	2015-06-02 22:29:01.497862
26	26	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3417\nname: IDH1\ndescription: IDH1 mutations have been observed in a number of cancer types, including\n  sarcomas, hematologic malignancies, colon cancer and brain cancer. Mutations in\n  the two isocitrate dehydrogenase enzymes involved in cytoplasmic (IDH1) and mitochondrial\n  (IDH2) conversion of alpha-ketoglutarate to D-2-hydroxyglutarate have been described\n  as mutually exclusive in many of these cancer types. The most frequent mutations\n  involve R132 (IDH1) and R172 (IDH2) involve the active site and result in neomorphic\n  enzyme activity. The implications of mutations in this gene vary greatly by cancer\n  type. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 mutations\n  have been associated with worse outcome, shorter overall survival, and normal karyotype.\n  However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown\n  better overall survival than patients with wild-type IDH1. Unlike the association\n  with cytogenetically normal AML, in glioblastoma, IDH1 mutations have been associated\n  with specific cytogenetic abnormalities, 1p and 19q deletions.\nofficial_name: isocitrate dehydrogenase 1 (NADP+), soluble\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	3dd575f5-b034-4f19-9324-d9d725d8811d	2015-06-02 22:29:02.050816
27	27	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3418\nname: IDH2\ndescription: IDH2 mutations have been observed in a number of cancer types, including\n  sarcomas, hematologic malignancies, colon cancer and brain cancer. Mutations in\n  the two isocitrate dehydrogenase enzymes involved in cytoplasmic (IDH1) and mitochondrial\n  (IDH2) conversion of alpha-ketoglutarate to D-2-hydroxyglutarate have been described\n  as mutually exclusive in many of these cancer types. The most frequent mutations\n  involve R132 (IDH1) and R172 (IDH2) involve the active site and result in neomorphic\n  enzyme activity. Although IDH2 (R172) mutations are associated with poorer overall\n  prognosis in AML patients, its utility as a prognostic marker in MDS is still under\n  debate. Additionally, IDH2 (R140) has been associated with improved overall survival\n  in AML. IDH2 mutations have been associated with improved prognosis in gliomas.\nofficial_name: isocitrate dehydrogenase 2 (NADP+), mitochondrial\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	ccd1e4a3-013d-4ad3-9281-10d7637c8072	2015-06-02 22:29:02.679584
28	28	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3717\nname: JAK2\ndescription: JAK2 is a kinase that is misregulated or mutated in a number of myeloproliferative\n  diseases and cancers. The mutation V617F is the most clinically relevant variant,\n  and is seen in around half of myeloproliferative disorders. The variant is a known\n  activating mutation, and activated JAK2 is sufficient to drive myeloproliferative\n  disorders in mouse models. V617F, while most recurrent, is not the only mechanism\n  by which JAK2 can be activated in patients. JAK2 is now one of the first diagnostic\n  markers tested upon diagnosis with a myeloproliferative disorder.\nofficial_name: Janus kinase 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	c5c72418-b3ad-4191-930f-3bcd674b7db6	2015-06-02 22:29:02.975535
29	29	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3815\nname: KIT\ndescription: c-KIT activation has been shown to have oncogenic activity in gastrointestinal\n  stromal tumors (GISTs), melanomas, lung cancer, and other tumor types. The targeted\n  therapeutics nilotinib and sunitinib have shown efficacy in treating KIT overactive\n  patients, and are in late-stage trials in melanoma and GIST. KIT overactivity can\n  be the result of many genomic events from genomic amplification to overexpression\n  to missense mutations. Missense mutations have been shown to be key players in mediating\n  clinical response and acquired resistance in patients being treated with these targeted\n  therapeutics.\nofficial_name: v-kit Hardy-Zuckerman 4 feline sarcoma viral oncogene homolog\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	9384a951-05e1-4bfc-85a3-7090a593d12a	2015-06-02 22:29:03.46381
30	30	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3845\nname: KRAS\ndescription: Mutations in the RAS family of proteins have frequently observed across\n  cancer types. The amino acid positions account for the overwhelming majority of\n  these mutations, G12, G13 and Q61. The isoforms, despite their raw similarity, also\n  behave very differently when expressed in non-native tissue types, likely due to\n  differences in the C-terminal hyper-variable regions. Mis-regulation of isoform\n  expression has been shown to be a driving event in cancer, as well as missense mutations\n  at the three hotspots previously mentioned. While highly recurrent in cancer, targeted\n  these RAS mutants has also been very elusive, and has not yet become common practice\n  in the clinic.\nofficial_name: Kirsten rat sarcoma viral oncogene homolog\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	a2061030-be50-4e9c-ada4-d56e57574dd3	2015-06-02 22:29:03.915068
31	31	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5604\nname: MAP2K1\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: mitogen-activated protein kinase kinase 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	7c9746da-b82c-473f-8fb9-12c17d7fce4e	2015-06-02 22:29:04.172988
32	32	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4209\nname: MEF2D\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: myocyte enhancer factor 2D\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	2aeda045-0b82-4f41-9c09-8d78a64bf202	2015-06-02 22:29:04.453086
33	33	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1436\nname: CSF1R\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: colony stimulating factor 1 receptor\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	c4ec39bf-ba78-4247-a2ed-615af016243e	2015-06-02 22:29:04.708096
34	34	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4255\nname: MGMT\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: O-6-methylguanine-DNA methyltransferase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	ec2096c2-5294-47de-832d-a90be000532b	2015-06-02 22:29:04.934709
35	35	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4869\nname: NPM1\ndescription: AML with mutated NPM1 is provisional entity in the WHO classification\n  of AML and is recommended to be tested for in patients with cytogenetically normal\n  AML (CN-AML). Evaluation of FLT3 mutations should be evaluated concurrently as they\n  have prognostic consequences. NPM1 mutations are concentrated in exon 12, most frequently\n  W288fs which results in cytoplasmic sequestration of the protein. Exon 12 NPM1 mutations\n  in the absence of FLT3-ITD are associated with good prognostic outcomes. Mice expressing\n  the Npm1-W288fs mutation develop myeloproliferative neoplasms but not overt leukemia,\n  indicating it may require additional mutations to promote leukemic development.\nofficial_name: nucleophosmin (nucleolar phosphoprotein B23, numatrin)\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	3689a1af-50c4-43fe-826a-9f92a30a6073	2015-06-02 22:29:05.175258
36	36	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4893\nname: NRAS\ndescription: Mutations in the RAS family of proteins have frequently observed across\n  cancer types. The amino acid positions account for the overwhelming majority of\n  these mutations, G12, G13 and Q61. The isoforms, despite their raw similarity, also\n  behave very differently when expressed in non-native tissue types, likely due to\n  differences in the C-terminal hyper-variable regions. Mis-regulation of isoform\n  expression has been shown to be a driving event in cancer, as well as missense mutations\n  at the three hotspots previously mentioned. While highly recurrent in cancer, targeted\n  these RAS mutants has also been very elusive, and has not yet become common practice\n  in the clinic.\nofficial_name: neuroblastoma RAS viral (v-ras) oncogene homolog\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	76bbeca4-129c-4412-9476-d295bd5e54ba	2015-06-02 22:29:05.527584
37	37	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5290\nname: PIK3CA\ndescription: PIK3CA is the most recurrently mutated gene in breast cancer, and has\n  been found to important in a number of cancer types. An integral part of the PI3K\n  pathway, PIK3CA has long been described as an oncogene, with two main hotspots for\n  activating mutations, the 542/545 region of the helical domain, and the 1047 region\n  of the kinase domain. PIK3CA, and its interaction with the AKT and mTOR pathways,\n  is the subject of an immense amount of research and development, and PI3K inhibition\n  has seen some limited success in recent clinical trials. While monotherapies seem\n  to be limited in their potential, there is a recent interest in pursuing PI3K inhibition\n  as part of a combination therapy regiment with inhibition partners including TKI's,\n  MEK inhibitors, PARP inhibitors, and in breast cancer, aromatase inhibitors.\nofficial_name: phosphatidylinositol-4,5-bisphosphate 3-kinase, catalytic subunit alpha\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	48390c57-a5a8-4cf9-b575-177b1b4d9702	2015-06-02 22:29:05.818358
38	38	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5156\nname: PDGFRA\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: platelet-derived growth factor receptor, alpha polypeptide\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	dda4fbe1-6e88-479f-9e02-6e0e5b5fec16	2015-06-02 22:29:06.131759
53	53	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4233\nname: MET\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: MET proto-oncogene, receptor tyrosine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	a11fc28f-4407-4967-ba09-38dda93b1e10	2015-06-02 22:29:10.509196
39	39	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5371\nname: PML\ndescription: The PML-RARA fusion is the result of a recurrent, balanced translocation\n  between chromosomes 15 and 17, denoted as t(15;17)(q22;q12), and a diagnostic event\n  in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown\n  sensitivity to ATRA (all-trans retinoic acid) in APL patients harboring the PML-RARA\n  fusion. Recent interest has been shown in combining ATRA and arsenic trioxide for\n  treating these patients, and early results seem promising.\nofficial_name: promyelocytic leukemia\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	e85738c9-eb2b-4189-93a9-83ece2ebe199	2015-06-02 22:29:06.477765
40	40	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5914\nname: RARA\ndescription: The PML-RARA fusion is the result of a recurrent, balanced translocation\n  between chromosomes 15 and 17, denoted as t(15;17)(q22;q12), and a diagnostic event\n  in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown\n  sensitivity to ATRA (all-trans retinoic acid) in APL patients harboring the PML-RARA\n  fusion. Recent interest has been shown in combining ATRA and arsenic trioxide for\n  treating these patients, and early results seem promising.\nofficial_name: retinoic acid receptor, alpha\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	e8e0e1e7-ab72-4420-b905-ade5ded06f9d	2015-06-02 22:29:06.739565
41	41	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5728\nname: PTEN\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: phosphatase and tensin homolog\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	762b8b30-cc10-4511-89bf-88cf5fe222f8	2015-06-02 22:29:07.070822
42	42	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5979\nname: RET\ndescription: RET mutations and the RET fusion RET-PTC lead to activation of this tyrosine\n  kinase receptor and are associated with thyroid cancers. RET point mutations are\n  the most common mutations identified in medullary thyroid cancer (MTC) with germline\n  and somatic mutations in RET associated with hereditary and sporadic forms, respectively.\n  The most common somatic form mutation is M918T (exon 16) and a variety of other\n  mutations effecting exons 10, 11 and 15 have been described. The prognostic significance\n  of these mutations have been hotly debated in the field, however, data suggests\n  that some RET mutation may confer drug resistence. No RET-specific agents are currently\n  clinically available but several promiscuous kinase inhibitors that target RET,\n  among others, have been approved for MTC treatment.\nofficial_name: ret proto-oncogene\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	d7326a90-80f5-49a9-b6dd-da83efa308bb	2015-06-02 22:29:07.399877
43	43	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 861\nname: RUNX1\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: runt-related transcription factor 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	1b2eee87-e38a-47d8-9ed7-c643a5ad26f2	2015-06-02 22:29:07.691144
44	44	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 23451\nname: SF3B1\ndescription: SF3B1 mutations have been described in several myeloid malignancies,\n  predominantly myelodysplastic syndromes (MDS), as well as other hematologic malignancies\n  and breast cancer. SF3B1 is one of several genes involved in RNA splicing that has\n  been identified as recurrently mutated in MDS and other malignanices. The mutations\n  affecting SF3B1 are typically heterozygous, point mutations suspected to be functionally\n  deleterious with K700E described as a major hotspot mutation. MDS patients with\n  SF3B1 mutations have been reported to have better overall and event-free survival\n  than their wildtype counterparts. Additionally, these mutations are highly associated\n  with subtypes of MDS characterized by ringed sideroblasts (refractory anemia with\n  ringed sideroblasts and refractory cytopenia with multilineage dysplasia and ring\n  sideroblasts).\nofficial_name: splicing factor 3b, subunit 1, 155kDa\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	d8029702-089a-4204-80f8-30277045b88f	2015-06-02 22:29:07.986564
45	45	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 7157\nname: TP53\ndescription: TP53 mutations are universal across cancer types. Loss of tumor suppressors\n  is most recognized by large deleterious events, such as frameshift mutations, or\n  premature stop codons. In TP53 however, many of the observed mutations in cancer\n  are found to be single nucleotide variants, or missense mutations. These variants\n  are also very broadly distributed throughout the gene, not localizing in any particular\n  hotspot. While a large proportion of cancer genomics research is focused on somatic\n  variants, TP53 is also of note in the germline. Germline TP53 mutations are the\n  hallmark of Li-Fraumeni syndrome, and many (both germline and somatic) have been\n  found to have prognostic impact on patient outcomes.\nofficial_name: tumor protein p53\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	b0f4a860-bded-411d-a3e1-ed8a9ea71078	2015-06-02 22:29:08.327515
46	46	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 7248\nname: TSC1\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: tuberous sclerosis 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	7cbde43f-09ff-4ef4-86c3-35d84b1d70e9	2015-06-02 22:29:08.550144
47	47	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 7249\nname: TSC2\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: tuberous sclerosis 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	ec6341ee-7502-4301-8170-e38a7afbfb84	2015-06-02 22:29:08.772671
48	48	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 7307\nname: U2AF1\ndescription: U2AF1 is one of several spliceosome complex genes frequently mutated\n  in a variety of hematologic malignancies, particularly de novo myelodysplastic syndromes\n  (MDS), as well as solid tumors such as lung and pancreatic cancers. Two hotspot\n  mutations (S34 and Q157) occur within the two zinc-finger domains of the U2AF1 protein.\n  These mutations have been associated with altered splicing patterns in vitro and\n  in vivo. U2AF1 mutations in MDS have been associated with an increased risk of transformation\n  to secondary acute myeloid leukemia, however, the impact of these mutations on overall\n  survival has been an area of debate.\nofficial_name: U2 small nuclear RNA auxiliary factor 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	3220a295-6b97-4ef0-aba9-5f3d22640c6d	2015-06-02 22:29:09.024265
49	49	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 7490\nname: WT1\ndescription: WT1 is a tumor suppressor gene associated with the development of Wilms'\n  Tumor, from which it was named. Mutations in exon 7 and 9 of WT1 have been recurrently\n  identified in acute myeloid leukemia and associated with poorer prognosis and chemotherapy\n  resistance.\nofficial_name: Wilms tumor 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	3ea9aecd-f166-4f24-a195-984f12798535	2015-06-02 22:29:09.35426
50	50	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2475\nname: MTOR\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: mechanistic target of rapamycin (serine/threonine kinase)\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	d04c6676-0b7f-47f3-9557-2ee66f19a519	2015-06-02 22:29:09.69879
51	51	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4851\nname: NOTCH1\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: notch 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	311c8ca2-98bb-4a10-bc20-7ba7fd3ea9f5	2015-06-02 22:29:09.957038
54	54	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4067\nname: LYN\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: LYN proto-oncogene, Src family tyrosine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	96b281cf-3c97-4152-bd70-ae5eed445e82	2015-06-02 22:29:10.810814
55	55	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 6697\nname: SPR\ndescription: A summary for this gene has yet to be developed! Add one now by clicking\n  the "Edit Gene" button.\nofficial_name: sepiapterin reductase (7,8-dihydrobiopterin:NADP+ oxidoreductase)\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	dc8bc9aa-4ac5-42ab-995d-3098140653df	2015-06-02 22:29:11.045283
56	1	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 4\nname: BCR-ABL\ndescription: The BCR-ABL fusion protein, commonly referred to as the philadelphia\n  chromosome, is the most well-studied fusion gene in cancer. It has widely been considered\n  the initiating event in chronic myelogenous leukemia (CML), but despite its ability\n  initiate disease in mice, its status an initiating mutation is in dispute. In what\n  is commonly used as the poster-child for targeted therapeutics, the development\n  and use of imatinib in the clinic has led to profound improvements in the prognosis\n  of the disease. However, imatinib resistance is still seen in patients with mutations\n  in the ABL kinase domain of the fusion, most notably the T315I variant. In patients\n  resistant to imatinib, either acquired or otherwise, second generation BCR-ABL TKI's\n  (dasatinib and nilotinib) have seen some success in delivering a tumor response.\ndeleted: false\ndeleted_at: \n	1	\N	\N	a7e53ef5-70e9-4f28-945c-e1430e329b42	2015-06-02 22:29:11.109574
57	2	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 4\nname: BCR-ABL T315I\ndescription: While the efficacy of imatinib has revolutionized chronic myelogenous\n  leukemia (CML) treatment, it is still not a cure-all. Both initial resistance and\n  acquired resistance as a result of seleciton have been seen in a small subset of\n  CML patients. The ABL kinase domain mutation T315I has been shown to be one such\n  mutation that confers resistance to imatinib. Second generation TKI's (dasatinib\n  and nilotinib) specific to BCR-ABL have shown efficacy in treating resistant cases.\ndeleted: false\ndeleted_at: \n	1	\N	\N	e2d55e1d-fe3c-4b8c-83a7-b820204261f1	2015-06-02 22:29:11.119025
58	3	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 4\nname: BCR-ABL E255K\ndescription: While the efficacy of imatinib has revolutionized chronic myelogenous\n  leukemia (CML) treatment, it is still not a cure-all. Both initial resistance and\n  acquired resistance as a result of seleciton have been seen in a small subset of\n  CML patients. The ABL kinase domain mutation E255K has been shown to be one such\n  mutation that confers resistance to imatinib. Second generation TKI's (dasatinib\n  and nilotinib) specific to BCR-ABL have shown efficacy in treating resistant cases.\ndeleted: false\ndeleted_at: \n	1	\N	\N	72bd8f43-6b38-433c-8923-93dfaaee48d0	2015-06-02 22:29:11.128099
59	4	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 2\nname: E17K\ndescription: AKT1 E17K is a recurrent mutation that has been observed in breast, colorectal,\n  lung, and ovarian cancer. It has been convincingly shown to be an activating mutation\n  resulting in PI3K/AKT/mTOR pathway activity. It has been suggested that this mutation\n  decreases the cell's sensitivity to AKT1 allosteric kinase ihibitors. This, and\n  other AKT1 mutations, are the subject of much research and development for therapeutics.\ndeleted: false\ndeleted_at: \n	1	\N	\N	87e02b50-40d6-40c3-b2df-6359cc31c261	2015-06-02 22:29:11.137756
60	5	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 1\nname: EML4-ALK\ndescription: The EML4-ALK fusion has been seen in non-small cell lung cancer, and\n  appears to be an alternative mechanism for ALK activation. Cells with this fusion\n  have been shown to be sensitive to the ALK inhibitor crizotinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	73a05c8b-94b9-4496-b3c4-b6fcb4f9a533	2015-06-02 22:29:11.147144
61	6	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 1\nname: EML4-ALK C1156Y\ndescription: In patients with non-small cell lung cancer exhibiting EML4-ALK fusion,\n  this variant has been shown to confer resistance to crizotinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	d6f3f05b-2b9e-4bb1-8a9b-e6818329a0a2	2015-06-02 22:29:11.156084
62	7	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 1\nname: EML4-ALK L1196M\ndescription: In patients with non-small cell lung cancer exhibiting EML4-ALK fusion,\n  this variant has been shown to confer resistance to crizotinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	018cc8ea-bf1a-46f0-9597-0fd92d94ff30	2015-06-02 22:29:11.165108
63	8	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 1\nname: F1174L\ndescription: ALK F1174L has been observed as recurrent in neuroblastoma, non-small\n  cell lung cancer (NSCLC), and other cancer types. Neuroblastoma cells containing\n  this mutation have shown resistance to low doses of criztonib. However, increased\n  dosage can overcome this resistance in cell lines studies. TAE684 has also proven\n  effective in both NSCLC and neuroblastoma F1174L containing cells.\ndeleted: false\ndeleted_at: \n	1	\N	\N	71ce147b-de4a-4bb3-b2bb-446601a0d4bf	2015-06-02 22:29:11.173937
64	9	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 1\nname: R1275Q\ndescription: ALK R1275Q has been observed as a recurrent mutation in  neuroblastoma,\n  non-small cell lung cancer (NSCLC), as well as other cancer types. Neuroblastoma\n  cells with this mutation have shown sensitivity to the ALK-inhibitor TAE684. This,\n  and the geldanamycin deriviative 17-DMAG, has been shown to be effective in NSCLC\n  cell lines.\ndeleted: false\ndeleted_at: \n	1	\N	\N	76c52f41-6973-49af-b847-6b4708157b3f	2015-06-02 22:29:11.182791
65	10	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 3\nname: S214C\ndescription: ARAF S214C has been found to be a recurrent oncogenic mutation in non-small\n  cell lung cancer. It has been shown to confer sensitivity to sorafenib and trametenib\n  in cell lines. In a case study of advanced stage lung adenocarcinoma harboring this\n  mutation, sorafenib also acheived near-complete clinical remission. This case has\n  brought more interest to the variant from a research and clinical perspective.\ndeleted: false\ndeleted_at: \n	1	\N	\N	492deb37-131d-4825-bbbf-dcbbb02d2e1c	2015-06-02 22:29:11.191785
66	11	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 5\nname: V600D\ndescription: Patients harboring mutations in valine 600 residue of BRAF have been\n  shown to be sensitive to dabrafenib. For more information on the V600 locus, see\n  the V600E entry.\ndeleted: false\ndeleted_at: \n	1	\N	\N	2445a9f3-8cb9-4d20-9eb8-eaf73dba6e52	2015-06-02 22:29:11.200859
67	12	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 5\nname: V600E\ndescription: BRAF V600E has been shown to be recurrent in many cancer types. It is\n  one of the most widely studied variants in cancer. This variant is correlated with\n  poor prognosis in certain cancer types, including colorectal cancer and papillary\n  thyroid cancer. The targeted therapeutic dabrafenib has been shown to be effective\n  in clinical trials with an array of BRAF mutations and cancer types. Dabrafenib\n  has also shown to be effective when combined with the MEK inhibitor trametinib in\n  colorectal cancer and melanoma. However, in patients with TP53, KRAS, and CDK2NA\n  mutations, dabrafenib resistance has been reported. Ipilimumab, regorafenib, vemurafenib,\n  and a number of combination therapies have been successful in treating V600E mutations.\n  While the drugs cetuximab and panitumumab have been largely shown to be ineffective\n  without supplementary treatment.\ndeleted: false\ndeleted_at: \n	1	\N	\N	7dc216db-1fe5-40c7-9f40-c89f321245d6	2015-06-02 22:29:11.210099
68	13	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 5\nname: V600E/V600M\ndescription: A case study of a single patient harboring both a V600E and a V600M mutation,\n  dabrafenib was shown to acheive clinical response.\ndeleted: false\ndeleted_at: \n	1	\N	\N	42aaa8f5-96f5-48df-82f9-411db9851b4f	2015-06-02 22:29:11.219428
69	14	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 5\nname: V600E AMPLIFICATION\ndescription: Amplification of BRAF V600E has been shown to confer resistance to MEK\n  inhibitors. For more information on the V600 locus, see the V600E entry.\ndeleted: false\ndeleted_at: \n	1	\N	\N	62669361-fb6e-4e1e-aa1c-a6836c98834c	2015-06-02 22:29:11.228477
70	15	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 5\nname: V600M\ndescription: Patients harboring mutations in valine 600 residue of BRAF have been\n  shown to be sensitive to dabrafenib. For more information on the V600 locus, see\n  the V600E entry.\ndeleted: false\ndeleted_at: \n	1	\N	\N	f3dc5d21-df01-4114-948b-4d336248de5b	2015-06-02 22:29:11.237575
71	16	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 5\nname: V600R\ndescription: Patients harboring mutations in valine 600 residue of BRAF have been\n  shown to be sensitive to dabrafenib. For more information on the V600 locus, see\n  the V600E entry.\ndeleted: false\ndeleted_at: \n	1	\N	\N	b7f3aeeb-7cdf-4d18-bce6-a2e556e0f32e	2015-06-02 22:29:11.246552
72	17	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 5\nname: V600\ndescription: BRAF mutations of the valine 600 residue have been shown to be recurrent\n  in many cancer types. Of the V600 mutations, V600E is the most widely researched.\n  V600 mutations as a whole have been correlated to poorer prognosis in colorectal\n  and papilarry thyroid cancers. V600 mutations have also been shown to confer sensitivity\n  to the BRAF inhibitor dabrafenib. For a more detailed summary, click the individual\n  mutation pages on the left sidebar.\ndeleted: false\ndeleted_at: \n	1	\N	\N	330bd1f9-5120-4925-ad13-22a479535617	2015-06-02 22:29:11.255483
73	18	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 8\nname: AMPLIFICATION\ndescription: CCND1 amplification has been implicated in poorer prognosis in non-small\n  cell lung cancer.\ndeleted: false\ndeleted_at: \n	1	\N	\N	533ebc55-cdf9-4b8b-bb81-b628e02fb37d	2015-06-02 22:29:11.264716
74	19	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 8\nname: EXPRESSION\ndescription: CCND1 expression, and its prognositc impact, is still in dispute. Three\n  experiments in non-small cell lung cancer have shown it to have no impact on survival,\n  but three additional studies have shown it results in poorer prognosis. There is\n  also some ambiguity in how the boundaries between expression and overexpression\n  are defined.\ndeleted: false\ndeleted_at: \n	1	\N	\N	15ac5e90-678e-44d2-8569-0805fc3859e2	2015-06-02 22:29:11.273704
75	20	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 8\nname: OVEREXPRESSION\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, and range from genomic amplification to promoter methylation\n  changes. While Cyclin D2 has only been found to be significantly misregulated in\n  glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation\n  has been shown to lead to poorer outcomes in a number of studies, and currently\n  there are no FDA-approved targeted therapies.\ndeleted: false\ndeleted_at: \n	1	\N	\N	576c4469-1886-4a62-b16a-35c7e56775c3	2015-06-02 22:29:11.28329
76	21	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 9\nname: OVEREXPRESSION\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, and range from genomic amplification to promoter methylation\n  changes. While Cyclin D2 has only been found to be significantly misregulated in\n  glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation\n  has been shown to lead to poorer outcomes in a number of studies, and currently\n  there are no FDA-approved targeted therapies.\ndeleted: false\ndeleted_at: \n	1	\N	\N	85ae6f07-5731-4dd5-ba82-fed939f28a14	2015-06-02 22:29:11.293052
77	22	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 9\nname: PROMOTER DEMETHYLATION\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, and range from genomic amplification to promoter methylation\n  changes. While Cyclin D2 has only been found to be significantly misregulated in\n  glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation\n  has been shown to lead to poorer outcomes in a number of studies, and currently\n  there are no FDA-approved targeted therapies.\ndeleted: false\ndeleted_at: \n	1	\N	\N	e7332cfe-90df-4665-abf2-66a67f55ad98	2015-06-02 22:29:11.302571
78	23	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 10\nname: LOSS\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are deregulated are\n  widely variable, and range from genomic amplification to promoter methylation changes.\n  Cyclin D3 loss has been reported in T-cell acute lymphoblastic leukemia (T-ALL),\n  a seemingly unique trend when compared to the amplifcations and overexpressions\n  of the other cyclin D's. Treating cyclin D3 knockout mice with the targeted therapeutic\n  palbociclib significantly increased the median survival of a Notch-driven model\n  of T-ALL.\ndeleted: false\ndeleted_at: \n	1	\N	\N	cabbd413-f19b-4319-ad88-2bc9c26f7ca4	2015-06-02 22:29:11.312582
79	24	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 11\nname: OVEREXPRESSION\ndescription: Cyclin E, while currenly not as widely implicated as its counterpart,\n  cyclin D, has been implicated in various carcinomas, including breast, gastric,\n  stomach and colorectal. High levels of cyclin E, either by gene amplification or\n  overexpression, are correlated with later stage disease and have been shown to lead\n  to poorer prognosis in gastic carcinoma. It has also been shown, in lung cancer\n  specifically, that neoplastic cells with higher levels of the cyclin E/CDK2 complex\n  are more radiosensitive than their lowly expressed counterparts.\ndeleted: false\ndeleted_at: \n	1	\N	\N	bf148b03-57eb-454a-9607-3c0a8d71e027	2015-06-02 22:29:11.323755
80	25	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 13\nname: EXPRESSION\ndescription: CDK4, along with its partner CDK6, are key players in cell cycle progression.\n  The complex has been implicated in a number of cancer types, and is the focus of\n  therapeutic research and development. One targeted therapy for CDK inhibition is\n  palbociclib, which may slow the growth of advanced stage breast cancers. It has\n  also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors\n  to PI3K inhibitors.\ndeleted: false\ndeleted_at: \n	1	\N	\N	104acf2e-1191-4ff7-b23e-72b3f6cfd1cb	2015-06-02 22:29:11.334278
81	26	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 12\nname: EXPRESSION\ndescription: CDK6, along with its partner CDK4, are key players in cell cycle progression.\n  The complex has been implicated in a number of cancer types, and is the focus of\n  therapeutic research and development. One targeted therapy for CDK inhibition is\n  palbociclib, which may slow the growth of advanced stage breast cancers. It has\n  also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors\n  to PI3K inhibitors.\ndeleted: false\ndeleted_at: \n	1	\N	\N	342d78a3-0472-4a18-afb5-97803d925733	2015-06-02 22:29:11.354573
82	27	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 14\nname: PROMOTER HYPERMETHYLATION\ndescription: CDKN2A loss has been shown to be a significant event in a number of cancer\n  types. One mechanism by which this can occur is by hypermethylation of the CDKN2A\n  promoter region. While no targeted therapeutic has been engaged in clinical trials,\n  the prognostic impact has been studied by a number of meta-analyses. The prognostic\n  impact of promoter hypermethylation has been relatively ambiguous. Many studies\n  have shown significant p-values suggesting poorer prognostic outcomes for patients\n  with hypermethylation in colorectal, liver, and younger lung cancer patients. This\n  being said, there is still research to be done before this becomes a widely-accepted\n  prognostic indicator.\ndeleted: false\ndeleted_at: \n	1	\N	\N	eddb8b21-2608-483c-873f-ff55f967d7ac	2015-06-02 22:29:11.364474
83	28	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 15\nname: N-TERMINAL FRAME SHIFT\ndescription: CEBPA N-terminal frame shift mutations that result in a premature stop\n  codon are associated with cytogenetically normal acute myeloid leukemia (CN-AML).\n  CEBPA mutations are associated with a favorable prognosis, however, NPM1 and FLT3\n  mutations should also be assessed in CN-AML patients as concurrent mutations may\n  have prognostic implications.\ndeleted: false\ndeleted_at: \n	1	\N	\N	75084f01-eff0-49c5-8f2d-37f9ca03cce2	2015-06-02 22:29:11.374155
84	29	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 15\nname: MUTATION\ndescription: CEBPA mutations are associated with cytogenetically normal acute myeloid\n  leukemia (CN-AML) and a favorable prognosis. However, NPM1 and FLT3 mutations should\n  also be assessed in CN-AML patients as concurrent mutations may have prognostic\n  implications.\ndeleted: false\ndeleted_at: \n	1	\N	\N	c0706fd0-ac16-442d-b88e-8f65be868f64	2015-06-02 22:29:11.383623
85	30	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 33\nname: MEF2D-CSF1R\ndescription: MEF2D-CSF1R is a fusion that has been observed in acute lymphocytic leukemia.\n  In cell lines harboring this event, treatment with imatinib has shown notable sensitivity.\ndeleted: false\ndeleted_at: \n	1	\N	\N	5aa636a1-c8de-493a-b0a4-795423aac6e0	2015-06-02 22:29:11.39283
86	31	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 16\nname: DNAJB1-PRKACA\ndescription: This fusion has been found to be very recurrent in the rare form of adolescent\n  liver cancer, fibrolamellar hepatocellular carcinoma. In one study, this fusion\n  was observed in 15/15 FL-HCC cases examined and functional studies found that the\n  fusion retained kinase activity. The presence of this fusion may be used as a diagnostic\n  marker for this rare tumor type.\ndeleted: false\ndeleted_at: \n	1	\N	\N	56021eac-0c20-4077-874a-977d0f58b3ce	2015-06-02 22:29:11.402281
87	32	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 18\nname: R882\ndescription: DNMT3A R882 mutations are associated with cytogenetically normal acute\n  myeloid leukemia (CN-AML) with R882H as the most common form. Mutations in DNMT3A\n  have largely been associated with poorer prognosis, however this is not consistent\n  across all studies. This may be a result of patient age or combining R882 and non-R882\n  mutations during analysis as studies have indicated independent mechanisms of action\n  and differential prognostic implications for these mutation types. One study that\n  independently analyzed R882 and non-R882 mutations showed R882 mutations were associated\n  with poorer prognosis than patients with wildtype and non-R882 mutations, but only\n  in older patients with AML.\ndeleted: false\ndeleted_at: \n	1	\N	\N	7b58aa90-496e-4588-b68b-6fd5b35ebbd3	2015-06-02 22:29:11.411924
88	33	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 19\nname: L858R\ndescription: EGFR L858R has long been recognized as a functionally significant mutation\n  in cancer, and is one of the most prevalent single mutations in lung cancer. Best\n  described in non-small cell lung cancer (NSCLC), the mutation seems to confer sensitivity\n  to first and second generation TKI's like gefitinib and neratinib. NSCLC patients\n  with this mutation treated with TKI's show increased overall and progression-free\n  survival, as compared to chemotherapy alone. Third generation TKI's are currently\n  in clinical trials that specifically focus on mutant forms of EGFR, a few of which\n  have shown efficacy in treating patients that failed to respond to earlier generation\n  TKI therapies.\ndeleted: false\ndeleted_at: \n	1	\N	\N	7d2f4596-9094-4956-9abd-22bd490e38cf	2015-06-02 22:29:11.421479
89	34	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 19\nname: T790M\ndescription: EGFR T790M was one of the very first mutations recognized to confer resistance\n  to targeted therapies in non-small cell lung cancer. While successful in amplified\n  EGFR, the efficacy of the first and second generation TKI's (erlotinib, gefitinib,\n  neratinib) in treating patients harboring this mutation before treatment is notably\n  lower. This lack of efficacy can likely be to blame for the poorer prognosis for\n  patients with this mutation as compared to patients with wildtype EGFR or other\n  types of EGFR mutations. Approximately half of EGFR mutant tumors with acquired\n  resistance to TKI inhibition have been shown to harbor this mutation, implicating\n  it as a mechanism of acquired therapy resistence. The third generation TKI's are\n  being developed with this resistance problem in mind, and early stage experiments\n  have shown some efficacy of these drugs in previously resistant tumors with mutant\n  EGFR.\ndeleted: false\ndeleted_at: \n	1	\N	\N	34f668f1-9d9f-4d58-81ab-472d43322ee6	2015-06-02 22:29:11.431417
90	35	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: D769H\ndescription: ERBB2 D769H was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \n	1	\N	\N	fbfa2f43-52e2-494b-8969-dbd660fec8ba	2015-06-02 22:29:11.441332
91	36	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: D769Y\ndescription: ERBB2 D769Y was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \n	1	\N	\N	416cdcb8-9e18-4f89-a943-2b067f16c35f	2015-06-02 22:29:11.450636
92	37	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: DEL 755-759\ndescription: ERBB2 in-frame deletion of 755-759 was one of the first ERBB2 variants\n  to be functionally classified (Bose et al. 2012). This mutation was shown to be\n  an activating mutation in an in vitro assay. In the same paper, this mutation (along\n  with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been\n  shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may\n  show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase\n  inhibitors, which is the topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \n	1	\N	\N	4514fe8e-4d1c-4131-8a94-c9fd97ce585d	2015-06-02 22:29:11.459937
93	38	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: G309A\ndescription: ERBB2 G309A was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \n	1	\N	\N	4590e38d-e975-4c85-b1a0-7b222435ea89	2015-06-02 22:29:11.469036
94	39	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: L755S\ndescription: ERBB2 L755S was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was not shown to be an activating mutation, unlike\n  many of the other variants queried. This mutation was also shown to confer resistance\n  to the tyrosine kinase inhibitor lapatinib in MCF10A cell lines.\ndeleted: false\ndeleted_at: \n	1	\N	\N	44ff3c5f-4cbd-4d8f-99af-e6becd17558e	2015-06-02 22:29:11.478029
95	40	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: L755W\ndescription: ERBB2 L755W was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \n	1	\N	\N	e7b18e92-4e94-4ce3-b80a-e4892b79d2c4	2015-06-02 22:29:11.487228
96	41	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: P780INS\ndescription: ERBB2 P780 insertion was one of the first ERBB2 variants to be functionally\n  classified (Bose et al. 2012). This mutation was shown to be an activating mutation\n  in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \n	1	\N	\N	5f1e4bd1-8e2b-4428-972e-b129201709d8	2015-06-02 22:29:11.496074
97	42	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: R678Q\ndescription: ERBB2 R678Q was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \n	1	\N	\N	8c8f0972-8b9f-401a-a3e1-ab560bf0ca6f	2015-06-02 22:29:11.504853
98	43	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: R896C\ndescription: ERBB2 R896C was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \n	1	\N	\N	75aee645-216e-4f4f-ad81-316f429244d6	2015-06-02 22:29:11.513549
99	44	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: V777L\ndescription: ERBB2 V777L was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \n	1	\N	\N	2e404f35-8e9a-45dd-8517-192894379723	2015-06-02 22:29:11.522228
100	45	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 20\nname: V842I\ndescription: ERBB2 V842I was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \n	1	\N	\N	c08d8edc-8106-4fd8-b26f-4a9ee1c01771	2015-06-02 22:29:11.531066
101	46	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 21\nname: L536Q\ndescription: ESR1 biology has become a central focus in breast cancer therapy. In\n  ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer\n  resistance to hormone therapy. This evidence has led to an increased use of targeted\n  sequencing of the estrogen receptor in breast and ovarian cancer. Y536Q is one of\n  these ligand binding domain mutations, and is commonly implicated in this hormone\n  resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant,\n  may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.\ndeleted: false\ndeleted_at: \n	1	\N	\N	e327c909-683c-4a97-a88d-0b5d0d1abd0a	2015-06-02 22:29:11.540218
102	47	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 21\nname: N538G\ndescription: ESR1 biology has become a central focus in breast cancer therapy. In\n  ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer\n  resistance to hormone therapy. This evidence has led to an increased use of targeted\n  sequencing of the estrogen receptor in breast and ovarian cancer. N538G is one of\n  these ligand binding domain  , and is commonly implicated in this hormone resistance.\n  Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial\n  in treating ESR1 mutant, hormone resistant breast cancers.\ndeleted: false\ndeleted_at: \n	1	\N	\N	54bbe31d-4e98-48de-adb4-ae810efccfa3	2015-06-02 22:29:11.549304
103	48	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 21\nname: Y537C\ndescription: ESR1 biology has become a central focus in breast cancer therapy. In\n  ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer\n  resistance to hormone therapy. This evidence has led to an increased use of targeted\n  sequencing of the estrogen receptor in breast and ovarian cancer. Y537C is one of\n  these ligand binding domain  , and is commonly implicated in this hormone resistance.\n  Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial\n  in treating ESR1 mutant, hormone resistant breast cancers.\ndeleted: false\ndeleted_at: \n	1	\N	\N	10038954-41fa-4fa7-89ee-0f6d687e247a	2015-06-02 22:29:11.558408
104	49	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 21\nname: Y537N\ndescription: ESR1 biology has become a central focus in breast cancer therapy. In\n  ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer\n  resistance to hormone therapy. This evidence has led to an increased use of targeted\n  sequencing of the estrogen receptor in breast and ovarian cancer. Y537N is one of\n  these ligand binding domain  , and is commonly implicated in this hormone resistance.\n  Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial\n  in treating ESR1 mutant, hormone resistant breast cancers.\ndeleted: false\ndeleted_at: \n	1	\N	\N	c4bf1293-4ee8-4c5e-bbc5-aa06eec7251b	2015-06-02 22:29:11.567484
105	50	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 21\nname: Y537S\ndescription: ESR1 biology has become a central focus in breast cancer therapy. In\n  ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer\n  resistance to hormone therapy. This evidence has led to an increased use of targeted\n  sequencing of the estrogen receptor in breast and ovarian cancer. Y537S is one of\n  these ligand binding domain  , and is commonly implicated in this hormone resistance.\n  Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial\n  in treating ESR1 mutant, hormone resistant breast cancers.\ndeleted: false\ndeleted_at: \n	1	\N	\N	83b8ed5a-8525-49f2-8069-c89310864855	2015-06-02 22:29:11.576503
106	51	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 22\nname: P235R\ndescription: A summary for this variant has yet to be developed. Click "Edit Variant"\n  to create one now!\ndeleted: false\ndeleted_at: \n	1	\N	\N	14319122-6107-4f91-bd3e-169b383daac4	2015-06-02 22:29:11.585461
107	52	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 22\nname: FGFR2-MGEA5\ndescription: In a clinical sequencing program for advanced stage cancers, Wu et al\n  (2013, Cancer Discovery) has idenified a number of FGFR fusions in patients with\n  many different cancer types. These fusions were also found to retain oligomerization\n  capability, and result in enhanced cell proliferation. Cell lines harboring these\n  fusions were shown to respond to pazopanib. Additionally, tumor size reduction was\n  achieved by both ponatinib and pazopanib treatments administered separately in a\n  single patient with intrahepatic cholangiocarcinoma and this fusion. The authors\n  use these cases to highlight the need for enhanced clinical sequencing efforts.\ndeleted: false\ndeleted_at: \n	1	\N	\N	4ccca130-25fa-45f6-8919-a39ac9885da5	2015-06-02 22:29:11.5944
108	53	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 23\nname: FGFR3-BAIAP2L1\ndescription: In a clinical sequencing program for advanced stage cancers, Wu et al\n  (2013, Cancer Discovery) has identified a number of FGFR fusions in patients with\n  many different cancer types. These fusions were also found to retain oligomerization\n  capability, and result in enhanced cell proliferation. These fusions were shown\n  to respond to pazopanib. The authors use these cases to highlight the need for enhanced\n  clinical sequencing efforts.\ndeleted: false\ndeleted_at: \n	1	\N	\N	293f2ce6-5dee-44dc-a1dd-c5e2a42aa326	2015-06-02 22:29:11.60349
109	54	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 23\nname: FGFR3-TACC3\ndescription: In a clinical sequencing program for advanced stage cancers, Wu et al\n  (2013, Cancer Discovery) has identified a number of FGFR fusions in patients with\n  many different cancer types. These fusions were also found to retain oligomerization\n  capability, and result in enhanced cell proliferation. These fusions were shown\n  to respond to pazopanib. The authors use these cases to highlight the need for enhanced\n  clinical sequencing efforts.\ndeleted: false\ndeleted_at: \n	1	\N	\N	c3981ed7-69d1-46c7-bd79-fc50e677f93b	2015-06-02 22:29:11.612534
110	55	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 24\nname: ITD MUTATIONS\ndescription: FLT3-ITD (internal tandem duplications) frequently occur in patients\n  with hematologic malignancies such as chronic myelogenous leukemia, acute myeloid\n  leukemia (AML) and myelodysplastic syndrome, but particularly in cytogenetically\n  normal AML (CN-AML). These duplication events disrupt the juxtamembrane domain of\n  FLT3 and can be the result of a duplication of internal FLT3 sequence or other unrelated\n  sequence resulting in an in-frame duplication event. The length of these duplications\n  can vary widely which may have prognostic consequences, but this has not been conclusively\n  determined. FLT3-ITD mutations overall have generally been associated with poor\n  prognosis. Additional genes associated with CN-AML such as NPM1 may modulate the\n  prognosis associated with this variant.\ndeleted: false\ndeleted_at: \n	1	\N	\N	38ef7baa-60ed-46e0-b9a9-aa5b30950770	2015-06-02 22:29:11.621806
111	56	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 24\nname: TKD MUTATIONS\ndescription: FLT3 tyrosine kinase domain mutations (FLT3-TKD) are much less common\n  than FLT3-ITD (internal tandem duplication) mutations and may not confer the same\n  prognostic impact. Although the majority of mutations are point mutations effecting\n  D835 (most frequently D835Y), a small proportion involve an in-frame deletion of\n  I836. These mutations are within the activation loop of the second tyrosine kinase\n  domain of FLT3 and thought to result in constitutive activation of the receptor.\ndeleted: false\ndeleted_at: \n	1	\N	\N	0dab27c3-0f4a-4221-8a47-93eb23d8c92b	2015-06-02 22:29:11.630884
112	57	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 25\nname: EXPRESSION\ndescription: GATA2 misregulation has been observed in a number of hematologic malignancies,\n  as well as non-small cell lung cancer. Treatment of over-active GATA2 pathways using\n  the proteasome inhibitor bortezomib has shown dramatic tumor regression in lung\n  cancer.\ndeleted: false\ndeleted_at: \n	1	\N	\N	fcd2290e-644c-469e-a6cc-15c39fd76161	2015-06-02 22:29:11.639982
113	58	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 26\nname: R132\ndescription: IDH1 R132 mutations have been observed in a number of cancer types, and\n  appear to behave quite differently in different environments. In myelodysplastic\n  syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown\n  to be associated with worse outcome and shorter overall survival. They have also\n  been linked to cytogenetically normal AML, an intermediate risk subtype of the disease.\n  However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown\n  better overall survival than patients with wild-type IDH1. Also in contrast to AML,\n  in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic\n  abnormalities, 1p and 19q deletions.\ndeleted: false\ndeleted_at: \n	1	\N	\N	141467ae-3f64-4c84-9ef4-6f7a851da785	2015-06-02 22:29:11.649291
127	72	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 29\nname: L576P\ndescription: KIT L576P is an exon 11 mutation that lies within the juxtamembrane domain.\n  It is one of the most recurrent KIT mutations in melanoma, and both in vitro and\n  in vivo studies have shown sensitivity to imatinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	fd483aaa-b48f-47e5-b79e-23063082d64a	2015-06-02 22:29:11.788356
114	59	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 26\nname: R132C\ndescription: IDH1 R132 mutations have been observed in a number of cancer types, and\n  appear to behave quite differently in different environments. In myelodysplastic\n  syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown\n  to be associated with worse outcome and shorter overall survival. They have also\n  been linked to cytogenetically normal AML, an intermediate risk subtype of the disease.\n  However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown\n  better overall survival than patients with wild-type IDH1. Also in contrast to AML,\n  in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic\n  abnormalities, 1p and 19q deletions.\ndeleted: false\ndeleted_at: \n	1	\N	\N	c2cb7cb6-b3bb-445d-9097-a5f7b6ee4d29	2015-06-02 22:29:11.658618
115	60	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 26\nname: R132H\ndescription: IDH1 R132 mutations have been observed in a number of cancer types, and\n  appear to behave quite differently in different environments. In myelodysplastic\n  syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown\n  to be associated with worse outcome and shorter overall survival. They have also\n  been linked to cytogenetically normal AML, an intermediate risk subtype of the disease.\n  However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown\n  better overall survival than patients with wild-type IDH1. Also in contrast to AML,\n  in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic\n  abnormalities, 1p and 19q deletions.\ndeleted: false\ndeleted_at: \n	1	\N	\N	9f9ae972-adfb-4fee-84c7-e3eef7361d49	2015-06-02 22:29:11.667913
116	61	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 26\nname: R132L\ndescription: IDH1 R132 mutations have been observed in a number of cancer types, and\n  appear to behave quite differently in different environments. In myelodysplastic\n  syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown\n  to be associated with worse outcome and shorter overall survival. They have also\n  been linked to cytogenetically normal AML, an intermediate risk subtype of the disease.\n  However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown\n  better overall survival than patients with wild-type IDH1. Also in contrast to AML,\n  in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic\n  abnormalities, 1p and 19q deletions.\ndeleted: false\ndeleted_at: \n	1	\N	\N	be334038-bf05-4e4d-8a42-edaf8181ab0f	2015-06-02 22:29:11.677202
117	62	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 27\nname: R140Q/L\ndescription: IDH2 mutations have been observed in a number of hematologic malignancies.\n  In acute myeloid leukemia, the R140Q/L mutants have shown improved overall survival\n  as compared to their wild-type counterparts. In myelodysplastic syndromes, however,\n  no prognostic link was discovered between IDH2 mutation status and overall survival.\ndeleted: false\ndeleted_at: \n	1	\N	\N	e5a3db0e-b0c7-4faf-a2fa-21037ab2c65e	2015-06-02 22:29:11.686587
118	63	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 27\nname: R172K\ndescription: IDH2 mutations have been observed in a number of hematologic malignancies.\n  In acute myeloid leukemia, the R172K mutation has been linked with poorer prognosis\n  and worse overall survival than IDH2 wild-type patients. However, in myelodisplastic\n  syndromes, studies did not find a prognostic association between this variant and\n  patient outcomes.\ndeleted: false\ndeleted_at: \n	1	\N	\N	bc7226d8-3900-4a51-8266-5a8408a7ce41	2015-06-02 22:29:11.695719
119	64	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 28\nname: V617F\ndescription: JAK2 V617F is a highly recurrent mutation in myeloproliferative diseases,\n  occuring in around half of all MPD's. While less associated with cancer, when it\n  is seen, it is more likely to be in myeloid leukemias than lymphoid leukemias. The\n  V617F mutation is an activating mutation, resulting in increased kinase activity.\n  The mutation seems to be restricted to hematologic malignancies. Treatment of JAK\n  mutant diseases with ruxolitinib has seen some clinical success.\ndeleted: false\ndeleted_at: \n	1	\N	\N	063b991c-0e76-445c-9393-3dc509a61a7d	2015-06-02 22:29:11.716145
120	65	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 29\nname: D816V\ndescription: KIT D816V is a mutation observed in acute myeloid leukemia (AML). This\n  variant has been linked to poorer prognosis and worse outcome in AML patients.\ndeleted: false\ndeleted_at: \n	1	\N	\N	2a0e948e-2240-4987-a515-d23eb6977ff5	2015-06-02 22:29:11.725384
121	66	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 29\nname: EXON 11 MUTATIONS\ndescription: c-KIT mutations in exon 11 lie within the juxtamembrane domain, and are\n  very recurrent in gastrointestinal stromal tumors, often bearing a poorer prognosis\n  than other KIT mutations. Cells harboring exon 11 mutations have shown sensitivity\n  to the tyrosine kinase inhibitor imatinib, offering a better prognosis to patients\n  treated with the drug in the first year.\ndeleted: false\ndeleted_at: \n	1	\N	\N	364bb359-1e84-407d-bac0-dd715dcab046	2015-06-02 22:29:11.734482
122	67	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 29\nname: INTERNAL DUPLICATION\ndescription: c-KIT internal duplications have been observed in exon 11, within the\n  juxtamembrane domain. In a case study of an anal melanoma patient harboring this\n  event, imatinib confered marked response. Also, cells harboring exon 11 mutations\n  have shown sensitivity to the tyrosine kinase inhibitor imatinib, offering a better\n  prognosis to patients treated with the drug in the first year.\ndeleted: false\ndeleted_at: \n	1	\N	\N	07dc1e4d-a380-41f8-9003-f75cc3e4bb4e	2015-06-02 22:29:11.743654
123	68	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 29\nname: EXON 13 MUTATIONS\ndescription: c-KIT exon 13 mutations are relatively rare compared to other c-KIT mutations.\n  These mutations lie within the tyrosine kinase 1 domain, and are found primarily\n  in melanoma and gastrointestinal stromal tumors. Cell lines harboring these mutations\n  show sensitivity to imatinib and sunitinib treatment. However, only imatinib has\n  seen use in clinical settings to date, with sunitinib entering trials in imatinib-resistant\n  cases.\ndeleted: false\ndeleted_at: \n	1	\N	\N	3ac3c7cd-c360-492d-91e8-fb349c6dcbd6	2015-06-02 22:29:11.75261
124	69	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 29\nname: EXON 14 MUTATIONS\ndescription: c-KIT exon 14 mutations lie within the tyrosine kinase domain of the\n  protein. While relatively rare in primary gastrointestinal tumors, they are notably\n  more prevalent in refractory disease, suggesting a role in imatinib resistance.\n  Unlike mutations in other KIT exons, exon 14 mutations seem relatively rare in melanoma.\ndeleted: false\ndeleted_at: \n	1	\N	\N	72b55e99-fbe7-46e6-9989-c6a5c3b83585	2015-06-02 22:29:11.761863
125	70	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 29\nname: EXON 17 MUTATIONS\ndescription: c-KIT exon 17 mutations lie within the TK2 domain, containing the activation\n  loop of the protein. In cell lines, mutations within this domain have been shown\n  to be sensitive to imatinib. However, in double KIT mutants in which the exon 17\n  mutation is a secondary mutation, cell lines have shown resistance to both imatinib\n  and sunitinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	c9053e6e-080e-41d8-bf58-0b12b082bee0	2015-06-02 22:29:11.770755
126	71	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 29\nname: EXON 9 MUTATIONS\ndescription: c-KIT exon 9 mutations lie within the dimerization motif of the protein.\n  Relative to other KIT mutations, exon 9 mutations have been associated with better\n  overall survival. In exon 9 mutants, imatinib has shown efficacy both in vitro and\n  in vivo.\ndeleted: false\ndeleted_at: \n	1	\N	\N	c4549203-cb5e-4b5d-b8d9-342b1fdcfbb8	2015-06-02 22:29:11.779578
128	73	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 29\nname: V654A\ndescription: KIT V654A is an exon 13 mutation that lies within the tyrosine kinase\n  1 domain of the protein. It has been shown to be an activating mutation by in vitro\n  studies. This mutation is associated with imatinib resistance in melanoma patients.\n  However, second generation TKI's such as sunitinib and midostaurin (PKC 412) have\n  seen success in acheiving tumor response.\ndeleted: false\ndeleted_at: \n	1	\N	\N	c950e2fe-7304-4a4a-be3e-5c2f35ab62ae	2015-06-02 22:29:11.797109
129	74	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 30\nname: EXON 1 MUTATIONS\ndescription: A study by Lièvre et al in 2006 showed that colorectal cancer patients\n  with KRAS exon 1 mutations had low cetuximab response rates.\ndeleted: false\ndeleted_at: \n	1	\N	\N	535e5b41-a1a6-4350-a52f-276c12ed6aae	2015-06-02 22:29:11.808015
130	75	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 30\nname: EXON 2 MUTATIONS\ndescription: In a study by Pao et al in 2005, non-small cell lung cancer patients\n  harboring KRAS exon 2 mutations were associated with resistance to the EGFR inhibitors\n  gefinitib and erlotinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	3eefd971-0973-475e-9b0d-ab205e9418d3	2015-06-02 22:29:11.817743
131	76	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 30\nname: G12\ndescription: While the KRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation,\n  along with the mutations affecting the neighboring G13 position, may result in a\n  less responsive tumor when treated with first-generation TKI's like gefitinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	c3411432-7897-4f9c-ae1b-0ff1320f61f5	2015-06-02 22:29:11.827524
132	77	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 30\nname: G12/G13\ndescription: While the KRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation\n  may result in a less responsive tumor when treated with first-generation TKI's like\n  gefitinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	8e70ea39-5266-4685-86c7-ee26732df151	2015-06-02 22:29:11.837686
133	78	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 30\nname: G12C\ndescription: While the KRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation,\n  along with the mutations affecting the neighboring G13 position, may result in a\n  less responsive tumor when treated with first-generation TKI's like gefitinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	3983171a-5335-4280-8a78-3e278ef683eb	2015-06-02 22:29:11.847881
134	79	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 30\nname: G12D\ndescription: While the KRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation,\n  along with the mutations affecting the neighboring G13 position, may result in a\n  less responsive tumor when treated with first-generation TKI's like gefitinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	ae33b4c4-b89a-481c-b8a5-ddb1c8c1c86f	2015-06-02 22:29:11.857538
135	80	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 30\nname: G13\ndescription: While the KRAS G13 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation,\n  along with the mutations affecting the neighboring G12 position, may result in a\n  less responsive tumor when treated with first-generation TKI's like gefitinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	dfc45bb4-38fb-484f-8d40-ef4254c1df2c	2015-06-02 22:29:11.867734
136	81	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 30\nname: G13D\ndescription: While the KRAS G13 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation,\n  along with the mutations affecting the neighboring G12 position, may result in a\n  less responsive tumor when treated with first-generation TKI's like gefitinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	f7a770a8-ea3a-4c38-95a6-11a1fc98637b	2015-06-02 22:29:11.877415
137	82	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 31\nname: P124S\ndescription: MAP2K1 P124S is a recurrent mutation in melanoma, and is seen in bladder\n  and colon cancer to a lesser degree. The P124S mutation has been shown to contribute\n  to AZD6244 resistance in melanoma cell lines, but considerably less so than its\n  Q56P counterpart.\ndeleted: false\ndeleted_at: \n	1	\N	\N	4a4a5141-2b52-4484-824e-1cbac5263f1a	2015-06-02 22:29:11.886887
138	83	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 31\nname: Q56P\ndescription: MAP2K1 Q56P is a recurrent mutation in melanoma and gastric cancer. This\n  mutation has been shown to confer considerable resistance to AZD6244 treatment of\n  melanoma cell lines.\ndeleted: false\ndeleted_at: \n	1	\N	\N	fac2a697-93f5-4206-bcfb-8926de71f7fb	2015-06-02 22:29:11.895769
139	84	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 32\nname: MEF2D-CSF1R\ndescription: MEF2D-CSF1R is a fusion that has been observed in acute lymphocytic leukemia.\n  In cell lines harboring this event, treatment with imatinib has shown notable sensitivity.\ndeleted: false\ndeleted_at: \n	1	\N	\N	4190f769-57ce-4a18-8ee6-c3ac512e5469	2015-06-02 22:29:11.904859
140	85	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 34\nname: PROMOTER METHYLATION\ndescription: MGMT promoter methylation has been observed to impact tumor progression\n  in glioblastoma multiforme. In patients exhibiting promoter methylation, the akylating\n  agent carmustine has shown efficacy. In patients lacking methylation, combining\n  carmustine with the MGMT inhibitor O(6)-benzylguanine may be effective, but more\n  experiments are required. Clinical trials have also shown selective sensitivity\n  of promoter methylation-positive patients to temozolomide, making a case for wider\n  methylation screening in GBM patients.\ndeleted: false\ndeleted_at: \n	1	\N	\N	4d05c848-4152-4207-8839-64942019ffe1	2015-06-02 22:29:11.914267
156	101	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 38\nname: DEL I843\ndescription: PDGFRA D842 mutations are characterized broadly as imatinib resistance\n  mutations. This is most well characterized in gastrointestinal stromal tumors, but\n  other cell lines containing these mutations have been shown to be resistant as well.\n  In imatinib resistant cell lines, a number of other therapeutics have demonstrated\n  efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).\ndeleted: false\ndeleted_at: \n	1	\N	\N	352028e4-1e34-4148-91b0-613e1aa58229	2015-06-02 22:29:12.069638
141	86	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 35\nname: EXON 12 MUTATIONS\ndescription: NPM1 exon 12 mutations are frequently identified in patients with cytogenetically\n  normal acute myeloid leukemia (AML) and often co-occur with FLT3-ITD. FLT3 status\n  should also be evaluated as co-occurence with FLT3-ITD may impact prognosis. Exon\n  12 mutations have been identified as a predictor of good prognostic outcomes in\n  the absence of FLT3-ITD. Due to their high frequency, NPM1 mutations have been retrospectively\n  analyzed in the context of a number of therapies including variable results following\n  ATRA treatment as well as improved response to high-dose daunorubicin or valproic\n  acid. Additionally, multiple groups have shown increased surface expression of CD33\n  associated with NPM1 mutation, suggesting these patients may respond to anti-CD33\n  therapy. Cytoplasmic sequestration of NPM1 (NPM1c) is associated with a good response\n  to induction therapy.\ndeleted: false\ndeleted_at: \n	1	\N	\N	d875518c-2974-4fb5-bca5-a0afebc4b38d	2015-06-02 22:29:11.923702
142	87	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 35\nname: W288FS\ndescription: NPM1 W288fs (aka NPM1-A) is located in exon 12 of NPM1 and is the most\n  common NPM1 mutation identified in acute myeloid leukemia. This mutation results\n  in cytoplasmic localization of NPM1 (NPM1c) which is associated with a good response\n  to induction therapy. Although it is the most extensively studied NPM1 exon 12 mutation,\n  it is generally grouped with other exon 12 mutations for patient analysis (see NPM1\n  Exon 12 variants for more information).\ndeleted: false\ndeleted_at: \n	1	\N	\N	a0ba56d9-3521-4cd5-b432-86895178fb1a	2015-06-02 22:29:11.932973
143	88	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 36\nname: EXON 1 MUTATIONS\ndescription: NRAS exon 1 mutations were studied by Jakob et al in 2012 and were shown\n  to be correlated with poorer overall survival relative to wild-type NRAS in melanoma\n  patients.\ndeleted: false\ndeleted_at: \n	1	\N	\N	95e68547-6d55-4a10-b3b7-267f6677392b	2015-06-02 22:29:11.942093
144	89	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 36\nname: EXON 2 MUTATIONS\ndescription: NRAS exon 2 mutations have been shown to be correlated with poorer overall\n  survival in melanoma patients and colorectal cancer patients, however no prognostic\n  impact was seen in acute myeloid leukemia patients.\ndeleted: false\ndeleted_at: \n	1	\N	\N	0f91f5e3-fc3a-4ebc-856e-5f59c44a472c	2015-06-02 22:29:11.950938
145	90	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 36\nname: EXON 3 MUTATIONS\ndescription: In a multi-gene prognostic survey, Therkildsen et al 2014 found NRAS\n  exon 3 and 4 mutations were correlated with poorer overall survival.\ndeleted: false\ndeleted_at: \n	1	\N	\N	912e5dd0-a9d2-42ff-920b-445acc001991	2015-06-02 22:29:11.959687
146	91	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 36\nname: EXON 4 MUTATIONS\ndescription: In a multi-gene prognostic survey, Therkildsen et al 2014 found NRAS\n  exon 3 and 4 mutations were correlated with poorer overall survival.\ndeleted: false\ndeleted_at: \n	1	\N	\N	2bebc560-8650-4c9d-93c3-dc9605ccf63d	2015-06-02 22:29:11.968485
147	92	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 36\nname: G12\ndescription: While the NRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated.\ndeleted: false\ndeleted_at: \n	1	\N	\N	4153a522-bd84-4472-ab14-60ae4448d86c	2015-06-02 22:29:11.977371
148	93	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 36\nname: G13D\ndescription: While the NRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated.\ndeleted: false\ndeleted_at: \n	1	\N	\N	9091d52a-b3d0-405c-9289-706db6906316	2015-06-02 22:29:11.986157
149	94	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 36\nname: Q61\ndescription: NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal\n  stromal tumors, melanoma, and others. Two melanoma patients, each harboring mutations\n  at this locus (Q61L and Q61R), responded to treatment with the akylating agent temozolomide.\n  However, in colorectal cancer patients, mutations at this locus have been shown\n  to confer resistance to cetuximab. The prognostic impact of mutations at this locus\n  is currently under study.\ndeleted: false\ndeleted_at: \n	1	\N	\N	74687957-1922-45b9-9b95-4a670d25ab9d	2015-06-02 22:29:11.994859
150	95	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 36\nname: Q61L\ndescription: NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal\n  stromal tumors, melanoma, and others. A melanoma patient harboring a mutation at\n  this locus responded to treatment with the akylating agent temozolomide. However,\n  in colorectal cancer patients, mutations at this locus have been shown to confer\n  resistance to cetuximab. The prognostic impact of mutations at this locus is currently\n  under study.\ndeleted: false\ndeleted_at: \n	1	\N	\N	d7c033bd-2576-49d8-b5ec-5118e7e55447	2015-06-02 22:29:12.003751
151	96	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 36\nname: Q61R\ndescription: NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal\n  stromal tumors, melanoma, and others. A melanoma patient harboring a mutation at\n  this locus responded to treatment with the akylating agent temozolomide. However,\n  in colorectal cancer patients, mutations at this locus have been shown to confer\n  resistance to cetuximab. The prognostic impact of mutations at this locus is currently\n  under study.\ndeleted: false\ndeleted_at: \n	1	\N	\N	57e1cd8e-1a93-4f1c-8f5e-7721087d7260	2015-06-02 22:29:12.012674
152	97	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 38\nname: V536E\ndescription: A summary for this variant has yet to be developed. Click "Edit Variant"\n  to create one now!\ndeleted: false\ndeleted_at: \n	1	\N	\N	427659f3-4c03-4367-97b7-81f82781a8e0	2015-06-02 22:29:12.0218
153	98	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 38\nname: D842I\ndescription: PDGFRA D842 mutations are characterized broadly as imatinib resistance\n  mutations. This is most well characterized in gastrointestinal stromal tumors, but\n  other cell lines containing these mutations have been shown to be resistant as well.\n  In imatinib resistant cell lines, a number of other therapeutics have demonstrated\n  efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).\ndeleted: false\ndeleted_at: \n	1	\N	\N	e3e74af0-7635-4798-85ea-207047e00820	2015-06-02 22:29:12.030827
154	99	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 38\nname: D842V\ndescription: PDGFRA D842 mutations are characterized broadly as imatinib resistance\n  mutations. This is most well characterized in gastrointestinal stromal tumors, but\n  other cell lines containing these mutations have been shown to be resistant as well.\n  In imatinib resistant cell lines, a number of other therapeutics have demonstrated\n  efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).\ndeleted: false\ndeleted_at: \n	1	\N	\N	628665e5-d73b-4fd7-943d-f18dc0392f2a	2015-06-02 22:29:12.039929
155	100	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 38\nname: D842Y\ndescription: PDGFRA D842 mutations are characterized broadly as imatinib resistance\n  mutations. This is most well characterized in gastrointestinal stromal tumors, but\n  other cell lines containing these mutations have been shown to be resistant as well.\n  In imatinib resistant cell lines, a number of other therapeutics have demonstrated\n  efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).\ndeleted: false\ndeleted_at: \n	1	\N	\N	3390bee6-1750-4eb4-b227-68789074ebcf	2015-06-02 22:29:12.049214
201	146	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 53\nname: AMPLIFICATION\ndescription: MET amplification, like EGFR T790M, has been shown to be capable of driving\n  acquired resistance to dacomitinib in patients with lung adenocarcinoma.\ndeleted: false\ndeleted_at: \n	1	\N	\N	65db3217-cf63-4f82-a7aa-9585d7f8dc61	2015-06-02 22:29:12.518896
157	102	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 38\nname: DI842-843IM\ndescription: PDGFRA D842 mutations are characterized broadly as imatinib resistance\n  mutations. This is most well characterized in gastrointestinal stromal tumors, but\n  other cell lines containing these mutations have been shown to be resistant as well.\n  In imatinib resistant cell lines, a number of other therapeutics have demonstrated\n  efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).\ndeleted: false\ndeleted_at: \n	1	\N	\N	1537cb9a-9931-4d72-88c0-a8c71fd065cd	2015-06-02 22:29:12.078891
158	103	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 37\nname: E542K\ndescription: PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in\n  breast cancer, and are highly recurrent mutations in many other cancer types. E545K,\n  and possibly the other mutations in the E545 region, may present patients with a\n  poorer prognosis than patients with either patients with other PIK3CA variant or\n  wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer\n  resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies\n  for variants in PIK3CA are still in early clinical trial phases.\ndeleted: false\ndeleted_at: \n	1	\N	\N	4ac209d2-7fb8-40ab-82a6-480730a7d984	2015-06-02 22:29:12.08876
159	104	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 37\nname: E545K\ndescription: PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in\n  breast cancer, and are highly recurrent mutations in many other cancer types. E545K,\n  and possibly the other mutations in the E545 region, may present patients with a\n  poorer prognosis than patients with either patients with other PIK3CA variant or\n  wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer\n  resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies\n  for variants in PIK3CA are still in early clinical trial phases.\ndeleted: false\ndeleted_at: \n	1	\N	\N	8fa2595f-88f1-4c16-9fd8-f15fbe8af3da	2015-06-02 22:29:12.098061
160	105	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 37\nname: EXON 20 MUTATIONS\ndescription: PIK3CA H1047R is one of the most recurrent mutations in cancer, especially\n  breast cancer. Of PIK3CA mutant breast cancers, over half harbor this mutation.\n  Meta-analyses have shown that patients harboring this mutation may have worse overall\n  survival, but other studies have shown no difference between H1047R and other PIK3CA\n  mutants from a prognostic standpoint. While very prevalent, targeted therapies for\n  this particular mutation are still in early clinical trial phases.\ndeleted: false\ndeleted_at: \n	1	\N	\N	41194314-18db-46d1-923e-6f0cc8cd575b	2015-06-02 22:29:12.107198
161	106	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 37\nname: EXON 9 MUTATIONS\ndescription: PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in\n  breast cancer, and are highly recurrent mutations in many other cancer types. E545K,\n  and possibly the other mutations in the E545 region, may present patients with a\n  poorer prognosis than patients with either patients with other PIK3CA variant or\n  wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer\n  resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies\n  for variants in PIK3CA are still in early clinical trial phases.\ndeleted: false\ndeleted_at: \n	1	\N	\N	9be261e6-8325-4628-a031-71dcfe19ccd9	2015-06-02 22:29:12.116363
162	107	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 37\nname: H1047R\ndescription: PIK3CA H1047R is one of the most recurrent mutations in cancer, especially\n  breast cancer. Of PIK3CA mutant breast cancers, over half harbor this mutation.\n  Meta-analyses have shown that patients harboring this mutation may have worse overall\n  survival, but other studies have shown no difference between H1047R and other PIK3CA\n  mutants from a prognostic standpoint. While very prevalent, targeted therapies for\n  this particular mutation are still in early clinical trial phases.\ndeleted: false\ndeleted_at: \n	1	\N	\N	5779d9ad-fb88-4362-988d-8937c49ecb96	2015-06-02 22:29:12.125292
163	108	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 39\nname: PML-RARA\ndescription: The PML-RARa fusion is seen as a diagnostic event in acute promyelocytic\n  leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA\n  in APL patients harboring the PML-RARa fusion. Recent interest has been shown in\n  combining ATRA and arsenic trioxide for treating these patients, and early results\n  seem promising.\ndeleted: false\ndeleted_at: \n	1	\N	\N	9ffca705-9c84-459d-a919-87df88edfe61	2015-06-02 22:29:12.135504
164	109	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 17\nname: DNAJB1-PRKACA\ndescription: This fusion has been found to be very recurrent in a rare form of adolescent\n  liver cancer, hepatocellular fibrolamellar carcinoma. In a 2014 study, authors found\n  Honeyman et al observed this fusion in all 15 of the FL-HCC cases they examined,\n  and functional studies found that the fusion retained kinase activity. The presence\n  of this fusion may be used as a diagnostic marker for this rare tumor type.\ndeleted: false\ndeleted_at: \n	1	\N	\N	12010066-89e1-4689-9d40-568f664639ef	2015-06-02 22:29:12.145812
165	110	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 41\nname: R233*\ndescription: PTEN R233* has been shown to be a loss of function mutation, and PTEN\n  loss has been the subject of considerable research in breast cancer. PTEN loss may\n  sensitize cells to PI3K-mTOR inhibition. While still being debated, there is data\n  to support that PTEN loss is both associated with poorer prognosis, and no change\n  in prognosis.\ndeleted: false\ndeleted_at: \n	1	\N	\N	547b17fe-2b1f-4df0-a424-3c86492cb0f6	2015-06-02 22:29:12.156777
166	111	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 40\nname: PML-RARA\ndescription: The PML-RARa fusion is seen as a diagnostic event in acute promyelocytic\n  leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA\n  in APL patients harboring the PML-RARa fusion. Recent interest has been shown in\n  combining ATRA and Arsenic Trioxide for treating these patients, and early results\n  seem promising.\ndeleted: false\ndeleted_at: \n	1	\N	\N	7a8618f2-ba6a-4d24-b694-2fbd9b7d176c	2015-06-02 22:29:12.166809
167	112	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 42\nname: C634W\ndescription: RET C639W has been implicated as an alternate mechanism of activating\n  RET in medullary thyroid cancer. While there currently are no RET-specific inhibiting\n  agents, promiscuous kinase inhibitors have seen some success in treating RET overactivity.\n  Data suggests however, that the C639W mutation may lead to drug resistance, especially\n  against the VEGFR-inhibitor motesanib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	57d74fe2-bf9b-4b3e-a37c-469946b059a5	2015-06-02 22:29:12.176846
168	113	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 42\nname: M918T\ndescription: RET M819T is the most common somatically acquired mutation in medullary\n  thyroid cancer (MTC). While there currently are no RET-specific inhibiting agents,\n  promiscuous kinase inhibitors have seen some success in treating RET overactivity.\n  Data suggests however, that the M918T mutation may lead to drug resistance, especially\n  against the VEGFR-inhibitor motesanib. It has also been suggested that RET M819T\n  leads to more aggressive MTC with a poorer prognosis.\ndeleted: false\ndeleted_at: \n	1	\N	\N	6c493fa8-43a5-424f-99b0-acf08213a86c	2015-06-02 22:29:12.186462
169	114	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 44\nname: K666N\ndescription: SF3B1 K666N is a variant found in myelodysplastic syndromes, chronic\n  leukemias, and more recently, breast cancer. This somatic mutation has been linked\n  to better overall outcome and event-free survival in MDS patients.\ndeleted: false\ndeleted_at: \n	1	\N	\N	094f20ae-6e17-4957-83ef-bd92ea5eb4bf	2015-06-02 22:29:12.19647
170	115	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 44\nname: K700E\ndescription: SF3B1 K700E is a variant found in myelodysplastic syndromes, chronic\n  leukemias, and more recently, breast cancer. This somatic mutation has been linked\n  to better overall outcome and event-free survival in MDS patients. Additionally,\n  these mutations are the most common SF3B1 mutation observed in MDS and highly associated\n  with subtypes of MDS that are defined by ringed sideroblasts.\ndeleted: false\ndeleted_at: \n	1	\N	\N	5165295e-b6fb-4f45-961d-f05db10b9fc3	2015-06-02 22:29:12.206093
171	116	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 45\nname: R175H\ndescription: While loss-of-function events in TP53 are very common in cancer, the\n  R175H variant seems not only to result in loss of tumor-suppression, but also acts\n  as a gain-of-function mutation that promotes tumorigenesis in mouse models. Cell\n  lines harboring this mutant is also more responsive to treatment with doxorubicin\n  than its wild-type counterparts. While the prognostic impact of individual TP53\n  mutations is influenced by the cohort being studied, it has been shown that the\n  R175H mutation is correlated with worse overall survival than wild-type TP53, but\n  is not as detrimental as the R248W variant.\ndeleted: false\ndeleted_at: \n	1	\N	\N	708ed332-a590-4835-b254-e132139ce446	2015-06-02 22:29:12.215985
172	117	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 45\nname: R248Q\ndescription: While loss-of-function events in TP53 are very common in cancer, the\n  R248 variants seem not only to result in loss of tumor-suppression, but also act\n  as a gain-of-function mutation that can promote tumorigenesis in mouse models. This\n  mutant is also more responsive to treatment with doxorubicin than its wild-type\n  counterparts. While the prognostic impact of individual TP53 mutations is influenced\n  by the cohort being studied, R248 mutations have been shown to confer worse overall\n  survival. The R248Q mutation has also shown an increased invasive behavior in cell\n  lines. This is specific to the 248Q variant.\ndeleted: false\ndeleted_at: \n	1	\N	\N	7eb5bc1f-0e56-4095-9143-9eba3794d7ae	2015-06-02 22:29:12.225059
173	118	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 45\nname: R248W\ndescription: While loss-of-function events in TP53 are very common in cancer, the\n  R248 variants seem not only to result in loss of tumor-suppression, but also act\n  as a gain-of-function mutation that can promote tumorigenesis in mouse models. This\n  mutant is also more responsive to treatment with doxorubicin than its wild-type\n  counterparts. While the prognostic impact of individual TP53 mutations is influenced\n  by the cohort being studied, R248 mutations have been shown to confer worse overall\n  survival.\ndeleted: false\ndeleted_at: \n	1	\N	\N	50c1da39-e5c3-4f1d-9c39-c4a0332a25b4	2015-06-02 22:29:12.234978
174	119	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 45\nname: R249T\ndescription: This mutant is also more responsive to treatment with doxorubicin than\n  its wild-type counterparts. While the prognostic impact of individual TP53 mutations\n  is influenced by the cohort being studied, it has been suggested that the R249 mutants\n  have been correlated with worse overall survival in breast cancer patients when\n  compared to wild-type.\ndeleted: false\ndeleted_at: \n	1	\N	\N	b67435a9-48c5-41d1-8fc8-53dfe056cb7a	2015-06-02 22:29:12.245433
175	120	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 45\nname: R249W\ndescription: This mutant is also more responsive to treatment with doxorubicin than\n  its wild-type counterparts. While the prognostic impact of individual TP53 mutations\n  is influenced by the cohort being studied, it has been suggested that the R249 mutants\n  have been correlated with worse overall survival in breast cancer patients when\n  compared to wild-type.\ndeleted: false\ndeleted_at: \n	1	\N	\N	79bc7488-1561-4e2c-abfe-146d6686431f	2015-06-02 22:29:12.255431
176	121	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 45\nname: R273C\ndescription: While loss-of-function events in TP53 are very common in cancer, the\n  R273 variants seem not only to result in loss of tumor-suppression, but also act\n  as a gain-of-function mutation that can promote tumorigenesis in mouse models. This\n  mutant is also more responsive to treatment with doxorubicin than its wild-type\n  counterparts. While the prognostic impact of individual TP53 mutations is influenced\n  by the cohort being studied, it has been suggested that the R273 mutants have been\n  correlated with worse overall survival in breast cancer patients when compared to\n  wild-type.\ndeleted: false\ndeleted_at: \n	1	\N	\N	195f8cb6-06c8-4b27-9d7e-b3c1a94b9b3e	2015-06-02 22:29:12.265173
177	122	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 45\nname: R273H\ndescription: While loss-of-function events in TP53 are very common in cancer, the\n  R273 variants seem not only to result in loss of tumor-suppression, but also act\n  as a gain-of-function mutation that can promote tumorigenesis in mouse models. This\n  mutant is also more responsive to treatment with doxorubicin than its wild-type\n  counterparts. While the prognostic impact of individual TP53 mutations is influenced\n  by the cohort being studied, it has been suggested that the R273 mutants have been\n  correlated with worse overall survival in breast cancer patients when compared to\n  wild-type.\ndeleted: false\ndeleted_at: \n	1	\N	\N	d6a8fc3a-d729-4762-bb25-8f9a8298ac3f	2015-06-02 22:29:12.274794
178	123	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 45\nname: V173G/A\ndescription: While the prognostic impact of individual TP53 mutations is influenced\n  by the cohort being studied, it has been suggested that the R249 mutants have been\n  correlated with worse overall survival in breast cancer patients when compared to\n  wild-type.\ndeleted: false\ndeleted_at: \n	1	\N	\N	8580c36e-080d-49b2-ad05-544efe5e48b1	2015-06-02 22:29:12.284225
179	124	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 46\nname: FRAMESHIFT TRUNCATION\ndescription: In a small cohort study of bladder cancer, patients with TSC1 mutations\n  showed better responses to and increased treatment duration tolerance with the mTOR\n  inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with\n  TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2\n  wildtype cells.\ndeleted: false\ndeleted_at: \n	1	\N	\N	6b569658-336f-4d8a-801e-650b895b1e3f	2015-06-02 22:29:12.294084
180	125	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 46\nname: LOSS-OF-FUNCTION\ndescription: In a small cohort study of bladder cancer, patients with TSC1 mutations\n  showed better responses to and increased treatment duration tolerance with the mTOR\n  inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with\n  TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2\n  wildtype cells.\ndeleted: false\ndeleted_at: \n	1	\N	\N	deff0914-35c1-43b4-a9b2-84c2e7ab5f40	2015-06-02 22:29:12.30377
181	126	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 47\nname: LOSS-OF-FUNCTION\ndescription: In a small cohort study of bladder cancer, patients with TSC1 mutations\n  showed better responses to and increased treatment duration tolerance with the mTOR\n  inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with\n  TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2\n  wildtype cells.\ndeleted: false\ndeleted_at: \n	1	\N	\N	6657f95c-a88a-4f3d-88b7-52f7d23d42a9	2015-06-02 22:29:12.313667
202	147	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 30\nname: G12V\ndescription: KRAS G12V, like EGFR T790M, has been shown to be capable of driving acquired\n  resistance to tyrosine kinase inhibitors in lung adenocarcinoma.\ndeleted: false\ndeleted_at: \n	1	\N	\N	32a6aebe-e967-480d-b079-70e4f44e4523	2015-06-02 22:29:12.528401
182	127	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 48\nname: Q157P/R\ndescription: U2AF1 Q157P/R has been shown to be a recurrent mutation in acute myeloid\n  leukemia (AML), myelodysplastic syndromes (MDS) and lung adenocarcinomas. This mutation\n  is less common than the S34F mutation, occurs in the second zinc finger domain of\n  U2AF1 and has been demonstrated to alter splicing. The impact of U2AF1 mutations\n  on overall survival in MDS has been debated, however, patients with U2AF1 mutations\n  were shown to be at an increased risk of transformation to secondary AML. The presence\n  of this mutation was not associated with a specific prognostic outcome in AML when\n  compared to U2AF1 wildtype patients.\ndeleted: false\ndeleted_at: \n	1	\N	\N	bbdcdc13-4c6d-4d75-aa77-25ba2abc558d	2015-06-02 22:29:12.323629
183	128	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 48\nname: S34Y/F\ndescription: U2AF1 S34Y/F has been shown to be a recurrent mutation in acute myeloid\n  leukemia (AML), myelodysplastic syndromes (MDS) and lung adenocarcinomas. This mutation\n  is the most commonly identified variant in MDS, occurs in the first zinc finger\n  domain of U2AF1 and has been demonstrated to alter splicing. The impact of U2AF1\n  mutations on overall survival in MDS has been debated, however, patients with U2AF1\n  mutations were shown to be at an increased risk of transformation to secondary AML.\n  The presence of this mutation was not associated with a specific prognostic outcome\n  in AML when compared to U2AF1 wildtype patients.\ndeleted: false\ndeleted_at: \n	1	\N	\N	da9d292a-2a40-4e5f-8247-82aae74a5e73	2015-06-02 22:29:12.333517
184	129	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 49\nname: EXON 7 MUTATIONS\ndescription: WT1 exon 7 mutations have been shown to be recurrent in acute myeloid\n  leukemia. Many sources have examined the prognostic impact of these, agreeing that\n  the mutant exon 7 cohort is correlated with worse overall survival and a number\n  of poor prognistic outcomes. This may be the result of an overall poor response\n  to chemotherapy from WT1 mutant tumors.\ndeleted: false\ndeleted_at: \n	1	\N	\N	30db369c-73be-4476-a471-307d72a6bdcc	2015-06-02 22:29:12.343391
185	130	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 49\nname: EXON 9 MUTATIONS\ndescription: WT1 exon 9 mutations have been shown to be recurrent in acute myeloid\n  leukemia, although at a less frequent rate than their exon 7 counterparts. Many\n  sources have examined the prognostic impact of these, agreeing that the mutant exon\n  9 cohort is correlated with worse overall survival and a number of poor prognistic\n  outcomes. This may be the result of an overall poor response to chemotherapy from\n  WT1 mutant tumors.\ndeleted: false\ndeleted_at: \n	1	\N	\N	5853f06a-38cd-411b-b6da-ac8e9c737463	2015-06-02 22:29:12.353062
186	131	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 6\nname: LOSS-OF-FUNCTION\ndescription: BRCA1 loss of function mutations have been shown to increase risk of\n  breast and ovarian cancer in those carrying the allele in their germline. Treating\n  BRCA mutant patients with PARP inhibitors such as Olaparib has led to significant\n  response.\ndeleted: false\ndeleted_at: \n	1	\N	\N	fc2b2646-20a6-4272-a096-62925f761819	2015-06-02 22:29:12.363122
187	132	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 7\nname: LOSS-OF-FUNCTION\ndescription: BRCA2 loss of function mutations have been shown to increase risk of\n  breast and ovarian cancer in those carrying the allele in their germline. Treating\n  BRCA mutant patients with PARP inhibitors such as Olaparib has led to significant\n  response.\ndeleted: false\ndeleted_at: \n	1	\N	\N	6e4a8281-55df-4123-810e-e66770bc39ff	2015-06-02 22:29:12.372946
188	133	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 19\nname: EXON 19 DELETION\ndescription: Deletions within exon 19 of EGFR are most common in lung cancer. These\n  deletions, in non-small cell lung cancer, have been shown to be sensitive to the\n  EGFR tyrosine kinase inhibitors gefitinib and erlotinib. There is also data to suggest\n  that this event is a good prognostic marker in lung adenocarcinoma.\ndeleted: false\ndeleted_at: \n	1	\N	\N	fcbc1581-8fcd-408a-8cb1-2436458abbb0	2015-06-02 22:29:12.38271
189	134	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 19\nname: G719S\ndescription: While not as recurrent as the L858R mutation, EGFR G719S has also been\n  shown to be an activating mutation. In lung cancer cell lines, it also confers sensitivity\n  to the tyrosine kinase inhibitors gefitinib and erlotinib.\ndeleted: false\ndeleted_at: \n	1	\N	\N	7d768ac7-66bf-4413-ab5f-0c21091d63fe	2015-06-02 22:29:12.392572
190	135	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 51\nname: D1643H\ndescription: Activating mutations in NOTCH1, including D1643H, have been shown to\n  be poor prognostic markers in lung cancer.\ndeleted: false\ndeleted_at: \n	1	\N	\N	9f0d1a4a-2147-4ee1-925e-b190ae020840	2015-06-02 22:29:12.401838
191	136	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 51\nname: R2328W\ndescription: Activating mutations in NOTCH1, including R2328W, have been shown to\n  be poor prognostic markers in lung cancer.\ndeleted: false\ndeleted_at: \n	1	\N	\N	5f232eb6-a5f0-4b80-9abd-db65f48f1512	2015-06-02 22:29:12.422962
192	137	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 51\nname: V2444FS\ndescription: Activating mutations in NOTCH1, including a frameshift insertion at V2444,\n  have been shown to be poor prognostic markers in lung cancer.\ndeleted: false\ndeleted_at: \n	1	\N	\N	abcdaecc-4fbe-419b-aa47-cb1835914e00	2015-06-02 22:29:12.43248
193	138	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 51\nname: S2275FS\ndescription: Activating mutations in NOTCH1, including a frameshift insertion at S2275,\n  have been shown to be poor prognostic markers in lung cancer.\ndeleted: false\ndeleted_at: \n	1	\N	\N	596a8434-12ca-4eee-93f9-6db0cdea58fb	2015-06-02 22:29:12.441512
194	139	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 52\nname: L63V\ndescription: Activating mutations in DDR2, including L63V, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \n	1	\N	\N	9f867bf0-ed8a-4fd0-bfdc-eb9d78d7c06f	2015-06-02 22:29:12.450855
195	140	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 52\nname: L239R\ndescription: Activating mutations in DDR2, including L239R, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \n	1	\N	\N	99c0dd42-70a9-44e5-816d-b183941d5e08	2015-06-02 22:29:12.459996
196	141	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 52\nname: G253C\ndescription: Activating mutations in DDR2, including G253C, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \n	1	\N	\N	670fe47e-ecff-493c-882a-8a66dd8042b2	2015-06-02 22:29:12.469463
197	142	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 52\nname: G505S\ndescription: Activating mutations in DDR2, including G505S, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \n	1	\N	\N	8ba660ca-187d-4024-8e81-c639da65682e	2015-06-02 22:29:12.479534
198	143	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 52\nname: I638F\ndescription: DDR2 I638F has been shown to be a loss of function mutation, but also\n  confers sensitivity to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \n	1	\N	\N	12d02954-a949-45fd-a17e-b561e540b78f	2015-06-02 22:29:12.489674
199	144	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 52\nname: G774V\ndescription: Activating mutations in DDR2, including G774V, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \n	1	\N	\N	934c5dba-4dfd-4d53-ac7a-f7d8455e41f9	2015-06-02 22:29:12.499602
200	145	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 52\nname: S768R\ndescription: Activating mutations in DDR2, including S768R, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \n	1	\N	\N	301ca75c-c62f-4c70-88fd-d99d9a9f513b	2015-06-02 22:29:12.509367
203	148	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 30\nname: G12A\ndescription: KRAS G12A, like EGFR T790M, has been shown to be capable of driving acquired\n  resistance to tyrosine kinase inhibitors in lung adenocarcinoma.\ndeleted: false\ndeleted_at: \n	1	\N	\N	8087682b-0d7e-4609-b218-d01d55ade863	2015-06-02 22:29:12.537774
204	1	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Data from deep sequencing of a Ph-negative clone of a Ph-positive CML\n  patient has found a driving mutation in DNMT3A that preceeded the BCR-ABL fusion,\n  and may imply the possibility that BCR-ABL is not universally the initiating event\n  in CML.\ndisease_id: 1\nsource_id: 51\nvariant_id: 1\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	f5ffa98d-d6dc-4e66-b067-e60d679bef2f	2015-06-02 22:29:12.615645
205	2	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The presence of BCR-ABL fusion is considered the characterizing feature\n  of chronic myeloid leukemia, and has been widely thought of as the initiating event\n  in the disease.\ndisease_id: 1\nsource_id: 52\nvariant_id: 1\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 0\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	9eab2980-14c3-4ab1-bfa7-06802fe312b7	2015-06-02 22:29:12.6483
206	3	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The use of second-generation BCR-ABL targeted therapies has been effective\n  in patients resistant to imatinib.\ndisease_id: 1\nsource_id: 52\nvariant_id: 1\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	f4a55292-11a6-44ad-840e-b3b9c0849100	2015-06-02 22:29:12.669707
207	4	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: COS7 cell lines transfected with BCR/ABL constructs harboring E255K mutations\n  were shown to be resistant to imatinib and exhibited increased kinase activity.\ndisease_id: 1\nsource_id: 53\nvariant_id: 3\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	9177663b-6e07-42c3-a8e6-bada04a90357	2015-06-02 22:29:12.698044
208	1	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: Imatinib Resistance\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	3fc26efb-5b1a-4f9f-8050-e5187126c993	2015-06-02 22:29:12.73279
209	5	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: COS7 cell lines transfected with BCR/ABL constructs harboring T315I mutations\n  were shown to be resistant to imatinib and exhibited increased kinase activity.\ndisease_id: 1\nsource_id: 53\nvariant_id: 2\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	4a4c51c4-f00a-4327-aa64-ab2ef610feb5	2015-06-02 22:29:12.754888
210	6	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In chronic myeloid leukemia patients with the ABL T315I mutation, tumors\n  have shown to be resistant to imatinib treatment.\ndisease_id: 1\nsource_id: 52\nvariant_id: 2\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	ee8f219c-2481-446f-9f65-8f02bde10494	2015-06-02 22:29:12.794103
211	7	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: PIK3CA mutation, but not AKT1 E17K, has been shown to confer sensitiity\n  to the AKT inhibitor MK-2206 in breast cancer cell lines.\ndisease_id: 2\nsource_id: 54\nvariant_id: 4\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 14:105246551-105246551 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	ec0fb940-d9f2-4a24-a2f7-02fabc70e2f1	2015-06-02 22:29:12.819779
212	8	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with non-small cell lung cancer harboring the EML4-ALK fusion,\n  treatment with crizotinib has shown to be effective in acheiving stable disease.\ndisease_id: 3\nsource_id: 55\nvariant_id: 5\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	4140c67c-2320-4530-8c76-a6641cc8c022	2015-06-02 22:29:12.842082
213	2	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: ALK Fusions\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	595fe8c3-545e-4674-9dec-d3b7aa50ce17	2015-06-02 22:29:12.855056
214	9	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with non-small cell lung cancer harboring EML4-ALK fusion,\n  the C1156Y variant has been shown to confer resistance to crizotinib.\ndisease_id: 3\nsource_id: 55\nvariant_id: 6\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	3abb96d4-4cc2-4a80-b5e9-03df8f9b7839	2015-06-02 22:29:12.871963
215	3	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: Crizotinib Resistance\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	5e1d72a1-a783-432d-bc3c-b4643f4773ed	2015-06-02 22:29:12.886871
216	10	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: CH5424802 treatment resulted in significant tumor regression in xenograft\n  models produced from Ba/F3 cells expressing EML4-ALK or AML4-ALK with the L1196M\n  mutation\ndisease_id: 3\nsource_id: 56\nvariant_id: 7\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	1f5813b1-53c1-44d1-8625-b2c0171562e0	2015-06-02 22:29:12.90499
217	11	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with non-small cell lung cancer harboring EML4-ALK fusion,\n  the L1196M variant has been shown to confer resistance to crizotinib.\ndisease_id: 3\nsource_id: 55\nvariant_id: 7\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	44961882-7629-444c-acce-439d38ba7cf7	2015-06-02 22:29:12.924076
218	12	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Ba/F3 cells expressing the RANBP2-ALK fusion containing an F1174L mutation\n  were more resistant to crizotinib treatment than Ba/F3 cells expressing RANBP2-ALK\n  without this mutation.\ndisease_id: 4\nsource_id: 57\nvariant_id: 8\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:29443695-29443695 (G->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	2e8cc0b9-fb87-4515-9a7a-0a04cd67d88f	2015-06-02 22:29:12.952948
219	13	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: CH5424802 is effective in inhibiting the activity of the F1174L ALK mutant\n  in a kinase activity assay and proliferation assay using neuroblastoma KELLY cells.\ndisease_id: 5\nsource_id: 56\nvariant_id: 8\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:29443695-29443695 (G->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	fb0e594c-6a8a-4100-98c8-f1ac10fcb23a	2015-06-02 22:29:12.974096
220	14	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cells lines expressing ALK harboring the F1174L mutation are less sensitive\n  to growth inhibition by crizotinib than cells expressing the R1275Q mutation.\ndisease_id: 5\nsource_id: 58\nvariant_id: 8\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:29443695-29443695 (G->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	e1d9f695-a0ab-4496-9ad2-0598640e4271	2015-06-02 22:29:12.994036
221	15	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: High levels of crizotinib can overcome drug resistance of Ba/F3 cells\n  expressing the EML4-ALK fusion containing the F1174L mutation.\ndisease_id: 5\nsource_id: 59\nvariant_id: 8\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:29443695-29443695 (G->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d7821302-ad54-4752-a13a-e8ffbaf0b8e6	2015-06-02 22:29:13.013872
222	16	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: SH-SY5Y and Kelly cells with mutant ALK (F1174L) and Ba/F3 cells overexpressing\n  ALK harboring the F1174L mutation are sensitive to TAE684-mediated growth inhibition\ndisease_id: 5\nsource_id: 60\nvariant_id: 8\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:29443695-29443695 (G->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	b1909b97-5d4c-4eb5-990d-842b65de0b52	2015-06-02 22:29:13.033348
223	17	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Ba/F3 cells expressing the EML4-ALK fusion containing an F1174L mutation\n  were more resistant to crizotinib treatment than Ba/F3 cells expressing EML4-ALK\n  without this mutation.\ndisease_id: 3\nsource_id: 57\nvariant_id: 8\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:29443695-29443695 (G->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	f66f21ca-8343-4fd3-b94c-8a0cd2b5f4ea	2015-06-02 22:29:13.053844
224	18	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cells lines expressing ALK harboring the F1174L mutation are less sensitive\n  to growth inhibition by crizotinib than cells expressing the R1275Q mutation\ndisease_id: 5\nsource_id: 58\nvariant_id: 9\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:29432664-29432664 (C->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	78f8d589-a7fc-4597-9704-a0d27c0dc47a	2015-06-02 22:29:13.078248
225	19	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: TAE684 inhibits growth of Ba/F3 cells expressing ALK mutations; however,\n  cells with the R1275Q mutation were inhibited at a higher IC50 than those expressing\n  F1174L.\ndisease_id: 5\nsource_id: 60\nvariant_id: 9\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:29432664-29432664 (C->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	7fe1254e-4d09-4ca5-ae40-4f910d187ec4	2015-06-02 22:29:13.09718
226	20	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The SMS-KCNR cell line harboring the R1275Q mutation was resistant to\n  TAE684.\ndisease_id: 5\nsource_id: 60\nvariant_id: 9\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:29432664-29432664 (C->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	e592418d-2ec2-4f88-a25f-b3518ba11946	2015-06-02 22:29:13.128153
227	21	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In one patient with S214C mutation, the use of sorafenib has led to more\n  than 5 years of survival and near remission.\ndisease_id: 3\nsource_id: 61\nvariant_id: 10\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: X:47426121-47426121 (C->G)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	871473ef-0a31-40ad-9f41-56822de188e6	2015-06-02 22:29:13.147522
228	22	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Sorafenib can inhibit ARF-mediated MEK phosphorylation and soft agar\n  colony formation of AALE cells expressing ARAF S214C in vitro\ndisease_id: 3\nsource_id: 61\nvariant_id: 10\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: X:47426121-47426121 (C->G)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	741de710-e4a7-48f6-b53e-35d8c162308a	2015-06-02 22:29:13.168194
229	23	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Trametinib can inhibit ARF-mediated ERK phosphorylation and soft agar\n  colony formation of AALE cells expressing ARAF S214C in vitro\ndisease_id: 3\nsource_id: 61\nvariant_id: 10\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: X:47426121-47426121 (C->G)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	30c0fbc7-6c1a-4832-9747-6c185720f131	2015-06-02 22:29:13.19745
230	24	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In metastatic colorectal cancer patients with wildtype KRAS, BRAF mutations\n  were associated with poor progression free survival regardless of treatment (panitumumab\n  with best supportive care or best supportive care alone)\ndisease_id: 6\nsource_id: 62\nvariant_id: 17\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	363b43f0-ad54-43cc-a47d-2318b2215a37	2015-06-02 22:29:13.246753
231	25	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Melanoma patients with BRAF V600E/K mutations had longer progression-free\n  survival, increased tumor regression,  and increased duration of response to combined\n  dabrafenib and trametinib treatment compared to dabrafenib alone\ndisease_id: 7\nsource_id: 63\nvariant_id: 17\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	b8eeac01-435f-4695-b15e-bcc416053b1f	2015-06-02 22:29:13.287272
232	26	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: BRAF mutations are associated with melanoma arising in non-chronic sun\n  damaged skin and with superficial spreading melanoma\ndisease_id: 7\nsource_id: 64\nvariant_id: 17\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	ec6129f9-f25e-458a-80da-8bbd84f6f886	2015-06-02 22:29:13.31914
233	27	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with other BRAF V600 mutations also respond well to the V600E\n  drug dabrafenib.\ndisease_id: 7\nsource_id: 65\nvariant_id: 11\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453135-140453136 (CA->AT)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	6ec8496b-7c63-4220-bfb3-38be944cd4cf	2015-06-02 22:29:13.342719
234	4	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: Other V600's\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	9414f91f-5d77-482e-9210-e30d35fd3e1c	2015-06-02 22:29:13.356394
235	28	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cetuximab or panitumumab may be ineffective in patients with BRAF mutation\n  unless BRAF inhibitor such as Sorafenib is introduced.\ndisease_id: 8\nsource_id: 66\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	911bd21f-129d-4ff4-a2ee-df497a0f64fa	2015-06-02 22:29:13.380658
236	29	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Combined PD0325901 and PLX4720 administration to NSG mice subcutanousely\n  injected with colorectal cell lines with a BRAF V600E mutation effectively inhibited\n  tumor growth and reduced cellular proliferation\ndisease_id: 8\nsource_id: 67\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	677ec873-a5aa-49dd-9219-131ceb46f6d3	2015-06-02 22:29:13.409592
237	30	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Combined nutlin-3 and PLX4720 administration to athymic nude mice subcutanousely\n  injected with the A357 colorectal cell line with a BRAF V600E mutation effectively\n  inhibited tumor growth significantly more than single agent therapy\ndisease_id: 8\nsource_id: 68\nvariant_id: 12\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	418bc1ab-7754-431d-895b-9bfae9dd43cd	2015-06-02 22:29:13.435143
238	31	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Mouse xenografts using HT29 cells harboring the BRAF V600E mutation treated\n  with combination therapy (capecitabine, vemurafenib, bevacizumab) showed increased\n  survival and reduced tumor burden compared to single and double agent therapies.\ndisease_id: 6\nsource_id: 69\nvariant_id: 12\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	91502b2b-02dc-4b3d-a3e5-7cfa7d40af0d	2015-06-02 22:29:13.460858
239	32	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Chemotherapy-refractory patients with colorectal cancer harboring BRAF\n  mutations had lower response and disease control rates as well as shorter progression\n  free and overall survival following cetuximab plus chemotherapy than those with\n  wildtype BRAF\ndisease_id: 6\nsource_id: 70\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	e544bd29-90d1-4465-a6ed-78fc830a2b43	2015-06-02 22:29:13.489259
240	33	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: V600E is associated with adverse pathological features of colorectal\n  cancer. This can be concluded as a marker of poor prognosis.\ndisease_id: 6\nsource_id: 71\nvariant_id: 12\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 0\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	60efa109-2ae1-44e3-9935-7fe7ae1128fb	2015-06-02 22:29:13.56296
241	34	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cell lines expressing the BRAF V600E mutation responded better to vemurafenib\n  treatment than cells wildtype for BRAF as measured by reduced cellular proliferation\n  and inhibition of MET and ERK phosphorylation\ndisease_id: 6\nsource_id: 69\nvariant_id: 12\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	59ef405a-48ac-4fda-bb2e-2f27e067b355	2015-06-02 22:29:13.582664
242	35	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: BRAF status does not predict prognosis in patients treated with dacarbazine\n  or temozolomide.\ndisease_id: 7\nsource_id: 72\nvariant_id: 12\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	775cad45-c97c-4086-99f2-fa7abebcb667	2015-06-02 22:29:13.604442
243	36	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Dabrafenib with trametinib provides higher response rate and lower toxicity-as\n  compared to chemotherapy-in patients with melanoma.\ndisease_id: 7\nsource_id: 73\nvariant_id: 12\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	afaef8f3-4399-4d14-8b71-fe3fdd3a190c	2015-06-02 22:29:13.629973
244	37	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In the setting of BRAF(V600E), NF1 loss resulted in elevated activation\n  of RAS-GTP but does not show resistance to MEK inhibitors.\ndisease_id: 7\nsource_id: 74\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	d1c3b675-92d3-4989-8a39-3fa4ff893c4d	2015-06-02 22:29:13.652274
245	38	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In the setting of BRAF(V600E), NF1 loss resulted in elevated activation\n  of RAS-GTP and resistance to RAF inhibitors.\ndisease_id: 7\nsource_id: 74\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	68e6abf7-88d1-46ff-8fec-e10bc3205c50	2015-06-02 22:29:13.670158
246	39	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: BRAF V600E is correlated with shorter disease-free and overall Survival\n  in a Spanish cohort of melanoma patients.\ndisease_id: 7\nsource_id: 75\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	93aa160a-24a6-46c1-970c-7e50462abf9a	2015-06-02 22:29:13.689135
247	40	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a patient with V600E-positive NSCLC, KRAS G12D seemed to confer resistance\n  to dabrafenib.\ndisease_id: 3\nsource_id: 76\nvariant_id: 12\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	78a09f4c-5684-4917-bc43-5b7a25fabe2f	2015-06-02 22:29:13.708186
248	41	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: BRAF V600E is shown to be associated with the tall-cell variant of papillary\n  thyroid cancer\ndisease_id: 9\nsource_id: 77\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	a99d7f9a-5ca5-42f2-a5b8-f26750ae1fa9	2015-06-02 22:29:13.727888
249	42	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Thyroid nodule with BRAF V600E mutation is highly correlated with papillary\n  thyroid cancer.\ndisease_id: 9\nsource_id: 78\nvariant_id: 12\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	2881e74c-58f0-422a-b57c-4c563fbc8c5a	2015-06-02 22:29:13.746644
250	43	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Thyroid nodule with BRAF V600E mutation is highly correlated with papillary\n  thyroid cancer.\ndisease_id: 9\nsource_id: 79\nvariant_id: 12\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	383e4861-7341-47f9-8ae3-bf54ceaa2bf8	2015-06-02 22:29:13.765249
251	44	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Unlike other studies that suggest a poorer outcome, BRAF mutation in\n  this study was not correlated with poorer prognosis in papillary thyroid cancer.\ndisease_id: 9\nsource_id: 80\nvariant_id: 12\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	80788a56-3b1a-4818-98ae-80ba2af0f56d	2015-06-02 22:29:13.783691
252	45	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: BRAF mutation correlated with poor prognosis in papillary thyroid cancer\n  in both older (>65 yo) and younger (<65 yo) cohorts.\ndisease_id: 9\nsource_id: 77\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	b6c51239-4523-4468-ab5d-1684d449a33f	2015-06-02 22:29:13.801438
253	46	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: BRAF V600E is correlated with poor prognosis in papillary thyroid cancer\n  in a study of 187 patients with PTC and other thyroid diseases.\ndisease_id: 9\nsource_id: 81\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	fbb2de89-8469-4a4b-861c-5df4f3eb5669	2015-06-02 22:29:13.820822
254	47	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: V600E is correlated with disease recurrence in both age cohorts (>65\n  and <65 yo).\ndisease_id: 9\nsource_id: 77\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453136 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	519c3963-2744-481c-8e6b-21fce1a3a156	2015-06-02 22:29:13.838205
255	48	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: COLO201 and COLO206F cells harboring BRAF V600E mutations were cloned\n  to be MEK inhibitor (AZD6244) resistant. The mechanim of this resistence was shown\n  to be amplification of the BRAF V600E gene.\ndisease_id: 6\nsource_id: 82\nvariant_id: 14\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	4cb0f354-83ef-4d38-ae28-e28913b8fb59	2015-06-02 22:29:13.857258
256	49	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: A single patient with BRAF V600E/V600M bi-allelic mutation responded\n  to the V600E drug dabrafenib.\ndisease_id: 7\nsource_id: 83\nvariant_id: 13\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d116cbc8-0c8d-4719-a8b6-af4a498ce98f	2015-06-02 22:29:13.877531
257	50	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with other BRAF V600 mutations also respond well to the V600E\n  drug dabrafenib.\ndisease_id: 7\nsource_id: 65\nvariant_id: 15\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453137-140453137 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	8516eb76-5458-4edc-b820-6dc2e7560dcc	2015-06-02 22:29:13.9013
258	51	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with other BRAF V600 mutations also respond well to the V600E\n  drug dabrafenib.\ndisease_id: 7\nsource_id: 65\nvariant_id: 16\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:140453136-140453137 (AC->CT)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d54534e9-b2ed-48a3-96a1-f936a90c5355	2015-06-02 22:29:13.937196
259	52	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The combination of PARP inhibition (Olaparib) with BRCA mutation results\n  in irreparable and lethal DNA damage. Response rates are higher in BRCA1 mutation\n  positive women with high grade serous or undifferentiated ovarian cancer.\ndisease_id: 10\nsource_id: 84\nvariant_id: 131\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 1\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d4ddc454-f5bb-459b-8da3-336d467cf348	2015-06-02 22:29:13.961695
260	5	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: BRCA Germline Variants\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	11eebf36-e726-40fb-b592-5692c1e5a04f	2015-06-02 22:29:13.974561
261	53	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The combination of PARP inhibition (Olaparib) with BRCA mutation results\n  in irreparable and lethal DNA damage. Response rates are higher in BRCA2 mutation\n  positive women with high grade serous or undifferentiated ovarian cancer.\ndisease_id: 10\nsource_id: 84\nvariant_id: 132\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 1\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	14852e1e-aac1-44e0-9749-6b82676506ea	2015-06-02 22:29:13.991688
262	54	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Inceased copy number of CCND1 is associated with poorer overall survival.\ndisease_id: 3\nsource_id: 85\nvariant_id: 18\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	f4e7fbaa-1e74-42a7-bf59-78c84cad7d13	2015-06-02 22:29:14.015541
263	55	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Three studies have found no significant survival impact for CCND1 in\n  lung cancer.\ndisease_id: 3\nsource_id: 85\nvariant_id: 19\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	c8e4a4af-dc3c-4c72-a39c-b20972d589d6	2015-06-02 22:29:14.034294
264	56	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Three studies have associated CCND1 expression with poorer survival.\ndisease_id: 3\nsource_id: 85\nvariant_id: 19\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	3dd78953-eac1-446d-b832-8e29f3f2e4d7	2015-06-02 22:29:14.052193
265	57	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cyclin D1 overexpression is associated with the ER-positive subtype of\n  breast cancer.\ndisease_id: 11\nsource_id: 86\nvariant_id: 20\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	20ae8d41-4afa-4d54-9f63-454c1b5f43dd	2015-06-02 22:29:14.072067
266	58	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In ER-positive breast cancer patients, Cyclin D1 overexpression is associated\n  with shorter overall survival and increased metastasis.\ndisease_id: 11\nsource_id: 86\nvariant_id: 20\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	05001c82-64ad-4c74-96e7-20e62d398035	2015-06-02 22:29:14.089973
267	59	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cyclin D1 overexpression is associated with shorter overall survival\n  and increased metastasis in head and neck squamous cell carcinoma.\ndisease_id: 12\nsource_id: 87\nvariant_id: 20\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	86775008-e20b-4c88-a288-372c6adc3ee9	2015-06-02 22:29:14.109701
268	60	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cyclin D1 overexpression is associated with shorter overall survival\n  and increased metastasis in mantle cell lymphoma.\ndisease_id: 13\nsource_id: 88\nvariant_id: 20\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	c130d757-4eec-4a82-878f-97ca0be31dff	2015-06-02 22:29:14.129062
269	61	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cyclin D2 overexpression is associated with poor prognosis in gastric\n  cancers.\ndisease_id: 14\nsource_id: 89\nvariant_id: 21\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	8a71aee9-ef31-4793-ab49-c94b221482a5	2015-06-02 22:29:14.148956
270	62	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cyclin D2 overexpression is associated with the increased depth of cancer\n  invasion in gastric cancers.\ndisease_id: 14\nsource_id: 89\nvariant_id: 21\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	2ae45220-a18e-46f3-9706-45de0bea6f3c	2015-06-02 22:29:14.166784
271	63	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cyclin D2 overexpression is associated with the presence pf lymph node\n  metastasis in gastric cancers.\ndisease_id: 14\nsource_id: 89\nvariant_id: 21\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	15d900a6-ea6f-4486-a79c-9f258c4acf56	2015-06-02 22:29:14.184877
272	64	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cyclin D2 overexpression is associated with vascular invasion by cancer\n  cells in gastric cancers.\ndisease_id: 14\nsource_id: 89\nvariant_id: 21\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	669cd3ac-96b4-47c5-8b1d-9e29d8c63daa	2015-06-02 22:29:14.202402
273	65	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: CCND2 hypomethylation is seen to be more common in stage III and IV gastric\n  tumors than stage I and II.\ndisease_id: 14\nsource_id: 90\nvariant_id: 22\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 5\ndeleted: false\ndeleted_at: \n	1	\N	\N	f83d3463-aac4-43a0-8b5c-89fbfc200723	2015-06-02 22:29:14.221497
274	66	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Treatment of Notch-driven T-cell leukemia in Ccnd3 knockout mice with\n  Palbociclib (PD-0332991) significantly increased median survival.\ndisease_id: 15\nsource_id: 91\nvariant_id: 23\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	a61a298f-92b7-4be5-98a4-f5b03f3c7c58	2015-06-02 22:29:14.241852
275	67	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with high expression of total cyclin E and low-molecular weight\n  cyclin E is strongly associated with poor prognosis in breast cancer, and the hazard\n  ratio for these patients in 13.3 times higher than those with normal cyclin E levels.\ndisease_id: 11\nsource_id: 92\nvariant_id: 24\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	f56970a9-003b-44c9-99d7-dedd26602cef	2015-06-02 22:29:14.262395
276	68	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Elevated levels of CCNE1 mRNA has been shown to be correlated with advanced\n  stage gastric carcinoma.\ndisease_id: 16\nsource_id: 93\nvariant_id: 24\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	7380ccd0-dea8-46e6-9919-6f114404711e	2015-06-02 22:29:14.29851
277	69	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Elevated levels of CCNE1 mRNA has been shown to be correlated with increased\n  depth of tumor invasion in gastic carcinoma.\ndisease_id: 16\nsource_id: 93\nvariant_id: 24\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	fedea1ff-f0f1-435d-8876-6a64ceedadba	2015-06-02 22:29:14.316543
278	70	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Elevated levels of CCNE1 mRNA has been shown to be correlated with increased\n  depth of tumor invasion in gastic carcinoma.\ndisease_id: 17\nsource_id: 93\nvariant_id: 24\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	c9dea00c-5b2a-413f-bb5f-5b92576e32fa	2015-06-02 22:29:14.335688
279	71	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In mouse xenograft studies of PIK3CA mutant breast cancers, the combination\n  of PI3K and CDK4/6 inhibitors overcomes intrinsic and adaptive resistance leading\n  to tumor regressions.\ndisease_id: 18\nsource_id: 94\nvariant_id: 25\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	5835d307-791b-4a18-8a77-487aa9928ac8	2015-06-02 22:29:14.356061
280	72	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Palbociclib has been shown to dramatically improve progression-free survival\n  by over 18 months in patients with ER+ Breast Cancer.\ndisease_id: 18\nsource_id: 95\nvariant_id: 25\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	e428c3cd-53fc-4168-9a03-3ee7686e6bee	2015-06-02 22:29:14.376154
281	73	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In mouse xenograft studies of PIK3CA mutant breast cancers, the combination\n  of PI3K and CDK4/6 inhibitors overcomes intrinsic and adaptive resistance leading\n  to tumor regressions.\ndisease_id: 18\nsource_id: 94\nvariant_id: 26\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	c2d55ba9-11ca-4c3e-9730-30a2c17cb8a0	2015-06-02 22:29:14.395234
282	74	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Palbociclib has been shown to dramatically improve progression-free survival\n  by over 18 months in patients with ER+ Breast Cancer.\ndisease_id: 18\nsource_id: 95\nvariant_id: 26\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	86bc3c38-edca-4beb-9d7b-43d1fdc74da2	2015-06-02 22:29:14.413069
283	75	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In NSCLC patients younger than 60 years at age of diagnosis, p16 (CDKN2A)\n  promoter hypermethylation is associated with shorter overall survival.\ndisease_id: 3\nsource_id: 96\nvariant_id: 27\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	24087987-f082-40f5-8d58-2037621efece	2015-06-02 22:29:14.432372
284	76	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In NSCLC patients younger than 60 years at age of diagnosis, p16 (CDKN2A)\n  promoter hypermethylation is associated with shorter time to recurrence.\ndisease_id: 3\nsource_id: 96\nvariant_id: 27\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	440b2d48-a3fa-4625-9eac-2c855adf52f9	2015-06-02 22:29:14.450448
285	77	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: CEBPA mutation status had no impact on ATRA treatment response in older\n  (>60) patients with AML\ndisease_id: 19\nsource_id: 97\nvariant_id: 29\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	94820553-b55c-4354-9512-2bd8fad94fe7	2015-06-02 22:29:14.470446
286	78	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: CEBPA mutation was associated with improved overall survival in older\n  (>60) patients with AML\ndisease_id: 19\nsource_id: 97\nvariant_id: 29\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	2711af5f-61ce-449b-817e-61fb62bfcf8a	2015-06-02 22:29:14.488028
287	79	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: CEBPA mutation was significantly associated with complete remission\ndisease_id: 19\nsource_id: 98\nvariant_id: 29\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	184c10ee-6c8a-4d6b-bfde-e6d6875b7aa1	2015-06-02 22:29:14.507019
288	80	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: FLT3 mutations did not alter overall survival in younger (16-60), cytogenetically\n  normal AML patients with CEBPA\ndisease_id: 19\nsource_id: 99\nvariant_id: 28\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	258a2fa2-270b-4be9-9de2-414ac0b403a6	2015-06-02 22:29:14.526295
289	81	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Overall survival was significantly longer in younger (16-60), cytogenetically\n  normal AML patients with CEBPA mutations\ndisease_id: 19\nsource_id: 99\nvariant_id: 28\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	ae232ed9-4053-4dd4-9a76-b6a0bca8c0d2	2015-06-02 22:29:14.544135
290	82	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Remission duration was significantly longer in younger (16-60), cytogenetically\n  normal AML patients with CEBPA\ndisease_id: 19\nsource_id: 99\nvariant_id: 28\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	0ac42f53-8783-4ee2-bd3e-87d73ba0da4a	2015-06-02 22:29:14.561667
291	83	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cell lines with MEF2D-CSF1R fusion show sensitivity to the tyrosine kinase\n  inhibitors Imatinib and GW-2580\ndisease_id: 20\nsource_id: 100\nvariant_id: 30\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	b0c0e717-8b67-4abb-8dcd-c2d8eeef14a5	2015-06-02 22:29:14.582471
292	84	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In 3T3 fibroblasts expressing the G253C mutation have to be sensitive\n  to the tyrosine kinase inhibitor dasatinib.\ndisease_id: 3\nsource_id: 101\nvariant_id: 141\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d5e37a64-a3d1-4c83-a86b-fb79f88b92bd	2015-06-02 22:29:14.604754
293	85	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In 3T3 fibroblasts expressing the G505S mutation have to be sensitive\n  to the tyrosine kinase inhibitor dasatinib.\ndisease_id: 3\nsource_id: 101\nvariant_id: 142\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	0ec044ed-b8da-4fe8-b802-ad0285cd4c6d	2015-06-02 22:29:14.636135
294	86	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In 3T3 fibroblasts expressing the G774V mutation have to be sensitive\n  to the tyrosine kinase inhibitor dasatinib.\ndisease_id: 3\nsource_id: 101\nvariant_id: 144\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	f7f16e97-54c5-4f17-83d7-f713cfaf3a5e	2015-06-02 22:29:14.654481
295	87	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In 3T3 fibroblasts expressing the I638F mutation have to be sensitive\n  to the tyrosine kinase inhibitor dasatinib.\ndisease_id: 3\nsource_id: 101\nvariant_id: 143\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	fec2fa0e-3f52-46bf-935d-eeb2ca012707	2015-06-02 22:29:14.672625
296	88	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In 3T3 fibroblasts expressing the L239R mutation have to be sensitive\n  to the tyrosine kinase inhibitor dasatinib.\ndisease_id: 3\nsource_id: 101\nvariant_id: 140\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	6c40041e-352a-453f-a340-3526f8bdb475	2015-06-02 22:29:14.690797
297	89	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In 3T3 fibroblasts expressing the L63V mutation have to be sensitive\n  to the tyrosine kinase inhibitor dasatinib.\ndisease_id: 3\nsource_id: 101\nvariant_id: 139\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	3a529b92-9179-40b3-a9ce-8da81e4cc971	2015-06-02 22:29:14.708751
298	90	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a patient expressing a DDR2 S768R mutation, treatment with dasatinib\n  plus erlotinib acheived a partial response.\ndisease_id: 3\nsource_id: 101\nvariant_id: 145\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	88de05d3-abe0-431a-9865-75d95f81ef45	2015-06-02 22:29:14.727295
299	91	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: A head-to-tail in-frame fusion between exon1 of DNAJB1 and exon2 of PRKACA\n  resulting from a ~400kb deletion was observed in 100% (15/15) fibrolamellar hepatocellular\n  carcinomas examined. The fusion was confirmed at both RNA and DNA level in all primary\n  and metastatic tumor samples but not in adjacent normal tissue. Immunoprecipitation\n  and Western blot analyses confirmed that the chimeric protein is expressed in tumor\n  tissue, and a cell culture assay indicated that it retains kinase activity.\ndisease_id: 21\nsource_id: 102\nvariant_id: 31\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	5c68412a-69bf-49ba-b878-a7e89b4edd1d	2015-06-02 22:29:14.750479
300	92	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Daunorubicin treatment resulted in similar overall survival and disease\n  free survival in de novo AML patients with DNMT3A R882 mutation compared to those\n  who do not harbor this mutation.\ndisease_id: 19\nsource_id: 103\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	55017866-d524-4683-aa9c-c7e54d96c9f4	2015-06-02 22:29:14.769724
301	93	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Idarubicin increases the overall survival and disease free survival in\n  de novo AML patients with DNMT3A R882 mutation compared to those who do not harbor\n  this mutation.\ndisease_id: 19\nsource_id: 103\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	bdbf53f7-af1b-487b-9b99-e3b34af2b1d8	2015-06-02 22:29:14.788638
302	94	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Therapy-related AML was less common in patients with DNMT3A mutations\n  (64.5% of which were R882) than patients wildtype for DNMT3A in a large cohort of\n  younger (18-60) AML patients\ndisease_id: 19\nsource_id: 104\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 5\ndeleted: false\ndeleted_at: \n	1	\N	\N	094c3abe-43b3-4680-91ea-2a46ae6be896	2015-06-02 22:29:14.80887
303	95	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: DNMT3A mutations (59% of which were R882) were associated with an intermediate\n  risk cytogenetic profile, normal cytogenetic profile, and M4 and M5 FAB subtypes\ndisease_id: 19\nsource_id: 105\nvariant_id: 32\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	6a7cf4f1-267a-4d39-8e50-33bcf2a0e734	2015-06-02 22:29:14.828573
304	96	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: DNMT3A mutations (59% of which were R882) were associated with intermediate\n  risk cytogenetics (including normal karyotype)\ndisease_id: 19\nsource_id: 105\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	4488d659-8608-4cbc-b889-16f9a9e042ec	2015-06-02 22:29:14.847211
305	97	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: DNMT3A mutations (64.5% R882) were associated with older age, higher\n  white blood cell count and cytogenetically normal AML in a large cohort of younger\n  (18-60) AML patients\ndisease_id: 19\nsource_id: 104\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	438ae4be-94a1-467f-bacc-58ba4b142d2a	2015-06-02 22:29:14.864765
306	98	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: DNMT3A R882 mutations occur most often in de novo AML patients with intermediate\n  cytogenic risk.\ndisease_id: 19\nsource_id: 103\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	d86eacfb-df37-4ba8-9506-c696258a596f	2015-06-02 22:29:14.881965
307	99	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: DNMT3A R882 mutations were associated with cytogenetically normal AML\n  in a large cohort of younger (18-60) AML patients\ndisease_id: 19\nsource_id: 104\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	90406d18-c386-47f6-98d3-35f96b9cbf5b	2015-06-02 22:29:14.898892
308	100	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: DNMT3A R882 mutations were associated with older age, higher white blood\n  cell count, and FAB M4 and M5 subtypes compared to wildtype DNMT3A in a cohort of\n  cytogenetically normal AML patients\ndisease_id: 19\nsource_id: 106\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	707c5ad1-b38e-40d5-aeb0-8e88373d16da	2015-06-02 22:29:14.917178
309	101	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Young AML patients (<60 years old) with DNMT3A mutations (60% of which\n  were R882) were older in age, had higher white blood cell counts and had higher\n  platelet counts than patients wildtype for DNMT3A\ndisease_id: 19\nsource_id: 107\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	95fd31fe-4f8f-413b-8944-bbe63cc69b48	2015-06-02 22:29:14.936062
310	102	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Complete remission rates did not differ between patients with wildtype\n  or mutant DNMT3A (62% of which affected R882) and cytogenetically normal AML\ndisease_id: 19\nsource_id: 108\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	feed98a3-2824-44cc-8a82-db0bbd7e9860	2015-06-02 22:29:14.968422
311	103	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a large cohort of AML patients (mean = 48 years), DNMT3A mutation\n  (64.5% of which were R882) had no prognostic value on overall, relapse free and\n  event free survival.\ndisease_id: 19\nsource_id: 104\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	4153aefb-2258-4a32-829c-70fab68084ea	2015-06-02 22:29:14.98611
312	104	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a large cohort of cytogenetically normal AML patients (18-60 years\n  old), DNMT3A mutation status (65.4% of which were R882) had no prognostic value\n  for overall, relapse free and event free survival\ndisease_id: 19\nsource_id: 104\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	d1b7bde1-59c5-4791-981a-e9761963850c	2015-06-02 22:29:15.003633
313	105	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In young AML patients (<60 years old), DNMT3A mutation status (60% of\n  which were R882) was not predictive of overall and relapse free survival in patients\n  with NPM1 mutations and wildtype FLT3 or wildtype NPM1 and FLT3-ITD\ndisease_id: 19\nsource_id: 107\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	2ae47c6c-9844-4051-90ed-cd142800781f	2015-06-02 22:29:15.021254
314	106	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: There is no difference in the complete remission rate of de novo AML\n  patients with DNMT3A mutation compared to those who are wild type for DNMT3A.\ndisease_id: 19\nsource_id: 103\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	00b5eb53-ef3d-4ef7-bb3e-50d8b20f0ea6	2015-06-02 22:29:15.038696
315	107	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: DNMT3A mutations were associated with achievement of complete remission\n  in a large cohort of younger (18-60) AML patients\ndisease_id: 19\nsource_id: 104\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	7c626b58-fc78-4ca7-8818-5c2a8374a5e4	2015-06-02 22:29:15.056082
316	108	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: AML patients with DNMT3A mutations (59% of which were R882) showed worse\n  survival (event-free and overall) outcome than those without DNMT3A mutation.\ndisease_id: 19\nsource_id: 105\nvariant_id: 32\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	d63bceed-4d5f-4541-988f-ef32ef3ee97d	2015-06-02 22:29:15.07326
317	109	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Complete remission rate was not different between young AML patients\n  (<60 years old) with or without DNMT3A mutations (60% of which were R882)\ndisease_id: 19\nsource_id: 107\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	56586ff3-2d1d-4f7c-a969-ab04fb63b7fb	2015-06-02 22:29:15.090432
318	110	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: De novo AML patients with DNMT3A D882 mutation showed worse survival\n  (event-free and overall) outcome than those without DNMT3A mutation.\ndisease_id: 19\nsource_id: 105\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	d71e78ee-d6f0-4936-ad61-8c5f42e960b2	2015-06-02 22:29:15.107523
319	111	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: DNMT3A mutations (62% of which were R882) were associated with reduced\n  disease-free survival in patients with cytogenetically normal AML.\ndisease_id: 19\nsource_id: 108\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	87b01520-3ca6-44fa-82e3-6125012241b0	2015-06-02 22:29:15.124819
320	112	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: DNMT3A R882 mutation was associated with reduced relapse free and overall\n  survival in ELN-unfavorable, cytogenetically normal AMLs\ndisease_id: 19\nsource_id: 104\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	ef1f6e0e-93ea-4275-9a04-8f5dd5cbd273	2015-06-02 22:29:15.142099
321	113	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a large cohort of young AML patients (18-60 years old), DNMT3A R882\n  mutations were associated with reduced relapse free survival in the entire cohort\n  as well as the subset of patients with cytogenetically normal AML\ndisease_id: 19\nsource_id: 104\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 0\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	41d7a452-107c-4ab7-9e42-54c8e6fa53ca	2015-06-02 22:29:15.159066
322	114	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In AML patients with FLT3-ITD mutations, concurrent DNMT3A mutations\n  (including R882) were associated with worse overall survival compared to those without\n  DNMT3A mutation.\ndisease_id: 19\nsource_id: 105\nvariant_id: 32\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	c3e7ce2b-3b56-45f2-be14-ae3979f49d27	2015-06-02 22:29:15.176486
323	115	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In cytogenetically normal AML patients, DNMT3A R882 mutations are associated\n  with lower overall and disease free survival as compared to patients with wild type\n  DNMT3A.\ndisease_id: 19\nsource_id: 106\nvariant_id: 32\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	a4e993d1-7ac6-4c68-8f3f-fbab84f82eb6	2015-06-02 22:29:15.194469
324	116	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In older cytogenetically normal AML patients (>59 years), DNMT3A R882\n  mutation is prognostic for shorter disease free survival and overall survival compared\n  to patients without the mutation.\ndisease_id: 19\nsource_id: 108\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	0dee99ba-04f0-458d-aedc-331a7ef3a652	2015-06-02 22:29:15.21247
325	117	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In young AML patients (<60 years old), DNMT3A mutations were associated\n  with significantly reduced overall survival and relapse free survival in patients\n  wildtype for NPM1 and FLT3\ndisease_id: 19\nsource_id: 107\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	6cedf549-aacb-47af-918b-35b8d4c31f57	2015-06-02 22:29:15.230723
326	118	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In younger cytogenetically normal AML patients (<60 years), DNMT3A mutations\n  other than R882 are prognostic for shorter disease free survival and overall survival\n  compared to patients without the mutation.\ndisease_id: 19\nsource_id: 108\nvariant_id: 32\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	55488f1d-2b2a-4110-8a93-a2f6512f7dca	2015-06-02 22:29:15.249104
327	119	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Young AML patients (<60 years old) with DNMT3A mutation have shorter\n  overall survival and relapse-free survival than patients with wildtype DNMT3A\ndisease_id: 19\nsource_id: 107\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	1a35aa85-ea16-439a-abe4-b78385227b39	2015-06-02 22:29:15.281111
328	120	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Young AML patients (<60 years old) with DNMT3A R882 mutations have shorter\n  overall survival and relapse-free survival than patients with wildtype DNMT3A\ndisease_id: 19\nsource_id: 107\nvariant_id: 32\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	8b312c36-4dd1-48fa-b701-af97573d8142	2015-06-02 22:29:15.299327
329	121	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Exon 19 deletion has been shown to be correlated with gefitinib response.\ndisease_id: 3\nsource_id: 109\nvariant_id: 133\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	90442a0d-0929-4735-9bdf-07660c1208b8	2015-06-02 22:29:15.319281
330	122	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Gefinitib has been shown to be effective in treating cell lines with\n  G719S missense mutations.\ndisease_id: 3\nsource_id: 110\nvariant_id: 134\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	1ee0899a-7401-4588-8848-2360ed1de07f	2015-06-02 22:29:15.339731
331	123	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: There is no statistical difference in progression free survival between\n  lung cancer patients treated with gefitinib or erlotinib in the EGFR L858R setting.\ndisease_id: 3\nsource_id: 111\nvariant_id: 33\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:55259514-55259515 (CT->AG)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	22b3aeca-b3fc-41f4-a7bb-a0b6baac1af5	2015-06-02 22:29:15.35969
332	124	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: There is no statistical difference in progression free survival between\n  lung cancer patients treated with gefitinib or erlotinib in the EGFR L858R setting.\ndisease_id: 3\nsource_id: 111\nvariant_id: 33\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:55259514-55259515 (CT->AG)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	44135b30-7cf3-4627-bbe7-dd40a45a04ed	2015-06-02 22:29:15.380077
333	125	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In NSCLC patients treated with EGFR tyrosine kinase inhibitors, the presence\n  of L858R mutation is prognostic for better progression free survival.\ndisease_id: 3\nsource_id: 112\nvariant_id: 33\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:55259514-55259515 (CT->AG)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	c5ca00d6-7cb6-43fe-b774-cea9f649f795	2015-06-02 22:29:15.40096
334	126	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Median survival of patients with EGFR L858R mutation is better than those\n  with wild type EGFR.\ndisease_id: 3\nsource_id: 113\nvariant_id: 33\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:55259514-55259515 (CT->AG)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	583d7520-7618-4768-8a3a-ad0a988f93eb	2015-06-02 22:29:15.41998
335	127	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Gefinitib has been shown to be effective in treating cell lines with\n  L858R missense mutations.\ndisease_id: 3\nsource_id: 110\nvariant_id: 33\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	1a0a9e20-5809-4210-ac31-3453b2cd4f59	2015-06-02 22:29:15.437497
336	128	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The T790M mutation in EGFR has been shown to confer resistance to the\n  tyrosine kinase inhibitor erlotinib, and patients harboring this mutation that are\n  placed on the drug are likely to relapse.\ndisease_id: 22\nsource_id: 114\nvariant_id: 34\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:55249071-55249071 (C->T)\ndrug_interaction_description: \nevidence_level: 0\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	cea2e3c2-8a83-4ef0-9667-5489b611f7ce	2015-06-02 22:29:15.457311
337	6	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: TKI Resistance\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	dfc68466-46b7-4a98-9c4c-38ab365f1ea1	2015-06-02 22:29:15.468633
338	129	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a NSCLC patient with T790M and L858R mutation, combination treatment\n  with erlotinib and premetrexed has shown to be effective, reducing tumor size and\n  resulting in stable disease.\ndisease_id: 3\nsource_id: 115\nvariant_id: 34\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:55249071-55249071 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	da531bdb-cb13-4214-944b-78a33ba40c55	2015-06-02 22:29:15.486983
339	130	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In non-small cell lung cancer, the appearance of T790M mutation leads\n  to resistance to gefitinib.\ndisease_id: 3\nsource_id: 116\nvariant_id: 34\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:55249071-55249071 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	eb70af39-5c4a-49b6-a459-5a9ee58fbdc7	2015-06-02 22:29:15.50847
340	131	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In NSCLC patients with T790M and another activating mutations, their\n  progression free survival is shorter compared to those who do not possess T790M\n  mutation.\ndisease_id: 3\nsource_id: 117\nvariant_id: 34\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:55249071-55249071 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	4dc368c3-1a0f-4941-a9b1-3ef75d8039ff	2015-06-02 22:29:15.526906
341	132	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with NSCLC harboring EGFR T790M mutation have statistically\n  worse overall survival compared to patients with L858R or other exon 19 activating\n  mutations.\ndisease_id: 3\nsource_id: 118\nvariant_id: 34\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:55249071-55249071 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	e3359b4b-b9ff-491e-b347-015a9b096bf0	2015-06-02 22:29:15.545865
342	133	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In NSCLC containing a T790M mutation, staurosporine may be inhibitive\n  of EGFR, especially when an L858R mutation is also present.\ndisease_id: 3\nsource_id: 119\nvariant_id: 34\nrating: 1\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 7:55249071-55249071 (C->T)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	00294f73-e35e-435a-b939-1d325c577a5e	2015-06-02 22:29:15.56505
343	134	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In Lung Cancer patients with acquired resistance to Dacomitinib (PF00299804),\n  MET amplification and EGFR T790M were found to be the primary drivers of resistance.\ndisease_id: 3\nsource_id: 120\nvariant_id: 34\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	7b550679-f690-473d-8ea9-5d5b83bcdd4b	2015-06-02 22:29:15.598923
344	135	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In MCF10A cell lines, the D769H mutation was shown to be sensitive to\n  neratinib.\ndisease_id: 11\nsource_id: 121\nvariant_id: 35\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:37880261-37880261 (G->C)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	8812cd94-db03-4557-b9a9-f7091fe70103	2015-06-02 22:29:15.623326
345	7	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: HER2 Activating\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	5a380c3b-ce71-4a09-9da8-9091eee9c8b6	2015-06-02 22:29:15.636172
346	136	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In MCF10A cell lines, the D769Y mutation was shown to be sensitive to\n  neratinib.\ndisease_id: 11\nsource_id: 121\nvariant_id: 36\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:37880261-37880261 (G->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	f003b4e7-431b-47eb-851e-47b32d8fc30a	2015-06-02 22:29:15.652986
347	137	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In MCF10A cell lines retrovirally transduced with wildtype or mutant\n  ERBB2, cells expressing the in-frame deletion of amino acids 755-759 were shown\n  to be sensitive to neratinib.\ndisease_id: 11\nsource_id: 121\nvariant_id: 37\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	8b2d824a-b101-401b-b032-bb9f69d9b160	2015-06-02 22:29:15.674873
348	138	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In MCF10A cell lines, the G309A mutation was shown to be sensitive to\n  neratinib.\ndisease_id: 11\nsource_id: 121\nvariant_id: 38\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:37868205-37868205 (G->C)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	a25b7cf4-6791-44ec-ae2e-1e47e188e88a	2015-06-02 22:29:15.693055
349	139	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The L755S mutation was shown to confer resistance to lapatinib in MCF10A\n  cell lines retrovirally transduced with wildtype or mutant ERBB2.\ndisease_id: 11\nsource_id: 121\nvariant_id: 39\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:37880220-37880220 (T->C)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	85d32d73-836c-4014-9e9b-834ef041e876	2015-06-02 22:29:15.714891
350	140	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The L755S mutation showed mild response to neratinib in MCF10A cell lines\n  retrovirally transduced with wildtype or mutant ERBB2.\ndisease_id: 11\nsource_id: 121\nvariant_id: 39\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:37880220-37880220 (T->C)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	df1d1d85-068d-4e00-a850-48d4b1db3ab6	2015-06-02 22:29:15.733712
351	141	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: MCF10A cells transduced with ERBB2 harboring an L755W mutation were sensitive\n  to the irreversible kinase inhibitor neratinib in an matrigel colony forming assay.\ndisease_id: 11\nsource_id: 121\nvariant_id: 40\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	fe7aed6b-40d5-4b11-a120-59d7bf2b89a4	2015-06-02 22:29:15.751299
352	142	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In MCF10A cell lines, the in-frame insertion of a single amino acid at\n  position 780 was shown to be sensitive to neratinib.\ndisease_id: 11\nsource_id: 121\nvariant_id: 41\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	6620557c-3488-4a92-b0bf-e253a9200875	2015-06-02 22:29:15.768957
353	143	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: MCF10A cells transduced with ERBB2 harboring an R678Q mutation were sensitive\n  to lapatinib and the irreversible kinase inhibitor neratinib in an matrigel colony\n  forming assay.\ndisease_id: 11\nsource_id: 121\nvariant_id: 42\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	805f6da9-aba5-49e8-8c81-bbebfde97ff1	2015-06-02 22:29:15.790456
354	144	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In MCF10A cell lines, the R896C mutation was shown to be sensitive to\n  neratinib.\ndisease_id: 11\nsource_id: 121\nvariant_id: 43\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:37881616-37881616 (C->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	3b48f1da-7660-4016-a12b-83b96a4bafd9	2015-06-02 22:29:15.810201
355	145	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In MCF10A cell lines, the V777L mutation was shown to be sensitive to\n  neratinib.\ndisease_id: 11\nsource_id: 121\nvariant_id: 44\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:37881000-37881000 (G->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	8d088cc5-6ce4-4ca0-a573-599435a9ee75	2015-06-02 22:29:15.831477
356	146	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In MCF10A cell lines, the V842I mutation was shown to be sensitive to\n  neratinib.\ndisease_id: 11\nsource_id: 121\nvariant_id: 45\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:37881332-37881332 (G->A)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	4f523bff-ed22-4615-90f4-46299d570651	2015-06-02 22:29:15.852731
357	147	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: MCF7 cell lines harboring the L536Q mutation in the ligand-binding domain\n  of ESR1 have shown resistance to hormone therapy.\ndisease_id: 11\nsource_id: 122\nvariant_id: 46\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	f5e0d10a-5883-433d-8989-63532cbee8e8	2015-06-02 22:29:15.876991
358	8	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: ESR1 Ligand-Binding Domain\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	2e89dead-6905-48be-9b21-0b5c066fef15	2015-06-02 22:29:15.902152
359	148	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The L536Q ligand binding domain mutation have been shown to result in\n  constitutive activity and continued responsiveness to anti-estrogen therapies in\n  MCF7 cell lines.\ndisease_id: 11\nsource_id: 123\nvariant_id: 46\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d63c6cca-35cf-4a37-b9c8-00963167c762	2015-06-02 22:29:15.92053
360	149	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: MCF7 cell lines harboring the N538G mutation in the ligand-binding domain\n  of ESR1 have shown resistance to hormone therapy.\ndisease_id: 11\nsource_id: 122\nvariant_id: 47\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	579ab3ab-aff6-456a-a03c-3041650fbfdd	2015-06-02 22:29:15.946707
361	150	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The N538G ligand binding domain mutations have been shown to result in\n  constitutive activity and continued responsiveness to anti-estrogen therapies in\n  vitro.\ndisease_id: 11\nsource_id: 123\nvariant_id: 47\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	85ce9490-2c6b-4a89-9588-e6125b42bb9e	2015-06-02 22:29:15.970428
362	151	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: MCF7 cell lines harboring the Y537C mutation in the ligand-binding domain\n  of ESR1 have shown resistance to hormone therapy.\ndisease_id: 11\nsource_id: 122\nvariant_id: 48\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 6:152419923-152419923 (A->G)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	c76a6eb9-c261-4719-9485-dbc8e0f62911	2015-06-02 22:29:15.995487
363	152	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The Y537C ligand binding domain mutations have been shown to result in\n  constitutive activity and continued responsiveness to anti-estrogen therapies in\n  vitro.\ndisease_id: 11\nsource_id: 123\nvariant_id: 48\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 6:152419923-152419923 (A->G)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	e4df925e-cefe-40d0-9818-29700c9942db	2015-06-02 22:29:16.019087
364	153	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: MCF7 cell lines harboring the Y537N mutation in the ligand-binding domain\n  of ESR1 have shown resistance to hormone therapy.\ndisease_id: 11\nsource_id: 122\nvariant_id: 49\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 6:152419922-152419922 (T->A)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	80c97c7b-846d-49eb-b6da-1933468a0726	2015-06-02 22:29:16.043607
365	154	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The Y537N ligand binding domain mutations have been shown to result in\n  constitutive activity and continued responsiveness to anti-estrogen therapies in\n  vitro.\ndisease_id: 11\nsource_id: 123\nvariant_id: 49\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 6:152419922-152419922 (T->A)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	f3f2f03d-825e-4885-a065-c47888cb6630	2015-06-02 22:29:16.066612
366	155	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: MCF7 cell lines harboring the L537S mutation in the ligand-binding domain\n  of ESR1 have shown resistance to hormone therapy.\ndisease_id: 11\nsource_id: 122\nvariant_id: 50\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 6:152419923-152419923 (A->C)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	b9959437-352a-40a0-8f60-abc87e6e7858	2015-06-02 22:29:16.090917
367	156	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The Y537S ligand binding domain mutations have been shown to result in\n  constitutive activity and continued responsiveness to anti-estrogen therapies in\n  vitro.\ndisease_id: 11\nsource_id: 123\nvariant_id: 50\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 6:152419923-152419923 (A->C)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	f93ccc78-31a0-44ba-95e4-29137283d577	2015-06-02 22:29:16.114055
368	157	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a single patient with this fusion in intrahepatic cholangiocarcinoma.\n  Ponatinib treatment resulted in necrosis and shrinkage of the primary and metastatic\n  sites and overall stable disease. However, this response did not meet criteria for\n  RECIST partial response.\ndisease_id: 23\nsource_id: 124\nvariant_id: 52\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	744f52b6-f252-407b-b72f-3936cfc5b95d	2015-06-02 22:29:16.141192
369	9	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: FGFR fusions\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	1c7f74ea-2e7d-4d0b-9844-af9288710218	2015-06-02 22:29:16.154023
370	158	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Following identification of this fusion in a patient, this fusion was\n  expressed in HEK 293T cells leading to oligomerization in the absence of ligand,\n  induced morphologic changes in the cell and increased cellular proliferation consistent\n  with FGFR activation. Mouse xenografts using the bladder cell line SW780 which harbors\n  an FGFR3-BAIAP2L1 fusion showed reduced tumor burden when treated with the FGFR\n  inhibitor PD173074.\ndisease_id: 24\nsource_id: 125\nvariant_id: 53\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	08af9007-2aee-4345-99a7-1f9e350d7ca1	2015-06-02 22:29:16.175712
371	159	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a 43 year old female patient with this fusion in intrahepatic cholangiocarcinoma.\n  Both pazopanib and ponatinib separately resulted in minor tumor shrinkage. This\n  fusion is also shown to be recurrent in multiple other cancer types.\ndisease_id: 23\nsource_id: 124\nvariant_id: 54\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	f8d6128e-4e67-429e-9a5e-4d9294b26443	2015-06-02 22:29:16.260039
372	160	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: AG1296 is effective in triggering apoptosis in Ba/F3 and primary AML\n  cells with FLT3 internal tandem repeat\ndisease_id: 19\nsource_id: 126\nvariant_id: 55\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	93f7d51d-0f2d-4a69-b543-1e5605f7e18e	2015-06-02 22:29:16.287019
373	161	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: ATRA treatment did not effect overall survival in patients <60 years\n  old with FLT3-ITD mutation\ndisease_id: 19\nsource_id: 127\nvariant_id: 55\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	15ed121e-3efb-4f42-96fa-0af30963209b	2015-06-02 22:29:16.307724
374	162	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: CEP701 was effective in reducing blast counts of 5/14 heavily pre-treated\n  AML patients with FLT3 mutations\ndisease_id: 19\nsource_id: 128\nvariant_id: 55\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	89238ef7-adc7-4e83-aece-9ed79e8f1511	2015-06-02 22:29:16.328303
375	163	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Ba/F3 cells with both FLT3-ITD and TKD mutations on the same allele have\n  more resistance to daunorubicin than cells with FLT3-ITD alone.\ndisease_id: 19\nsource_id: 129\nvariant_id: 55\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	adcb6dd0-db56-4e49-9bea-8a38749bd10b	2015-06-02 22:29:16.348867
376	164	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: WBC counts were higher in AML patients with internal tandem repeat of\n  Flt3 compared to wild type\ndisease_id: 19\nsource_id: 130\nvariant_id: 55\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	84d9e61a-19b3-4ad7-ac43-d51cf1c0a3cc	2015-06-02 22:29:16.368219
377	165	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: FLT3-ITD mutation without NPM1 was associated with increased relapse\n  risk and reduced overall survival in young adult AML patients (median age 43)\ndisease_id: 19\nsource_id: 131\nvariant_id: 55\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	78f3a75b-8bbe-4818-995f-283618b511fe	2015-06-02 22:29:16.387874
378	166	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Increasing level of FLT3-ITD mutant correlated with reduced disease-free\n  and overall survival as well as increased relapse rate\ndisease_id: 19\nsource_id: 131\nvariant_id: 55\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	49fb814a-9ed8-4d21-9a4b-176a65e7c7d1	2015-06-02 22:29:16.406652
379	167	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: FLT3-ITD duplication length did not effect prognosis in patients with\n  an NPM1 mutation\ndisease_id: 19\nsource_id: 132\nvariant_id: 55\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	166fc712-4da4-4338-916c-e3774536bc5d	2015-06-02 22:29:16.426036
380	168	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In young AML patients (<60 years old), DNMT3A mutation status was not\n  predictive of overall and relapse free survival in patients with NPM1 mutations\n  and wildtype FLT3 or wildtype NPM1 and FLT3-ITD\ndisease_id: 19\nsource_id: 107\nvariant_id: 55\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	0a7eb45a-dbe9-40c7-8562-9d6375fad857	2015-06-02 22:29:16.444939
381	169	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Size of the FLT3-ITD mutant duplication had no impact on overall survival\n  or relapse rate\ndisease_id: 19\nsource_id: 131\nvariant_id: 55\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	1fe0eba4-d8a0-4b8f-802b-cbdcdf74abd0	2015-06-02 22:29:16.463247
382	170	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: A ratio of >0.49 FLT3-ITD/FLT3 wildtype level was associated with reduced\n  event-free and overall survival in old (>59) and younger patients (<60) with an\n  NPM1 mutation\ndisease_id: 19\nsource_id: 132\nvariant_id: 55\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	f2d51c1d-3d5a-459a-9199-630b0eea9a0b	2015-06-02 22:29:16.481179
383	171	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: AML patients with internal tandem repeat of FLT3 has worse overall survival\n  than patients with wild type FLT3\ndisease_id: 19\nsource_id: 130\nvariant_id: 55\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	fe907711-8d9a-4960-a97d-aa9b4a670221	2015-06-02 22:29:16.499646
384	172	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In AML patients with FLT3-ITD mutations, concurrent DNMT3A mutations\n  were associated with worse overall survival compared to those without DNMT3A mutation.\ndisease_id: 19\nsource_id: 105\nvariant_id: 55\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	af6c502e-258b-4d8c-b400-10477199a1ab	2015-06-02 22:29:16.5184
385	173	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Meta-analysis of studies involving cytogentically normal younger (<60)\n  patients showed reduced overall and relapse-free survival for patients with FLT3-ITD\ndisease_id: 19\nsource_id: 133\nvariant_id: 55\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 0\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	b7b4ebcd-f29a-43e2-9f86-54f25f619cb3	2015-06-02 22:29:16.537253
386	174	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with NPM1 mutation and FLT3-ITD had reduced event-free survival\n  compared to patients with wildtype FLT3\ndisease_id: 19\nsource_id: 132\nvariant_id: 55\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	67bd5460-e52e-4cfa-b962-47792fe91dd1	2015-06-02 22:29:16.553776
387	175	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Simultaneous tandem repeat of FLT3 with loss of wild type FLT3 leads\n  to poor survival and inferior disease free survival in patients with AML.\ndisease_id: 19\nsource_id: 134\nvariant_id: 55\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	2d3dd904-992b-4124-9b7b-7ac9d1859f31	2015-06-02 22:29:16.570995
388	176	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Using a ratio of FLT3-ITD/FLT3 wildtype levels as a continuous variable,\n  a higher ratio was associated with reduced event-free survival in patients with\n  an NPM1 mutation\ndisease_id: 19\nsource_id: 132\nvariant_id: 55\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	5215dd10-742e-4d89-8f6e-eb67b965488a	2015-06-02 22:29:16.587605
389	177	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Sorafenib is effective in patients with FLT3 internal tandem repeats,\n  but not in wild type or D835 mutation.\ndisease_id: 19\nsource_id: 135\nvariant_id: 55\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	e278efe4-34d2-4a50-a7d8-6e72b5230f7d	2015-06-02 22:29:16.605322
390	178	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Ba/F3 cells with both FLT3-ITD and TKD mutations on the same allele have\n  more resistance to the protein tyrosine kinase (PTK) inhibitor SU5614 than cells\n  with FLT3-ITD alone or FLT3 ITD and TKD mutations on opposing alleles.\ndisease_id: 19\nsource_id: 129\nvariant_id: 55\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	6c662c5b-379b-40e6-a0e7-1ee77899fc16	2015-06-02 22:29:16.622372
391	179	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: CEP701 was effective in reducing blast counts of 5/14 heavily pre-treated\n  AML patients with FLT3 mutations\ndisease_id: 19\nsource_id: 128\nvariant_id: 56\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	8f117fd3-1062-424f-98f0-65979db61cbc	2015-06-02 22:29:16.640329
392	180	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Ba/F3 cells with both FLT3-ITD and TKD mutations on the same allele have\n  more resistance to daunorubicin than cells with FLT3-ITD alone.\ndisease_id: 19\nsource_id: 129\nvariant_id: 56\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	37c08284-8598-4a8b-8fce-a4b3071c55e9	2015-06-02 22:29:16.657399
393	181	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: WBC counts were not significantly different in AML patients with FLT3\n  D835 mutations compared to wild type\ndisease_id: 19\nsource_id: 130\nvariant_id: 56\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	edab8c00-44b1-43bf-a9c0-cfa6e6b06c20	2015-06-02 22:29:16.674564
394	182	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: AML patients with D835 mutation of FLT3 did not have worse overall survival\n  than patients with wild type FLT3\ndisease_id: 19\nsource_id: 130\nvariant_id: 56\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	15ea2a3e-798f-4d38-ade1-b38e1363d798	2015-06-02 22:29:16.691361
395	183	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Event-free survival was significantly improved in patients with both\n  NPM1 and FLT3-TKD mutations compared to patients with 1) FLT3-TKD mutations alone\n  2) either NPM1 or FLT3-TKD when FLT3-ITD patients were excluded from the analysis\n  3) neither FLT3-TKD or NPM1 mutations or FLT3-TKD alone when only de novo, normal\n  karyotype patients were analyzed\ndisease_id: 19\nsource_id: 136\nvariant_id: 56\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	0b31e570-c240-41ff-8976-d67f9bc60882	2015-06-02 22:29:16.709497
396	184	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In AML patients, FLT3-TKD mutation was associated with poorer disease\n  free survival compared to patients with wild type FLT3\ndisease_id: 19\nsource_id: 137\nvariant_id: 56\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	67be7e79-7fb0-41a7-889c-965348d57d83	2015-06-02 22:29:16.727305
397	185	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Emergence of D835 mutation in AML patients with FLT3 tandem repeat is\n  associated with sorafenib resistance\ndisease_id: 19\nsource_id: 138\nvariant_id: 56\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	493e843d-770c-4f89-be2c-c1ed1ee5a358	2015-06-02 22:29:16.745022
398	186	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Sorafenib is effective in patients with FLT3 internal tandem repeat mutations,\n  but not in patients with wild type or D835 mutation.\ndisease_id: 19\nsource_id: 135\nvariant_id: 56\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	10799fa0-b2f5-4f32-925f-aaea74e2e1e5	2015-06-02 22:29:16.761963
399	187	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Ba/F3 cells with both FLT3-ITD and TKD mutations on the same allele have\n  more resistance to the protein tyrosine kinase (PTK) inhibitor SU5614 than cells\n  with FLT3-ITD alone or FLT3 ITD and TKD mutations on opposing alleles.\ndisease_id: 19\nsource_id: 129\nvariant_id: 56\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	a79d69a6-4d2c-4b48-981b-e2d373ca683b	2015-06-02 22:29:16.778716
400	188	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Targeting overactive GATA2-mediated pathways with inhibitors bortezomib\n  and fasudil led to dramatic tumor regression.\ndisease_id: 25\nsource_id: 139\nvariant_id: 57\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	a3a081e1-5445-4b19-979e-3b9c653b0bd8	2015-06-02 22:29:16.798913
401	189	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In leukemia patients, IDH1 R132 mutation is associated with adults and\n  normal karyotype.\ndisease_id: 19\nsource_id: 140\nvariant_id: 58\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	0a5202a5-6552-477b-a6bc-d9e85c0b147b	2015-06-02 22:29:16.821709
402	190	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Mutation status of IDH1 did not change event-free survival of patients\n  with an NPM1 mutation\ndisease_id: 19\nsource_id: 141\nvariant_id: 58\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	15fed044-ee04-429f-8fa3-65bf8c4dbd63	2015-06-02 22:29:16.839704
403	191	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The complete remission and overall survival rates in patients with IDH1\n  R132 mutation is not significantly different from those who do not have this mutation\ndisease_id: 19\nsource_id: 142\nvariant_id: 58\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	17368430-b2c8-490e-9865-481806788688	2015-06-02 22:29:16.857693
404	192	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with astrocytoma, the presence of IDH1 R132 mutation is prognostic\n  for better survival compared to patients who harbor wild type mutation.\ndisease_id: 26\nsource_id: 143\nvariant_id: 58\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	693f87fc-caac-4d69-83ed-e718507bf33d	2015-06-02 22:29:16.876896
405	193	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with glioblastoma, those harboring IDH1 R132 mutation has\n  higher overall survival compared to those who do not have IDH1 mutation\ndisease_id: 27\nsource_id: 144\nvariant_id: 58\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	18f5cb49-32be-4f4c-bbae-d29e3d29b9ad	2015-06-02 22:29:16.896002
406	194	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: IDH1 R132 mutation in patients suffering from myelodysplastic syndromes\n  is associated with worse overall survival\ndisease_id: 28\nsource_id: 145\nvariant_id: 58\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	30da3a0e-298e-46c7-9034-30a0a2db473c	2015-06-02 22:29:16.915079
407	195	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: IDH1 R132 mutation is associated with patients of older age, high platelet\n  count during diagnosis, cytogenic normalcy and NPM1 mutation\ndisease_id: 19\nsource_id: 146\nvariant_id: 59\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:209113113-209113113 (G->A)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	add8ce88-5b50-42ed-a5d5-1f57a0839eba	2015-06-02 22:29:16.933314
408	196	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: IDH1 R132 mutation in patients with AML is not associated with any prognostic\n  value compared to patients with wild-type IDH1.\ndisease_id: 19\nsource_id: 146\nvariant_id: 59\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:209113113-209113113 (G->A)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	da49b446-1a7c-4ee3-8ccf-7d2573244e16	2015-06-02 22:29:16.95062
409	197	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: IDH1 R132 mutation in patients with AML is not associated with any prognostic\n  value compared to patients with wild-type IDH1.\ndisease_id: 19\nsource_id: 146\nvariant_id: 60\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:209113112-209113112 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	90882f53-22ca-481f-93ee-484cecee70e4	2015-06-02 22:29:16.968207
410	198	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: IDH1 R132 mutation in patients with AML is not associated with any prognostic\n  value compared to patients with wild-type IDH1.\ndisease_id: 19\nsource_id: 146\nvariant_id: 61\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:209113112-209113112 (C->A)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	2a8b3ebe-1e73-4944-b60a-9efec24961c6	2015-06-02 22:29:16.985396
411	199	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: AML patients with IDH2 mutations such as R140Q/L have event free survival\n  and overall survival similar to those with wild-type IDH2\ndisease_id: 19\nsource_id: 147\nvariant_id: 62\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	d5536f96-0440-4ff1-9cdc-40696eb4d91b	2015-06-02 22:29:17.004047
412	200	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with IDH2 R140Q/L mutation, the presence of mutation does\n  not impact overall survival or disease free survival.\ndisease_id: 19\nsource_id: 148\nvariant_id: 62\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	c3e12e21-c6e5-4e98-a6fb-4e530dfd3605	2015-06-02 22:29:17.022259
413	201	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In AML, patients with IDH2 R140K mutation have improved overall survival\n  compared to those with wild-type IDH2\ndisease_id: 19\nsource_id: 149\nvariant_id: 62\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	94675d9b-699a-4580-a69d-e647d7e0a05e	2015-06-02 22:29:17.040244
414	202	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients suffering from MDS, the presence of IDH2 mutation such as\n  R140Q/L do not confer prognostic value (overall survival)\ndisease_id: 29\nsource_id: 150\nvariant_id: 62\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	355a4391-9f56-47b7-b03f-2d3f8531c31b	2015-06-02 22:29:17.059422
415	203	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: R140Q mutation in IDH2 does not have prognostic value in patients with\n  MDS.\ndisease_id: 29\nsource_id: 151\nvariant_id: 62\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	8ee263a9-828e-4794-a56e-ccd1827dc777	2015-06-02 22:29:17.077676
416	204	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: AML patients with IDH2 mutations such as R172K have event free survival\n  and overall survival similar to those with wild-type IDH2.\ndisease_id: 19\nsource_id: 147\nvariant_id: 63\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 15:90631838-90631838 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	ec6a2c30-9cfa-4b14-92d9-6aa4e87cb239	2015-06-02 22:29:17.094855
417	205	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In AML, patients with an IDH2 R172K mutation have worse overall survival\n  compared to those with wild-type IDH2\ndisease_id: 19\nsource_id: 149\nvariant_id: 63\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 15:90631838-90631838 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	8eb83664-4938-4359-8a6f-4a63f16eba19	2015-06-02 22:29:17.112136
418	206	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients suffering from MDS, the presence of IDH2 mutations such as\n  R172K do not confer prognostic value (overall survival)\ndisease_id: 29\nsource_id: 150\nvariant_id: 63\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 15:90631838-90631838 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	85a4aa61-308f-4018-866e-e47ce2beecfd	2015-06-02 22:29:17.129229
419	207	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: JAK2 V617F is associated with myeloid malignanices (AML, MDS, CMML/atypical\n  CML).\ndisease_id: 1\nsource_id: 152\nvariant_id: 64\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 9:5073770-5073770 (G->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	5007cc7b-28db-4e69-8066-1eb0280108ba	2015-06-02 22:29:17.147706
420	208	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: JAK2 V617F is associated with myeloid neoplasms (AML, MDS, CMML/aCML)\ndisease_id: 1\nsource_id: 152\nvariant_id: 64\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 9:5073770-5073770 (G->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	5776f638-a681-403f-affd-0f6d46e314bf	2015-06-02 22:29:17.165211
421	209	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: JAK2 V617F is not associated with lymphoid leukemia (B-lineage ALL, T-ALL\n  or CLL).\ndisease_id: 30\nsource_id: 152\nvariant_id: 64\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 9:5073770-5073770 (G->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 5\ndeleted: false\ndeleted_at: \n	1	\N	\N	57bb750e-909f-4c88-a7c6-bfa07f547f73	2015-06-02 22:29:17.183709
422	210	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The SNP rs10974944 in the Jak2 locus is associated with increased predisposition\n  for JAK2 V617F mutation and its associated cancer\ndisease_id: 31\nsource_id: 153\nvariant_id: 64\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 9:5073770-5073770 (G->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	94d8391c-2cc4-4780-a937-8848782d8469	2015-06-02 22:29:17.203225
423	211	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with JAK2 V617F, the use of pegylated IFN-alpha-2a leads\n  to reduction in the percentage of cells harboring JAK2 V617F.\ndisease_id: 32\nsource_id: 154\nvariant_id: 64\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 9:5073770-5073770 (G->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	413147d6-7e67-447a-a0e7-e7b6958c5ce0	2015-06-02 22:29:17.222666
424	212	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: TG101348 effectively inhibits STAT5 signaling in JAK2 V617F cells\ndisease_id: 32\nsource_id: 155\nvariant_id: 64\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 9:5073770-5073770 (G->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d2bcec16-673b-41cb-b784-a6606110b355	2015-06-02 22:29:17.257336
425	213	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In acute myloid leukemia patients, D816 mutation is associated with earlier\n  relapse and poorer prognosis than wildtype KIT\ndisease_id: 33\nsource_id: 156\nvariant_id: 65\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 4:55599321-55599321 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	3af344c0-e80e-4680-a580-49aafad18a78	2015-06-02 22:29:17.278784
426	10	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: KIT Exon 17\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	f1e78994-0ff9-4737-8a28-79f6ba928331	2015-06-02 22:29:17.290312
427	214	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KIT mutation is associated with larger, more invasive tumors, greater\n  pathologic histology and older patients compared to tumors with wildtype KIT\ndisease_id: 34\nsource_id: 157\nvariant_id: 66\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	53e745ca-8dae-40ca-a006-c6a4805534a9	2015-06-02 22:29:17.309274
428	11	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: KIT Exon 11\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	bd2fd4f3-c215-42d1-b1f0-74d40b1bde6c	2015-06-02 22:29:17.320702
429	215	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KIT mutations were identified in morphologically benign, incidentally\n  discovered GISTs at a rate similar to that seen in advanced, metastatic GIST patients\n  indicating is not a prognostic marker for GIST\ndisease_id: 34\nsource_id: 158\nvariant_id: 66\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	f38bed5e-9f71-4843-adb8-7712accf00a8	2015-06-02 22:29:17.338634
430	216	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: There is no significant association between wildtype KIT or KIT mutations\n  in exon 9 or 11 in survival among GIST patients.\ndisease_id: 34\nsource_id: 159\nvariant_id: 66\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	d4cb0c2c-85ba-4306-9a4b-a22adebead03	2015-06-02 22:29:17.361031
431	217	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KIT mutation is associated with worse overall and cause-specific prognosis\n  in patients with GIST compared to patients with wildtype KIT\ndisease_id: 34\nsource_id: 157\nvariant_id: 66\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	cb74b819-1af8-47ba-b003-a343a9ca07c1	2015-06-02 22:29:17.384415
432	218	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KIT mutations detected in 5/60 patients showed no prognostic significance\n  in patients with small cell lung cancer\ndisease_id: 17\nsource_id: 160\nvariant_id: 66\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	a3996fa2-4ddf-4b2b-b0d8-234cb40f667c	2015-06-02 22:29:17.40773
433	219	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Melanoma patients with KIT mutation but not KIT amplification showed\n  response to imatinib treatment in a small cohort of patients.\ndisease_id: 7\nsource_id: 161\nvariant_id: 66\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	f1de8d0e-99b4-40a5-9f15-b1c3508a401b	2015-06-02 22:29:17.430527
434	220	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Melanoma patients with KIT mutation but not KIT amplification showed\n  response to imatinib treatment in a small cohort of patients.\ndisease_id: 7\nsource_id: 161\nvariant_id: 68\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	966f0fe5-c262-427e-b51f-90c778d606a6	2015-06-02 22:29:17.452215
435	221	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: GIST patients with exon 14 KIT mutations had reduced overall survival\n  compared to patients wiltype for KIT\ndisease_id: 34\nsource_id: 159\nvariant_id: 69\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	f506eefd-78fc-4de6-804a-870ca1d3cf29	2015-06-02 22:29:17.469704
436	222	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KIT mutation is associated with larger, more invasive tumors, greater\n  pathologic histology and older patients compared to tumors with wildtype KIT\ndisease_id: 34\nsource_id: 157\nvariant_id: 70\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	41bf89b1-ddc5-4b2a-9582-462b9b35621f	2015-06-02 22:29:17.487295
437	223	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Melanoma patients with KIT mutation but not KIT amplification showed\n  response to imatinib treatment in a small cohort of patients.\ndisease_id: 7\nsource_id: 161\nvariant_id: 70\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	e352b98f-00c8-4df4-9d3b-20cb09e80a3c	2015-06-02 22:29:17.508433
438	224	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: There is no significant association between wildtype KIT or KIT mutations\n  in exon 9 or 11 in survival among GIST patients.\ndisease_id: 34\nsource_id: 159\nvariant_id: 71\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	bc23e6ae-d655-4617-bb84-22acb23fa6ed	2015-06-02 22:29:17.529655
439	225	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KIT mutations detected in 5/60 patients showed no prognostic significance\n  in patients with small cell lung cancer\ndisease_id: 17\nsource_id: 160\nvariant_id: 71\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	d02c6d64-36dc-4b21-b7c6-f85e1094c3e2	2015-06-02 22:29:17.547162
440	226	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a case study, a patient with anal melanoma harboring a 7 codon duplication\n  in the juxtamambrane region (exon 11) of KIT showed marked response 4 months after\n  imatinib treatment.\ndisease_id: 35\nsource_id: 162\nvariant_id: 67\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	4e4e2e50-4c7e-4396-9ca5-9d6c9032f821	2015-06-02 22:29:17.56683
441	227	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The melanoma cell line WM3211, which harbors the L576P mutation, is sensitive\n  to dasatinib. Molecular modeling indicated the L576P mutation alters the conformation\n  of KIT but did not alter the binding affinity of dasatinib.\ndisease_id: 7\nsource_id: 163\nvariant_id: 72\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	3f358cae-52f4-49b7-885d-ad44938755bb	2015-06-02 22:29:17.589208
442	228	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The melanoma cell line WM3211, which harbors the L576P mutation, is not\n  sensitive to imatinib, nilotinib, and sorafenib. Molecular modeling indicated the\n  L576P mutation alters the conformation of KIT and reduces the binding affinity of\n  imatinib.\ndisease_id: 7\nsource_id: 163\nvariant_id: 72\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	736e24de-2ded-4456-9473-bf5a64712d2e	2015-06-02 22:29:17.611412
443	229	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Ba/F3 cells harboring the KIT L576P mutation are sensitive to dasantinib,\n  nilotinib and imatinib.\ndisease_id: 3\nsource_id: 164\nvariant_id: 72\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	c24cae57-71dc-46b5-a75e-9c88fd623250	2015-06-02 22:29:17.637853
444	230	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KIT V654A results in imatinib resistance in GIST patient-derived cell\n  lines.\ndisease_id: 34\nsource_id: 165\nvariant_id: 73\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 4:55594258-55594258 (T->C)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	6360ec70-4367-4bc2-b546-c51b647faf87	2015-06-02 22:29:17.663821
445	231	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In GIST tumor cells and patients harboring KIT V654A mutation, SU11248\n  is effective for those that are refractory to imatinib.\ndisease_id: 34\nsource_id: 166\nvariant_id: 73\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 4:55594258-55594258 (T->C)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	542d767c-703f-49a9-8343-88ae760b4318	2015-06-02 22:29:17.686223
446	232	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with colorectal cancer who harbor KRAS mutation have low response\n  rate to cetuximab\ndisease_id: 6\nsource_id: 167\nvariant_id: 74\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	9fe2a6d8-ecaf-4116-9359-e2c56e8ff23c	2015-06-02 22:29:17.710185
447	233	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS mutation status was not predictive of response to regorafenib treatment\n  in patients that had received standard therapy and progressed within 3 months of\n  their last treatment\ndisease_id: 6\nsource_id: 168\nvariant_id: 75\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	317d88ab-7c11-4707-b2bb-75334ba81dc5	2015-06-02 22:29:17.729142
448	234	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In NSCLC, Exon 2 KRAS mutations were associated with resistance to the\n  EGFR kinase inhibitors gefitinib and erlotinib\ndisease_id: 3\nsource_id: 169\nvariant_id: 75\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	f887d58c-289c-44f4-b4fd-ea0b3cde7219	2015-06-02 22:29:17.749455
449	235	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Children with early age leukaemia who had second hand smoke exposure\n  are more likely to harbor KRAS mutation.\ndisease_id: 36\nsource_id: 170\nvariant_id: 76\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	e50bfdf6-96e0-4e8f-a5ab-4e5a3a7c2a91	2015-06-02 22:29:17.770912
450	236	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with stage III colorectal cancer undergoing chemotherapy,\n  KRAS G12 mutation did not impact overall or disease free survival.\ndisease_id: 8\nsource_id: 171\nvariant_id: 76\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	3f7cefc6-adf3-4008-bddd-17625d0d88cf	2015-06-02 22:29:17.789771
451	237	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The presence of KRAS mutations in MM patients is prognostic for shorter\n  overall and progression free survival\ndisease_id: 37\nsource_id: 172\nvariant_id: 76\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	be946626-83f1-492f-991a-45b7480c1d1d	2015-06-02 22:29:17.809849
452	238	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS mutations in lung cancer patients are not associated with smoking\n  history, age or gender\ndisease_id: 3\nsource_id: 173\nvariant_id: 76\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	a82cbd78-8538-4f09-9fc9-98011c1da556	2015-06-02 22:29:17.828562
453	239	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: There is no strong association between KRAS mutation status and overall\n  or progression free survival in patients with NSCLC\ndisease_id: 3\nsource_id: 174\nvariant_id: 76\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	2ca9c7cc-6fb1-4ef2-be80-85665ac49216	2015-06-02 22:29:17.847443
454	240	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: A meta-analysis showed KRAS mutation is associated with worse outcome\n  in patients with NSCLC\ndisease_id: 3\nsource_id: 175\nvariant_id: 76\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	196b2e2c-289f-436c-9cf7-f5bdedf8f970	2015-06-02 22:29:17.867612
455	241	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Chemotherapy-refractory patients with colorectal cancer harboring KRAS\n  mutations (primarily G12/G13) had lower response and disease control rates and shorter\n  progression free and overall survival following cetuximab plus chemotherapy than\n  those with wildtype KRAS\ndisease_id: 6\nsource_id: 70\nvariant_id: 77\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	29b1cd8c-248e-4892-931e-3c2a6cf52548	2015-06-02 22:29:17.885178
456	242	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS mutations were significantly associated with lack of response to\n  cetuximab in patients with advanced colorectal cancer\ndisease_id: 6\nsource_id: 176\nvariant_id: 77\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	307e362c-956f-4d57-80cf-89e706f51aaa	2015-06-02 22:29:17.904127
457	243	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS mutations were significantly associated with reduced progression-free\n  and overall survival in patients with advanced colorectal cancer\ndisease_id: 6\nsource_id: 176\nvariant_id: 77\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	e09700d7-9317-46ee-94ee-9ce39a5a8f73	2015-06-02 22:29:17.921815
458	244	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS G12 mutations were the primary predictor of EGFR TKI resistance\n  in patients with lung adenocarcinoma.\ndisease_id: 38\nsource_id: 177\nvariant_id: 148\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	6c684114-06b9-4b8b-acf0-5fa9d958bde0	2015-06-02 22:29:17.942793
459	245	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS G12C occur more frequently in women than men\ndisease_id: 17\nsource_id: 178\nvariant_id: 78\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 12:25398285-25398285 (C->A)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	fcfe93fe-e6ab-43ab-9d48-dde7c4d65960	2015-06-02 22:29:17.969549
460	246	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS G12 mutations were the primary predictor of EGFR TKI resistance\n  in patients with lung adenocarcinoma.\ndisease_id: 38\nsource_id: 177\nvariant_id: 78\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	52c93b5e-f52b-4e0f-9e62-0af1007c6590	2015-06-02 22:29:17.989283
461	247	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS G12D mutation occurs in never smokers significantly more often than\n  in smokers\ndisease_id: 17\nsource_id: 178\nvariant_id: 79\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 12:25398284-25398284 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	58e5cd68-ba44-4ca9-90d1-834e41fb6614	2015-06-02 22:29:18.014371
462	248	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a patient with V600E-positive NSCLC, KRAS G12D seemed to confer resistance\n  to dabrafenib.\ndisease_id: 3\nsource_id: 179\nvariant_id: 79\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 12:25398284-25398284 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	13e396f5-a972-42fc-aa1d-da9dafc568b6	2015-06-02 22:29:18.034846
477	263	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: MGMT promoter methylation has been shown to confer sensitivity to alkylating\n  agents, such as carmustine, in glioblastoma cells.\ndisease_id: 40\nsource_id: 184\nvariant_id: 85\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	94489f3a-e97e-43f6-8ba9-ae9c29402816	2015-06-02 22:29:18.360143
463	249	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The use of NVP-BEZ235 in conjunction with ARRY-142886, but not as monotherapy,\n  in a lung cancer model with KRAS G12D mutation led to marked tumor regression.\ndisease_id: 3\nsource_id: 180\nvariant_id: 79\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 12:25398284-25398284 (C->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	7030eded-0746-4d27-bf0a-0e281c32b28c	2015-06-02 22:29:18.055777
464	250	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS G12 mutations were the primary predictor of EGFR TKI resistance\n  in patients with lung adenocarcinoma.\ndisease_id: 38\nsource_id: 177\nvariant_id: 79\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	c00cb9b0-a0c0-4e36-998c-ffabdc2b6f17	2015-06-02 22:29:18.078369
465	251	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS G12 mutations were the primary predictor of EGFR TKI resistance\n  in patients with lung adenocarcinoma.\ndisease_id: 38\nsource_id: 177\nvariant_id: 147\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	ca5f0157-c7e5-44e9-bdb8-c38cec522b3f	2015-06-02 22:29:18.101925
466	252	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Children with early age leukaemia who had second hand smoke exposure\n  are more likely to harbor KRAS mutation.\ndisease_id: 36\nsource_id: 170\nvariant_id: 80\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	07e3c9f2-974c-4475-b14e-a996f0a90bfe	2015-06-02 22:29:18.125628
467	253	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The presence of KRAS mutations in MM patients is prognostic for shorter\n  overall and progression free survival\ndisease_id: 39\nsource_id: 172\nvariant_id: 80\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	0927a03f-4b11-4bb5-982b-0e8c5020fbc3	2015-06-02 22:29:18.144331
468	254	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS mutations in lung cancer patients are not associated with smoking\n  history, age or gender\ndisease_id: 3\nsource_id: 173\nvariant_id: 80\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	759f74f7-a86e-4dcd-a8bc-791dd9550cec	2015-06-02 22:29:18.160892
469	255	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cells harboring KRAS G12V mutation were insensitive to cetuximab treatment\n  in isogenic SW48 cells and in a mouse xenograft model\ndisease_id: 8\nsource_id: 181\nvariant_id: 81\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 12:25398281-25398281 (C->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	da1d7b30-1964-4791-90a2-14fb1e848420	2015-06-02 22:29:18.178776
470	256	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cells harboring KRAS G13D mutation were sensitive to cetuximab treatment\n  in isogenic SW48 cells and in a mouse xenograft model\ndisease_id: 8\nsource_id: 181\nvariant_id: 81\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 12:25398281-25398281 (C->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	813f0021-b581-4a6e-8c78-8ff641fd1e5b	2015-06-02 22:29:18.195667
471	257	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS G13D mutation is associated with better response to Cetuximab with\n  longer progression-free and overall survival in colorectal patients compared to\n  other KRAS\ndisease_id: 8\nsource_id: 181\nvariant_id: 81\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 12:25398281-25398281 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	fa743b31-73d0-416f-bd15-cf446bfa9be1	2015-06-02 22:29:18.213553
472	258	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: KRAS G13D mutation is associated with better response to Cetuximab with\n  longer progression-free and overall survival in colorectal patients compared to\n  other KRAS\ndisease_id: 8\nsource_id: 181\nvariant_id: 81\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 12:25398281-25398281 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	f587e168-e46f-407e-8f6a-43f916318b62	2015-06-02 22:29:18.257273
473	259	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The MAP2K1 P124S mutation confers increased resistance to AZD6244 inhibition\n  by about 5 fold.\ndisease_id: 7\nsource_id: 182\nvariant_id: 82\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 15:66729162-66729162 (C->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	6922d6eb-c698-4dbe-9449-0eb1ffc42cb2	2015-06-02 22:29:18.277832
474	260	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: MAP2K1 Q56P confers increased resistance to inhibition by AZD6244 by\n  100 fold.\ndisease_id: 7\nsource_id: 183\nvariant_id: 83\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 15:66727451-66727451 (A->C)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	fff5898b-1a5d-4607-a159-6e9f04c74be5	2015-06-02 22:29:18.297082
475	261	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cell lines with MEF2D-CSF1R fusion show sensitivity to the tyrosine kinase\n  inhibitors Imatinib and GW-2580\ndisease_id: 20\nsource_id: 100\nvariant_id: 84\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d41c7b92-766e-40f9-9c03-a3375d11ec5e	2015-06-02 22:29:18.315735
476	262	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In Lung Cancer patients with acquired resistance to Dacomitinib (PF00299804),\n  MET amplification and EGFR T790M were found to be the primary drivers of resistance.\ndisease_id: 3\nsource_id: 120\nvariant_id: 146\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	44ed3ff8-f0c7-4f61-b670-a06d6b3b94dd	2015-06-02 22:29:18.335659
478	264	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: MGMT promoter methylation was associated with increased overall and disease-free\n  survival as well as tumor regression in patients with gliomas.\ndisease_id: 40\nsource_id: 184\nvariant_id: 85\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	09208511-73f7-4fb0-aa38-2eb0e0f19200	2015-06-02 22:29:18.379175
479	265	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients lacking MGMT promoter methylation, the use of an MGMT inhibitor,\n  such as O(6)-benzylguanine, in combination with alkylating agents (Carmustine) may\n  be useful in treating patients with initial resistance to alkylating agents.\ndisease_id: 40\nsource_id: 184\nvariant_id: 85\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	4e879f54-378a-49a4-9bf9-75fb140239d3	2015-06-02 22:29:18.39703
480	266	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a randomized clinical trial, patients with MGMT promoter methyaltion\n  benefitted from temozolomide. This benefit was also methylation status dependent,\n  as those without methylation did not see increased survival.\ndisease_id: 40\nsource_id: 185\nvariant_id: 85\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 0\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	a9d16140-f4d7-44e6-a66d-e34a2c834416	2015-06-02 22:29:18.417453
481	267	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NOTCH1 gain-of-function mutations, including D1643H, have shown to be\n  correlated to poor prognosis in lung cancer. This is in a TP53 wild-type context.\ndisease_id: 3\nsource_id: 186\nvariant_id: 135\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	ca8c48a8-d2b6-44f8-86f0-9b8baab97f5a	2015-06-02 22:29:18.437131
482	268	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NOTCH1 gain-of-function mutations, including R2328W, have shown to be\n  correlated to poor prognosis in lung cancer. This is in a TP53 wild-type context.\ndisease_id: 3\nsource_id: 186\nvariant_id: 136\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	5f55d1de-8c92-4b88-bbd4-c9812e403ad0	2015-06-02 22:29:18.455353
483	269	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NOTCH1 gain-of-function mutations, including S2275fs, have shown to be\n  correlated to poor prognosis in lung cancer. This is in a TP53 wild-type context.\ndisease_id: 3\nsource_id: 186\nvariant_id: 138\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	cba09d68-e124-452d-9b90-97dac14a306e	2015-06-02 22:29:18.473313
484	270	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NOTCH1 gain-of-function mutations, including V2444fs, have shown to be\n  correlated to poor prognosis in lung cancer. This is in a TP53 wild-type context.\ndisease_id: 3\nsource_id: 186\nvariant_id: 137\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	b819b932-ccc3-4427-a9c1-0460813142a1	2015-06-02 22:29:18.491752
485	271	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: ATRA treatment did not effect overall survival in patients <60 years\n  old with NPM1 mutation regardless of FLT3-ITD status\ndisease_id: 19\nsource_id: 127\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	b253963c-fef4-4d20-9e3c-0ff5dacfeaac	2015-06-02 22:29:18.510104
486	272	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: ATRA treatment improved overall and relapse-free survival in older (>60)\n  patients with mutant NPM1 and without FLT3-ITD\ndisease_id: 19\nsource_id: 187\nvariant_id: 86\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	7c38c4b0-25cf-40b0-a293-21913fc9943d	2015-06-02 22:29:18.529383
487	273	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Young patients (18-60) with NPM1 mutations had improved overall survival\n  following high-dose versus standard dose daunorubicin (p=0.01) in univariate analysis.\n  However, the adjusted p-value for multiple testing is 0.11.\ndisease_id: 19\nsource_id: 188\nvariant_id: 86\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	8e6d7550-558b-4306-8889-3af118862a31	2015-06-02 22:29:18.54837
488	274	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutations were not associated with the M3 acute myeloid leukemia\n  FAB subtype (0/55).\ndisease_id: 19\nsource_id: 189\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	72c1b277-3619-4cd1-a45d-7d761e4b766f	2015-06-02 22:29:18.567506
489	275	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutations were not associated with the M2 FAB subtype of acute myeloid\n  leukemia.\ndisease_id: 19\nsource_id: 190\nvariant_id: 86\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 5\ndeleted: false\ndeleted_at: \n	1	\N	\N	b8bc15a2-d881-4963-bd49-805e98944186	2015-06-02 22:29:18.58644
490	276	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: AML with mutated NPM1 is a provisional entity in WHO classification of\n  acute myeloid leukemia (AML). This mutation should be tested for in clinical trials\n  and is recommended for testing in patients with cytogentically normal AML.\ndisease_id: 19\nsource_id: 191\nvariant_id: 86\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 0\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	ba9302c5-a091-46c7-8625-14f01b29ac81	2015-06-02 22:29:18.605204
491	277	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutations were associated with de novo AML as well as M4 and M5\n  FAB subtypes\ndisease_id: 19\nsource_id: 131\nvariant_id: 86\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	8a7f6b22-e049-4508-92b6-8a2ccfccebf3	2015-06-02 22:29:18.623315
492	278	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutations were associated with M4, M5a and M5b FAB subtypes of acute\n  myeloid leukemia.\ndisease_id: 19\nsource_id: 190\nvariant_id: 86\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	141d0871-03e5-4468-8bb3-d11f66babc51	2015-06-02 22:29:18.6411
493	279	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutations were associated with M5a and M5b FAB subtypes of acute\n  myeloid leukemia\ndisease_id: 19\nsource_id: 189\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	710d48a7-b126-49c4-805d-7b4cac178084	2015-06-02 22:29:18.658809
494	280	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutations were associated with normal karyotype in older (>60) patients\ndisease_id: 19\nsource_id: 187\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	16aa4546-be4b-46e7-b585-4da49edb73d3	2015-06-02 22:29:18.676601
495	281	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: CD33 and CD123 expression was significantly increased in patients with\n  NPM1 mutation with FLT3-ITD, indicating these patients may respond to combined anti-CD33\n  and anti-CD123 therapy\ndisease_id: 19\nsource_id: 192\nvariant_id: 86\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	aac18dd8-1239-432f-b9cc-9aedd28584c3	2015-06-02 22:29:18.695591
496	282	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: CD33 expression was significantly increased in patients with NPM1 mutation\n  with or without FLT3-ITD, indicating these patients may respond to anti-CD33 therapy\ndisease_id: 19\nsource_id: 192\nvariant_id: 86\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	4f40d192-9c2a-464c-b62c-ccc9af4b8dbd	2015-06-02 22:29:18.713071
497	283	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutation without FLT3-ITD was associated with reduced relapse risk\n  and increased overall survival in young adult acute myeloid leukemia patients (median\n  age 43)\ndisease_id: 19\nsource_id: 131\nvariant_id: 86\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	7b1437ec-a313-4d73-a435-305604c2ac0d	2015-06-02 22:29:18.731763
498	284	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with NPM1 mutations were associated with improved complete remission\n  rates as well as overall and disease free survival when all ages and karyotype were\n  analyzed; however, when only normal karyotype patients were analyzed, only complete\n  remission rates were improved\ndisease_id: 19\nsource_id: 187\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	2b436768-7939-480b-ace7-7ab4608356e6	2015-06-02 22:29:18.751255
499	285	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In young AML patients (<60 years old), DNMT3A mutation status was not\n  predictive of overall and relapse free survival in patients with NPM1 mutations\n  and wildtype FLT3 or wildtype NPM1 and FLT3-ITD\ndisease_id: 19\nsource_id: 107\nvariant_id: 86\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	97c98290-efbc-4e7d-8562-b5ad032b6c70	2015-06-02 22:29:18.770341
500	286	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Mutation status of IDH1 did not change event-free survival of patients\n  with an NPM1 mutation\ndisease_id: 19\nsource_id: 141\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	49df5bcc-40da-423e-9a62-052378558f07	2015-06-02 22:29:18.788538
501	287	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Complete remission rates were higher and both disease-free and overall\n  survival were longer for patients with Exon 12 NPM1 mutations.\ndisease_id: 19\nsource_id: 189\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	68173496-e604-4355-8bb9-71b551e77f9a	2015-06-02 22:29:18.805925
502	288	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Complete remission rates were higher and event-free survival was longer\n  for normal karyotype AML patients with Exon 12 NPM1 mutations.\ndisease_id: 19\nsource_id: 190\nvariant_id: 86\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	638ff350-eca9-42e9-8ece-9806cb096ed7	2015-06-02 22:29:18.823695
503	289	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cytoplasmic localization of NPM in AML patients was an independent prognositic\n  factor associated with complete remission in response to induction therapy in a\n  multivariate analysis (p=0.019) but not in a univariate analysis (p=0.07).\ndisease_id: 19\nsource_id: 193\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	2875ff39-0d39-49f2-a811-28ddc2699508	2015-06-02 22:29:18.841766
504	290	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Event-free survival was significantly improved in patients with both\n  NPM1 and FLT3-TKD mutations compared to patients with 1) FLT3-TKD mutations alone\n  2) either NPM1 or FLT3-TKD when FLT3-ITD patients were excluded from the analysis\n  3) neither FLT3-TKD or NPM1 mutations or FLT3-TKD alone when only de novo, normal\n  karyotype patients were analyzed\ndisease_id: 19\nsource_id: 136\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	4f56a8d3-caae-44a1-b57c-f14c7b862a97	2015-06-02 22:29:18.859354
505	291	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Intermediate risk patients with mutant NPM1 had improved overall survival\n  with the presence of either IDH1 or IDH2 mutations than those wildtype for both\n  IDH1 and IDH2\ndisease_id: 19\nsource_id: 188\nvariant_id: 86\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	3fde3026-0f0d-4f89-bb47-52d4880058f1	2015-06-02 22:29:18.876762
506	292	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Normal karyotype patients with NPM1 mutation and without FLT3-ITD had\n  improved overall and relapse-free survival, complete remission rates and remission\n  duration compared to all other combinations of mutants\ndisease_id: 19\nsource_id: 194\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	e68cbf19-64dc-4c07-8eca-e97758a030a2	2015-06-02 22:29:18.895267
507	293	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutation was associated with higher complete remission rates, lower\n  cumulative incidence of relapse and higher overall survival in intermediate risk\n  AML patients\ndisease_id: 19\nsource_id: 195\nvariant_id: 86\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	23840f0e-dc45-4a1a-8d10-a23726d06de7	2015-06-02 22:29:18.913555
508	294	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutation was associated with increased overall, event-free and relapse-free\n  survival and remission after induction therapy in the entire cohort and in the cytogenetically\n  normal subset of patients\ndisease_id: 19\nsource_id: 196\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	bbd5ee8c-812c-493c-bbbd-bf0ae17c1f3d	2015-06-02 22:29:18.932628
509	295	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutation without FLT3-ITD was significantly associated with complete\n  remission\ndisease_id: 19\nsource_id: 98\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	d81ccb9e-d7a2-4fc5-a60d-0ff826ff5d68	2015-06-02 22:29:18.950828
510	296	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutations were associated with increased complete remission rates\n  as well as longer overall disease free survival in normal karyotype AML patients\n  >59 years old, particularly in those >69 years old\ndisease_id: 19\nsource_id: 197\nvariant_id: 86\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	cf411e01-d1d7-434a-9c28-3ae872012d9d	2015-06-02 22:29:18.969156
511	297	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Younger (16-60), normal karyotype AML patients with Exon 12 NPM1 mutation\n  and without FLT3-ITD have increased overall survival, relapse-free survival and\n  response to induction chemotherapy\ndisease_id: 19\nsource_id: 198\nvariant_id: 86\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	f7581e68-678f-41ab-8e81-b8d089dcca7e	2015-06-02 22:29:18.987566
512	298	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Coocurrence of FLT3-ITD mutations significantly reduced overall survival\n  of normal karyotype AML patients\ndisease_id: 19\nsource_id: 189\nvariant_id: 86\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	d9dffbcd-3d53-4198-81e2-d9e5c3fbfa39	2015-06-02 22:29:19.005305
513	299	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Monitoring NPM1 mutation by cDNA-based RT-PCR effectively predicted relapse\n  in 62/93 patients by >1 log increase in NPM1 levels (N=57) or lack of reduction\n  in NPM1 levels following first line therapy (N=15)\ndisease_id: 19\nsource_id: 199\nvariant_id: 86\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	faa38224-60ea-4054-a776-a6d4bdd9fefb	2015-06-02 22:29:19.02337
514	300	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with NPM1 mutation and FLT3-ITD had reduced event-free survival\n  compared to patients with wildtype FLT3\ndisease_id: 19\nsource_id: 132\nvariant_id: 86\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	ba458978-d3ef-44de-a9c0-b32ab6d8db0e	2015-06-02 22:29:19.040989
515	301	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with NPM1 mutations and low levels of FLT3-ITD have worse overall\n  survival and cumulative incidence of relapse than those with NPM1 mutations alone\n  in intermediate risk AML patients\ndisease_id: 19\nsource_id: 195\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	818b2cf3-d52c-4b1c-83a3-bb52de153417	2015-06-02 22:29:19.058518
516	302	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: TET2 mutation reduces overall survival of normal karyotype patients with\n  either an NPM1 mutation or NPM1 mutation without FLT3-ITD\ndisease_id: 19\nsource_id: 200\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	555455d1-e7d4-4e84-a201-d450b8e60569	2015-06-02 22:29:19.076566
517	303	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Using a ratio of FLT3-ITD/FLT3 wildtype levels as a continuous variable,\n  a higher ratio was associated with reduced event-free survival in patients with\n  an NPM1 mutation\ndisease_id: 19\nsource_id: 132\nvariant_id: 86\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	f95efe8c-dd66-4e25-92d1-2f4bacc030ad	2015-06-02 22:29:19.093803
518	304	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NSC348884 combined with ATRA treatment induces apoptosis in primary AML\n  cells harboring mutant NPM1 but not in cells with wildtype NPM1 or both mutant NPM1\n  and FLT3-ITD\ndisease_id: 19\nsource_id: 201\nvariant_id: 86\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	75fcc59c-593f-4b68-8475-f7dffd60b06a	2015-06-02 22:29:19.112814
519	305	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: For patients with NPM1 mutation that achieved CR following induction\n  therapy, relapse-free survival was improved following treatment with valproic acid\ndisease_id: 19\nsource_id: 202\nvariant_id: 86\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	0f2f4ef7-2541-465f-b42b-49d0966fb1f5	2015-06-02 22:29:19.133769
520	306	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: No NPM1 mutations were identified in patients with favorable risk cytogenetics\n  (79/215 patients)\ndisease_id: 19\nsource_id: 105\nvariant_id: 87\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 5:170837546-170837547 (0->TCAG)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	81cefe5b-ebae-45b7-9def-ea754bb71e53	2015-06-02 22:29:19.152884
521	12	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: NPM1 Exon 12\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	cb498af2-0760-4e63-8d96-7fd2992f085d	2015-06-02 22:29:19.165034
522	307	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutations were associated with intermediate risk cytogenetics (including\n  normal karyotype)\ndisease_id: 19\nsource_id: 105\nvariant_id: 87\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 5:170837546-170837547 (0->TCAG)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	d5bfa057-9102-45bf-81a5-94394141fa3f	2015-06-02 22:29:19.205802
523	308	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NPM1 mutation (Type A, W288fs) causes cytoplasmic localization of NPM\n  when transfected into a non-hematopoietic cell line (293T cells). Cytoplasmic localization\n  of NPM in AML patients was associated with good response to induction therapy.\ndisease_id: 19\nsource_id: 193\nvariant_id: 87\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 5:170837546-170837547 (0->TCAG)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d2ba3592-67ea-46b6-92e1-5f0f7cbae3dd	2015-06-02 22:29:19.227353
524	309	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NSC348884 induced apoptosis in OPI-AML3 cells harboring an NPM1 mutation.\ndisease_id: 19\nsource_id: 201\nvariant_id: 87\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 5:170837546-170837547 (0->TCAG)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	cd14816a-2fbe-4550-a032-17a21cd8d315	2015-06-02 22:29:19.248889
525	310	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with stage IV melanoma, NRAS mutation was associated with\n  reduced median survival compared to patients with wildtype NRAS\ndisease_id: 7\nsource_id: 203\nvariant_id: 88\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	cffd5bf4-a01f-4c0c-aaa7-a7f0538337f5	2015-06-02 22:29:19.271525
526	311	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The presence of NRAS mutation in AML patients does not impact diease\n  prognosis (resistant disease, disease-free survival, complete remission rate, relapse\n  rate, induction death)\ndisease_id: 19\nsource_id: 204\nvariant_id: 89\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	4046448f-c928-4442-a732-812cd0e830ba	2015-06-02 22:29:19.290307
527	312	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with colorectal cancer harboring NRAS mutation have poorer survival\n  outcome and worse prognosis than patients with wildtype NRAS.\ndisease_id: 6\nsource_id: 205\nvariant_id: 89\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	d6e72653-a938-499e-9a0d-3e511efc7aae	2015-06-02 22:29:19.309075
528	313	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with stage IV melanoma, NRAS mutation was associated with\n  reduced median survival compared to patients with wildtype NRAS\ndisease_id: 7\nsource_id: 203\nvariant_id: 89\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	dfaa7022-c42e-4e49-891d-019c9d07bb92	2015-06-02 22:29:19.326758
529	314	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with colorectal cancer harboring NRAS mutation have poorer survival\n  outcome and worse prognosis than patients with wildtype NRAS.\ndisease_id: 6\nsource_id: 205\nvariant_id: 90\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 0\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	b7991539-8a16-492c-b137-cf519b07d285	2015-06-02 22:29:19.344528
530	315	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with colorectal cancer harboring NRAS mutation have poorer survival\n  outcome and worse prognosis than patients with wildtype NRAS.\ndisease_id: 6\nsource_id: 205\nvariant_id: 91\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 0\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	9a2783ed-ab35-4ace-aeb2-a467ea0fd2f3	2015-06-02 22:29:19.362112
531	316	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: NRAS mutation status does not impact overall, event-free or disease-free\n  survival in patients with AML\ndisease_id: 19\nsource_id: 206\nvariant_id: 92\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	df6c4c1f-3cc1-4a46-b31e-989d8e6def4f	2015-06-02 22:29:19.380596
572	356	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Medullary thyroid cancer cells with RET C634W mutation are insensitive\n  to motesanib, compared to wild-type RET.\ndisease_id: 43\nsource_id: 221\nvariant_id: 112\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 10:43609950-43609950 (C->G)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	a1548d44-9db5-4032-855d-cb5d5d038775	2015-06-02 22:29:20.191227
532	317	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Likely due to increased reliance of mutant NRAS on HSP90 for stabilization,\n  inhibition of HSP90 by 17-AAG was shown to be effective in a patient with metastatic\n  malignant melanoma with an NRAS G13D mutation\ndisease_id: 7\nsource_id: 207\nvariant_id: 93\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 1:115258744-115258744 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	e63978fe-819f-4fc2-9c38-b7f0e0170502	2015-06-02 22:29:19.399035
533	318	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In chemotherapy-refractory patients with colorectal cancer, NRAS mutation\n  status (primarily Q61) was not informative for disease control rate, progression\n  free survival or overall survival following cetuximab plus chemotherapy.\ndisease_id: 6\nsource_id: 70\nvariant_id: 94\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	17feb5fd-5b95-498f-a418-3089b0d32779	2015-06-02 22:29:19.417625
534	319	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Chemotherapy-refractory patients with colorectal cancer harboring NRAS\n  mutation (primarily Q61) have a significantly lower response rate to cetuximab than\n  patients wildtype for NRAS.\ndisease_id: 6\nsource_id: 70\nvariant_id: 94\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	a87e274c-9acc-469a-b471-c0c45ee96a3c	2015-06-02 22:29:19.434672
535	320	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Melanoma associated with NRAS Q61 mutation was more often associated\n  with those at the extremity than those at the trunk\ndisease_id: 7\nsource_id: 208\nvariant_id: 94\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	dfedc5f0-9041-425c-a6ca-b919f1ebd877	2015-06-02 22:29:19.453355
536	321	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Vemurafenib resistance is associated with gain of Q61 mutation in NRAS.\ndisease_id: 7\nsource_id: 209\nvariant_id: 94\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	ff3389cf-d50c-44ec-9fec-a88744b337dc	2015-06-02 22:29:19.471235
537	322	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a melanoma patient with NRAS Q61L mutation, treatment with temozolomide\n  resulted in disease free survival of 14 months\ndisease_id: 7\nsource_id: 210\nvariant_id: 95\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 1:115256528-115256529 (TT->CA)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	e58ef2a1-6a58-404b-be4a-86c2d25d7fde	2015-06-02 22:29:19.489494
538	323	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In a melanoma patient with Q61R mutation, treatment with temozolomide\n  resulted in overall survival of 16 months\ndisease_id: 7\nsource_id: 210\nvariant_id: 96\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 1:115256528-115256529 (TT->CC)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	aa705782-b374-4ca9-9ef7-dd206246b998	2015-06-02 22:29:19.506781
539	324	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In CHO cells with PDGFRA D842I mutation that have shown imatinib resistance,\n  crenolanib was significantly more potent at inhibiting kinase activity than imatinib.\ndisease_id: 41\nsource_id: 211\nvariant_id: 98\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 4:55152092-55152093 (GA->AT)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	824a5117-5278-4eba-a778-729b73bea2cd	2015-06-02 22:29:19.527004
540	325	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In CHO cells with PDGFRA D842V mutation that have shown imatinib resistance,\n  crenolanib was significantly more potent at inhibiting kinase activity than imatinib.\ndisease_id: 41\nsource_id: 211\nvariant_id: 99\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 4:55152093-55152093 (A->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	fa8fa90e-a5c3-455c-aee4-2567ae783d27	2015-06-02 22:29:19.549405
541	326	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: GIST cancer with D842V mutation is resistant to imatinib.\ndisease_id: 41\nsource_id: 212\nvariant_id: 99\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 4:55152093-55152093 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	16e87380-b47a-4ac9-b8ac-ceb003a7d9f0	2015-06-02 22:29:19.571484
542	327	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: While cancer with PVGFRA V561D mutation is known to be sensitive to Imatinib,\n  double mutation of V561D and D842V mutants are resistant to imatinib.\ndisease_id: 41\nsource_id: 165\nvariant_id: 99\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 4:55152093-55152093 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	e1fb2072-d450-4c82-933a-24181dccdd26	2015-06-02 22:29:19.592617
543	328	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: GIST tumors harboring PDGFRA D842V mutation are more likely to be benign\n  than malignant.\ndisease_id: 41\nsource_id: 213\nvariant_id: 99\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 4:55152093-55152093 (A->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 5\ndeleted: false\ndeleted_at: \n	1	\N	\N	377d42b4-d39d-450d-8662-eb1e019e376c	2015-06-02 22:29:19.614626
544	329	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In CHO cells with PDGFRA D842Y mutation that have shown imatinib resistance,\n  crenolanib was significantly more potent at inhibiting kinase activity than imatinib.\ndisease_id: 41\nsource_id: 211\nvariant_id: 100\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 4:55152092-55152092 (G->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	aae40478-c774-4604-b798-8dc77a939b61	2015-06-02 22:29:19.635695
545	330	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In CHO cells with the PDGFRA deletion I843 mutation that have shown imatinib\n  resistance, crenolanib was significantly more potent at inhibiting kinase activity\n  than imatinib.\ndisease_id: 41\nsource_id: 211\nvariant_id: 101\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	645f87bb-a92e-4f12-9cef-ce0010ed64d4	2015-06-02 22:29:19.656692
546	331	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In CHO cells with PDGFRA D842-843IM mutation that have shown imatinib\n  resistance, crenolanib was significantly more potent at inhibiting kinase activity\n  than imatinib.\ndisease_id: 41\nsource_id: 211\nvariant_id: 102\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	c33d3aa9-753a-4da9-9369-f57d638ea42e	2015-06-02 22:29:19.677371
547	332	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Breast cancer cell lines with E542K/E545K mutations showed increased\n  sensitivity to CH5132799 than cells with wild-type PIK3CA gene.\ndisease_id: 11\nsource_id: 214\nvariant_id: 103\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936082-178936082 (G->A)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	83652775-b8d7-4eff-ae4f-aaa92597abcf	2015-06-02 22:29:19.699856
548	333	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Rapamycin inhibits transformation induced by mutation in PIK3CA\ndisease_id: 11\nsource_id: 215\nvariant_id: 103\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936082-178936082 (G->A)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	c4318319-4fab-4ec2-b43a-16e6954c281f	2015-06-02 22:29:19.719246
549	334	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The presence of a PIK3CA mutation in exon 9 (such as E542K) or exon 20\n  were associated with lack of panitumumab or cetuximab response.\ndisease_id: 6\nsource_id: 216\nvariant_id: 103\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936082-178936082 (G->A)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	40784ac4-ff78-44fa-ae61-75a239c64418	2015-06-02 22:29:19.739427
550	335	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Coexistence of exon 9 (E542K or E545K) and exon 20 mutations but not\n  either alone, is prognostic for worse overall survival and cancer specific survival.\ndisease_id: 6\nsource_id: 217\nvariant_id: 103\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936082-178936082 (G->A)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	1f83c260-caa7-48fe-a140-b06207f63d67	2015-06-02 22:29:19.759188
551	336	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The presence of exon 9 (such as E542K) or exon 20 mutations were associated\n  with poorer survival compared to those with wild-type PIK3CA mutation.\ndisease_id: 6\nsource_id: 216\nvariant_id: 103\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936082-178936082 (G->A)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	4a94dc46-cb1b-47ff-bf5b-2622c2ff77da	2015-06-02 22:29:19.776431
552	337	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: PIK3CA mutation status was not predictive of response to regorafenib\n  treatment in patients that had received standard therapy and progressed within 3\n  months of their last treatment\ndisease_id: 6\nsource_id: 168\nvariant_id: 103\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936082-178936082 (G->A)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	f856009b-106f-40bd-9a29-f59240c6047d	2015-06-02 22:29:19.793582
553	338	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Breast cancer cell lines with E542K/E545K mutations showed increased\n  sensitivity to CH5132799 than cells with wild-type PIK3CA gene.\ndisease_id: 11\nsource_id: 214\nvariant_id: 104\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936091-178936091 (G->A)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	af2a8fcd-c7c8-4d84-8609-f443fa829c33	2015-06-02 22:29:19.810903
554	339	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Rapamycin inhibits transformation induced by mutation in PIK3CA\ndisease_id: 11\nsource_id: 215\nvariant_id: 104\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936091-178936091 (G->A)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	19e294f7-2f97-41c8-9b0d-2497bccdbd1a	2015-06-02 22:29:19.828029
555	340	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The presence of a PIK3CA mutation in exon 9 (such as E542K) or exon 20\n  were associated with lack of panitumumab or cetuximab response.\ndisease_id: 6\nsource_id: 216\nvariant_id: 104\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936091-178936091 (G->A)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	baebe0fa-667f-4faf-a042-432cf3633ed1	2015-06-02 22:29:19.845435
556	341	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Coexistence of exon 9 (E542K or E545K) and exon 20 mutations but not\n  either alone, is prognostic for worse overall survival and cancer specific survival.\ndisease_id: 6\nsource_id: 217\nvariant_id: 104\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936091-178936091 (G->A)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	9919b04b-5dc3-48d7-8ad6-2cc63b5530eb	2015-06-02 22:29:19.864642
557	342	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The presence of exon 9 (such as E545K) or exon 20 mutation may result\n  in poorer survival compared to those with wild-type PIK3CA mutation.\ndisease_id: 6\nsource_id: 216\nvariant_id: 104\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936091-178936091 (G->A)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	8e7e06c1-6eea-4e03-80de-c1959370bc3b	2015-06-02 22:29:19.882029
558	343	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: PIK3CA mutation status was not predictive of response to regorafenib\n  treatment in patients that had received standard therapy and progressed within 3\n  months of their last treatment\ndisease_id: 6\nsource_id: 168\nvariant_id: 104\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178936091-178936091 (G->A)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	9ae87f64-92fd-4041-860d-72e6c3115f2d	2015-06-02 22:29:19.900984
573	14	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: Motesanib Resistance\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	89bca6de-df7e-4039-9958-25aba76c6bd8	2015-06-02 22:29:20.203814
559	344	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Chemotherapy-refractory patients with colorectal cancer harboring Exon\n  20 PIK3CA mutations had lower response and disease control rates as well as shorter\n  progression free and overall survival following cetuximab plus chemotherapy than\n  those with wildtype PIK3CA\ndisease_id: 6\nsource_id: 70\nvariant_id: 105\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	7fb49da1-550c-49d6-9d17-ec51ececfc22	2015-06-02 22:29:19.920037
560	345	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In chemotherapy-refractory patients with colorectal cancer, Exon 9 PIK3CA\n  mutations (Exon 9) had no significant impact on response rate, disease control rate,\n  progression free surivival or overall survival following cetuximab plus chemotherapy\n  than those with wildtype PIK3CA\ndisease_id: 6\nsource_id: 70\nvariant_id: 106\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	7fb54db6-3013-422a-a800-587d700e7c52	2015-06-02 22:29:19.939006
561	346	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Breast cancer cell lines with H1047R mutation showed increased sensitivity\n  to CH5132799 than cells with wild-type PIK3CA gene.\ndisease_id: 11\nsource_id: 214\nvariant_id: 107\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178952085-178952085 (A->G)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	722b2d76-c690-42f8-8c15-a64c70a82480	2015-06-02 22:29:19.957156
562	347	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Rapamycin inhibits transformation induced by mutation in PIK3CA\ndisease_id: 11\nsource_id: 215\nvariant_id: 107\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178952085-178952085 (A->G)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	0c2abae3-5cf1-4243-ad82-291d720bc6cd	2015-06-02 22:29:19.974951
563	348	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The presence of a PIK3CA mutation in exon 9 or exon 20 (such as H1047R)\n  were associated with lack of panitumumab or cetuximab response.\ndisease_id: 6\nsource_id: 216\nvariant_id: 107\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178952085-178952085 (A->G)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	7eaf2cbf-c8bf-4ee1-9137-27b7d5e3b20c	2015-06-02 22:29:19.993165
564	349	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The presence of exon 20 (such as H1047R) or exon 9 mutation may result\n  in poorer survival compared to those with wild-type PIK3CA mutation.\ndisease_id: 6\nsource_id: 216\nvariant_id: 107\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178952085-178952085 (A->G)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	0b4092f1-8a9c-4ac4-ab8f-5802f35a667a	2015-06-02 22:29:20.012435
565	350	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: PIK3CA mutation status was not predictive of response to regorafenib\n  treatment in patients that had received standard therapy and progressed within 3\n  months of their last treatment\ndisease_id: 6\nsource_id: 168\nvariant_id: 107\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 3:178952085-178952085 (A->G)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	d40f3cab-2e71-4797-959c-b41b498544cd	2015-06-02 22:29:20.030258
566	351	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Fusion protein degradation is accelerated upon ATRA treatment of acute\n  promyelocytic cells at pharmalogical concentrations.\ndisease_id: 42\nsource_id: 218\nvariant_id: 108\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	ab525eed-335b-4594-94a7-34fed57986a1	2015-06-02 22:29:20.050696
567	352	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: A head-to-tail in-frame fusion between exon1 of DNAJB1 and exon2 of PRKACA\n  resulting from a ~400kb deletion was observed in 100% (15/15) fibrolamellar hepatocellular\n  carcinomas examined. The fusion was confirmed at both RNA and DNA level in all primary\n  and metastatic tumor samples but not in adjacent normal tissue. Immunoprecipitation\n  and Western blot analyses confirmed that the chimeric protein is expressed in tumor\n  tissue, and a cell culture assay indicated that it retains kinase activity.\ndisease_id: 21\nsource_id: 102\nvariant_id: 109\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	cc32d027-0474-4213-b171-5f2d8a09afb6	2015-06-02 22:29:20.068976
568	353	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Cells with PTEN deficiency have been shown to exhibit slowed growth in\n  reponse to PI3K-mTOR inhibitors.\ndisease_id: 2\nsource_id: 219\nvariant_id: 110\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 10:89717672-89717672 (C->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	6607e3fc-ef84-4d55-a21e-7ce80efdb238	2015-06-02 22:29:20.088874
569	13	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: PTEN Loss-of-Function\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	41ceaa1e-e72d-44e8-942b-9db10c622bf9	2015-06-02 22:29:20.127805
570	354	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: PTEN nonsense mutations, including R233*, have been shown to be inactivating\n  and loss-of-function, but do not have prognostic value in glioblastoma multiforme\n  patients.\ndisease_id: 40\nsource_id: 220\nvariant_id: 110\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 10:89717672-89717672 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	73197a44-7f9f-432f-9fdb-2c93d7912572	2015-06-02 22:29:20.146232
571	355	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Fusion protein degradation is accelerated upon ATRA treatment of acute\n  promyelocytic cells at pharmalogical concentrations.\ndisease_id: 42\nsource_id: 218\nvariant_id: 111\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	ae60a8ba-8ec6-47e3-81ba-ec435b92999b	2015-06-02 22:29:20.170072
574	357	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: The use of AZD1480 on RET-mutated/rearranged cell lines in vitro led\n  to strong repression of tyroid cancer cell growth.\ndisease_id: 43\nsource_id: 222\nvariant_id: 113\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 10:43617416-43617416 (T->C)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	888f7553-edbb-4791-8c38-287c2995ad2f	2015-06-02 22:29:20.221873
575	358	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Medullary thyroid cancer cells with RET M918T mutation are insensitive\n  to motesanib, compared to wild-type RET.\ndisease_id: 43\nsource_id: 221\nvariant_id: 113\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 10:43617416-43617416 (T->C)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	d9e3e815-9300-4f4a-b011-baa2dad1d409	2015-06-02 22:29:20.241277
576	359	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with medullary carcinoma, the presence of RET M918T mutation\n  is associated with increased probability of lymph node metastases.\ndisease_id: 43\nsource_id: 223\nvariant_id: 113\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 10:43617416-43617416 (T->C)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	fc470175-68e1-40d7-9813-658c43781e99	2015-06-02 22:29:20.264188
577	360	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Compared to those who harbor a wild type RET, patients with RET M918T\n  mutation develop larger and more aggressive medullary thyroid cancer.\ndisease_id: 43\nsource_id: 224\nvariant_id: 113\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 10:43617416-43617416 (T->C)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	eba9def7-886b-4092-9e63-67b8ae555461	2015-06-02 22:29:20.282993
578	361	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with SF3B1 mutations had a statistically significant longer\n  overall survival as well as event free-survival. Both before and after adjustment\n  for age, karyotype and sex.\ndisease_id: 29\nsource_id: 225\nvariant_id: 114\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:198267359-198267359 (C->A)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	d9e6d347-e1fc-4418-adf0-666a9199a711	2015-06-02 22:29:20.302054
579	362	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with SF3B1 mutations had a statistically significant longer\n  overall survival as well as event free-survival. Both before and after adjustment\n  for age, karyotype and sex.\ndisease_id: 29\nsource_id: 225\nvariant_id: 115\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 2:198266834-198266834 (T->C)\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 2\ndeleted: false\ndeleted_at: \n	1	\N	\N	5fc9ebae-05fd-407d-b092-d3b8859ccea3	2015-06-02 22:29:20.319708
580	363	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Breast tumors in a mouse model with R175H mutation are more responsive\n  to doxorubicin than breast tumors with wild type TP53.\ndisease_id: 11\nsource_id: 226\nvariant_id: 116\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7578406-7578406 (C->T)\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	a271173f-bde0-448e-8ece-e405c7981629	2015-06-02 22:29:20.33915
581	364	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Breast cancer patients who harbor R175H mutation have worse overall survival\n  than those with wild type TP53, but have better prognosis than those with R248W\n  mutation.\ndisease_id: 11\nsource_id: 227\nvariant_id: 116\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7578406-7578406 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	cccab7cf-539a-45ae-9a4a-b494b79fe5d1	2015-06-02 22:29:20.359081
582	365	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Breast cancer patients who harbor R248Q mutation have worse overall survival\n  than those with wild type TP53, but have better prognosis than those with R248W\n  mutation.\ndisease_id: 11\nsource_id: 227\nvariant_id: 117\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7577538-7577538 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	3c12d9e9-e9ca-4d92-a564-71a42dab3567	2015-06-02 22:29:20.376781
583	366	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In breast cancer patients harboring TP53 mutation, mutations in DNA contact\n  regions such as R248 are prognostic for a worse relapse-free survival compared to\n  other non-silent mutations in TP53.\ndisease_id: 11\nsource_id: 228\nvariant_id: 117\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7577538-7577538 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	9d82d35e-843e-4192-a8aa-eddc8876c76d	2015-06-02 22:29:20.395749
584	367	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In breast cancer patients harboring R248W mutation, the prognosis is\n  worse than any other hotspot TP53 mutation, as well as worse than patients with\n  wild type TP53.\ndisease_id: 11\nsource_id: 227\nvariant_id: 118\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7577539-7577539 (G->A)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	8fc72d92-bab3-4d03-8634-d27bf3e3a485	2015-06-02 22:29:20.413688
585	368	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In breast cancer patients harboring TP53 mutation, mutations in conserved\n  regions such as R249 are prognostic for a worse overall survival compared to those\n  harboring wild-type TP53.\ndisease_id: 11\nsource_id: 228\nvariant_id: 119\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7577535-7577535 (C->G)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	73850d7c-d722-40fd-8c24-d1975a2310e5	2015-06-02 22:29:20.431632
586	369	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In breast cancer patients harboring TP53 mutation, mutations in conserved\n  regions such as R249 are prognostic for a worse overall survival compared to those\n  harboring wild-type TP53.\ndisease_id: 11\nsource_id: 228\nvariant_id: 120\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7577536-7577536 (T->A)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	5a5771f5-5637-4a30-8d27-1278d2d95461	2015-06-02 22:29:20.44921
587	370	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Breast cancer patients who harbor R273C mutation have worse overall survival\n  than those with wild type TP53, but have better prognosis than those with R248W\n  mutation.\ndisease_id: 11\nsource_id: 227\nvariant_id: 121\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7577121-7577121 (G->A)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	6d757b75-7cbc-428b-9fc9-992ee3c7dbc2	2015-06-02 22:29:20.466675
588	371	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In breast cancer patients  harboring TP53 mutation, mutations in DNA\n  contact regions such as R273 are prognostic for a worse relapse-free survival compared\n  to other non-silent mutations in TP53.\ndisease_id: 11\nsource_id: 228\nvariant_id: 121\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7577121-7577121 (G->A)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	68d8ba93-b8dc-4905-b236-878420693c2a	2015-06-02 22:29:20.484202
589	372	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Breast cancer patients who harbor R273H mutation have worse overall survival\n  than those with wild type TP53, but have better prognosis than those with R248W\n  mutation.\ndisease_id: 11\nsource_id: 227\nvariant_id: 122\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7577120-7577120 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	d4a70812-1a7d-4a30-bd2a-24cd30a39222	2015-06-02 22:29:20.501383
590	373	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In breast cancer patients harboring TP53 mutation, mutations in DNA contact\n  regions such as R273 are prognostic for a worse relapse-free survival compared to\n  other non-silent mutations in TP53.\ndisease_id: 11\nsource_id: 228\nvariant_id: 122\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: 17:7577120-7577120 (C->T)\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	c3166a55-80d0-4ba8-9ef9-4f76eb872f39	2015-06-02 22:29:20.518618
591	374	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Breast tumor with R175H mutation are more responsive to doxorubicin than\n  breast tumors with wild type TP53.\ndisease_id: 11\nsource_id: 228\nvariant_id: 123\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	dcb2dd0e-f8c1-465a-91ec-2ef05f8b9c28	2015-06-02 22:29:20.538659
592	375	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: A patient with metastatic bladder cancer that responded well to the mTOR\n  inhibitor everolimus was shown to harbor a TSC1 frameshift truncation mutation (c.1907_1908del,\n  p.Glu636fs) and a nonsense NF2 mutation. 2/3 additional patients with TSC1 mutations\n  also had mild responses to everolimus.\ndisease_id: 44\nsource_id: 229\nvariant_id: 124\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	a105aa83-0884-41ba-9b49-6a788e172fc6	2015-06-02 22:29:20.558645
593	15	VariantGroup	\N	\N	\N	\N	\N	create	---\nname: TSC Loss\ndescription: \ndeleted: false\ndeleted_at: \n	1	\N	\N	78556046-f9b5-45b9-9786-5d210429524d	2015-06-02 22:29:20.571214
594	376	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Following rapamycin treatment of mice with KrasG12D-induced lung tumors,\n  mice with Tsc1 deletion (exon17/18 deletion resulting in frameshift) in the lung\n  exhibit increased overall survival, increased apoptosis, reduced proliferation and\n  reduced tumor burden compared to Tsc1 wildtype mice.\ndisease_id: 3\nsource_id: 230\nvariant_id: 124\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	ff19fac6-3edf-45bb-a230-321e0bd8c346	2015-06-02 22:29:20.588657
595	377	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Tumors expressing TSC1 or TSC2 mutations show notably more sensitivity\n  to everolimus than their wild-type counterparts.\ndisease_id: 24\nsource_id: 231\nvariant_id: 125\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d9f5557e-dee9-4528-a46c-bc091c944916	2015-06-02 22:29:20.610689
596	378	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Tumors expressing TSC1 or TSC2 mutations show notably more sensitivity\n  to everolimus than their wild-type counterparts.\ndisease_id: 24\nsource_id: 229\nvariant_id: 126\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	ad55394d-040b-4a0b-a8f8-9ce6c6c04989	2015-06-02 22:29:20.631907
597	379	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Age, sex, FAB subtype and karyotypes were not statistically significant\n  between AML patients with U2AF Q157P/R mutations and those who harbor wild type\n  U2AF.\ndisease_id: 19\nsource_id: 232\nvariant_id: 127\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	e1288e90-d362-4ee1-af7c-600878109146	2015-06-02 22:29:20.654235
598	380	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with AML, those who harbor Q157P/R mutation of U2AF do not\n  show statistical significance in complete remission rate compared to those who harbor\n  wild type U2AF.\ndisease_id: 19\nsource_id: 232\nvariant_id: 127\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	ac762d23-cca7-44f3-b714-703cc7349c6a	2015-06-02 22:29:20.673004
599	381	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with MDS, those who harbor Q157P/R mutation of U2AF do not\n  show statistical significance in complete remission rate compared to those who harbor\n  wild type U2AF.\ndisease_id: 29\nsource_id: 232\nvariant_id: 127\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	65c4ee83-65c3-4ea8-9e42-bc0c28a521ac	2015-06-02 22:29:20.692603
600	382	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: After adjust for age and cancer stage, presence of U2AF mutation such\n  as Q157P/R is prognostic for poorer survival outcomes in patients with MDS.\ndisease_id: 29\nsource_id: 233\nvariant_id: 127\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	2a16faa3-4d09-4725-9339-6fadbf610164	2015-06-02 22:29:20.711473
601	383	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Age, sex, FAB subtype and karyotypes were not statistically significant\n  between AML patients with U2AF S34Y/F mutations and those who harbor wild type U2AF.\ndisease_id: 19\nsource_id: 232\nvariant_id: 128\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 0\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 4\ndeleted: false\ndeleted_at: \n	1	\N	\N	6f19b3dc-9f0a-4521-a50e-eac97b10560c	2015-06-02 22:29:20.728939
602	384	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with AML, complete remission rates are not different between\n  patients who harbor the U2AF1 S34Y/F mutation and those with wild type U2AF1.\ndisease_id: 19\nsource_id: 232\nvariant_id: 128\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	6de4407b-1676-4814-a154-ddcc8943025e	2015-06-02 22:29:20.746132
603	385	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: In patients with AML, complete remission rates are not different between\n  patients who harbor the U2AF1 S34Y/F mutation and those with wild type U2AF1.\ndisease_id: 29\nsource_id: 232\nvariant_id: 128\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	a3bbaa77-0814-41ff-a763-9802071cc3be	2015-06-02 22:29:20.763231
604	386	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: After adjust for age and cancer stage, the presence of U2AF mutations\n  such as S34Y/F are prognostic for poorer survival outcomes in patients with MDS.\ndisease_id: 29\nsource_id: 233\nvariant_id: 128\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 3\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	85837990-aa60-4f1b-98e8-6697e4afeddd	2015-06-02 22:29:20.78098
605	387	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: WT1 mutations were associated with an inferior response to induction\n  chemotherapy with a higher rate of resistant disease in young (15-60+, median 45)\n  patients with cytogenetically normal AML\ndisease_id: 19\nsource_id: 234\nvariant_id: 129\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	9b88dc00-5783-485b-a672-6641d3177f71	2015-06-02 22:29:20.800413
606	388	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: No differences in relapse-free or overall survival were identified between\n  young (16-60) patients with or without WT1 mutations (69% exon 7, 15% exon 9) in\n  cytogenetically normal AML\ndisease_id: 19\nsource_id: 235\nvariant_id: 129\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	3aa1e59d-5ba4-48af-9c72-87b790f902be	2015-06-02 22:29:20.819606
607	389	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Rates of complete remission and refractory disease are not different\n  in patients with WT1 mutations (69% exon 7, 15% exon 9) than those without in young\n  (16-60) patients with cytogenetically normal AML\ndisease_id: 19\nsource_id: 235\nvariant_id: 129\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	4b4fe60f-9b9c-4eb1-b02e-fe08418c928f	2015-06-02 22:29:20.837713
608	390	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Mutations  in WT1 were associated with increased risk of recurrence in\n  young patients (15-50) with cytogenetically normal AML\ndisease_id: 19\nsource_id: 236\nvariant_id: 129\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	6b96b7cc-d145-44aa-b77c-0a6228566b76	2015-06-02 22:29:20.856619
609	391	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Mutations in WT1 were associated with a worse overall prognosis than\n  patients wildtype for WT1 in young patients (15-50), primarily because of increased\n  risk of disease recurrence\ndisease_id: 19\nsource_id: 236\nvariant_id: 129\nrating: 2\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	2f079d35-925c-430d-9544-2fec5d8d33bb	2015-06-02 22:29:20.87455
610	392	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with WT1 (69% exon 7, 15% exon 9) and FLT3-ITD mutations had\n  significantly lower complete remission and higher refractory disease rates than\n  those with wildtype WT1 and without FLT3-ITD following induction therapy in young\n  (16-60) patients with cytogenetically normal AML\ndisease_id: 19\nsource_id: 235\nvariant_id: 129\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	4e00116f-3128-4573-b61a-08291ba0f396	2015-06-02 22:29:20.892132
611	393	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: WT mutations were associated with shorter overall and disease free survival\n  in a cohort of cytogenetically normal, young (<60) AML patients\ndisease_id: 19\nsource_id: 237\nvariant_id: 129\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	1bd8cafb-fc9e-4bc7-82ac-3c6c69caedcc	2015-06-02 22:29:20.910559
612	394	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: WT1 mutations were a negative prognostic factor for overall survival\n  in young (15-60+, median 45) patients with cytogenetically normal AML\ndisease_id: 19\nsource_id: 234\nvariant_id: 129\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	593ac8f8-9d58-45b8-ae06-3afa888aa83c	2015-06-02 22:29:20.928317
613	395	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: WT1 mutations were associated with a higher cumulative incidence of relapse\n  and shorter relapse free survival in young (15-60+, median 45) patients with cytogenetically\n  normal AML\ndisease_id: 19\nsource_id: 234\nvariant_id: 129\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	5d7f45ce-aa3a-4d41-9aed-895c5ac66c57	2015-06-02 22:29:20.94568
614	396	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: WT1 mutations were associated with an inferior response to induction\n  chemotherapy with a higher rate of resistant disease in young (15-60+, median 45)\n  patients with cytogenetically normal AML\ndisease_id: 19\nsource_id: 234\nvariant_id: 130\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	758714d1-3db4-40d4-a70c-c176bb42afcc	2015-06-02 22:29:20.963801
615	397	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: No differences in relapse-free or overall survival were identified between\n  young (16-60) patients with or without WT1 mutations (69% exon 7, 15% exon 9) in\n  cytogenetically normal AML\ndisease_id: 19\nsource_id: 235\nvariant_id: 130\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	3be6be57-e8d4-49fd-88e9-74d6787a8239	2015-06-02 22:29:20.982186
616	398	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Rates of complete remission and refractory disease are not different\n  in patients with WT1 mutations (69% exon 7, 15% exon 9) than those without in young\n  (16-60) patients with cytogenetically normal AML.\ndisease_id: 19\nsource_id: 235\nvariant_id: 130\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 1\nclinical_significance: 6\ndeleted: false\ndeleted_at: \n	1	\N	\N	8a5188dd-da21-4404-8a6d-be32b5ef67b7	2015-06-02 22:29:21.027525
617	399	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Patients with WT1 (69% exon 7, 15% exon 9) and FLT3-ITD mutations had\n  significantly lower complete remission and higher refractory disease rates than\n  those with wildtype WT1 and without FLT3-ITD following induction therapy in young\n  (16-60) patients with cytogenetically normal AML\ndisease_id: 19\nsource_id: 235\nvariant_id: 130\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	e8fa7030-3b85-4de6-bb61-5e0472f3f544	2015-06-02 22:29:21.045482
618	400	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: WT1 mutations were a negative prognostic factor for overall survival\n  in young (15-60+, median 45) patients with cytogenetically normal AML\ndisease_id: 19\nsource_id: 234\nvariant_id: 130\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	201e52f1-00ce-4032-9293-bcd6061a3dd7	2015-06-02 22:29:21.063146
619	401	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: WT1 mutations were associated with a higher cumulative incidence of relapse\n  and shorter relapse free survival in young (15-60+, median 45) patients with cytogenetically\n  normal AML\ndisease_id: 19\nsource_id: 234\nvariant_id: 130\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	9276aa8a-a8b8-4334-ae90-09a91ec96b39	2015-06-02 22:29:21.081269
620	402	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: WT1 mutations were associated with shorter overall and disease free survival\n  in a cohort of cytogenetically normal, young (<60) AML patients\ndisease_id: 19\nsource_id: 237\nvariant_id: 130\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 1\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 3\ndeleted: false\ndeleted_at: \n	1	\N	\N	9a1ca977-5012-4b84-92ac-1eb4a6157a1c	2015-06-02 22:29:21.099578
621	403	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Two metastatic melanoma patients with the L576P KIT mutation were treated\n  with dasatinib, including one patient previously treated with imatinib. Both patients\n  had marked reduction (>50%) and elimination of tumor F18-fluorodeoxyglucose (FDG)-avidity\n  by positron emission tomography (PET) imaging after dasatinib treatment. These data\n  support the selective inhibitory effect of dasatinib against cells harboring the\n  most common KIT mutation in melanoma, and thus has therapeutic implications for\n  acrallentiginous, chronic sun-damaged, and mucosal melanomas.\ndisease_id: 45\nsource_id: 163\nvariant_id: 72\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	d886504a-df05-4404-b511-f15eac7243ac	2015-06-02 22:29:21.121497
622	404	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: To formally test this hypothesis, we took advantage of HCT116 cells in\n  which the KRAS D13 mutant allele had been genetically deleted by homologous recombination\n  (15). Strikingly, we found that HCT116-derivative cells retaining only the KRAS\n  WT allele (named HKh-2 and HKe-3; Supplemental Table 3) were sensitive to everolimus,\n  while the parental and the isogenic cells carrying mutated KRAS were equally resistant\n  to this compound (Figure 2A).\ndisease_id: 46\nsource_id: 238\nvariant_id: 81\nrating: 4\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	81d9ea5e-6ed3-4010-8118-40565146cc5f	2015-06-02 22:29:21.142724
623	405	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: Figure 1 of paper shows that V654A was associated with progression of\n  disease in one case of a mucosal melanoma. Results were from a Phase II clinical\n  trial.\ndisease_id: 45\nsource_id: 239\nvariant_id: 73\nrating: 5\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 1\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 1\ndeleted: false\ndeleted_at: \n	1	\N	\N	87bbdff9-d91b-4ec3-a194-f9c93a325001	2015-06-02 22:29:21.161948
624	406	EvidenceItem	\N	\N	\N	\N	\N	create	---\ndescription: From the screen, we discovered that proteasome inhibitors show selectivity\n  toward BRAF V600Emutant cells, irrespective of PTEN or RB1 expression. Preferential\n  targeting of BRAF-mutant cells by proteasome inhibitors was corroborated in a second\n  BRAF V600E isogenic model, as well as in a panel of colorectal cancer cell lines\n  by the use of the proteasome inhibitor carfilzomib. Notably, carfilzomib also showed\n  striking in vivo activity in a BRAF-mutant human colorectal cancer xenograft model.\n  Vulnerability to proteasome inhibitors is dependent on persistent BRAF signaling,\n  because BRAF V600E blockade by PLX4720 reversed sensitivity to carfilzomib in BRAF-mutant\n  colorectal cancer cells. Our findings indicated that proteasome inhibition might\n  represent a valuable targeting strategy in BRAF V600Emutant colorectal tumors.\ndisease_id: 47\nsource_id: 240\nvariant_id: 12\nrating: 3\nstatus: accepted\nremote_errors: \nremote_ids: \nvariant_hgvs: N/A\ndrug_interaction_description: \nevidence_level: 2\nevidence_type: 2\nvariant_origin: 0\nevidence_direction: 0\nclinical_significance: 0\ndeleted: false\ndeleted_at: \n	1	\N	\N	833659f0-84bc-4127-ab1b-adf0fc695cff	2015-06-02 22:29:21.186614
625	1	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'While imatinib has shown to be incredibly successful in treating philadelphia chromosome\n  positive CML, patients that have shown primary or secondary resistance to the drug\n  have been observed to harbor T315I and E255K ABL kinase domain mutations. These\n  mutations, among others, have been observed both in primary refractory disease and\n  acquired resistance. In gastrointestinal stromal tumors (GIST), PDGFRA 842 mutations\n  have also been shown to confer resistance to imatinib. '\n	2	\N	\N	bd1772fb-954d-4b16-b605-8b1f37e21dfc	2015-06-02 22:29:21.251476
626	2	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'ALK fusion positive non-small cell lung cancer (NSCLC) is treated as its own subset\n  of NSCLC. Many ALK fusions that have been seen as recurrent in cancer serve to increase\n  the activity of the ALK oncogene relative to normal cells. While EML4 is the most\n  common fusion partner, other 5'' partners have been observed. The EML4-ALK fusion\n  has shown sensitivity to targeted tyrosine kinase inhibitors such as crizotinib. '\n	2	\N	\N	76bbf3ce-ba7b-4e62-8489-0b6bbdc23087	2015-06-02 22:29:21.261649
627	6	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'EGFR pathway activation is a nearly ubiquitous hallmark of cancer. Many tyrosine\n  kinase inhibitors have been developed to target EGFR pathway activity. One such\n  inhibitor, erlotinib, has demonstrated efficacy in an EGFR over-active setting.\n  However, the T790M missense mutation has shown to confer resistance to this inhibitor\n  in cell lines and case studies.  '\n	2	\N	\N	db079f51-88dc-4816-a14d-5e84473ef890	2015-06-02 22:29:21.269727
628	3	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'The ALK oncogene has long been considered a driving factor in non-small cell lung\n  cancer (NSCLC). The targeted tyrosine kinase inhibitor criztonib has shown to be\n  effective in ALK-mutant NSCLC. However, in patients that have shown acquired resistance\n  to crizotinib, missense mutations in the tyrosine kinase domain have shown to drive\n  this resistance. '\n	2	\N	\N	616181c1-9141-4ed7-8313-6353aefdd028	2015-06-02 22:29:21.276722
629	4	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'While BRAF V600E is nearly ubiquitous in many cancer types, other V600 variants\n  have also been observed and studied to a lesser degree. At first approximation,\n  many of these variants seem to behave similarly to V600E, and treatment with dabrafenib\n  has been shown to be effective. '\n	2	\N	\N	6711ad1a-062e-45e0-8b40-acdaa0ba909d	2015-06-02 22:29:21.283923
630	7	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'HER2-positive breast cancer is widely recognized as a molecular subtype of breast\n  cancer. While amplification of ERBB2 is a common mechanism for activation of the\n  pathway, missense mutations have also demonstrated activation potential. These activating\n  missense mutations also confer senstivity to the targeted therapeutic neratinib. '\n	2	\N	\N	07e6841e-b391-47f1-a435-4f29b091b126	2015-06-02 22:29:21.290897
631	8	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'ER-positive breast cancer is the most common of the breast cancer subtypes. Hormone\n  therapy has been widely effective in treating the disease, however sequencing of\n  resistant patients has uncovered a number of missense mutations in mediating this\n  resistance. Many of these mutations lie within the ligand-binding domain, and contribute\n  to constitutive activity of the receptor. This has lead to the development of estrogen\n  receptor degrading agents such as fulvestrant, which have shown early efficacy in\n  clinical trials.  '\n	2	\N	\N	993054c6-ba3d-431a-aa32-73ab67b99446	2015-06-02 22:29:21.297873
632	9	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'FGFR fusions have been demonstrated across many cancer types to have oncogenic\n  potential. FGFR2 and FGFR3 have been shown to be fused to many 3'' partners, which\n  may act as a vehicle for pathway activation. Treatment of cell lines harboring FGFR2\n  fusions with pazopanib has shown mild "anti-tumor" activities, and both ponatinib\n  and pazopanib have shown efficacy in case studies.  '\n	2	\N	\N	7a36a4fe-0d57-4755-b9fe-33cbeb067452	2015-06-02 22:29:21.304758
633	12	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- NPM1 exon 12 mutations are frequently identified in patients with cytogenetically\n  normal acute myeloid leukemia (AML) and often co-occur with FLT3-ITD. FLT3 status\n  should also be evaluated as co-occurence with FLT3-ITD may impact prognosis. Exon\n  12 mutations have been identified as a predictor of good prognostic outcomes in\n  the absence of FLT3-ITD. Due to their high frequency, NPM1 mutations have been retrospectively\n  analyzed in the context of a number of therapies including variable results following\n  ATRA treatment as well as improved response to high-dose daunorubicin or valproic\n  acid. Additionally, multiple groups have shown increased surface expression of CD33\n  associated with NPM1 mutation, suggesting these patients may respond to anti-CD33\n  therapy. Cytoplasmic sequestration of NPM1 (NPM1c) is associated with a good response\n  to induction therapy.\n	2	\N	\N	55cde6ff-85ac-46af-9c93-d2e8b784195d	2015-06-02 22:29:21.311586
634	13	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'PTEN loss is a common event in breast cancer, as well as others. The most common\n  single nucleotide variant resulting in PTEN loss is a R233 nonsense mutation. Cell\n  lines harboring this mutation behave similarly to cell lines harboring larger insertion\n  or deletion events, in that they both respond to PI3K-mTOR inhibitors with impeded\n  growth. '\n	2	\N	\N	9c552628-1820-4435-a452-5e9fb16b3fc6	2015-06-02 22:29:21.318523
635	14	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'RET activation is a common oncogenic marker of medullary thyroid carcinoma. Treatment\n  of these patients with the targeted therapeutic motesanib has shown to be effective.\n  However, the missense mutations C634W and M918T have shown to confer motesanib resistance\n  in cell lines. '\n	2	\N	\N	d06ffc53-cc81-4f32-b725-aab7fcaa71f1	2015-06-02 22:29:21.325571
636	15	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'Inactivating events in TSC1 and TSC2 have been observed in a number of cancer types.\n  Cell lines and case studies have shown that in the loss of TSC, the mTOR inhibitor\n  everolimus has seen significant anti-tumorigenic activity. '\n	2	\N	\N	9586c7e8-8ba4-4f84-8f7f-8320f57eb28b	2015-06-02 22:29:21.332207
637	5	VariantGroup	\N	\N	\N	\N	\N	update	---\ndescription:\n- \n- 'BRCA germline variants have long been recognized as important potential predictors\n  of breast and ovarian cancer risk. '\n	2	\N	\N	636bb39a-f2c7-4a57-8e02-e00369ffb7a0	2015-06-02 22:29:21.338857
\.


--
-- Name: audits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('audits_id_seq', 637, true);


--
-- Data for Name: authorizations; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY authorizations (id, user_id, provider, uid, created_at, updated_at) FROM stdin;
\.


--
-- Name: authorizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('authorizations_id_seq', 1, false);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY comments (id, title, comment, commentable_id, commentable_type, user_id, role, created_at, updated_at) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Data for Name: data_versions; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY data_versions (id, version) FROM stdin;
\.


--
-- Name: data_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('data_versions_id_seq', 1, false);


--
-- Data for Name: definitions; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY definitions (id, term, text, created_at, updated_at) FROM stdin;
\.


--
-- Name: definitions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('definitions_id_seq', 1, false);


--
-- Data for Name: delayed_jobs; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY delayed_jobs (id, priority, attempts, handler, last_error, run_at, locked_at, failed_at, locked_by, queue, created_at, updated_at) FROM stdin;
\.


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('delayed_jobs_id_seq', 1, false);


--
-- Data for Name: disease_ontology_mirrors; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY disease_ontology_mirrors (id, doid, name) FROM stdin;
1	0001816	Angiosarcoma
2	0002116	Pterygium
3	0014667	Disease Of Metabolism
4	0050001	Actinomadura Madurae Infectious Disease
5	0050002	Actinomadura Pelletieri Infectious Disease
6	0050003	Streptomyces Somaliensis Infectious Disease
7	0050004	Seminal Vesicle Acute Gonorrhea
8	0050007	Cutaneous Strongyloidiasis
9	0050009	Intestinal Strongyloidiasis
10	0050010	Mansonella Perstans Infectious Disease
11	0050011	Mansonella Streptocerca Infectious Disease
12	0050012	Chikungunya
13	0050013	Carbohydrate Metabolism Disease
14	0050014	Epizootic Hemorrhagic Disease
15	0050015	Rocio Virus Encephalitis
16	0050024	Ehrlichia Ewingii Ehrlichiosis
17	0050025	Human Granulocytic Anaplasmosis
18	0050026	Human Monocytic Ehrlichiosis
19	0050032	Mineral Metabolism Disease
20	0050035	African Tick-bite Fever
21	0050041	Astrakhan Spotted Fever
22	0050042	Indian Tick Typhus
23	0050043	Israeli Tick Typhus
24	0050046	Far Eastern Spotted Fever
25	0050047	Flinders Island Spotted Fever
26	0050050	Japanese Spotted Fever
27	0050051	Rickettsia Parkeri Spotted Fever
28	0050052	Rocky Mountain Spotted Fever
29	0050053	Rickettsia Honei Spotted Fever
30	0050059	Oropharyngeal Anthrax
31	0050061	Erysipeloid
32	0050063	Abortive Plague
33	0050065	Cutaneous Listeriosis
34	0050066	Listeria Meningoencephalitis
35	0050067	Listeria Septicaemia
36	0050068	Pestis Minor
37	0050069	Yersinia Pestis Infectious Disease
38	0050070	Plague Meningitis
39	0050072	Adiaspiromycosis
40	0050073	Invasive Aspergillosis
41	0050074	Tonsillar Aspergillosis
42	0050075	Pulmonary Blastomycosis
43	0050078	Cervix Tuberculosis
44	0050079	Niacin Deficiency
45	0050080	Iodine Deficiency
46	0050082	Hepatic Torque Teno Virus Infectious Disease
47	0050083	Keshan Disease
48	0050084	Rhinotracheitis
49	0050085	Entomophthoromycosis
50	0050086	Cutaneous Mucormycosis
51	0050088	Gastrointestinal Mucormycosis
52	0050089	Pulmonary Mucormycosis
53	0050090	Rhinocerebral Mucormycosis
54	0050091	Disseminated Paracoccidioidomycosis
55	0050092	Pulmonary Paracoccidioidomycosis
56	0050093	Disseminated Sporotrichosis
57	0050094	Lymphocutaneous Sporotrichosis
58	0050095	Pulmonary Sporotrichosis
59	0050096	Tinea Barbae
60	0050097	Ectothrix Infectious Disease
61	0050098	Microsporum Audouinii Tinea Capitis
62	0050099	Microsporum Canis Tinea Capitis
63	0050100	Microsporum Distortum Tinea Capitis
64	0050101	Microsporum Ferrugineum Tinea Capitis
65	0050102	Microsporum Gypseum Tinea Capitis
66	0050103	Microsporum Nanum Tinea Capitis
67	0050104	Trichophyton Verrucosum Tinea Capitis
68	0050105	Endothrix Infectious Disease
69	0050106	Trichophyton Soudanense Tinea Capitis
70	0050107	Trichophyton Tonsurans Tinea Capitis
71	0050108	Trichophyton Violaceum Tinea Capitis
72	0050110	Trichophyton Schoenleinii Tinea Capitis
73	0050111	Microsporum Fulvum Tinea Capitis
74	0050112	Trichophyton Megninii Tinea Capitis
75	0050113	Trichophyton Equinum Tinea Capitis
76	0050115	Trichophyton Yaoundei Tinea Capitis
77	0050116	Tinea Imbricata
78	0050117	Disease By Infectious Agent
79	0050118	La Crosse Encephalitis
80	0050119	West Nile Virus Neurological Syndrome
81	0050120	Hemophagocytic Lymphohistiocytosis
82	0050123	Tuberculous Encephalitis
83	0050125	Dengue Shock Syndrome
84	0050126	Tahyna Virus Encephalitis
85	0050127	Sinusitis
86	0050129	Secretory Diarrhea
87	0050130	Osmotic Diarrhea
88	0050131	Motility-related Diarrhea
89	0050132	Inflammatory Diarrhea
90	0050133	Superficial Mycosis
91	0050134	Cutaneous Mycosis
92	0050135	Subcutaneous Mycosis
93	0050136	Systemic Mycosis
94	0050138	Podoconiosis
95	0050139	Opisthorchis Felineus Infectious Disease
96	0050140	Acute Diarrhea
97	0050141	Intestinal Botulism
98	0050143	Asymptomatic Dengue
99	0050144	Kartagener Syndrome
100	0050145	Adenoiditis
101	0050146	Autoimmune Glomerulonephritis
102	0050147	Otomycosis
103	0050148	Laryngotracheitis
104	0050150	Pontiac Fever
105	0050151	Tracheobronchial Tuberculosis
106	0050152	Aspiration Pneumonia
107	0050153	Pulmonary Aspergilloma
108	0050154	Mycoplasmal Pneumonia
109	0050155	Sensory System Disease
110	0050156	Idiopathic Pulmonary Fibrosis
111	0050157	Cryptogenic Organizing Pneumonia
112	0050158	Desquamative Interstitial Pneumonia
113	0050159	Lymphoid Interstitial Pneumonia
114	0050160	Inhalation Anthrax
115	0050161	Lower Respiratory Tract Disease
116	0050162	Influenza Encephalopathy
117	0050163	Influenza Myocarditis
118	0050164	Influenza Myositis
119	0050165	Tuberculous Mesenteric Gland
120	0050166	Tuberculous Salpingitis
121	0050167	Autoimmune Polyendocrine Syndrome Type 1
122	0050168	Autoimmune Polyendocrine Syndrome Type 2
123	0050169	Cutaneous Lupus Erythematosus
124	0050170	Jamestown Canyon Encephalitis
125	0050171	Snowshoe Hare Encephalitis
126	0050172	Trivittatus Encephalitis
127	0050173	Inkoo Encephalitis
128	0050174	Kunjin Encephalitis
129	0050175	Tick-borne Encephalitis
130	0050177	Monogenic Disease
131	0050178	Complex Genetic Disease
132	0050179	Powassan Encephalitis
133	0050180	Colorado Tick Fever Encephalitis
134	0050181	Herpes Simplex Virus Encephalitis
135	0050182	Varicella-zoster Virus Encephalitis
136	0050183	Epstein-Barr Virus Encephalitis
137	0050184	Measles Virus Encephalitis
138	0050185	Erythema Multiforme
139	0050186	Cytomegalovirus Encephalitis
140	0050187	Rubella Virus Encephalitis
141	0050188	Coxsackievirus Encephalitis
142	0050189	Polioencephalitis
143	0050190	Adenovirus Encephalitis
144	0050191	Influenza Virus Encephalitis
145	0050192	Nipah Virus Encephalitis
146	0050193	Lymphocytic Choriomeningitis Virus Encephalitis
147	0050194	Argentine Hemorrhagic Fever
148	0050195	Bolivian Hemorrhagic Fever
149	0050196	Venezuelan Hemorrhagic Fever
150	0050197	Brazilian Hemorrhagic Fever
151	0050198	Chapare Hemorrhagic Fever
152	0050199	Whitewater Arroyo Hemorrhagic Fever
153	0050200	Korean Hemorrhagic Fever
154	0050201	Nephropathia Epidemica
155	0050202	Lujo Hemorrhagic Fever
156	0050203	Cytomegalovirus Hepatitis
157	0050204	Epstein-Barr Virus Hepatitis
158	0050205	Herpes Simplex Virus Hepatitis
159	0050206	Adenovirus Hepatitis
160	0050207	Rubella Virus Hepatitis
161	0050208	Yellow Fever Hepatitis
162	0050209	Measles Virus Hepatitis
163	0050210	Varicella-zoster Virus Hepatitis
164	0050211	Swine Influenza
165	0050212	Campylobacter Jejuni Gastroenteritis
166	0050213	Vibrio Gastroenteritis
167	0050214	Lambert-Eaton Myasthenic Syndrome
168	0050215	Staphylococcus Gastroenteritis
169	0050216	Bacillus Cereus Gastroenteritis
170	0050217	Sapovirus Gastroenteritis
171	0050218	Polycystic Echinococcosis
172	0050219	Hepeviridae Infectious Disease
173	0050220	Coxiella Burnetii Pneumonia
174	0050221	Coxiella Burnetii Hepatitis
175	0050222	Selective IgM Deficiency Disease
176	0050223	Candidal Gastritis
177	0050224	Helicobacter Heilmannii Infectious Disease
178	0050225	Histoplasma Capsulatum Gastritis
179	0050226	Morganella Morganii Intestinal Infectious Disease
180	0050227	Vibrio Cholerae O139 Cholera
181	0050228	Amebic Dysentery
182	0050229	Escherichia Coli Dysentery
183	0050230	Intestinal Capillariasis
184	0050231	Hepatic Capillariasis
185	0050232	Pulmonary Capillariasis
186	0050233	Balamuthia Mandrillaris Infectious Disease
187	0050234	Acanthamoeba Infectious Disease
188	0050235	Alveolata Infectious Disease
189	0050236	Heterolobosea Infectious Disease
190	0050237	Euglenozoa Infectious Disease
191	0050238	Parabasalia Infectious Disease
192	0050239	Fornicata Infectious Disease
193	0050240	Trichomonadida Infectious Disease
194	0050241	Tritrichomonadida Infectious Disease
195	0050242	Primary Amebic Meningoencephalitis
196	0050243	Apicomplexa Infectious Disease
197	0050244	Coccidia Infectious Disease
198	0050245	Aconoidasida Infectious Disease
199	0050246	Granulomatous Amebic Encephalitis
200	0050247	Parasitic Stramenopiles Infectious Disease
201	0050249	Brugia Timori Filariasis
202	0050250	Philophthalmiasis
203	0050251	Coenurosis
204	0050252	Dipylidium Caninum Infectious Disease
205	0050253	Mesocestoidiasis
206	0050254	Acanthocephaliasis
207	0050255	Uncinaria Stenocephala Infectious Disease
208	0050256	Angiostrongyliasis
209	0050257	Angiostrongylus Cantonensis Infectious Disease
210	0050258	Angiostrongylus Costaricensis Infectious Disease
211	0050259	Baylisascariasis
212	0050260	Dioctophymiasis
213	0050261	Thelaziasis
214	0050262	Acoelomata Infectious Disease
215	0050263	Pseudocoelomata Infectious Disease
216	0050264	Acanthocephala Infectious Disease
217	0050265	Tick Paralysis
218	0050266	Tungiasis
219	0050267	Ancylostoma Caninum Ancylostomiasis
220	0050268	Ophthalmomyiasis
221	0050269	Trichomonas Vaginalis Trichomoniasis
222	0050270	Trichomonas Tenax Trichomoniasis
223	0050271	Cutaneous Ascomycota Mycosis
224	0050272	Cutaneous Basidiomycota Mycosis
225	0050273	Neoscytalidium Dimidiatum Infectious Disease
226	0050274	Scopulariopsis Infectious Disease
227	0050275	Onychomycosis
228	0050276	Subcutaneous Ascomycota Mycosis
229	0050277	Subcutaneous Fungi Incertae Sedis Mycosis
230	0050278	Basidiobolomycosis
231	0050279	Conidiobolomycosis
232	0050280	Superficial Ascomycota Mycosis
233	0050281	Superficial Basidiomycota Mycosis
234	0050282	Primary Systemic Ascomycota Mycosis
235	0050283	Stachybotrys Infectious Disease
236	0050284	Opportunistic Ascomycota Mycosis
237	0050285	Opportunistic Basidiomycota Mycosis
238	0050286	Opportunistic Fungi Incertae Sedis Mycosis
239	0050287	Opportunistic Microsporidia Mycosis
240	0050288	Penicilliosis
241	0050289	Fusariosis
242	0050290	Trichosporonosis
243	0050291	Parasitic Ichthyosporea Infectious Disease
244	0050292	Primary Systemic Mycosis
245	0050293	Scopulariopsis Brevicaulis Infectious Disease
246	0050294	Scytalidium Hyalinum Infectious Disease
247	0050295	Cutaneous Sporotrichosis
248	0050296	Asfarviridae Infectious Disease
249	0050297	Primary Francisellaceae Infectious Disease
250	0050298	Adenovirus Infectious Disease
251	0050299	Simplexvirus Infectious Disease
252	0050300	Deltavirus Infectious Disease
253	0050301	Polyomaviridae Infectious Disease
254	0050302	Varicellovirus Infectious Disease
255	0050303	Hepacivirus Infectious Disease
256	0050304	Aniseikonia
257	0050305	Arteriviridae Infectious Disease
258	0050306	Familial Abdominal Aortic Aneurysm
259	0050307	Bornaviridae Infectious Disease
260	0050308	Alkhurma Hemorrhagic Fever
261	0050309	Measles Virus Infectious Disease
262	0050310	Primary Listeriaceae Infectious Disease
263	0050311	Primary Helicobacteraceae Infectious Disease
264	0050312	Primary Campylobacteraceae Infectious Disease
265	0050313	Primary Brucellaceae Infectious Disease
266	0050314	Primary Erysipelotrichaceae Infectious Disease
267	0050315	Commensal Clostridiaceae Infectious Disease
268	0050316	Commensal Staphylococcaceae Infectious Disease
269	0050317	Commensal Streptococcaceae Infectious Disease
270	0050318	Primary Burkholderiaceae Infectious Disease
271	0050319	Primary Legionellaceae Infectious Disease
272	0050320	Commensal Alcaligenaceae Infectious Disease
273	0050321	Opportunistic Pseudomonadaceae Infectious Disease
274	0050322	Primary Vibrionaceae Infectious Disease
275	0050323	Primary Coxiellaceae Infectious Disease
276	0050324	Physical Disorder OBSOLETED TERM
277	0050325	Genetic Disorder
278	0050327	Peripheral Dysostosis
279	0050328	Congenital Hypothyroidism
280	0050329	Mental Disorder
281	0050331	LADD Syndrome
282	0050332	Enlarged Vestibular Aqueduct
283	0050333	Congenital Anosmia
284	0050334	Thiourea Tasting
285	0050335	Bradyopsia
286	0050336	Hypophosphatemia
287	0050337	Burkholderia Cepacia Infectious Disease
288	0050338	Primary Bacterial Infectious Disease
289	0050339	Commensal Bacterial Infectious Disease
290	0050340	Opportunistic Bacterial Infectious Disease
291	0050341	Opportunistic Actinomycetales Infectious Disease
292	0050342	Commensal Actinomycetales Infectious Disease
293	0050343	Gardnerella Vaginalis Vaginosis
294	0050344	Commensal Bifidobacteriaceae Infectious Disease
295	0050345	Primary Thermomonosporaceae Infectious Disease
296	0050346	Primary Corynebacteriaceae Infectious Disease
297	0050347	Primary Mycobacteriaceae Infectious Disease
298	0050348	Primary Streptomycetaceae Infectious Disease
299	0050349	Opportunistic Nocardiaceae Infectious Disease
300	0050350	Primary Clostridiaceae Infectious Disease
301	0050351	Primary Clostridium Infectious Disease
302	0050352	Foodborne Botulism
303	0050353	Wound Botulism
304	0050354	Infant Botulism
305	0050355	Opportunistic Burkholderiaceae Infectious Disease
306	0050357	Burkholderia Cenocepacia Infectious Disease
307	0050358	Commensal Chlamydiaceae Infectious Disease
308	0050359	Bilophila Wadsworthia Necrotizing Fasciitis
309	0050360	Commensal Enterobacteriaceae Infectious Disease
310	0050361	Opportunistic Enterobacteriaceae Infectious Disease
311	0050362	Elizabethkingia Meningoseptica Infectious Disease
312	0050363	Capnocytophaga Canimorsus Infectious Disease
313	0050364	Opportunistic Flavobacteriaceae Infectious Disease
314	0050365	Chryseobacterium Indologenes Infectious Disease
315	0050366	Empedobacter Brevis Endophthalmitis
316	0050367	Myroides Odoratus Necrotizing Fasciitis
317	0050368	Commensal Fusobacteriaceae Infectious Disease
318	0050369	Primary Mycoplasmataceae Infectious Disease
319	0050370	Commensal Neisseriaceae Infectious Disease
320	0050371	Commensal Pasteurellaceae Infectious Disease
321	0050372	Commensal Haemophilus Infectious Disease
322	0050373	Leptospiraceae Infectious Disease
323	0050374	Spirochaetaceae Infectious Disease
324	0050375	Primary Spirillaceae Infectious Disease
325	0050376	Anaplasmosis
326	0050377	Burkholderia Cepacia Complex Infectious Disease
327	0050378	Opportunistic Campylobacteraceae Infectious Disease
328	0050379	Campylobacter Fetus Infectious Disease
329	0050380	Campylobacter Coli Infectious Disease
330	0050381	Chlamydia Trachomatis Epididymitis
331	0050382	Glandular Tularemia
332	0050383	Typhoidal Tularemia
333	0050384	Commensal Helicobacteraceae Infectious Disease
334	0050385	Commensal Helicobacter Infectious Disease
335	0050386	Acinetobacter Baumannii Pneumonia
336	0050387	Nonpapillary Renal Cell Carcinoma
337	0050388	Bacteroides Fragilis Peritonitis
338	0050389	Capnocytophaga Canimorsus Meningitis
339	0050390	Capnocytophaga Canimorsus Endocarditis
340	0050391	Elizabethkingia Meningoseptica Meningitis
341	0050392	Streptococcal Necrotizing Fasciitis
342	0050393	Chryseobacterium Indologenes Pneumonia
343	0050394	Nocardial Pneumonia
344	0050395	Nocardial Cellulitis
345	0050396	Nocardial Keratitis
346	0050397	Cerebral Bilophila Wadsworthia Infectious Disease
347	0050398	Carrion's Disease
348	0050399	Bordetella Pertussis Whooping Cough
349	0050400	Pseudomonas Urinary Tract Infectious Disease
350	0050401	Pseudomonas Endocarditis
351	0050402	Pseudomonas Keratitis
352	0050403	Commensal Mycoplasmatales Infectious Disease
353	0050404	Commensal Mycoplasmataceae Infectious Disease
354	0050405	Mycoplasma Genitalium Urethritis
355	0050406	Yersinia Pseudotuberculosis Mesenteric Lymphadenitis
356	0050407	Commensal Mycoplasma Infectious Disease
357	0050408	Staphylococcus Aureus Ecthyma
358	0050409	Streptococcus Pyogenes Ecthyma
359	0050410	Streptococcal Erysipelas
360	0050411	Staphylococcus Aureus Erysipelas
361	0050412	Streptococcus Impetigo
362	0050413	Staphylococcus Aureus Impetigo
363	0050414	Streptococcus Lymphangitis
364	0050415	Staphylococcus Aureus Lymphangitis
365	0050416	Streptococcus Agalactiae Meningitis
366	0050417	Streptococcus Equisimilis Meningitis
367	0050418	Streptococcus Zooepidemicus Meningitis
368	0050419	Complement Factor I Deficiency
369	0050420	Primary Streptococcaceae Infectious Disease
370	0050421	Primary Streptococcal Infectious Disease
371	0050422	Yersinia Pseudotuberculosis Gastroenteritis
372	0050423	Enteroaggregative Escherichia Coli Infectious Disease
373	0050424	Familial Adenomatous Polyposis
374	0050425	Restless Legs Syndrome
375	0050426	Stevens-Johnson Syndrome
376	0050427	Xeroderma Pigmentosum
377	0050428	Nonepidermolytic Palmoplantar Keratoderma
378	0050429	Hailey-Hailey Disease
379	0050430	Multiple Endocrine Neoplasia Type 2A
380	0050431	Arrhythmogenic Right Ventricular Cardiomyopathy
381	0050432	Asperger Syndrome
382	0050433	Fatal Familial Insomnia
383	0050434	Andersen-Tawil Syndrome
384	0050436	Mulibrey Nanism
385	0050437	Danon Disease
386	0050438	Frasier Syndrome
387	0050439	Usher Syndrome
388	0050440	Familial Partial Lipodystrophy
389	0050441	Mucosulfatidosis
390	0050444	Infantile Refsum Disease
391	0050445	X-linked Hypophosphatemia
392	0050448	Hereditary Mucosal Leukokeratosis
393	0050449	Pachyonychia Congenita
394	0050450	Gitelman Syndrome
395	0050451	Brugada Syndrome
396	0050452	Mevalonic Aciduria
397	0050453	Lissencephaly
398	0050454	Periventricular Nodular Heterotopia
399	0050455	Arachnodactyly
400	0050456	Buruli Ulcer Disease
401	0050457	Sertoli Cell-only Syndrome
402	0050458	Juvenile Myelomonocytic Leukemia
403	0050459	Hyperphosphatemia
404	0050460	Wolf-Hirschhorn Syndrome
405	0050461	Aspartylglucosaminuria
406	0050462	Antley-Bixler Syndrome
407	0050463	Campomelic Dysplasia
408	0050464	Farber Lipogranulomatosis
409	0050465	Muir-Torre Syndrome
410	0050466	Loeys-Dietz Syndrome
411	0050467	Erythrokeratodermia Variabilis
412	0050468	Yellow Nail Syndrome
413	0050469	Costello Syndrome
414	0050470	Donohue Syndrome
415	0050471	Carney Complex
416	0050472	Monilethrix
417	0050473	Alstrom Syndrome
418	0050474	Netherton Syndrome
419	0050475	Weill-Marchesani Syndrome
420	0050476	Barth Syndrome
421	0050477	Liddle Syndrome
422	0050478	Primary Escherichia Coli Infectious Disease
423	0050479	Commensal Klebsiella Infectious Disease
424	0050480	Epidemic Typhus
425	0050481	Endemic Typhus
426	0050482	Lymphangitis-associated Rickettsiosis
427	0050483	Rickettsia Aeschlimannii Spotted Fever
428	0050484	Aneruptive Fever
429	0050485	Sennetsu Fever
430	0050486	Exanthem
431	0050487	Bacterial Exanthem
432	0050488	Early Congenital Syphilis
433	0050489	Multinodular Goiter
434	0050490	Parenchymatous Neurosyphilis
435	0050491	Meningovascular Neurosyphilis
436	0050492	Tertiary Syphilitic Encephalitis
437	0050493	Tertiary Syphilitic Meningitis
438	0050494	Papillomaviridae Infectious Disease
439	0050495	Exanthema Subitum
440	0050496	Banna Virus Encephalitis
441	0050497	Anelloviridae Infectious Disease
442	0050498	DsDNA Virus Infectious Disease
443	0050499	SsDNA Virus Infectious Disease
444	0050500	DsDNA-RT Virus Infectious Disease
445	0050501	DsRNA Virus Infectious Disease
446	0050502	(+)ssRNA Virus Infectious Disease
447	0050503	(-)ssRNA Virus Infectious Disease
676	0050738	Y-linked Disease
448	0050504	SsRNA-RT Virus Infectious Disease
449	0050505	Human Papilloma Virus Related Anal Squamous Cell Carcinoma
450	0050506	Human Papilloma Virus Related Vaginal Squamous Cell Carcinoma
451	0050507	AIDS-related Cryptosporidiosis
452	0050508	Variola Major
453	0050509	AIDS-related Toxoplasmosis
454	0050510	AIDS-related Cystoisosporiasis
455	0050511	Human Torovirus Gastroenteritis
456	0050512	Saffold Virus Gastroenteritis
457	0050513	Spinal Polio
458	0050514	Bulbospinal Polio
459	0050515	Paralytic Poliomyelitis
460	0050516	O'nyong'nyong Fever
461	0050517	Barmah Forest Virus Disease
462	0050518	Ross River Fever
463	0050519	Lymphocytic Choriomeningitis Virus Meningitis
464	0050520	Lymphocytic Choriomeningitis Virus Meningoencephalitis
465	0050521	Oropouche Fever
466	0050522	Balkan Hemorrhagic Fever
467	0050523	Adult T-cell Leukemia
468	0050524	Maturity-onset Diabetes Of The Young
469	0050525	Acroosteolysis
470	0050526	Gamstorp-Wohlfart Syndrome
471	0050527	Familial Hypertriglyceridemia
472	0050528	Nonphotosensitive Trichothiodystrophy
473	0050529	Adult Spinal Muscular Atrophy
474	0050530	Intermediate Spinal Muscular Atrophy
475	0050531	Lentiginosis Profusa
476	0050532	Epidermal Nevus
477	0050533	Soldiers Heart
478	0050534	Congenital Stationary Night Blindness
479	0050535	Exudative Vitreoretinopathy
480	0050536	SC Phocomelia Syndrome
481	0050537	Posterior Polar Cataract
482	0050538	Charcot-Marie-Tooth Disease Type 1
483	0050539	Charcot-Marie-Tooth Disease Type 2
484	0050540	Charcot-Marie-Tooth Disease Type 3
485	0050541	Charcot-Marie-Tooth Disease Type 4
486	0050542	Charcot-Marie-Tooth Disease Type X
487	0050543	Charcot-Marie-Tooth Disease Intermediate Type
488	0050544	Hypermethioninemia
489	0050545	Visceral Heterotaxy
490	0050546	Congenital Adrenal Insufficiency
491	0050547	Familial Medullary Thyroid Carcinoma
492	0050548	Hereditary Sensory Neuropathy
493	0050549	Saldino-Noonan Syndrome
494	0050550	Majewski Syndrome
495	0050551	Verma-Naumoff Syndrome
496	0050552	Sugio-Kajii Syndrome
497	0050553	JMP Syndrome
498	0050554	X-linked Sideroblastic Anemia With Ataxia
499	0050556	Infantile Onset Spinocerebellar Ataxia
500	0050557	Congenital Muscular Dystrophy
501	0050558	Ullrich Congenital Muscular Dystrophy
502	0050559	Fukuyama Congenital Muscular Dystrophy
503	0050560	Walker-Warburg Syndrome
504	0050561	Lennox-Gastaut Syndrome
505	0050562	West Syndrome
506	0050563	Nonsyndromic Deafness
507	0050564	Autosomal Dominant Nonsyndromic Deafness
508	0050565	Autosomal Recessive Nonsyndromic Deafness
509	0050566	X-linked Nonsyndromic Deafness
510	0050567	Orofacial Cleft
511	0050568	Spondylocostal Dysostosis
512	0050569	Seckel Syndrome
513	0050570	Congenital Disorder Of Glycosylation Type I
514	0050571	Congenital Disorder Of Glycosylation Type II
515	0050572	Cone-rod Dystrophy
516	0050573	2-hydroxyglutaric Aciduria
517	0050574	L-2-hydroxyglutaric Aciduria
518	0050575	D-2-hydroxyglutaric Aciduria
519	0050576	Senior-Loken Syndrome
520	0050577	Sensenbrenner Syndrome
521	0050578	Occult Macular Dystrophy
522	0050579	Glycogen Storage Disease XV
523	0050580	Hereditary Lymphedema
524	0050581	Brachydactyly
525	0050582	Distal Hereditary Motor Neuropathy
526	0050583	Chlamydophila Pneumoniae Infectious Disease
527	0050584	Gummatous Syphilis
528	0050585	Congenital Generalized Lipodystrophy
529	0050587	Trichotillomania
530	0050588	Muscular Dystrophy-dystroglycanopathy
531	0050589	Inflammatory Bowel Disease
532	0050590	Severe Congenital Neutropenia
533	0050591	Tooth Agenesis
534	0050592	Asphyxiating Thoracic Dystrophy
535	0050593	Primary Congenital Glaucoma
536	0050594	Glycogen Storage Disease IX
537	0050595	Mucormycosis
538	0050596	Taeniasis
539	0050597	Intestinal Schistosomiasis
540	0050598	Extrapulmonary Tuberculosis
541	0050599	Abdominal Tuberculosis
542	0050600	ABCD Syndrome
543	0050601	ADULT Syndrome
544	0050602	Triple-A Syndrome
545	0050603	Acheiropody
546	0050604	Acrocapitofemoral Dysplasia
547	0050605	Acrodermatitis Enteropathica
548	0050606	Acrokeratosis Verruciformis
549	0050608	Askin's Tumor
550	0050610	Oral Cavity Carcinoma In Situ
551	0050611	Pharynx Carcinoma In Situ
552	0050612	Gall Bladder Carcinoma In Situ
553	0050613	Bile Duct Carcinoma In Situ
554	0050614	Bronchus Carcinoma In Situ
555	0050615	Respiratory System Cancer
556	0050616	Malignant Leydig Cell Tumor
557	0050617	Malignant Sertoli Cell Tumor
558	0050618	Malignant Sertoli-Leydig Cell Tumor
559	0050619	Paranasal Sinus Cancer
560	0050620	Infiltrating Renal Pelvis Transitional Cell Carcinoma
677	0050739	Autosomal Genetic Disease
561	0050621	Respiratory System Benign Neoplasm
562	0050622	Reproductive Organ Benign Neoplasm
563	0050623	Bladder Benign Neoplasm
564	0050624	Gastrointestinal System Benign Neoplasm
565	0050625	Biliary Tract Neoplasm
566	0050626	Gastrointestinal Neuroendocrine Tumor
567	0050628	Advanced Sleep Phase Syndrome
568	0050629	Aicardi-Goutieres Syndrome
569	0050630	Aland Island Eye Disease
570	0050631	Allan-Herndon-Dudley Syndrome
571	0050632	Oculocutaneous Albinism
572	0050633	Ocular Albinism
573	0050634	Alopecia Universalis
574	0050635	Alternating Hemiplegia Of Childhood
575	0050636	Familial Visceral Amyloidosis
576	0050637	Finnish Type Amyloidosis
577	0050638	Transthyretin Amyloidosis
578	0050639	Primary Cutaneous Amyloidosis
579	0050640	Anauxetic Dysplasia
580	0050641	Rh Deficiency Syndrome
581	0050642	Hypochromic Microcytic Anemia
582	0050643	Anonychia Congenita
583	0050644	Arterial Calcification Of Infancy
584	0050645	Arterial Tortuosity Syndrome
585	0050646	Distal Arthrogryposis
586	0050647	Arts Syndrome
587	0050648	Atelosteogenesis
588	0050649	Atransferrinemia
589	0050650	Familial Atrial Fibrillation
590	0050651	Atrioventricular Septal Defect
591	0050652	Soft Tissue Cancer
592	0050653	Dysplastic Nevus
593	0050654	Baller-Gerold Syndrome
594	0050655	Bamforth-Lazarus Syndrome
595	0050656	Pseudo-TORCH Syndrome
596	0050657	Bannayan-Riley-Ruvalcaba Syndrome
597	0050658	Bart-Pumphrey Syndrome
598	0050659	Biotin-responsive Basal Ganglia Disease
599	0050660	Beare-Stevenson Cutis Gyrata Syndrome
600	0050661	Vitelliform Macular Dystrophy
601	0050662	Bestrophinopathy
602	0050663	Bethlem Myopathy
603	0050664	Bietti Crystalline Corneoretinal Dystrophy
604	0050665	Fetal Alcohol Syndrome
605	0050666	Partial Fetal Alcohol Syndrome
606	0050667	Alcohol-related Neurodevelopmental Disorder
607	0050668	Alcohol-related Birth Defect
608	0050669	Spastic Cerebral Palsy
609	0050670	Ataxic Cerebral Palsy
610	0050671	Female Breast Cancer
611	0050672	Dyskinetic Cerebral Palsy
612	0050673	Mixed Cerebral Palsy
613	0050674	Congenital Bile Acid Synthesis Defect
614	0050675	Birk-Barel Syndrome
615	0050676	Birt-Hogg-Dube Syndrome
616	0050677	Bjornstad Syndrome
617	0050678	Blau Syndrome
618	0050679	Blue Cone Monochromacy
619	0050680	Boomerang Dysplasia
620	0050681	Borjeson-Forssman-Lehmann Syndrome
621	0050682	Athabaskan Brainstem Dysgenesis Syndrome
622	0050683	Bothnia Retinal Dystrophy
623	0050684	Bowen-Conradi Syndrome
624	0050685	Small Cell Carcinoma
625	0050686	Organ System Cancer
626	0050687	Cell Type Cancer
627	0050688	Anal Canal Cancer
628	0050689	Brachydactyly-syndactyly Syndrome
629	0050690	Brachyolmia
630	0050691	Branchiooculofacial Syndrome
631	0050692	Brody Myopathy
632	0050693	Brooke-Spiegler Syndrome
633	0050694	Brown-Vialetto-Van Laere Syndrome
634	0050695	Malignant Pleural Solitary Fibrous Tumor
635	0050696	Fetal Alcohol Spectrum Disorder
636	0050697	Chorioamnionitis
637	0050698	Funisitis
638	0050699	Dent Disease
639	0050700	Cardiomyopathy
640	0050701	Electroclinical Syndrome
641	0050702	Neonatal Period Electroclinical Syndrome
642	0050703	Infancy Electroclinical Syndrome
643	0050704	Childhood Electroclinical Syndrome
644	0050705	Adolescence-adult Electroclinical Syndrome
645	0050706	Variable Age At Onset Electroclinical Syndrome
646	0050707	Nonsyndromic Epilepsy
647	0050708	Early Onset Absence Epilepsy
648	0050709	Ohtahara Syndrome
649	0050710	3-Methylcrotonyl-CoA Carboxylase Deficiency
650	0050711	Aceruloplasminemia
651	0050712	AGAT Deficiency
652	0050713	Fatal Infantile Encephalocardiomyopathy
653	0050715	Methylmalonic Aciduria And Homocystinuria Type CblC
654	0050716	Methylmalonic Aciduria And Homocystinuria Type CblD
655	0050717	Methylmalonic Aciduria And Homocystinuria Type CblF
656	0050718	Vitamin Metabolic Disorder
657	0050719	Cerebral Folate Receptor Alpha Deficiency
658	0050720	Ornithine Translocase Deficiency
659	0050721	Serine Deficiency
660	0050722	PHGDH Deficiency
661	0050723	PSAT Deficiency
662	0050724	PSPH Deficiency
663	0050725	Tyrosinemia Type II
664	0050726	Tyrosinemia Type I
665	0050727	Tyrosinemia Type III
666	0050728	Glycogen Metabolism Disorder
667	0050729	Neutral Lipid Storage Disease
668	0050730	Coenzyme Q10 Deficiency Disease
669	0050731	Vitamin B12 Deficiency
670	0050732	Methylmalonic Aciduria And Homocystinuria Type CblE
671	0050733	Methylmalonic Aciduria And Homocystinuria Type CblG
672	0050734	Congenital Intrinsic Factor Deficiency
673	0050735	X-linked Disease
674	0050736	Autosomal Dominant Disease
675	0050737	Autosomal Recessive Disease
678	0050740	Qazi Markouizos Syndrome
679	0050741	Alcohol Dependence
680	0050742	Nicotine Dependence
681	0050743	Mature T-cell And NK-cell Lymphoma
682	0050744	Anaplastic Large Cell Lymphoma
683	0050745	Diffuse Large B-cell Lymphoma
684	0050746	Mantle Cell Lymphoma
685	0050747	Lymphoplasmacytic Lymphoma
686	0050748	Marginal Zone B-cell Lymphoma
687	0050749	Peripheral T-cell Lymphoma
688	0050750	Splenic Marginal Zone Lymphoma
689	0050751	T-cell Large Granular Lymphocyte Leukemia
690	0050752	Amyotrophic Lateral Sclerosis Type 8
691	0050753	Cerebellar Ataxia
692	0050754	Ataxia With Oculomotor Apraxia Type 1
693	0050755	Ataxia With Oculomotor Apraxia Type 2
694	0050756	Batten Disease
695	0050757	Deafness Dystonia Syndrome
696	0050758	Metabolic Acidosis
697	0050759	Myotonic Dystrophy Type 2
698	0050760	X-linked Myopathy With Excessive Autophagy
699	0050761	Paramyloidosis
700	0050762	Adenylosuccinase Lyase Deficiency
701	0050763	ARC Syndrome
702	0050764	Armfield Syndrome
703	0050765	Neuroacanthocytosis
704	0050766	Chorea-acanthocytosis
705	0050767	Midface Dysplasia
706	0050768	Mitochondrial Complex V (ATP Synthase) Deficiency, Nuclear Type 1
707	0050769	N Syndrome
708	0050770	Polycystic Liver Disease
709	0050771	Phaeochromocytoma
710	0050773	Paraganglioma
711	0050774	Rapadilino Syndrome
712	0050775	Schneckenbecken Dysplasia
713	0050776	Non-syndromic X-linked Intellectual Disability
714	0050777	Joubert Syndrome
715	0050778	Meckel Syndrome
716	0050779	Hydrolethalus Syndrome
717	0050780	Opitz-GBBB Syndrome
718	0050781	Ogden Syndrome
719	0050782	Zollinger-Ellison Syndrome
720	0050783	Secondary Progressive Multiple Sclerosis
721	0050784	Primary Progressive Multiple Sclerosis
722	0050785	Progressive Relapsing Multiple Sclerosis
723	0050786	Iridogoniodysgenesis Syndrome
724	0050787	Juvenile Polyposis Syndrome
725	0050788	Proximal Symphalangism
726	0050789	Tarsal-carpal Coalition Syndrome
727	0050790	Fibular Hypoplasia And Complex Brachydactyly
728	0050791	Persistent Mullerian Duct Syndrome
729	0050792	Multiple Cutaneous And Mucosal Venous Malformations
730	0050793	Short QT Syndrome
731	0050794	Multiple Synostoses Syndrome
732	0050795	Cone Dystrophy
733	0050796	Achalasia Microcephaly Syndrome
734	0050797	Peroxisomal Acyl-CoA Oxidase Deficiency
735	0050798	Cerebral Creatine Deficiency Syndrome
736	0050799	Guanidinoacetate Methyltransferase Deficiency
737	0050800	Creatine Transporter Deficiency
738	0050801	Androgenic Alopecia
739	0050802	Ehlers-Danlos Syndrome Progeroid Type
740	0050803	Glioblastoma Classical Subtype
741	0050804	Glioblastoma Proneural Subtype
742	0050805	Glioblastoma Mesenchymal Subtype
743	0050806	Glioblastoma Neural Subtype
744	0050807	Kahrizi Syndrome
745	0050808	Mucopolysaccharidosis IV
746	0050809	Mucopolysaccharidosis IX
747	0050810	Biotin Deficiency
748	0050811	Congenital Adrenal Hyperplasia
749	0050812	Spondyloepimetaphyseal Dysplasia, Pakistani Type
750	0050813	Spondyloepiphyseal Dysplasia With Congenital Joint Dislocations
751	0050814	Temtamy Preaxial Brachydactyly Syndrome
752	0050815	Eye Adnexa Disease
753	0050816	Urofacial Syndrome
754	0050817	Stargardt Disease
755	0050818	Transcobalamin II Deficiency
756	0050819	Matthew-Wood Syndrome
757	0050820	Atrioventricular Block
758	0050821	First-degree Atrioventricular Block
759	0050822	Second-degree Atrioventricular Block
760	0050823	Third-degree Atrioventricular Block
761	0050824	Sinoatrial Node Disease
762	0050825	Endocardium Disease
763	0050826	Tricuspid Valve Disease
764	0050827	Rheumatic Heart Disease
765	0050828	Artery Disease
766	0050829	Pericardium Disease
767	0050830	Peripheral Artery Disease
768	0050831	Familial Encephalopathy With Neuroserpin Inclusion Bodies
769	0050832	Pyrimidine Metabolic Disorder
770	0050833	Orotic Aciduria
771	0050834	CHARGE Syndrome
772	0050835	Generalized Dystonia
773	0050836	Focal Dystonia
774	0050837	Multifocal Dystonia
775	0050838	Segmental Dystonia
776	0050839	Anismus
777	0050840	Cervical Dystonia
778	0050841	Focal Hand Dystonia
779	0050842	Oculogyric Crisis
780	0050843	Oromandibular Dystonia
781	0050844	Spasmodic Dystonia
782	0050845	Cranio-facial Dystonia
783	0050846	Hemidystonia
784	0050847	Sleep Apnea
785	0050848	Obstructive Sleep Apnea
786	0050849	Periampullary Adenoma
787	0050850	Diabetic Encephalopathy
788	0050851	Glomerulosclerosis
789	0050852	Limb Ischemia
790	0050853	Chronic Venous Insufficiency
791	0050854	Muckle-Wells Syndrome
792	0050855	Renal Fibrosis
793	0050856	Oppositional Defiant Disorder
794	0050857	Perrault Syndrome
795	0050858	Marshall-Smith Syndrome
796	0050859	Hemorrhagic Cystitis
797	0050860	Colorectal Adenoma
798	0050861	Colorectal Adenocarcinoma
799	0050862	Pyometritis
800	0050863	Arteritic Anterior Ischemic Optic Neuropathy
801	0050864	Non-arteritic Anterior Ischemic Optic Neuropathy
802	0050865	Tongue Squamous Cell Carcinoma
803	0050866	Oral Squamous Cell Carcinoma
804	0050867	Jensen Syndrome
805	0050868	Hepatocellular Adenoma
806	0050869	Villous Adenoma
807	0050870	In Situ Pulmonary Adenocarcinoma
808	0050871	Fibroma
809	0050872	Large Cell Neuroendocrine Carcinoma
810	0050873	Follicular Lymphoma
811	0050875	Small Cell Neuroendocrine Carcinoma
812	0050876	Caroli Disease
813	0050877	Pancreatic Agenesis
814	0050878	CLONE OF Congenital Afibrinogenemia
815	0050879	Fragile X-associated Tremor/ataxia Syndrome
816	0050880	Koolen De Vries Syndrome
817	0050881	Inclusion Body Myopathy With Paget Disease Of Bone And Frontotemporal Dementia
818	0050882	Spinocerebellar Ataxia Type 5
819	0050883	Infantile Cerebellar-retinal Degeneration
820	0050884	Triosephosphate Isomerase Deficiency
821	0050885	IMAGe Syndrome
822	0050886	Troyer Syndrome
823	0050887	Townes-Brocks Syndrome
824	0050888	Syndromic Intellectual Disability
825	0050889	Non-syndromic Intellectual Disability
826	0050890	Synucleinopathy
827	0050891	Adrenal Cortical Adenoma
828	0050892	Adrenal Gland Pheochromocytoma
829	0050893	Gallbladder Adenoma
830	0050894	Ameloblastoma
831	0050895	Bone Ameloblastoma
832	0050896	Bone Squamous Cell Carcinoma
833	0050897	Bone Chondrosarcoma
834	0050898	Phalanx Chondroma
835	0050899	Brain Stem Medulloblastoma
836	0050900	Sacrum Chordoma
837	0050901	Corpus Callosum Oligodendroglioma
838	0050902	Medulloblastoma
839	0050903	Parietal Lobe Ependymoma
840	0050904	Salivary Gland Carcinoma
841	0050905	Inflammatory Myofibroblastic Tumor
842	0050906	Conjunctival Nevus
843	0050907	Mixed Extragonadal Germ Cell Cancer
844	0050908	Myelodysplastic Syndrome
845	0050909	MALT Lymphoma
846	0050910	Cecum Adenoma
847	0050911	Appendix Carcinoid Tumor
848	0050912	Colon Adenoma
849	0050913	Large Intestine Adenocarcinoma
850	0050914	Large Intestine Adenoma
851	0050915	Rectum Adenoma
852	0050916	Bronchus Mucoepidermoid Carcinoma
853	0050917	Lung Combined Type Small Cell Adenocarcinoma
854	0050918	Vaginal Carcinoma
855	0050919	Trachea Mucoepidermoid Carcinoma
856	0050920	Tonsil Squamous Cell Carcinoma
857	0050921	Pharynx Squamous Cell Carcinoma
858	0050922	Gastrointestinal Carcinoma
859	0050923	Spindle Epithelial Tumor With Thymus-like Differentiation Tumor
860	0050924	Striated Muscle Rhabdoid Tumor
861	0050925	Small Intestine Carcinoid Neuroendocrine Tumor
862	0050926	Jejunal Adenocarcinoma
863	0050927	Duodenum Adenoma
864	0050928	Ovarian Melanoma
865	0050929	Mucosal Melanoma
866	0050930	Sublingual Gland Adenoid Cystic Carcinoma
867	0050931	Parotid Gland Adenoid Cystic Carcinoma
868	0050932	Lung Mucoepidermoid Carcinoma
869	0050933	Ovarian Serous Carcinoma
870	0050934	Ovarian Clear Cell Carcinoma
871	0050935	Cervical Neuroblastoma
872	0050936	Extra-adrenal Pheochromocytoma
873	0050937	Retroperitoneal Neuroblastoma
874	0050938	Breast Lobular Carcinoma
875	0050939	Uterine Corpus Endometrial Carcinoma
876	0050940	Endocervical Adenocarcinoma
877	0060000	Infective Endocarditis
878	0060001	Withdrawal Disorder
879	0060002	C1 Inhibitor Deficiency
880	0060004	Autoimmune Disease Of Central Nervous System
881	0060005	Autoimmune Disease Of Endocrine System
882	0060006	Artemis Deficiency
883	0060007	CD3zeta Deficiency
884	0060008	Janus Kinase-3 Deficiency
885	0060009	MHC Class I Deficiency
886	0060010	Omenn Syndrome
887	0060011	Recombinase Activating Gene 1 Deficiency
888	0060012	Recombinase Activating Gene 2 Deficiency
889	0060013	Gamma Chain Deficiency
890	0060014	CD45 Deficiency
891	0060015	Interleukin-7 Receptor Alpha Deficiency
892	0060016	CD3delta Deficiency
893	0060017	CD3epsilon Deficiency
894	0060018	CD3gamma Deficiency
895	0060019	Coronin-1A Deficiency
896	0060020	Reticular Dysgenesis
897	0060021	DNA Ligase IV Deficiency
898	0060022	CD40 Ligand Deficiency
899	0060023	CD40 Deficiency
900	0060024	Lambda 5 Deficiency
901	0060025	Immunoglobulin Alpha Deficiency
902	0060026	Immunoglobulin Beta Deficiency
903	0060027	B Cell Linker Protein Deficiency
904	0060028	Good Syndrome
905	0060029	Autoimmune Disease Of Exocrine System
906	0060030	Autoimmune Disease Of Eyes, Ear, Nose And Throat
907	0060031	Autoimmune Disease Of Gastrointestinal Tract
1025	0060156	Visual Verbal Agnosia
908	0060032	Autoimmune Disease Of Musculoskeletal System
909	0060033	Autoimmune Disease Of Peripheral Nervous System
910	0060035	Medical Disorder
911	0060036	Intrinsic Cardiomyopathy
912	0060037	Developmental Disorder Of Mental Health
913	0060038	Specific Developmental Disorder
914	0060039	Autoimmune Disease Of Skin And Connective Tissue
915	0060040	Pervasive Developmental Disorder
916	0060041	Autism Spectrum Disorder
917	0060042	Atypical Autism
918	0060043	Sexual Disorder
919	0060044	Paraphilia Disorder
920	0060045	Munchausen By Proxy
921	0060046	Aphasia
922	0060047	Writing Disorder
923	0060048	Nosophobia
924	0060049	Autoimmune Disease Of Urogenital Tract
925	0060050	Autoimmune Disease Of Blood
926	0060051	Autoimmune Disease Of Cardiovascular System
927	0060052	Neurological Disorder
928	0060053	Peripheral Neuropathy
929	0060054	Autonomic Peripheral Neuropathy
930	0060055	Popliteal Pterygium Syndrome
931	0060056	Hypersensitivity Reaction Disease
932	0060057	Gluten Allergic Reaction
933	0060058	Lymphoma
934	0060060	Non-Hodgkin Lymphoma
935	0060061	Cutaneous T Cell Lymphoma
936	0060062	Familial Juvenile Hyperuricemic Nephropathy
937	0060063	X-linked Sideroblastic Anemia
938	0060064	Sideroblastic Anemia With Spinocerebellar Ataxia
939	0060065	Pyridoxine-refractory Autosomal Recessive Sideroblastic Anemia
940	0060066	Pyridoxine-responsive Sideroblastic Anemia
941	0060067	Pearson Syndrome
942	0060068	Marantic Endocarditis
943	0060069	Bacillus Cereus Pneumonia
944	0060071	Pre-malignant Neoplasm
945	0060072	Benign Neoplasm
946	0060073	Lymphatic System Cancer
947	0060074	Ductal Carcinoma In Situ
948	0060075	Estrogen-receptor Positive Breast Cancer
949	0060076	Estrogen-receptor Negative Breast Cancer
950	0060077	Progesterone-receptor Positive Breast Cancer
951	0060078	Progesterone-receptor Negative Breast Cancer
952	0060079	Her2-receptor Positive Breast Cancer
953	0060080	Her2-receptor Negative Breast Cancer
954	0060081	Triple-receptor Negative Breast Cancer
955	0060082	Breast Benign Neoplasm
956	0060083	Immune System Cancer
957	0060084	Cell Type Benign Neoplasm
958	0060085	Organ System Benign Neoplasm
959	0060086	Female Reproductive Organ Benign Neoplasm
960	0060087	Male Reproductive Organ Benign Neoplasm
961	0060088	Vestibular Gland Benign Neoplasm
962	0060089	Endocrine Organ Benign Neoplasm
963	0060090	Central Nervous System Organ Benign Neoplasm
964	0060091	Cardiovascular Organ Benign Neoplasm
965	0060092	Immune System Organ Benign Neoplasm
966	0060094	Bone Benign Neoplasm
967	0060095	Uterine Benign Neoplasm
968	0060096	Sensory Organ Benign Neoplasm
969	0060097	Thoracic Benign Neoplasm
970	0060098	Osteoblastoma
971	0060099	Musculoskeletal System Benign Neoplasm
972	0060100	Musculoskeletal System Cancer
973	0060101	Benign Glioma
974	0060102	Cartilage Cancer
975	0060103	Central Nervous System Primitive Neuroectodermal Neoplasm
976	0060104	Cerebellar Medulloblastoma
977	0060105	Brain Medulloblastoma
978	0060106	Brain Meningioma
979	0060108	Brain Glioma
980	0060109	Vulvar Benign Neoplasm
981	0060110	Cervical Benign Neoplasm
982	0060111	Fallopian Tube Benign Neoplasm
983	0060112	Ovarian Benign Neoplasm
984	0060114	Vaginal Benign Neoplasm
985	0060115	Nervous System Benign Neoplasm
986	0060116	Sensory System Cancer
987	0060117	Peritoneal Benign Neoplasm
988	0060118	Thoracic Disease
989	0060119	Pharynx Cancer
990	0060120	Skeletal System Benign Neoplasm
991	0060121	Integumentary System Benign Neoplasm
992	0060122	Integumentary System Cancer
993	0060123	Connective Tissue Benign Neoplasm
994	0060125	Heavy Chain Disease
995	0060126	Alpha Chain Disease
996	0060127	Gamma Heavy Chain Disease
997	0060128	Mu Chain Disease
998	0060129	Delta Chain Disease
999	0060130	Akinetopsia
1000	0060131	Alexithymia
1001	0060132	Amusia
1002	0060133	Anosognosia
1003	0060134	Apperceptive Agnosia
1004	0060135	Apraxia
1005	0060136	Associative Agnosia
1006	0060137	Auditory Agnosia
1007	0060138	Autotopagnosia
1008	0060139	Color Agnosia
1009	0060140	Cortical Deafness
1010	0060141	Finger Agnosia
1011	0060142	Form Agnosia
1012	0060143	Integrative Agnosia
1013	0060144	Mirror Agnosia
1014	0060145	Pain Agnosia
1015	0060146	Phonagnosia
1016	0060147	Semantic Agnosia
1017	0060148	Simultanagnosia
1018	0060149	Social Emotional Agnosia
1019	0060150	Astereognosia
1020	0060151	Tactile Agnosia
1021	0060152	Time Agnosia
1022	0060153	Topographical Agnosia
1023	0060154	Verbal Auditory Agnosia
1024	0060155	Visual Agnosia
1026	0060157	Diffuse Alopecia Areata
1027	0060158	Acquired Metabolic Disease
1028	0060159	Organic Acidemia
1029	0060160	Survival Motor Neuron Spinal Muscular Atrophy
1030	0060161	Kennedy's Disease
1031	0060162	Dentatorubral-pallidoluysian Atrophy
1032	0060163	Body Dysmorphic Disorder
1033	0060164	Pain Disorder
1034	0060165	Kleine-Levin Syndrome
1035	0060166	Bipolar Ll Disorder
1036	0060167	Seasonal Affective Disorder
1037	0060168	Histidinemia
1038	0060169	Benign Familial Infantile Epilepsy
1039	0060170	Generalized Epilepsy With Febrile Seizures Plus
1040	0060171	Dravet Syndrome
1041	0060172	Juvenile Absence Epilepsy
1042	0060173	Timothy Syndrome
1043	0060174	GABA Aminotransferase Deficiency
1044	0060175	Succinic Semialdehyde Dehydrogenase Deficiency
1045	0060176	Gamma-amino Butyric Acid Metabolism Disorder
1046	0060177	Homocarnosinosis
1047	0060178	Familial Hemiplegic Migraine
1048	0060179	Renpenning Syndrome
1049	0060180	Colitis
1050	0060181	Ischemic Colitis
1051	0060182	Microscopic Colitis
1052	0060183	Collagenous Colitis
1053	0060184	Lymphocytic Colitis
1054	0060185	Clostridium Difficile Colitis
1055	0060186	Chemical Colitis
1056	0060187	Diversion Colitis
1057	0060188	Jejunoileitis
1058	0060189	Ileitis
1059	0060190	Ileocolitis
1060	0060191	Gastroduodenal Crohn's Disease
1061	0060192	Crohn's Colitis
1062	0060193	Amyotrophic Lateral Sclerosis Type 1
1063	0060194	Amyotrophic Lateral Sclerosis Type 2
1064	0060195	Amyotrophic Lateral Sclerosis Type 3
1065	0060196	Amyotrophic Lateral Sclerosis Type 4
1066	0060197	Amyotrophic Lateral Sclerosis Type 5
1067	0060198	Amyotrophic Lateral Sclerosis Type 6
1068	0060199	Amyotrophic Lateral Sclerosis Type 7
1069	0060200	Amyotrophic Lateral Sclerosis Type 9
1070	0060201	Amyotrophic Lateral Sclerosis Type 10
1071	0060202	Amyotrophic Lateral Sclerosis Type 11
1072	0060203	Amyotrophic Lateral Sclerosis Type 12
1073	0060204	Amyotrophic Lateral Sclerosis Type 13
1074	0060205	Amyotrophic Lateral Sclerosis Type 14
1075	0060206	Amyotrophic Lateral Sclerosis Type 15
1076	0060207	Amyotrophic Lateral Sclerosis Type 16
1077	0060208	Amyotrophic Lateral Sclerosis Type 17
1078	0060209	Amyotrophic Lateral Sclerosis Type 18
1079	0060210	Amyotrophic Lateral Sclerosis Type 19
1080	0060211	Amyotrophic Lateral Sclerosis Type 20
1081	0060212	Amyotrophic Lateral Sclerosis Type 21
1082	0060213	FTDALS1
1083	0060214	FTDALS2
1084	0060215	Balo Concentric Sclerosis
1085	0060216	Cogan Syndrome
1086	0060217	Cogan-Reese Syndrome
1087	0060218	CREST Syndrome
1088	0060219	Lymph Node Adenoid Cystic Carcinoma
1089	0060220	Physical Urticaria
1090	0060221	Maffucci Syndrome
1091	0060222	Scheie Syndrome
1092	0060223	Agraphia
1093	0060224	Atrial Fibrillation
1094	0060225	3MC Syndrome
1095	0060226	Acrofrontofacionasal Dysostosis
1096	0060227	Adams-Oliver Syndrome
1097	0060228	Intracranial Berry Aneurysm
1098	0060229	Baraitser-Winter Syndrome
1099	0060230	Basal Ganglia Calcification
1100	0060231	Bruck Syndrome
1101	0060232	Branchiootic Syndrome
1102	0060233	Cardiofaciocutaneous Syndrome
1103	0060234	Carpenter Syndrome
1104	0060235	Carnitine Palmitoyltransferase II Deficiency
1105	0060236	Xanthinuria
1106	0060237	Warburg Micro Syndrome
1107	0060238	Van Maldergem Syndrome
1108	0060239	Van Der Woude Syndrome
1109	0060240	UV-sensitive Syndrome
1110	0060241	3-M Syndrome
1111	0060242	Synpolydactyly
1112	0060243	Stuttering
1113	0060244	Specific Language Impairment
1114	0060245	Mast Syndrome
1115	0060246	MASA Syndrome
1116	0060247	Smith-McCort Dysplasia
1117	0060248	Simpson-Golabi-Behmel Syndrome
1118	0060249	Scoliosis
1119	0060250	Idiopathic Scoliosis
1120	0060251	Sclerosteosis
1121	0060252	Sclerocornea
1122	0060253	Scapuloperoneal Myopathy
1123	0060254	Robinow Syndrome
1124	0060255	Rippling Muscle Disease
1125	0060256	Dowling-Degos Disease
1126	0060257	Dyschromatosis Symmetrica Hereditaria
1127	0060258	Reticulate Acropigmentation Of Kitamura
1128	0060259	Renal-hepatic-pancreatic Dysplasia
1129	0060260	Ptosis
1130	0060261	Congenital Ptosis
1131	0060262	Gallbladder Disease
1132	0060263	Porencephaly
1133	0060264	Pontocerebellar Hypoplasia
1134	0060265	Pontocerebellar Hypoplasia Type 1A
1135	0060266	Pontocerebellar Hypoplasia Type 1B
1136	0060267	Pontocerebellar Hypoplasia Type 2A
1137	0060268	Pontocerebellar Hypoplasia Type 2B
1138	0060269	Pontocerebellar Hypoplasia Type 2C
1139	0060270	Pontocerebellar Hypoplasia Type 2D
1140	0060271	Pontocerebellar Hypoplasia Type 2E
1141	0060272	Pontocerebellar Hypoplasia Type 3
1142	0060273	Pontocerebellar Hypoplasia Type 4
1143	0060274	Pontocerebellar Hypoplasia Type 5
1144	0060275	Pontocerebellar Hypoplasia Type 6
1145	0060276	Pontocerebellar Hypoplasia Type 7
1146	0060277	Pontocerebellar Hypoplasia Type 8
1147	0060278	Pontocerebellar Hypoplasia Type 9
1148	0060279	Pontocerebellar Hypoplasia Type 10
1149	0060280	Primary Pigmented Nodular Adrenocortical Disease
1150	0060281	Photosensitive Epilepsy
1151	0060282	Persistent Hyperplastic Primary Vitreous
1152	0060283	Peeling Skin Syndrome
1153	0060284	Paroxysmal Nocturnal Hemoglobinuria
1154	0060285	Parietal Foramina
1155	0060286	Combined Oxidative Phosphorylation Deficiency
1156	0060287	Cornea Plana
1157	0060288	Omodysplasia
1158	0060289	Ohdo Syndrome
1159	0060290	Blepharophimosis-intellectual Disability Syndrome, SBBYS Type
1160	0060291	Oculodentodigital Dysplasia
1161	0060292	X-linked Chondrodysplasia Punctata
1162	0060293	Autosomal Dominant Chondrodysplasia Punctata
1163	0060294	Cold-induced Sweating Syndrome
1164	0060295	Complement Component 2 Deficiency
1165	0060296	Congenital Secretory Chloride Diarrhea 1
1166	0060297	Complement Component 4a Deficiency
1167	0060298	Complement Component 4b Deficiency
1168	0060299	Complement Component 6 Deficiency
1169	0060300	Complement Component 7 Deficiency
1170	0060301	Type I Complement Component 8 Deficiency
1171	0060302	Type II Complement Component 8 Deficiency
1172	0060303	Complement Component 9 Deficiency
1173	0060304	Dyschromatosis Universalis Hereditaria
1174	0060305	Megalocornea
1175	0060306	Meier-Gorlin Syndrome
1176	0060307	Autosomal Dominant Non-syndromic Intellectual Disability
1177	0060308	Autosomal Recessive Non-syndromic Intellectual Disability
1178	0060309	Syndromic X-linked Intellectual Disability
1179	0060310	Uvulitis
1180	0060311	Adenoid Hypertrophy
1181	0060312	Angular Cheilitis
1182	0060313	Tracheomalacia
1183	0060314	Persistent Generalized Lymphadenopathy
1184	0060315	Oral Hairy Leukoplakia
1185	0060316	Orofaciodigital Syndrome Type I
1186	0060317	Lung Abscess
1187	0060318	Acute Promyelocytic Leukemia
1188	0060319	Cardiac Arrest
1189	0060320	Inguinal Hernia
1190	0060321	Umbilical Hernia
1191	0060322	Mastoiditis
1192	0060323	Breast Abscess
1193	0060324	Dental Abscess
1194	0060325	Cervical Polyp
1195	0060326	Myelomeningocele
1196	0060327	Omphalocele
1197	0060328	Anal Fistula
1198	0060329	Ectopic Pregnancy
1199	0060330	Rapp-Hodgkin Syndrome
1200	0060331	Mitochondrial Complex V (ATP Synthase) Deficiency Nuclear Type 2
1201	0060332	Mitochondrial Complex V (ATP Synthase) Deficiency Nuclear Type 3
1202	0060333	Mitochondrial Complex V (ATP Synthase) Deficiency Nuclear Type 4
1203	0060334	Transient Neonatal Diabetes Mellitus
1204	0060335	Autosomal Dominant Sideroblastic Anemia
1205	0060336	3-methylglutaconic Aciduria
1206	0060337	CEDNIK Syndrome
1207	0060338	Parameningeal Embryonal Rhabdomyosarcoma
1208	0060339	Chronic Atrial And Intestinal Dysrhythmia
1209	0060340	Ciliopathy
1210	0060341	Agnathia-otocephaly Complex
1211	0060342	Acromelic Frontonasal Dysostosis
1212	0060343	Glucocorticoid-induced Osteoporosis
1213	0060344	Acrodermatitis Chronica Atrophicans
1214	0060345	Bacillary Angiomatosis
1215	0060346	Native American Myopathy
1216	0070001	Neoplastic Disease
1217	0070003	Blastoma
1218	0070004	Myeloma
1219	0080000	Muscular Disease
1220	0080001	Bone Disease
1221	0080002	Autosomal Dominant Disease
1222	0080003	Autosomal Recessive Disease
1223	0080005	Bone Remodeling Disease
1224	0080006	Bone Development Disease
1225	0080007	Bone Deterioration Disease
1226	0080008	Ischemic Bone Disease
1227	0080009	X-linked Dominant Disease
1228	0080010	Bone Structure Disease
1229	0080011	Bone Resorption Disease
1230	0080012	X-linked Recessive Disease
1231	0080013	Mitochondrial Disease
1232	0080014	Chromosomal Disease
1233	0080015	Physical Disorder
1234	0080016	Spina Bifida
1235	0080017	Olivopontocerebellar Atrophy V
1236	0080018	Dysbaric Osteonecrosis
1237	0080019	Metaphyseal Dysplasia
1238	0080020	Jansen's Metaphyseal Chondrodysplasia
1239	0080021	Schmid Metaphyseal Chondrodysplasia
1240	0080022	McKusick Type Metaphyseal Dysplasia
1241	0080023	Schwachman Diamond Type Metaphyseal Dysplasia
1242	0080024	Pyles Dysplasia
1243	0080025	Spondyloepiphyseal Dysplasia Congenita
1244	0080026	Otospondylomegaepiphyseal Dysplasia
1245	0080027	Spondyloepimetaphyseal Dysplasia
1246	0080028	Spondyloepimetaphyseal Dysplasia, Strudwick Type
1247	0080030	Spondyloepimetaphyseal Dysplasia, Missouri Type
1248	0080031	Fibrous Dysplasia
1249	0080032	Craniodiaphyseal Dysplasia
1250	0080033	Craniometaphyseal Dysplasia
1251	0080034	Endosteal Hyperostosis
1252	0080036	SOST-related Sclerosing Bone Dysplasia
1253	0080037	Worth's Syndrome
1254	0080038	Pycnodysostosis
1255	0080039	Axial Osteomalacia
1256	0080040	Fibrogenesis Imperfecta Ossium
1257	0080041	Hypochondroplasia
1258	0080043	Achondrogenesis
1259	0080044	Hypochondrogenesis
1260	0080045	Kniest Dysplasia
1261	0080046	Stickler Syndrome
1262	0080047	Pseudoachondroplasia
1263	0080048	Trichorhinophalangeal Syndrome I
1264	0080049	Acromesomelic Dysplasia
1265	0080050	Acromesomelic Dysplasia, Maroteaux Type
1266	0080051	Acromesomelic Dysplasia, Hunter-Thompson Type
1267	0080052	Acromesomelic Dysplasia, Grebe Type
1268	0080053	Albright's Hereditary Osteodystrophy
1269	0080054	Achondrogenesis Type IA
1270	0080055	Achondrogenesis Type IB
1271	0080056	Achondrogenesis Type II
1272	100	Intestinal Infectious Disease
1273	10000	Visual Cortex Disorder Due To Neoplasm
1274	10003	Sensorineural Hearing Loss
1275	10007	Respiratory Syncytial Virus Bronchiolitis
1276	1001	Labor Complications
1277	10011	Thyroid Lymphoma
1278	10012	Metastatic Malignant Neoplasm To The Thyroid
1279	10013	Polyglandular Activity In Multiple Endocrine Adenomatosis
1280	10015	Polyglandular Dysfunction
1281	10016	Multiple Endocrine Neoplasia Type 2B
1282	10017	Multiple Endocrine Neoplasia Type 1
1283	10018	Papilledema Associated With Increased Intracranial Pressure
1284	1002	Endometritis
1285	10020	Ampulla Of Vater Cancer
1286	10021	Duodenum Cancer
1287	10022	Ampulla Of Vater Neoplasm
1288	10024	Migraine With Aura
1289	10027	Tabes Dorsalis
1290	1003	Pelvic Inflammatory Disease
1291	10030	Interstitial Emphysema
1292	10031	Compensatory Emphysema
1293	10032	Hyperlucent Lung
1294	10033	Cycloplegia
1295	10034	Eye Accommodation Disease
1296	10035	Asymptomatic Neurosyphilis
1297	10038	Old Burn Scar-related Melanoma Of Skin
1298	10039	Late Congenital Syphilis
1299	10040	Malignant Eyelid Melanoma
1300	10041	Dysplastic Nevus Syndrome
1301	10042	Regressing Skin Melanoma
1302	10044	Balloon Cell Malignant Melanoma
1303	10045	Malignant Giant Pigmented Nevus Melanoma
1304	10047	Nodular Malignant Melanoma
1305	10048	Malignant Junctional Nevus Melanoma
1306	10049	Desmoplastic Melanoma
1307	1005	Endometrial Disease
1308	10053	Malignant Skin Blue Nevus
1309	10054	Skin Amelanotic Melanoma
1310	10059	Congenital Or Acquired Abnormality Of Vagina Complicating Pregnancy, Childbirth, Or The Puerperium
1311	10066	Syphilitic Acoustic Neuritis
1312	10069	Subglottis Neoplasm
1313	10070	Larynx Leiomyoma
1314	10071	Larynx Squamous Papilloma
1315	10073	Syphilitic Meningitis
1316	10074	Hymenolepiasis
1317	10075	Diphyllobothriasis
1318	10079	Cysticercosis
1319	10080	Sparganosis
1320	10081	Syphilitic Encephalitis
1321	10087	Gastric Leiomyoma
1322	10095	Intracranial Abscess
1323	10111	Congenital Or Acquired Abnormality Of Vagina, With Delivery
1324	10112	Sleeping Sickness
1325	10113	Trypanosomiasis
1326	10114	Trypanosoma Brucei Rhodesiense Infectious Disease
1327	10116	Trypanosoma Brucei Gambiense Infectious Disease
1328	10120	Eyelid Degenerative Disease
1329	10121	Degenerative Disorder Of Eyelid And Periocular Area
1330	10122	Hyperpigmentation Of Eyelid
1331	10123	Pigmentation Disease
1332	10124	Corneal Disease
1333	10125	Acute Hydrops Keratoconus
1334	10126	Keratoconus
1335	10127	Cerebral Artery Occlusion
1336	10128	Venous Insufficiency
1337	10131	Psychologic Vaginismus
1338	10132	Psychosexual Disorder
1339	10138	Xerophthalmia
1340	10139	Conjunctival Degeneration
1341	10140	Dry Eye Syndrome
1342	10141	Asthenopia
1343	10142	Chlamydia Trachomatis Peritonitis
1344	10144	Secondary Malignant Neoplasm To The Thymus
1345	10145	Metastases To Mediastinum
1346	10146	Thymus Lymphoma
1347	10149	Long Bones Of Lower Limb Cancer
1348	10150	Lower Limb Cancer
1349	10151	Malignant Neoplasm Of Short Bones Of Lower Limb
1350	10152	Meckel's Diverticulum Cancer
1351	10153	Ileum Cancer
1352	10154	Small Intestine Cancer
1353	10155	Intestinal Cancer
1354	10156	Ileal Neoplasm
1355	10159	Osteonecrosis
1356	1016	Primary Tuberculosis
1357	10173	Tuberculous Myelitis
1358	10174	Lacrimal Passage Granuloma
1359	10175	Optic Papillitis
1360	10176	Neuroretinitis
1361	10177	Malignant Hypertensive Renal Disease
1362	10182	Diabetic Peripheral Angiopathy
1363	10183	Endobronchial Lipoma
1364	10184	Spindle Cell Lipoma
1365	10187	Esophageal Lipoma
1366	10188	Skin Lipoma
1367	1019	Osteomyelitis
1368	10190	Liver Lipoma
1369	10191	Autosomal Deletion Syndrome
1370	10192	Pleomorphic Lipoma
1371	10193	Classic Type Lipoma
1372	10194	Kidney Lipoma
1373	10195	Pleural Lipoma
1374	10199	Breast Lipoma
1375	10200	Chest Wall Lipoma
1376	10201	Gallbladder Lipoma
1377	10202	Lipoma Of Intrathoracic Organ
1378	10203	External Auditory Meatus Lipoma
1379	10204	Lipoma Of Intra-abdominal Organ
1380	10205	Axillary Lipoma
1381	10206	Lipoma Of Spermatic Cord
1382	10207	Paratesticular Lipoma
1383	10208	Chondroid Lipoma
1384	10209	Extrahepatic Bile Duct Lipoma
1385	10210	Calculus Of Gallbladder And Bile Duct Without Cholecystitis
1386	10211	Cholelithiasis
1387	1022	Pinta Disease
1388	10220	Failed Induction
1389	10222	Polymyositis
1390	10223	Dermatomyositis
1391	10226	Single Episode Manic Disorder
1392	10229	Partial Epilepsy, With Impairment Of Consciousness, With Intractable Epilepsy
1393	1023	Borderline Leprosy
1394	10230	Aortic Atherosclerosis
1395	10233	Histoplasma Capsulatum Pericarditis
1396	10234	Histoplasmosis Pericarditis
1397	10235	Brown's Tendon Sheath Syndrome
1398	10236	Exhibitionism
1399	10237	Pelvic Cancer
1400	10238	Malignant Neoplasm Of Rectum, Rectosigmoid Junction And Anus
1401	10239	Malignant Neoplasm Of Pelvic Bones, Sacrum And Coccyx
1402	1024	Leprosy
1403	10240	Malignant Neoplasm Of Pelvis
1404	10241	Thalassemia
1405	10242	Ehrlichiosis
1406	10245	Delayed Separation Of Umbilical Cord
1407	10247	Pleurisy
1408	1025	Tuberculoid Leprosy
1409	10250	Louping Ill
1410	10254	Strawberry Gallbladder
1411	10255	Conjunctival Degenerations And Deposits
1412	10256	Vitamin A Deficiency With Conjunctival Xerosis
1413	10257	Vitamin A Deficiency
1414	10261	Discharging Ear
1415	10263	Mumps Virus Hepatitis
1416	10264	Mumps
1417	10265	Hairy Cell Leukemia Of Spleen
1418	10266	Subendocardial Infarction Acute Myocardial Infarction
1419	10272	Left Bundle Branch Hemiblock
1420	10273	Heart Conduction Disease
1421	10274	Schizo-affective Type Schizophrenia In Remission
1422	10277	Pseudomonas Intestinal Infectious Disease
1423	10278	Vasa Previa Complicating Labor And Delivery
1424	10279	Vasa Previa
1425	10280	Vasa Previa Complicating Labor And Delivery, Delivered
1426	10283	Prostate Cancer
1427	10286	Prostate Carcinoma
1428	10287	Prostate Squamous Cell Carcinoma
1429	10288	Metastasis To Prostate
1430	10289	Prostate Malignant Phyllodes Tumor
1431	1029	Familial Periodic Paralysis
1432	10290	Prostate Lymphoma
1433	10293	Monocular Esotropia
1434	10294	Intermittent Monocular Esotropia
1435	10295	Monocular Esotropia With A Pattern
1436	10296	Monocular Esotropia With V Pattern
1437	10300	Raynaud Disease
1438	10301	Parotitis
1439	10302	Parotid Disease
1440	10303	Sialadenitis
1441	10304	Mumps Virus Infectious Disease
1442	10305	Mumps Virus Orchitis
1443	10307	Mumps Virus Polyneuritis
1444	10309	Mumps Virus Meningitis
1445	10310	Viral Meningitis
1446	10311	Mumps Virus Encephalitis
1447	10312	Mumps Virus Pancreatitis
1448	10314	Endocarditis
1449	10316	Pneumoconiosis
1450	10319	Mixed Mineral Dust Pneumoconiosis
1451	10320	Asbestosis
1452	10321	Baritosis
1453	10322	Berylliosis
1454	10323	Byssinosis
1455	10324	Anthracosilicosis
1456	10325	Silicosis
1457	10326	Caplan's Syndrome
1458	10327	Anthracosis
1459	10328	Siderosis
1460	10329	Pneumoconiosis Due To Talc
1461	10330	Slate Pneumoconiosis
1462	10331	Kaolin Pneumoconiosis
1463	10332	Disorder Of Optic Chiasm Due To Vascular Disorder
1464	10334	Craniofacial Abnormality
1465	10337	Glaucomatous Atrophy Of Optic Disc
1466	10338	Subchronic Schizophrenia
1467	10339	Schizophrenia Simplex
1468	10340	Residual Subchronic Schizophrenia
1469	10341	Chronic Meningitis
1470	10342	Subchronic Latent Schizophrenia
1471	10343	Latent Schizophrenia
1472	10348	Blepharophimosis
1473	10349	Solitary Cyst Of Breast
1474	1035	Natural Killer Cell Leukemia
1475	10350	Breast Cyst
1476	10351	Mammary Duct Ectasia
1477	10352	Breast Fibroadenosis
1478	10353	Fibrosclerosis Of Breast
1479	10354	Breast Fibrocystic Disease
1480	1036	Chronic Leukemia
1481	10361	Eosinophilic Meningitis
1482	10366	Epididymis Cancer
1483	10367	Metastatic Tumor To The Epididymis
1484	10368	Epididymis Adenocarcinoma
1485	1037	Lymphoblastic Leukemia
1486	10371	Yaws
1487	10375	Suppression Amblyopia
1488	10376	Amblyopia
1489	10377	Ametropic Amblyopia
1490	10378	Disuse Amblyopia
1491	1038	Mature T-cell Neoplasm
1492	10380	Precipitate Labor
1493	10381	Staphylococcal Meningitis
1494	10383	Amyotrophic Neuralgia
1495	10384	Papilledema Associated With Decreased Ocular Pressure
1496	1039	Prolymphocytic Leukemia
1497	10393	Secondary Hypertrophic Osteoarthropathy
1498	10398	Pneumonic Plague
1499	10399	Seminal Vesicle Chronic Gonorrhea
1500	104	Bacterial Infectious Disease
1501	1040	Chronic Lymphocytic Leukemia
1502	10400	Gonococcal Seminal Vesiculitis
1503	1042	Generalized Infection During Labor
1504	10423	Acute Pericementitis
1505	10426	Klippel-Feil Syndrome
1506	10428	Stable Condition Keratoconus
1507	10435	Purulent Acute Otitis Media
1508	10437	Metastasis To Lymph Node
1509	10439	Mooren's Ulcer
1510	1044	Nontraumatic Rupture Of Muscle
1511	10440	Mycotic Corneal Ulcer
1512	10441	Marginal Corneal Ulcer
1513	10442	Hypopyon Ulcer
1514	10443	Hypopyon
1515	10444	Ring Corneal Ulcer
1516	10445	Perforated Corneal Ulcer
1517	10447	Thyroid Dysfunction Complicating Pregnancy, Childbirth, Or The Puerperium
1518	1045	Fascia Disease
1519	10456	Tonsillitis
1520	10457	Legionnaires' Disease
1521	10458	Legionellosis
1522	10459	Common Cold
1523	10460	Nasopharyngitis
1524	10461	Dentin Caries
1525	10469	Diabetes Mellitus Juvenile Type, Uncontrolled, With Neurological Manifestations
1526	1047	Mental Disorder Complicating Pregnancy, Childbirth, Or The Puerperium
1527	10471	Patellar Tendinitis
1528	10472	Candidal Pneumonia
1529	10473	Wrist Or Carpus Enthesopathy
1530	10480	Diaphragmatic Eventration
1531	10481	Diaphragm Disease
1532	10483	Hypertonic, Incoordinate, Or Prolonged Uterine Contractions
1533	10485	Esophageal Atresia
1534	10486	Intestinal Atresia
1535	10487	Hirschsprung's Disease
1536	10488	Imperforate Anus
1537	10489	Transient Disorder Of Initiating Or Maintaining Wakefulness
1538	10493	Adrenal Cortical Hypofunction
1539	10494	Pulmonary Valve Syphilitic Endocarditis
1540	10499	Orbital Granuloma
1541	10501	Menopausal And Postmenopausal Disorder
1542	10505	Generalized Nonconvulsive Epilepsy Disease
1543	10507	Dressler's Syndrome
1544	10508	Bacillus Anthracis Pneumonia
1545	10510	Influenza Virus Pneumonia
1546	10516	Malignant Otitis Externa
1547	10518	Beach Ear
1548	10519	Chronic Fungal Otitis Externa
1549	10520	Acute Infection Of Pinna
1550	10521	Pinna Disease
1551	10525	Double Pterygium
1552	10526	Conjunctival Pterygium
1553	10527	Haemophilus Influenzae Pneumonia
1554	10528	Haemophilus Influenzae Infectious Disease
1555	10529	Primary Haemophilus Infectious Disease
1556	1053	Developmental Dislocation Of Joint
1557	10531	Pneumococcal Pneumonia
1558	10532	Streptococcal Pneumonia
1559	10533	Viral Pneumonia
1560	10534	Stomach Cancer
1561	10535	Coxsackie Myocarditis
1562	10536	Malignant Gastric Granular Cell Tumor
1563	10537	Recurrent Malignant Gastric Neoplasm
1564	10538	Gastric Fundus Cancer
1565	1054	Glaucoma Associated With Chamber Angle Anomalies
1566	10540	Gastric Lymphoma
1567	10541	Microinvasive Gastric Cancer
1568	10544	Pylorus Cancer
1569	10545	Coxsackievirus Infectious Disease
1570	10547	Pyloric Antrum Cancer
1571	10548	Cardia Cancer
1572	10549	Diabetes Mellitus Insulin Dependent Type, Not Stated As Uncontrolled, With Ophthalmic Manifestations
1573	1055	Glaucoma Associated With Congenital Anomalies, Dystrophies And Systemic Syndromes
1574	10550	Acute Eustachian Salpingitis
1575	10551	Cerebral Toxoplasmosis
1576	10554	Meningoencephalitis
1577	10556	Supine Hypotensive Syndrome
1578	10557	Maternal Distress
1579	1056	Oculocerebrorenal Syndrome
1580	10561	Yaws Hyperkeratosis
1581	10564	Gangosa Of Yaws
1582	10567	Late Yaws
1583	10568	Early Yaws
1584	10569	Myopathy Of Critical Illness
1585	1057	Inborn Amino Acid Transport Disorder
1586	10573	Osteomalacia
1587	10574	Vitamin D Deficiency
1588	10575	Calcium Metabolism Disease
1589	10579	Leukodystrophy
1590	1058	Amino Acid Transport Disease
1591	10581	Metachromatic Leukodystrophy
1592	10582	Refsum Disease
1593	10584	Retinitis Pigmentosa
1594	10585	Hereditary And Idiopathic Peripheral Neuropathy
1595	10587	Krabbe Disease
1596	10588	Adrenoleukodystrophy
1597	1059	Intellectual Disability
1598	10590	Mild Pre-eclampsia
1599	10591	Pre-eclampsia
1600	10593	Idiopathic Progressive Polyneuropathy
1601	10594	Idiopathic Neuropathy
1602	10595	Charcot-Marie-Tooth Disease
1603	10597	Gonococcal Meningitis
1604	106	Pleural Tuberculosis
1605	1060	Hartnup Disease
1606	10600	Chronic Tic Disorder
1607	10602	Steatorrhea
1608	10603	Glucose Intolerance
1609	10604	Lactose Intolerance
1610	10605	Short Bowel Syndrome
1611	10606	Blind Loop Syndrome
1612	10607	Tropical Sprue
1613	10608	Celiac Disease
1614	10609	Rickets
1615	1061	Renal Aminoaciduria
1616	10610	Pancreatic Steatorrhea
1617	10611	Protein-losing Enteropathy
1618	10612	Allergic Urticaria
1619	10615	Acute Gonococcal Cervicitis
1620	10616	Acute Cervicitis
1621	10619	Lymph Node Cancer
1622	1062	Fanconi Syndrome
1623	10621	Fissure Of Nipple Associated With Childbirth
1624	10626	Insulin Dependent Type Diabetes Mellitus Uncontrolled With Ketoacidosis
1625	10627	Primary Optic Atrophy
1626	10629	Microphthalmia
1627	1063	Interstitial Nephritis
1628	10630	Optic Atrophy Associated With Retinal Dystrophy
1629	10631	Partial Optic Atrophy
1630	10632	Wolfram Syndrome
1631	1064	Cystinosis
1632	10645	Chronic State Latent Schizophrenia With Acute Exacerbation
1633	10646	Schizotypal Personality Disorder
1634	10648	Acute Inferoposterior Infarction
1635	10649	Acute Inferolateral Myocardial Infarction
1636	10651	Acute Anterolateral Myocardial Infarction
1637	10652	Alzheimer's Disease
1638	10655	Lipoma Of Colon
1639	10656	Colon Leiomyoma
1640	10657	Colonic Lymphangioma
1641	10659	Colonic Ganglioneuroma
1642	1066	Residual Stage Of Open Angle Glaucoma
1643	10660	Mediastinum Neuroblastoma
1644	10661	Mediastinum Ganglioneuroblastoma
1645	1067	Open-angle Glaucoma
1646	1068	Juvenile Glaucoma
1647	10685	Separation Anxiety Disorder
1648	10686	Lactocele
1649	10688	Hypertrophy Of Breast
1650	10689	Galactorrhea Not Associated With Childbirth
1651	10690	Mastitis
1652	10691	Fat Necrosis Of Breast
1653	10697	Chronic Endophthalmitis
1654	10699	Paragonimiasis
1655	1070	Primary Open Angle Glaucoma
1656	10708	Passive-aggressive Personality Disorder
1657	10717	Meningococcal Septicemia
1658	10718	Giardiasis
1659	10719	Toxic Diffuse Goiter
1660	1073	Renal Hypertension
1661	10731	Nodular Lung Tuberculosis
1662	1074	Kidney Failure
1663	10742	Cerebral Lipidosis
1664	10744	Broad Ligament Malignant Neoplasm
1665	10747	Lymphoid Leukemia
1666	1075	Chronic Pyelonephritis With Lesion Of Renal Medullary Necrosis
1667	10754	Otitis Media
1668	10755	Petrositis
1669	1076	Chronic Pyelonephritis
1670	10760	Choroidal Rupture
1671	10762	Portal Hypertension
1672	10763	Hypertension
1673	10764	Liver Abscess And Sequelae Of Chronic Liver Disease
1674	1077	Spirurida Infectious Disease
1675	10772	Thrombotic Thrombocytopenic Purpura
1676	10773	Bubonic Plague
1677	10774	Cutaneous Plague
1678	10778	Fiedler's Myocarditis
1679	10779	Septic Myocarditis
1680	1078	Chromadorea Infectious Disease
1681	10780	Primary Polycythemia
1682	10782	Mesenteric Lymphadenitis
1683	10783	Methemoglobinemia
1684	10784	Queensland Tick Typhus
1685	10787	Premature Menopause
1686	10788	Osteitis Condensans
1687	1079	Setariasis
1688	10790	Chronic Frontal Sinusitis
1689	10791	Frontal Sinusitis
1690	10792	Chronic Maxillary Sinusitis
1691	10793	Chronic Sphenoidal Sinusitis
1692	10794	Sphenoid Sinusitis
1693	10795	Congenital Syphilitic Encephalitis
1694	1080	Filariasis
1695	10802	Acute Gonococcal Epididymo-orchitis
1696	10803	Haemophilus Influenzae Meningitis
1697	10808	Gastric Ulcer
1698	1081	Mansonelliasis
1699	10810	Tibialis Tendinitis
1700	10811	Nasal Cavity Cancer
1701	10812	Nasal Cavity Olfactory Neuroblastoma
1702	10813	Nasal Cavity Lymphoma
1703	10815	Recurrent Duodenal Cancer
1704	10816	Duodenum Adenocarcinoma
1705	10817	Sexual Sadism
1706	10818	Leptospiral Meningitis
1707	1082	Dirofilariasis
1708	10823	Malignant Essential Hypertension
1709	10824	Malignant Hypertension
1710	10825	Essential Hypertension
1711	10827	Gender Identity Disorder In Adolescent Or Adult
1712	10834	Voyeurism
1713	10835	Chylocele Of Tunica Vaginalis
1714	10836	Diabetes Mellitus With Hyperosmolarity
1715	10837	Diabetes Mellitus,insulin Dependent Type With Hyperosmolarity, Not Stated As Uncontrolled
1716	10838	Diabetes Mellitus, Insulin Dependent Type With Hyperosmolarity, Uncontrolled
1717	10841	Eastern Equine Encephalitis
1718	10842	Murray Valley Encephalitis
1719	10843	Western Equine Encephalitis
1720	10844	Japanese Encephalitis
1721	10845	St. Louis Encephalitis
1722	10846	Angiodysplasia Of Intestine
1723	10848	Intrauterine Hypoxia And Birth Asphyxia
1724	10849	Sexual Masochism
1725	1085	Edwards Syndrome
1726	10852	Middle Ear Cholesterol Granuloma
1727	10854	Salivary Gland Disease
1728	1086	Congenital Chromosomal Disease
1729	10863	Paralytic Squint
1730	10864	Partial Third-nerve Palsy
1731	10865	Abducens Nerve Disease
1732	10866	Total Third-nerve Palsy
1733	10869	Fourth Cranial Nerve Palsy
1734	10871	Age Related Macular Degeneration
1735	10873	Kuhnt-Junius Degeneration
1736	10875	Premature Labor
1737	10877	Disorganized Type Schizophrenia Chronic State With Acute Exacerbation
1738	1088	Meningocele
1739	10880	Iliac Vein Thrombophlebitis
1740	10881	Hand, Foot And Mouth Disease
1741	10882	Epidemic Pleurodynia
1742	10883	Herpangina
1743	10887	Lepromatous Leprosy
1744	1089	Tethered Spinal Cord Syndrome
1745	10892	Hypospadias
1746	10901	Leukemic Reticuloendotheliosis Of Lymph Nodes Of Axilla And Upper Limb
1747	10902	Pulmonary Actinomycosis
1748	10907	Microcephaly
1749	10908	Hydrocephalus
1750	1091	Tooth Disease
1751	10910	Echovirus Meningitis
1752	10911	Echovirus Infectious Disease
1753	10913	Benign Essential Hypertension
1754	10914	Amnestic Disorder
1755	10915	Wernicke-Korsakoff Syndrome
1756	10918	Transsexuality With Asexual History
1757	10919	Transsexualism
1758	10921	Siberian Tick Typhus
1759	10922	Sickle-cell Crisis
1760	10923	Sickle Cell Anemia
1761	10924	Catatonic Type Schizophrenia Chronic State
1762	10925	Catatonic Schizophrenia
1763	10927	Gastrojejunal Ulcer
1764	10930	Borderline Personality Disorder
1765	10931	Dependent Personality Disorder
1766	10932	Obsessive-compulsive Personality Disorder
1767	10933	Obsessive-compulsive Disorder
1768	10934	Multiple Personality Disorder
1769	10935	Dissociative Disorder
1770	10936	Schizoid Personality Disorder
1771	10937	Impulse Control Disorder
1772	10938	Paranoid Personality Disorder
1773	10939	Antisocial Personality Disorder
1774	1094	Attention Deficit Hyperactivity Disorder
1775	10941	Intracranial Aneurysm
1776	10944	Tongue Disease
1777	10952	Nephritis
1778	10955	Strongyloidiasis
1779	10957	Enterobacter Aerogenes Intestinal Infectious Disease
1780	10958	Salmonella Arizonae Intestinal Infectious Disease
1781	10959	Escherichia Coli Intestinal Infectious Disease
1782	10963	Cholesteatoma Of Attic
1783	10964	Cholesteatoma Of Middle Ear
1784	10965	Spastic Diplegia
1785	10966	Lipoid Nephrosis
1786	10967	Spastic Hemiplegia
1787	10968	Spastic Monoplegia
1788	10969	Hemiplegia
1789	1097	Hydrops Fetalis
1790	10970	Spastic Quadriplegia
1791	10971	Acute Salpingo-oophoritis
1792	10972	Salpingo-oophoritis
1793	10973	Acute Salpingitis
1794	10974	Oophoritis
1795	10976	Membranous Glomerulonephritis
1796	10978	Poliovirus Type III Nonparalytic Poliomyelitis
1797	10979	Poliovirus Type I Nonparalytic Poliomyelitis
1798	1098	Fetal Erythroblastosis
1799	10980	Poliovirus Type II Nonparalytic Poliomyelitis
1800	10983	Alport Syndrome
1801	10986	Discitis
1802	10989	Conjunctival Vascular Disease
1803	1099	Alpha Thalassemia
1804	10991	Basal Ganglia Cerebrovascular Disease
1805	10992	Acute Hemorrhagic Leukoencephalitis
1806	10993	Postinfectious Encephalitis
1807	10997	Immature Cataract
1808	10998	Chronic Glomerulonephritis With Lesion Of Membranoproliferative Glomerulonephritis
1809	110	Lens Disease
1810	1100	Ovarian Disease
1811	11000	Progressive Iris Atrophy
1812	11001	Iris And Ciliary Body Degeneration
1813	11002	Iridoschisis
1814	11003	Pupillary Margin Miotic Cyst
1815	11005	Atrophy Of Sphincter Of Iris
1816	11014	Anorectal Stricture
1817	11018	Postsurgical Testicular Hypofunction
1818	11019	Testicular Dysfunction
1819	11020	Chronic Glomerulonephritis With Lesion Of Proliferative Glomerulonephritis
1820	11027	Chronic Glomerulonephritis With Lesion Of Membranous Glomerulonephritis
1821	11028	Pseudopterygium
1822	11029	Pinguecula
1823	1103	Malignant Esophageal Neoplasm By Topographic Region
1824	11030	Corneal Edema
1825	11031	Bullous Keratopathy
1826	11032	Secondary Corneal Edema
1827	11033	Idiopathic Corneal Edema
1828	11034	Contact Lens Corneal Edema
1829	11036	Chronic Rapidly Progressive Glomerulonephritis
1830	11037	Dissociative Amnesia
1831	11038	Depersonalization Disorder
1832	11042	Felty's Syndrome
1833	11044	Gastroschisis
1834	11049	Meconium Aspiration Syndrome
1835	1105	Esophageal Metastasis
1836	11054	Urinary Bladder Cancer
1837	11055	Pasteurellosis
1838	11056	Pasteurella Hemorrhagic Septicemia
1839	1106	Esophagus Lymphoma
1840	11060	Placenta Praevia
1841	1107	Esophageal Carcinoma
1842	11074	Cyst Of Thyroid
1843	11076	Brucella Suis Brucellosis
1844	11077	Brucellosis
1845	11079	Leech Infestation
1846	1108	Esophagus Melanoma
1847	11080	Myiasis
1848	11086	Chorioretinal Scar
1849	11088	Asphyxia Neonatorum
1850	1109	Extracutaneous Melanoma
1851	11091	Perinatal Respiratory Disorder
1852	11092	Salmonella Gastroenteritis
1853	11093	Bacterial Gastroenteritis
1854	11096	Renal Syphilis
1855	11097	Pulmonary Syphilis
1856	11099	Primary Rickettsiaceae Infectious Disease
1857	1110	Gastrointestinal Melanoma
1858	11100	Q Fever
1859	11101	Trench Fever
1860	11102	Bartonellosis
1861	11103	Rickettsialpox
1862	11104	Spotted Fever
1863	11105	Fundus Albipunctatus
1864	11106	Glaucoma Associated With Anterior Segment Anomaly
1865	11107	Glaucoma Associated With Ocular Disorder
1866	1111	Malignant Neoplasm Of Cervical Part Of Esophagus
1867	11110	Psychosexual Dysfunction With Female Orgasmic Disease
1868	11111	Hydronephrosis
1869	11118	Syphilitic Retrobulbar Neuritis
1870	11119	Gilles De La Tourette Syndrome
1871	1112	Neck Cancer
1872	11120	Psychologic Dyspareunia
1873	11121	Pulpitis
1874	11123	Henoch-Schoenlein Purpura
1875	11125	Qualitative Platelet Defect
1876	11126	Acquired Thrombocytopenia
1877	11129	Dislocation Of Ear Ossicle
1878	1113	Malignant Esophageal Neoplasm By Anatomic Region
1879	11130	Secondary Hypertension
1880	11132	Prostatic Hypertrophy
1881	11133	Prostatic Cyst
1882	11134	Prolapse Of Lacrimal Gland
1883	1114	Esophagus Sarcoma
1884	11144	Anthrax Septicemia
1885	11145	Pars Plana Primary Cyst
1886	11147	Vascular Lesions Of Cord Complicating Labor And Delivery
1887	11148	Hypersecretion Glaucoma
1888	11149	Aqueous Misdirection
1889	1115	Sarcoma
1890	11150	Glaucoma Due To Raised Episcleral Venous Pressure
1891	11151	Cholecystolithiasis
1892	11153	Miliaria Rubra
1893	11155	Hypohidrosis
1894	11156	Anhidrosis
1895	11158	Disorder Of Optic Chiasm Associated With Non-pituitary Neoplasm
1896	1116	Pertussis
1897	11161	Neonatal Respiratory Failure
1898	11162	Respiratory Failure
1899	11163	Apnea Of Prematurity
1900	11164	Band Keratopathy
1901	11165	Common Wart
1902	11166	Papillomavirus Infectious Disease
1903	11167	Uterine Cervix Condylomata Acuminata
1904	11168	Anogenital Venereal Wart
1905	11169	Vaginal Condylomata Acuminata
1906	11170	Vulvar Condylomata Acuminata
1907	11171	Urethral Condylomata Acuminata
1908	11172	Anal Condylomata Acuminata
1909	11175	Enophthalmos
1910	11177	Total Internal Ophthalmoplegia
1911	11179	Otitis Media With Effusion
1912	11180	Non-suppurative Otitis Media
1913	11181	Serous Glue Ear
1914	11182	Chronic Otitis Media With Effusion
1915	11183	Haemophilus Influenzae Septicemia
1916	11184	Acute Conjunctivitis
1917	11186	Allescheriosis
1918	11189	Pulp Degeneration
1919	1119	Large For Dates Affecting Management Of Mother
1920	11190	Pseudomembranous Conjunctivitis
1921	11193	Syndactyly
1922	11195	Acute Laryngopharyngitis
1923	11197	Serous Conjunctivitis Except Viral
1924	11198	DiGeorge Syndrome
1925	11199	Hypoparathyroidism
1926	112	Esophageal Varix
1927	11200	T Cell Deficiency
1928	11201	Parathyroid Gland Disease
1929	11202	Primary Hyperparathyroidism
1930	11203	Angelucci's Syndrome
1931	11204	Allergic Conjunctivitis
1932	11206	Opioid Abuse
1933	11211	Buphthalmos
1934	11212	Hydrophthalmos
1935	11213	Acute Contagious Conjunctivitis
1936	11215	Premature Rupture Of The Fetal Membranes
1937	11217	Chronic Tympanitis
1938	11219	Conjunctival Folliculosis
1939	1122	Spinal Enthesopathy
1940	11223	Small Intestine Diverticulitis
1941	11227	Acute Hemorrhagic Conjunctivitis
1942	1123	Spondyloarthropathy
1943	11230	Acute Orbital Inflammation
1944	11231	Orbital Periostitis
1945	11232	Orbital Osteomyelitis
1946	11233	Orbital Tenonitis
1947	11234	Orbital Cellulitis
1948	11235	Chronic Adhesive Otitis Media
1949	11239	Appendix Cancer
1950	11240	Appendiceal Neoplasm
1951	11241	Appendix Lymphoma
1952	11242	Plethora Of Newborn
1953	11243	Anemia Of Prematurity
1954	11244	Neonatal Anemia
1955	11245	Transient Neonatal Neutropenia
1956	11246	DIC In Newborn
1957	11247	Disseminated Intravascular Coagulation
1958	11248	Hemorrhagic Disease Of Newborn
1959	11249	Vitamin K Deficiency Hemorrhagic Disease
1960	11252	Microcytic Anemia
1961	11254	Brill-Zinsser Disease
1962	11256	Typhus
1963	11257	Social Phobia
1964	11258	Cat-scratch Disease
1965	11259	Cytomegalovirus Infectious Disease
1966	11260	Rabies
1967	11261	Foot And Mouth Disease
1968	11262	Ornithosis
1969	11263	Chlamydia Trachomatis Infectious Disease
1970	11264	Chlamydophila Infectious Disease
1971	11265	Trachoma
1972	11266	Hemorrhagic Fever With Renal Syndrome
1973	11267	Keratomalacia
1974	11268	Vitamin A Deficiency With Keratomalacia
1975	11269	Chronic Apical Periodontitis
1976	11271	Hypertension Secondary To Renal Disease, Complicating Pregnancy, Childbirth And The Puerperium
1977	11275	Muscle Syphilis
1978	11277	Plummer's Disease
1979	11282	Solar Retinopathy
1980	11283	Peripheral Scars Of Retina
1981	11284	Disseminated Scars Of Retina
1982	11285	Tick Paralysis
1983	11286	Neuromuscular Junction Toxic Disorder
1984	11287	Conditions Involving The Integument And Temperature Regulation Of Fetus And Newborn
1985	11289	Ventilation Pneumonitis
1986	1129	Pituitary Apoplexy
1987	11294	Arteriovenous Malformation
1988	11295	Retinal Microaneurysm
1989	11299	Vertebral Artery Occlusion
1990	113	Pneumopericardium
1991	1130	Pituitary Infarct
1992	11302	Cercarial Dermatitis
1993	11307	Subchronic State Latent Schizophrenia With Acute Exacerbation
1994	11308	Latent Schizophrenia In Remission
1995	11309	Chronic Latent Schizophrenia
1996	11312	Mobitz Type II Atrioventricular Block
1997	11314	Histoplasma Duboisii Retinitis
1998	11315	African Histoplasmosis
1999	11316	Histoplasmosis Retinitis
2000	11320	Kyasanur Forest Disease
2001	11327	Acute Schizophrenic Episode Subchronic State With Acute Exacerbation
2002	11328	Schizophreniform Disorder
2003	11329	Ainhum
2004	11330	Erysipelas
2005	11335	Sarcoidosis
2006	11336	Rhinoscleroma
2007	11337	Lemierre's Syndrome
2008	11338	Tetanus
2009	11339	Pneumocystosis
2010	1134	Gingival Recession
2011	11340	Pneumocystis Infectious Disease
2012	11341	Fungal Lung Infectious Disease
2013	11342	Arcus Senilis
2014	11343	Scleral Disease
2015	11346	Congenital Osteodystrophy
2016	11347	Meniere's Disease In Remission
2017	11349	Epilepsia Partialis Continua
2018	11350	Grand Mal Status Epilepticus
2019	11352	Epilepsia Partialis Continua With Intractable Epilepsy
2020	11353	Bladder Diverticulum
2021	11354	Stone In Bladder Diverticulum
2022	11355	Bladder Calculus
2023	11360	Phlebotomus Fever
2024	11361	Tickborne Fever
2025	11364	Lens Subluxation
2026	11367	Congenital Aphakia
2027	11371	Functional Diarrhea
2028	11372	Megacolon
2029	11374	Anal Spasm
2030	11377	Calculus Of Gallbladder And Bile Duct With Acute Cholecystitis
2031	11379	Gnathomiasis
2032	1138	Spinal Meningioma
2033	11382	Corneal Neovascularization
2034	11383	Cryptorchidism
2035	11385	Expressive Language Disorder
2036	11387	Epidural Abscess
2037	11389	Subdural Empyema
2038	11390	Cerebral Arteritis
2039	11394	Adult Respiratory Distress Syndrome
2040	11396	Pulmonary Edema
2041	114	Heart Disease
2042	1140	Spinal Canal And Spinal Cord Meningioma
2043	11400	Pyelonephritis
2044	11401	Xanthogranulomatous Pyelonephritis
2045	11403	Depressive State Induced By Drug
2046	11404	Diphtheritic Laryngotracheitis
2047	11405	Diphtheria
2048	11406	Choroiditis
2049	11409	Syphilitic Disseminated Chorioretinitis
2050	1141	Alternating Exotropia With V Pattern
2051	11418	Trichomonas Urethritis
2052	1142	Alternating Exotropia
2053	11421	Acquired Cavovarus Foot Deformity
2054	11424	Fallopian Tube Endometriosis
2055	11427	Endosalpingiosis
2056	11428	Endometriosis Of Intestine
2057	11429	Endometriosis Of Pelvic Peritoneum
2058	1143	Exotropia
2059	11430	Endometriosis In Scar Of Skin
2060	11431	Endometriosis Of Rectovaginal Septum And Vagina
2061	11432	Endometriosis Of Ovary
2062	11433	Middle Ear Cholesteatoma
2063	11436	Recurrent Cholesteatoma Post-mastoidectomy
2064	11441	Macrodactylia Of Toes
2065	11442	Malignant Mast Cell Tumors Involving Lymph Node Of Head
2066	11446	Sciatic Neuropathy
2067	11450	Allergic Cutaneous Vasculitis
2068	11451	Secondary Syphilitic Meningitis
2069	11452	Perinatal Jaundice Due To Hepatocellular Damage
2070	11457	Brain Compression
2071	11459	Pseudotumor Cerebri
2072	11465	Autonomic Nervous System Disease
2073	11472	Subglottis Cancer
2074	11476	Osteoporosis
2075	1148	Polydactyly
2076	11481	Constrictive Pericarditis
2077	11482	Hemopericardium
2078	11486	Horner's Syndrome
2079	11488	Idiopathic Peripheral Autonomic Neuropathy
2080	11489	Vitamin A Deficiency With Conjunctival Xerosis And Bitot's Spot
2081	11490	Vitamin A Deficiency With Night Blindness
2082	11491	Acquired Night Blindness
2083	115	Cardiac Tamponade
2084	1150	Bone And Joint Disorder Of Back, Pelvis And Lower Limbs Of Mother, Complicating Pregnancy, Childbirth, Or The Puerperium
2085	11502	Mitral Valve Insufficiency
2086	11503	Diabetic Autonomic Neuropathy
2087	11504	Autonomic Neuropathy
2088	11506	Suppurative Otitis Media
2089	11507	Rumination Disorder
2090	11512	Hepatic Vein Thrombosis
2091	11514	Fissured Tongue
2092	11516	Hypertensive Heart Disease
2093	11518	Abnormal Pupillary Function
2094	11520	Benign Hypertensive Renal Disease
2095	11523	Clostridium Perfringens Gastroenteritis
2096	11524	Hyphema Of Iris And Ciliary Body
2097	11525	Iris And Ciliary Body Vascular Disorder
2098	11527	Laryngostenosis
2099	11533	Hereditary Sensory And Autonomic Neuropathy
2100	11535	Dysplasia Of Prostate
2101	11541	Recurrent Corneal Erosion
2102	11543	Corneal Abscess
2103	11547	Corneal Deposit
2104	11549	Adie Syndrome
2105	11550	Oculomotor Nerve Paralysis
2106	11552	Bowman's Membrane Folds Or Rupture
2107	11554	Chandler Syndrome
2108	11555	Fuchs' Endothelial Dystrophy
2109	11557	Acute Serous Otitis Media
2110	11558	Acute Allergic Serous Otitis Media
2111	1156	Chondrocalcinosis
2112	11561	Hypertensive Retinopathy
2113	11563	Retinal Vasculitis
2114	11569	Neurocirculatory Asthenia
2115	11572	Listeria Meningitis
2116	11573	Listeriosis
2117	11574	Streptococcal Meningitis
2118	11575	Pneumococcal Meningitis
2119	11577	Cauda Equina Syndrome
2120	11578	Escherichia Coli Meningitis
2121	11581	Phlyctenulosis
2122	11582	Syphilitic Aortitis
2123	11584	Acute Schizophrenic Episode In Remission
2124	11589	Riley-Day Syndrome
2125	1159	Functional Gastric Disease
2126	11593	Bladder Lateral Wall Cancer
2127	11594	Ring Staphyloma
2128	11595	Scleral Staphyloma
2129	11597	Cold Injury Syndrome Of Newborn
2130	11599	Frey Syndrome
2131	116	Pericardium Cancer
2132	11600	Secondary Malignant Neoplasm Of Lymph Nodes Of Multiple Site
2133	11603	Infant Gynecomastia
2134	11604	Idiopathic Hydrops Fetalis
2135	11606	Ileal Disease
2136	11607	Candidal Meningitis
2137	11608	Fungal Meningitis
2138	11612	Polycystic Ovary Syndrome
2139	11613	Hyperandrogenism
2140	11615	Penile Cancer
2141	11623	Dental Pulp Necrosis
2142	11624	Penile Neoplasm
2143	11629	Pelvic Muscle Wasting
2144	11633	Thyroid Hormone Resistance Syndrome
2145	11634	Myxedema
2146	11637	Accommodative Spasm
2147	11638	Presbyopia
2148	11649	Transitory Tachypnea Of Newborn
2149	11650	Bronchopulmonary Dysplasia
2150	11653	Conjunctival Deposit
2151	11654	Nevus Of Ota
2152	11656	Cicatricial Pemphigoid
2153	1166	Palindromic Rheumatism
2154	11661	Blue Color Blindness
2155	11662	Color Vision Defect
2156	11664	Nephrosclerosis
2157	11665	Patau Syndrome
2158	11668	Hypopigmentation Of Eyelid
2159	11669	Hypertrichosis Of Eyelid
2160	11671	Hypotrichosis Of Eyelid
2161	11678	Onchocerciasis
2162	1168	Familial Hyperlipidemia
2163	11680	Ocular Onchocerciasis
2164	11683	Glaucoma Associated With Systemic Syndromes
2165	11684	Melanoacanthoma
2166	11685	Inflamed Seborrheic Keratosis
2167	11693	Acute Apical Periodontitis
2168	11695	Portal Vein Thrombosis
2169	11696	Chronic Hypomanic Disorder
2170	11699	Intrathoracic Lymph Node Tuberculosis
2171	117	Heart Cancer
2172	11701	Selective IgA Deficiency Disease
2173	11702	Dysgammaglobulinemia
2174	11705	Impaired Renal Function Disease
2175	1171	Hyperlipoproteinemia Type V
2176	11711	Pregnancy In Diabetics
2177	11712	Lipoatrophic Diabetes
2178	11713	Diabetic Angiopathy
2179	11714	Gestational Diabetes
2180	11716	Prediabetes Syndrome
2181	11717	Neonatal Diabetes Mellitus
2182	11718	Antidepressant Type Abuse
2183	11719	Oculopharyngeal Muscular Dystrophy
2184	1172	Hyperlipoproteinemia Type IV
2185	11720	Distal Muscular Dystrophy
2186	11721	Glycogen Storage Disease VII
2187	11722	Myotonic Dystrophy Type 1
2188	11723	Duchenne Muscular Dystrophy
2189	11724	Limb-girdle Muscular Dystrophy
2190	11725	Cornelia De Lange Syndrome
2191	11726	Emery-Dreifuss Muscular Dystrophy
2192	11727	Facioscapulohumeral Muscular Dystrophy
2193	11729	Lyme Disease
2194	1173	Polycystic Liver Disease
2195	11730	Borrelia Infectious Disease
2196	11732	Syphilitic Myocarditis
2197	11733	Syphilitic Aortic Aneurysm
2198	11734	Syphilitic Pericarditis
2199	11735	Single Manic Episode In Full Remission
2200	11736	Odontoclasia
2201	11741	Chlamydophila Pneumoniae Pneumonia
2202	11746	Parametrium Malignant Neoplasm
2203	11747	Uterine Adnexa Cancer
2204	11748	Round Ligament Malignant Neoplasm
2205	11750	Bordetella Parapertussis Whooping Cough
2206	11752	Acute Endophthalmitis
2207	11753	Biliary Calculus With Acute Cholecystitis
2208	11754	Siderosis Of Eye
2209	11755	Choledocholithiasis
2210	11756	Calculus Of Bile Duct With Acute Cholecystitis
2211	11758	Iron Deficiency Anemia
2212	11759	Hypochromic Anemia
2213	1176	Bronchial Disease
2214	11760	Kohler's Disease
2215	11766	Blind Hypotensive Eye
2216	11770	Hypersecretion Of Testicular Hormones
2217	11771	Spontaneous Ocular Nystagmus
2218	11772	Leukocoria
2219	11775	Hereditary Trophedema
2220	11776	Blind Hypertensive Eye
2221	11781	Regular Astigmatism
2222	11782	Astigmatism
2223	11783	Necrosis Of Ear Ossicle
2224	11786	Splenic Sequestration
2225	11787	Chronic Congestive Splenomegaly
2226	11793	Phthisical Cornea
2227	11797	Chronic Laryngitis
2228	118	Pericardial Effusion
2229	11801	Protein-energy Malnutrition
2230	11802	Protein Deficiency
2231	11806	Macrodactylia Of Fingers
2232	11809	Bladder Neck Cancer
2233	11810	Metastatic Neoplasm To The Bladder
2234	11811	Urinary Bladder Posterior Wall Cancer
2235	11812	Bladder Sarcoma
2236	11813	Bladder Trigone Cancer
2237	11814	Urinary Bladder Anterior Wall Cancer
2238	11815	Recurrent Malignant Bladder Neoplasm
2239	11816	Vitreous Syneresis
2240	11817	Urachus Cancer
2241	11818	Ureteric Orifice Cancer
2242	11819	Ureter Cancer
2243	11820	Bladder Dome Cancer
2244	11821	Bladder Lymphoma
2245	11823	Hepatorenal Syndrome
2246	11824	Multicentric Reticulohistiocytosis
2247	11828	Visual Cortex Disorder Due To Vascular Disorder
2248	11829	Degenerative Myopia
2249	1183	Nephrotic Syndrome With Lesion Of Membranoproliferative Glomerulonephritis
2250	11830	Myopia
2251	11831	Cortical Blindness
2252	11832	Visual Epilepsy
2253	11836	Clubfoot
2254	11837	Malignant Neoplasm Of Scapula And Long Bones Of Upper Limb
2255	11838	Penis Sarcoma
2256	11839	Glans Penis Cancer
2257	1184	Nephrotic Syndrome
2258	11840	Coronary Artery Vasospasm
2259	11843	Coronary Artery Anomaly
2260	11847	Coronary Thrombosis
2261	11849	Degenerative Changes Of Ciliary Body
2262	11850	Transient Refractive Change
2263	11851	Indeterminate Leprosy
2264	11852	Aortic Valve Syphilitic Endocarditis
2265	11853	Monocular Exotropia
2266	11854	Monocular Exotropia With A Pattern
2267	11855	Intermittent Monocular Exotropia
2268	11856	Monocular Exotropia With V Pattern
2269	11861	Prolonged Pregnancy
2270	11862	Late Pregnancy
2271	11864	Peripheral Focal Chorioretinitis
2272	11868	Chronic Erythremia
2273	1187	Tibial Neuropathy
2274	11870	Pick's Disease
2275	11871	Macular Keratitis
2276	11872	Staphylococcus Aureus Septicemia
2277	11873	Staphylococcal Septicemia
2278	11874	Abnormal Threshold Of Rods
2279	11875	Denture Stomatitis
2280	1188	Mononeuropathy
2281	11885	Ureteral Benign Neoplasm
2282	11887	Ureter Leiomyoma
2283	11888	Schwannoma Of Ureter
2284	11889	Female Breast Nipple And Areola Cancer
2285	11892	Amoebozoa Infectious Disease
2286	11893	Cutaneous Amebiasis
2287	11896	Acanthamoeba Keratitis
2288	11897	Blastocystis Hominis Infectious Disease
2289	119	Vaginal Cancer
2290	11902	Cerebral Amebiasis
2291	11905	Labium Majus Cancer
2292	11907	Ecthyma
2293	11914	Gastroparesis
2294	11917	Tinea Cruris
2295	1192	Peripheral Nervous System Neoplasm
2296	11920	Tracheal Cancer
2297	11934	Head And Neck Cancer
2298	11939	Schizo-affective Type Schizophrenia Subchronic State
2299	11943	Trichomonas Vaginitis
2300	11944	Trichomonas Prostatitis
2301	11945	Trichomonas Cystitis
2302	11946	Habitual Abortion
2303	11947	Recurrent Major Depression In Complete Remission
2304	11949	Creutzfeldt-Jakob Disease
2305	1195	Ischemic Neuropathy
2306	11950	Congenital Cardiovascular Disorder Complicating Pregnancy, Childbirth, Or The Puerperium
2307	11952	Congenital Cardiovascular Disorder Of Mother, With Delivery
2308	11954	Psychosexual Dysfunction With Inhibited Sexual Excitement
2309	11955	Malnutrition Of Moderate Degree
2310	11963	Esophagitis
2311	11964	Histoplasma Capsulatum Retinitis
2312	11968	Postmenopausal Atrophic Vaginitis
2313	11970	Symptomatic Menopausal Or Female Climacteric State
2314	11971	Synostosis
2315	11975	Coloboma Of Optic Nerve
2316	11976	Botulism
2317	11977	Disorder Of Magnesium Metabolism
2318	11978	Chronic Pyelonephritis Without Lesion Of Renal Medullary Necrosis
2319	11981	Morbid Obesity
2320	11983	Prader-Willi Syndrome
2321	11984	Hypertrophic Cardiomyopathy
2322	11987	Anorectal Gonorrhea
2323	11988	Conjunctival Concretion
2324	11990	Ulceroglandular Tularemia
2325	11991	Osteopoikilosis
2326	11994	Atrophy Of Testis
2327	11996	Spermatic Cord Torsion
2328	11997	Spermatocele
2329	120	Female Reproductive Organ Cancer
2330	12000	Secondary Malignant Neoplasm Of Trachea
2331	12001	Tracheal Lymphoma
2332	12002	Trachea Sarcoma
2333	12003	Trachea Squamous Cell Carcinoma
2334	1201	Trigeminal Nerve Neoplasm
2335	12010	Anterior Ischemic Optic Neuropathy
2336	12016	Frontal Lobe Neoplasm
2337	12017	Group B Streptococcal Pneumonia
2338	12019	Group A Streptococcal Pneumonia
2339	12020	Malignant Neoplasm Of Corpus Uteri, Except Isthmus
2340	12021	Leukemic Reticuloendotheliosis Of Intrathoracic Lymph Nodes
2341	12022	Spontaneous Abortion Complicated By Genital Tract And Pelvic Infectious Disease
2342	12028	Conn's Syndrome
2343	12029	Sympathetic Ophthalmia
2344	1203	Drug-induced Mental Disorder
2345	12030	Panuveitis
2346	1204	Arthropathy Due To Hypersensitivity Reaction
2347	12040	Immune Hydrops Fetalis
2348	12043	Kernicterus Due To Isoimmunization
2349	1205	Hypersensitivity Reaction Type I Disease
2350	12052	Cryptococcal Meningitis
2351	12053	Cryptococcosis
2352	12054	Trypanosoma Meningitis
2353	12055	Sarcoid Meningitis
2354	12056	Meningitis With Clear Cerebrospinal Fluid
2355	12058	Fetal-maternal Hemorrhage Affecting Management Of Mother
2356	1206	Rett Syndrome
2357	12061	Fetal Blood Loss
2358	12064	Mediastinum Neurofibroma
2359	12065	Ganglioneuroma Of The Mediastinum
2360	12070	Dieulafoy Lesion
2361	12072	Pylorospasm
2362	12076	Interstitial Emphysema And Related Conditions Of Newborn
2363	12084	Transient Arthropathy
2364	12087	Deep Corneal Vascularisation
2365	1209	Nutritional Optic Neuropathy
2366	12091	Vitamin A Deficiency With Corneal Xerosis
2367	12092	Galactorrhea Associated With Childbirth
2368	12096	Sodoku Disease
2369	12097	Rat-bite Fever
2370	12098	Trigeminal Neuralgia
2371	121	Vaginal Disease
2372	1210	Optic Neuritis
2373	12104	Vitamin A Deficiency With Corneal Xerosis And Ulcer
2374	12105	Inflammatory Spondylopathy
2375	12106	Tricuspid Valve Syphilitic Endocarditis
2376	12107	Primary Retinal Cyst
2377	12108	Bullous Retinoschisis
2378	12111	Vitamin A Deficiency With Xerophthalmic Corneal Scar
2379	12113	Nerve Deafness
2380	12115	Streptococcal Pharyngitis
2381	12117	Pulmonary Alveolar Microlithiasis
2382	12118	Pulmonary Hemosiderosis
2383	12119	Hemosiderosis
2384	12120	Pulmonary Alveolar Proteinosis
2385	12121	Secondary Syphilitic Periostitis
2386	12123	Postinflammatory Pulmonary Fibrosis
2387	12124	Episcleritis Periodica Fugax
2388	12125	Neurotrophic Keratoconjunctivitis
2389	12128	Pica Disease
2390	12129	Bulimia Nervosa
2391	1213	Tympanosclerosis Of Tympanic Membrane And Ossicles
2392	12132	Wegener's Granulomatosis
2393	12133	Yersinia Enterocolitica Intestinal Infectious Disease
2394	12134	Factor VIII Deficiency
2395	12135	Acquired Factor VIII Deficiency
2396	12136	Acquired Coagulation Factor Deficiency
2397	12139	Dysthymic Disorder
2398	1214	Tympanosclerosis
2399	12140	Chagas Disease
2400	12141	Adenovirus Meningitis
2401	12143	Neurogenic Bladder
2402	12144	Low Compliance Bladder
2403	12145	Detrusor Sphincter Dyssynergia
2404	12148	Alveolar Echinococcosis
2405	1215	Tympanosclerosis Of Tympanic Membrane Only
2406	12150	Calculus Of Gallbladder With Acute Cholecystitis, With Obstruction
2407	12151	Currently Pregnant Habitual Aborter
2408	12155	Lymphocytic Choriomeningitis
2409	12156	Arachnoiditis
2410	12157	Aseptic Meningitis
2411	12161	Peripheral Retinal Degeneration
2412	12162	Pseudoretinitis Pigmentosa
2413	12163	Senile Reticular Retinal Degeneration
2414	12164	Blessig's Cysts
2415	12165	Retinal Lattice Degeneration
2416	12166	Cobblestone Retinal Degeneration
2417	12167	Secondary Vitreoretinal Degeneration
2418	12168	Ulnar Nerve Lesion
2419	12169	Carpal Tunnel Syndrome
2420	1217	Fascioloidiasis
2421	12170	Radial Nerve Lesion
2422	12171	Radial Neuropathy
2423	12175	Dyshormonogenic Goiter
2424	12176	Goiter
2425	12177	Common Variable Immunodeficiency
2426	12179	Tinea Corporis
2427	1218	Echinostomiasis
2428	12180	Fetal Macrosomia
2429	12185	Otosclerosis
2430	12189	Metastatic Tumor To The Colon
2431	1219	Dicrocoeliasis
2432	12190	Descending Colon Cancer
2433	12191	Splenic Flexure Cancer
2434	12192	Sigmoid Colon Cancer
2435	12196	Superficial Keratitis
2436	12197	Punctate Epithelial Keratoconjunctivitis
2437	122	Abdominal Cancer
2438	12204	Catatonic Schizophrenia In Remission
2439	12205	Dengue Disease
2440	12206	Dengue Hemorrhagic Fever
2441	1221	Infiltrative Lung Tuberculosis
2442	12210	Wuchereria Bancrofti Filariasis
2443	12211	Filarial Elephantiasis
2444	12215	Oligohydramnios
2445	12217	Lewy Body Dementia
2446	1222	Cartilage Disease
2447	12221	Synovial, Tendon Or Bursa Disorder
2448	12223	Specific Bursitis Often Of Occupational Origin
2449	12224	Calcium Deposits In Tendon And Bursa
2450	12225	Plica Syndrome
2451	12226	Hearing Disease
2452	12228	Secondary Malignant Neoplasm Of Large Intestine And Rectum
2453	12234	Cascade Stomach
2454	12236	Primary Biliary Cirrhosis
2455	12237	Bile Reflux
2456	12239	Anal Margin Squamous Cell Carcinoma
2457	12241	Beta Thalassemia
2458	12245	Histoplasmosis Endocarditis
2459	12246	Histoplasmosis Meningitis
2460	12251	Hypoaldosteronism
2461	12252	Cushing's Syndrome
2462	12253	Testicular Lymphoma
2463	12254	Metastatic Tumor To The Testis
2464	12255	Congenital Adrenal Hyperplasia
2465	12256	Adrenogenital Disease
2466	12257	Medulloadrenal Hyperfunction
2467	12258	Acquired Factor IX Deficiency
2468	12259	Hemophilia B
2469	12265	Chronic Salpingo-oophoritis
2470	12268	Eclampsia With Delivery
2471	12269	Toxemia With Convulsions Complicating Pregnancy, Childbirth Or The Puerperium
2472	1227	Neutropenia
2473	12270	Coloboma
2474	12271	Aniridia
2475	12273	Anisometropia
2476	12274	Anisometropia And Aniseikonia
2477	12275	Cutaneous Diphtheria
2478	12276	Malignant Tumor Of Undescended Testis
2479	1228	Paranoid Type Schizophrenia In Remission
2480	12282	Femoral Vein Thrombophlebitis
2481	12284	Maternal Pyrexia In Labor
2482	12286	Testicular Leukemia
2483	12287	Crimean-Congo Hemorrhagic Fever
2484	1229	Paranoid Schizophrenia
2485	12292	Recurrent Malignant Endocervical Neoplasm
2486	12294	Atypical Depressive Disorder
2487	12297	Vogt-Koyanagi-Harada Disease
2488	12298	Intrahepatic Gall Duct Cancer
2489	12301	Speckled Lentiginous Nevus
2490	12302	Diphtheritic Membranous Angina
2491	12304	Conjunctival Pigmentation
2492	12305	Bloch-Sulzberger Syndrome
2493	12306	Vitiligo
2494	12307	Anterior Corneal Pigmentation
2495	12308	Dubin-Johnson Syndrome
2496	12309	Urticaria Pigmentosa
2497	1231	Chronic Schizophrenia
2498	12311	Stromal Corneal Pigmentation
2499	12318	Corneal Granular Dystrophy
2500	1232	Paranoid Type Schizophrenia Subchronic State With Acute Exacerbation
2501	12323	Cough Variant Asthma
2502	12324	Transsexuality With Homosexual History
2503	12325	Kyphoscoliotic Heart Disease
2504	12326	Chronic Pulmonary Heart Disease
2505	12328	Marasmus
2506	1233	Transvestism
2507	12332	Hematocele Of Tunica Vaginalis Testis
2508	12333	Male Genital Organ Stricture
2509	12335	Male Genital Organ Vascular Disease
2510	12336	Male Infertility
2511	12337	Varicocele
2512	12338	Redundant Prepuce And Phimosis
2513	12339	Retroperitoneal Lymphoma
2514	1234	Gender Identity Disorder
2515	12341	Retroperitoneal Sarcoma
2516	12342	Retroperitoneum Carcinoma
2517	12346	Hyperkinetic Heart Syndrome
2518	12347	Osteogenesis Imperfecta
2519	12349	Primary Eye Hypotony
2520	1235	Fetishism
2521	12351	Alcoholic Hepatitis
2522	12355	Prostatocystitis
2523	12356	Bacterial Prostatitis
2524	12357	Viral Labyrinthitis
2525	12358	Patulous Eustachian Tube
2526	12359	Endocrine Exophthalmos
2527	12360	Lateral Displacement Of Eye
2528	12361	Graves' Disease
2529	12362	Thyrotoxic Exophthalmos
2530	12363	Intermittent Proptosis
2531	12364	Pulsating Exophthalmos
2532	12365	Malaria
2533	12369	Prolapse Of Urethra
2534	1237	Corneal Degeneration
2535	12375	Bronchopneumonia
2536	12376	Juvenile Spinal Muscular Atrophy
2537	12377	Spinal Muscular Atrophy
2538	12378	Predominant Psychomotor Disturbance
2539	12379	Mixed Disorder As Reaction To Stress
2540	1238	Acute Erythremia And Erythroleukemia In Remission
2541	12380	Predominant Disturbance Of Consciousness
2542	12382	Complex Partial Epilepsy
2543	12384	Dysentery
2544	12385	Shigellosis
2545	12386	Balantidiasis
2546	12387	Nephrogenic Diabetes Insipidus
2547	12388	Neurohypophyseal Diabetes Insipidus
2548	1239	Acute Erythremia And Erythroleukemia
2549	12392	Leukemic Reticuloendotheliosis Involving Lymph Nodes Of Head, Face And Neck
2550	12395	Spastic Entropion
2551	12396	Entropion And Trichiasis Of Eyelid
2552	12397	Entropion
2553	12399	Pathological Gambling
2554	1240	Leukemia
2555	12400	Kleptomania
2556	12401	Intermittent Explosive Disorder
2557	12402	Pyromania
2558	12403	Tinea Pedis
2559	12404	Tinea
2560	1241	Luxation Of Globe
2561	12417	Psychogenic Dysmenorrhea
2562	1242	Globe Disease
2563	12424	Thyrocalcitonin Secretion Disease
2564	1243	Labia Minora Cancer
2565	12445	Conjugate Gaze Palsy
2566	12448	Hematologic Pregnancy Complication
2567	12449	Aplastic Anemia
2568	1245	Vulva Cancer
2569	12450	Pancytopenia
2570	12451	Sulfhemoglobinemia
2571	12465	Secondary Hyperparathyroidism Of Renal Origin
2572	12466	Secondary Hyperparathyroidism
2573	1247	Blood Coagulation Disease
2574	12474	Capillariasis
2575	12475	Pes Anserinus Tendinitis Or Bursitis
2576	1248	Ocular Hyperemia
2577	1249	Conjunctival Vascular Disorder And Cysts
2578	12491	Vagus Nerve Disease
2579	125	Vagina Leiomyoma
2580	12506	Bell's Palsy
2581	12508	Simple Type Schizophrenia Chronic State With Acute Exacerbation
2582	1251	Tuberculous Epididymitis
2583	12510	Retinal Ischemia
2584	12514	Retinal Perforation
2585	1252	Trichuriasis
2586	12522	Bagassosis
2587	12524	Plantar Nerve Lesion
2588	12525	Lateral Cutaneous Femoral Nerve Of Thigh Compression Or Syndrome
2589	12526	Tarsal Tunnel Syndrome
2590	12527	Common Peroneal Nerve Lesion
2591	12528	Lesion Of Sciatic Nerve
2592	12529	Tibial Nerve Palsy
2593	1253	Enoplea Infectious Disease
2594	12531	Von Willebrand's Disease
2595	12537	Hypermobility Of Coccyx
2596	12538	Chlamydia Trachomatis Pharyngitis
2597	12539	Chlamydia Trachomatis Proctitis
2598	1254	Trichostrongylosis
2599	12541	Catatonic Type Schizophrenia Subchronic State
2600	12542	Catatonic Type Schizophrenia Subchronic State With Acute Exacerbation
2601	12543	Catatonic Type Schizophrenia Chronic State With Acute Exacerbation
2602	12546	Atrophic Nonflaccid Tympanic Membrane
2603	12549	Hepatitis A
2604	1255	Trichostrongyloidiasis
2605	12550	Hepatic Coma
2606	12551	Escherichia Coli Septicemia
2607	12554	Hemolytic-uremic Syndrome
2608	12555	Acute Renal Failure With Lesion Of Renal Cortical Necrosis
2609	12556	Acute Kidney Tubular Necrosis
2610	12557	Duane Retraction Syndrome
2611	12558	Chronic Progressive External Ophthalmoplegia
2612	12559	Idiopathic Juvenile Osteoporosis
2613	12566	Ulceration Of Vulva
2614	12568	Dyscalculia
2615	12569	Chagas Cardiomyopathy
2616	1257	Transient Hypertension Of Pregnancy
2617	12570	Phacolytic Glaucoma
2618	12571	Phacogenic Glaucoma
2619	12573	Neonatal Thyrotoxicosis
2620	12574	Posterior Uveitis
2621	12577	Urethral Obstruction
2622	12580	Cri-Du-Chat Syndrome
2623	12581	Olecranon Bursitis
2624	12582	Enthesopathy Of Elbow
2625	12583	Velocardiofacial Syndrome
2626	12584	Diabetes Mellitus Of Mother, With Delivery
2627	12594	Potter's Syndrome
2628	1260	Parametritis
2629	12603	Acute Leukemia
2630	12604	Secondary Malignant Neoplasm Of Suprarenal Gland
2631	12605	Metastasis To Adrenals
2632	12608	Staphylococcal Pneumonia
2633	1261	AIDS-related Pelvic Inflammatory Disease
2634	12610	Adrenal Hemorrhage Of Fetus Or Newborn
2635	12612	Gastrointestinal Hemorrhage Of Fetus Or Newborn
2636	12633	Cervicofacial Actinomycosis
2637	12634	Cerebral Actinomycosis
2638	12637	Perineocele
2639	12638	Hypertrophic Pyloric Stenosis
2640	12639	Pyloric Stenosis
2641	12641	Displacement Of Cardia Through Esophageal Hiatus
2642	12642	Hiatus Hernia
2643	12647	Congenital Or Acquired Abnormality Of Vulva, With Delivery
2644	1265	Genitourinary Cancer
2645	12651	Disorder Of Optic Chiasm Associated With Inflammatory Disorder
2646	12657	Vestibulocochlear Nerve Disease
2647	12661	Tooth Ankylosis
2648	12662	Paracoccidioidomycosis
2649	12663	Blastomycosis
2650	12667	Binocular Vision Disease
2651	12668	Abnormal Retinal Correspondence
2652	12670	Fusion With Defective Stereopsis
2653	12678	Hypercalcemia
2654	12679	Nephrocalcinosis
2655	12680	Pseudobulbar Palsy
2656	12683	Vestibular Neuronitis
2657	12685	Mixed Receptive-expressive Language Disorder
2658	12689	Acoustic Neuroma
2659	1269	Thyroid Gland Tuberculosis
2660	12694	Hyperemesis Gravidarum With Metabolic Disturbance
2661	12697	Locked-in Syndrome
2662	12698	Gynecomastia
2663	127	Leiomyoma
2664	1270	Hereditary Hemorrhagic Telangiectasia
2665	12700	Hyperprolactinemia
2666	12702	Rotator Cuff Shoulder Syndrome And Allied Disorder
2667	12704	Ataxia Telangiectasia
2668	12705	Friedreich Ataxia
2669	12707	Myoclonic Cerebellar Dyssynergia
2670	1271	Capillary Disease
2671	12710	Histoplasma Duboisii Pneumonia
2672	12711	Black Piedra
2673	12712	Nephronophthisis
2674	12713	Medullary Sponge Kidney
2675	12714	Ellis-Van Creveld Syndrome
2676	12715	Infectious Myositis
2677	12716	Newborn Respiratory Distress Syndrome
2678	12718	Chronic Gonococcal Salpingitis
2679	1272	Telangiectasis
2680	12720	Cerebral Atherosclerosis
2681	12721	Multiple Epiphyseal Dysplasia
2682	12722	Liver Metastasis
2683	12723	Lung Carcinoma Metastatic To The Liver
2684	12724	Breast Arcinoma Metastatic To The Liver
2685	12727	Retroverted Incarcerated Gravid Uterus
2686	1273	Respiratory Syncytial Virus Infectious Disease
2687	12731	Pars Planitis
2688	12732	Intermediate Uveitis
2689	12733	Hypercementosis
2690	12735	Hernia Of Ovary And Fallopian Tube
2691	12739	Bronchial Tuberculosis
2692	1275	Pneumovirus Infectious Disease
2693	12750	Cyclosporiasis
2694	12753	Corneal Staphyloma
2695	12756	Lacrimal Duct Cancer
2696	12758	Malignant Neoplasm Of Eyeball, Except Conjunctiva, Cornea, Retina And Choroid
2697	12759	Choroid Cancer
2698	12763	Classic Kaposi's Sarcoma
2699	12765	Peritonsillar Abscess
2700	12773	Endemic African Kaposi's Sarcoma
2701	12779	Recurrent Kaposi's Sarcoma
2702	1278	Tolosa-hunt Syndrome
2703	12782	Cicatricial Ectropion
2704	12783	Migraine Without Aura
2705	12784	Diabetes Mellitus Insulin Dependent Type, Not Stated As Uncontrolled, With Neurological Manifestations
2706	12785	Diabetic Polyneuropathy
2707	1279	Ocular Motility Disease
2708	12796	Posterior Synechiae
2709	12797	Hallucinogen Abuse
2710	12798	Mucopolysaccharidosis
2711	12799	Mucopolysaccharidosis II
2712	128	Vaginal Soft Tissue Tumor
2713	12800	Mucopolysaccharidosis VI
2714	12801	Mucopolysaccharidosis III
2715	12802	Mucopolysaccharidosis I
2716	12803	Sly Syndrome
2717	12804	Mucopolysaccharidosis IV
2718	12809	Chronic Lacrimal Gland Enlargement
2719	12819	Clostridium Difficile Intestinal Infectious Disease
2720	1283	Enterocele
2721	12835	Quadriplegia
2722	12836	Senile Entropion
2723	12837	Thyroid Crisis
2724	12838	Secondary Thyroid Hyperplasia
2725	12839	Thyrotoxicosis From Ectopic Thyroid Nodule
2726	1284	Prolapse Of Female Genital Organ
2727	12840	Ancylostoma Ceylanicum Ancylostomiasis
2728	12841	Ancylostomiasis
2729	12842	Guillain-Barre Syndrome
2730	12843	Polyneuritis
2731	12849	Autistic Disorder
2732	1285	Rectal Disease
2733	12852	Adhesions Of Drum Head To Incus
2734	12853	Adhesions Of Drum Head To Promontorium
2735	12854	Adhesions Of Drum Head To Stapes
2736	12857	Achilles Bursitis
2737	12858	Huntington's Disease
2738	12859	Choreatic Disease
2739	12860	Non-neoplastic Nevus Of Skin
2740	12863	Senile Nevus
2741	12864	Acrosyringeal Nevus
2742	1287	Cardiovascular System Disease
2743	12879	Pars Plana Exudative Cyst
2744	12881	Idiopathic Urticaria
2745	12883	Hypochondriasis
2746	12888	Chlamydophila Psittaci Pneumonia
2747	12889	Miller Fisher Syndrome
2748	1289	Neurodegenerative Disease
2749	12894	Sjogren's Syndrome
2750	12895	Keratoconjunctivitis Sicca
2751	12897	Submandibular Gland Disease
2752	12899	Benign Lymphoepithelial Lesion Of Salivary Gland
2753	12900	Mikulicz Disease
2754	12901	Necrotizing Sialometaplasia
2755	12904	Mucocele Of Salivary Gland
2756	12905	Sialolithiasis
2757	12910	Sickle-cell/Hb-C Disease With Crisis
2758	12918	Thromboangiitis Obliterans
2759	12919	Plasmodium Ovale Malaria
2760	12921	Childhood Schizophrenia
2761	12922	Acute Undifferentiated Schizophrenia
2762	12923	Chronic Undifferentiated Schizophrenia
2763	12926	Hypodermyiasis
2764	12927	Screw Worm Infectious Disease
2765	12928	Nutritional Cardiomyopathy
2766	12929	Endocardial Fibroelastosis
2767	1293	Labia Minora Carcinoma
2768	12930	Dilated Cardiomyopathy
2769	12932	Endomyocardial Fibrosis
2770	12934	Kearns-Sayre Syndrome
2771	12935	Alcoholic Cardiomyopathy
2772	12936	Secondary Cardiomyopathy
2773	1294	Vulva Carcinoma
2774	12958	Paralytic Lagophthalmos
2775	12959	Lagophthalmos
2776	12960	Acrocephalosyndactylia
2777	12961	Poland Syndrome
2778	12965	Subleukemic Leukemia
2779	12969	Central Nervous System Leukemia
2780	12971	Hereditary Spherocytosis
2781	12972	Intrapelvic Lymph Node Leukemic Reticuloendotheliosis
2782	12973	Secondary Malignant Neoplasm Of Intrapelvic Lymph Node
2783	12978	Plasmodium Vivax Malaria
2784	12983	Transient Disorder Of Initiating Or Maintaining Sleep
2785	12984	Vagus Nerve Neoplasm
2786	12985	Functional Disorder Of Polymorphonuclear Neutrophils
2787	12986	Leukostasis
2788	12987	Agranulocytosis
2789	12995	Conduct Disorder
2790	12996	Acute Dacryocystitis
2791	12997	Phlegmonous Dacryocystitis
2792	130	Female Genitalia Nevus
2793	13001	Carotid Stenosis
2794	13002	Subclavian Steal Syndrome
2795	13003	Vertebrobasilar Insufficiency
2796	13005	Intra-abdominal Lymph Node Mast Cell Malignancy
2797	1301	RNA Virus Infectious Disease
2798	13014	Shipyard Eye
2799	13019	Cryptococcal Gastroenteritis
2800	13020	Pulmonary Cryptococcosis
2801	13021	AIDS-related Cryptococcosis
2802	13023	Sickle Cell Trait
2803	13025	Retinopathy Of Prematurity
2804	13026	Lobomycosis
2805	13027	Transient Global Amnesia
2806	13031	Balanoposthitis
2807	13032	Trichomonas Balanoposthitis
2808	13033	Balanitis
2809	13034	Relapsing Fever
2810	13035	Louse-borne Relapsing Fever
2811	13036	Tick-borne Relapsing Fever
2812	13037	Mechanical Lagophthalmos
2813	13038	Cicatricial Lagophthalmos
2814	13040	Syphilitic Optic Atrophy
2815	13042	Persistent Fetal Circulation Syndrome
2816	13046	Acute Sphenoidal Sinusitis
2817	13047	Ancylostoma Braziliense Ancylostomiasis
2818	13049	Ancylostoma Duodenale Ancylostomiasis
2819	1305	AIDS Dementia Complex
2820	13050	Corpus Luteum Cyst
2821	1306	HIV Encephalopathy
2822	13060	Traumatic Glaucoma
2823	13063	Moderate Recurrent Major Depression
2824	13068	Renal Osteodystrophy
2825	1307	Dementia
2826	13072	Acquired Hyperkeratosis
2827	13074	Tinea Unguium
2828	13076	Abdominal Actinomycosis
2829	13077	Cutaneous Actinomycosis
2830	13078	Eumycotic Mycetoma
2831	1308	AIDS Related Complex
2832	13080	Jaccoud's Syndrome
2833	13081	Hemangioma Of Subcutaneous Tissue
2834	13087	Lown-Ganong-Levine Syndrome
2835	13088	Periventricular Leukomalacia
2836	13089	Intracranial Arterial Disease
2837	13094	Branch Retinal Artery Occlusion
2838	13095	Vertebral Artery Insufficiency
2839	13096	Sneddon Syndrome
2840	13097	Intracranial Arteriosclerosis
2841	13098	Central Retinal Artery Occlusion
2842	13099	Moyamoya Disease
2843	13100	Intracranial Vasospasm
2844	13109	Bladder Leiomyoma
2845	1311	HIV-associated Nephropathy
2846	13110	Bladder Squamous Papilloma
2847	13112	Mechanical Entropion
2848	13113	Cicatricial Entropion
2849	13117	Paronychia
2850	1312	Focal Segmental Glomerulosclerosis
2851	13120	Protein-deficiency Anemia
2852	13121	Deficiency Anemia
2853	13127	Gonococcal Spondylitis
2854	13129	Severe Pre-eclampsia
2855	1313	HIV Wasting Syndrome
2856	13133	HELLP Syndrome
2857	13134	Hordeolum Externum
2858	13135	Exophthalmic Ophthalmoplegia
2859	13137	Werdnig-Hoffmann Disease
2860	13138	Acute Proliferative Glomerulonephritis
2861	13139	Crescentic Glomerulonephritis
2862	1314	Wasting Syndrome
2863	13140	Suppurative Uveitis
2864	13141	Uveitis
2865	13143	Benign Secondary Hypertension
2866	13145	Benign Renovascular Hypertension
2867	13146	Esophageal Candidiasis
2868	13147	Fungal Esophagitis
2869	13148	Acute Cystitis
2870	13149	Tuberculous Lung Fibrosis
2871	13157	Sensory Disorder Of Eyelid
2872	13159	Scrotum Squamous Cell Carcinoma
2873	13160	Scrotum Melanoma
2874	13164	Bordetella Pertussis Pneumonia
2875	13165	Aspergillus Pneumonia
2876	13166	Allergic Bronchopulmonary Aspergillosis
2877	13168	Prepuce Cancer
2878	13169	Spermatic Cord Cancer
2879	13174	Dissociated Nystagmus
2880	13175	Female Genital Tuberculosis
2881	13177	Chronic Erythremia In Remission
2882	13185	Esophageal Diverticulosis
2883	13186	Megaesophagus
2884	13189	Gout
2885	1319	Brain Cancer
2886	13192	Pulmonary Congestion And Hypostasis
2887	13194	Non-toxic Nodular Goiter
2888	13195	Nontoxic Goiter
2889	13196	Lingual Goiter
2890	13197	Nodular Goiter
2891	13198	Endemic Goiter
2892	13200	Substernal Goiter
2893	13202	Secondary Syphilitic Iridocyclitis
2894	13206	Nodular Prostate
2895	13207	Proliferative Diabetic Retinopathy
2896	13208	Background Diabetic Retinopathy
2897	13209	Right Bundle Branch Block
2898	13211	Secondary Malignant Neoplasm Of Brain And Spinal Cord
2899	13212	Metastasis To Skin
2900	13213	Metastatic Cancer To The Breast
2901	13214	Hole Retinal Cyst
2902	13219	Transsexuality With Heterosexual History
2903	13222	Submucous Uterine Fibroid
2904	13223	Uterine Fibroid
2905	13224	Introverted Personality
2906	13226	Oculoglandular Tularemia
2907	13227	Retinal Dystrophies Primarily Involving Bruch's Membrane
2908	1323	Malignant Neoplasm Of Trachea, Bronchus And Lung
2909	13232	Diffuse Cholesteatosis Of Middle Ear And Mastoid
2910	13238	Haverhill Fever
2911	13239	Internal Pathological Resorption
2912	1324	Lung Cancer
2913	13240	Tooth Resorption
2914	13241	Behcet's Disease
2915	13248	Mucocele Of Appendix
2916	13249	Pneumatosis Cystoides Intestinalis
2917	1325	Bronchus Cancer
2918	13250	Diarrhea
2919	13251	HIV Enteropathy
2920	13252	Mesenteric Vascular Occlusion
2921	13253	Jejunal Disease
2922	13254	Diverticulitis Of Colon
2923	13257	Histoplasma Duboisii Endocarditis
2924	13258	Typhoid Fever
2925	13262	Hallucinatory State Induced By Drug
2926	13268	Porphyria
2927	13269	Hereditary Coproporphyria
2928	13270	Erythropoietic Protoporphyria
2929	13271	Cutaneous Porphyria
2930	13272	Klebsiella Pneumonia
2931	13273	Escherichia Coli Pneumonia
2932	13274	Enzootic Pneumonia Of Calves
2933	13275	Rickettsial Pneumonia
2934	13276	Mycoplasma Pneumoniae Pneumonia
2935	13277	Mycoplasma Hyopneumoniae Pneumonia
2936	13278	Salmonella Pneumonia
2937	1328	Rift Valley Fever
2938	13282	Intestinal Tuberculosis
2939	13285	Enteroinvasive Escherichia Coli Infectious Disease
2940	13295	Crater-like Holes Of Optic Disc
2941	133	Vaginal Mullerian Papilloma
2942	13300	Scheuermann's Disease
2943	13305	Anterior Nasal Diphtheria
2944	13306	Diphtheritic Cystitis
2945	13307	Pseudomembranous Diphtheritic Conjunctivitis
2946	13308	Diphtheritic Myocarditis
2947	13309	Nasopharyngeal Diphtheria
2948	13310	Diphtheritic Peritonitis
2949	13313	Pancreatic Mucinous Ductal Ectasia
2950	13315	Relapsing Pancreatitis
2951	13316	Exocrine Pancreatic Insufficiency
2952	13317	Hyperinsulinemic Hypoglycemia
2953	13319	Lower Limb Lymph Node Mast Cell Malignancy
2954	1332	Bunyaviridae Infectious Disease
2955	13326	Chronic Follicular Conjunctivitis
2956	13327	Anatomical Narrow Angle Borderline Glaucoma
2957	13328	Diabetic Cataract
2958	13329	Toxic Optic Neuropathy
2959	1333	African Horse Sickness
2960	13333	Hypertrophy Of Tongue Papillae
2961	13335	Toxoplasma Hepatitis
2962	13336	Congenital Toxoplasmosis
2963	13338	Toxoplasma Myocarditis
2964	1334	Reoviridae Infectious Disease
2965	13341	Parasitic Conjunctivitis
2966	13342	Toxoplasma Pneumonia
2967	13343	Ocular Toxoplasmosis
2968	13348	Laryngeal Cartilage Cancer
2969	1335	Bluetongue
2970	13350	Gender Identity Disorder In Children
2971	13351	Pedophilia
2972	13352	Ego-dystonic Sexual Orientation
2973	13353	Diffuse Interstitial Keratitis
2974	13356	Senile Ectropion
2975	13357	Chondromalacia Patellae
2976	13359	Ehlers-Danlos Syndrome
2977	1336	Nairobi Sheep Disease
2978	13361	Nephrotic Syndrome With Lesion Of Proliferative Glomerulonephritis
2979	13364	Chronobiology Disease
2980	13365	Reading Disorder
2981	13366	Stiff-Person Syndrome
2982	13368	Tinea Profunda
2983	13369	Tinea Manuum
2984	13371	Scrub Typhus
2985	13372	Alpha 1-antitrypsin Deficiency
2986	13374	Fibrodysplasia Ossificans Progressiva
2987	13375	Temporal Arteritis
2988	13376	Congenital Aortic Insufficiency
2989	13378	Kawasaki Disease
2990	1338	Congenital Dyserythropoietic Anemia
2991	13380	Acute Pyelonephritis With Lesion Of Renal Medullary Necrosis
2992	13381	Pernicious Anemia
2993	13382	Megaloblastic Anemia
2994	13386	Gastrointestinal Anthrax
2995	13387	Upper Limb Cancer
2996	13389	Labia Majora Carcinoma
2997	1339	Diamond-Blackfan Anemia
2998	13397	Atypical Manic Disorder
2999	13398	Open Angle With Borderline Glaucoma Findings
3000	13399	Color Blindness
3001	134	Vaginal Glandular Tumor
3002	1340	Pure Red-cell Aplasia
3003	13401	Angioid Streaks
3004	13402	Skin Sarcoidosis
3005	13403	Cerebral Sarcoidosis
3006	13404	Uveoparotid Fever
3007	13405	Cardiac Sarcoidosis
3008	13406	Pulmonary Sarcoidosis
3009	13407	Hypercalcemic Sarcoidosis
3010	13408	Metastasis To Pleura
3011	13409	Perforation Of Bile Duct
3012	1341	Congenital Anemia
3013	13413	Hepatic Encephalopathy
3014	13416	Diabetes Mellitus Insulin Dependent Type, Not Stated As Uncontrolled, With Peripheral Circulatory Disorder
3015	13417	Alexia
3016	13419	Neurogenic Bowel
3017	1342	Congenital Hypoplastic Anemia
3018	1343	Urethritis
3019	13431	Bejel
3020	13444	Glanders
3021	13446	Basilar Artery Occlusion
3022	13447	Corneal Argyrosis
3023	13448	Posterior Corneal Pigmentation
3024	13450	Coccidioidomycosis
3025	13452	Scleritis
3026	13453	Gonococcal Bursitis
3027	13454	Gonococcal Synovitis
3028	13459	Secondary Syphilitic Hepatitis
3029	13461	Urethral Intrinsic Sphincter Deficiency
3030	13468	Primary Genital Syphilis
3031	13469	Secondary Cutaneous Syphilis
3032	13470	Primary Anal Syphilis
3033	13471	Secondary Syphilitic Lymphadenitis
3034	13473	Central Pterygium
3035	13474	Progressive Peripheral Pterygium
3036	13476	Supraglottis Cancer
3037	13477	Balanitis Xerotica Obliterans
3038	13480	Paranoid Type Schizophrenia Chronic State With Acute Exacerbation
3039	13481	Thanatophoric Dysplasia
3040	13482	Proteus Syndrome
3041	13484	Disorganized Type Schizophrenia Chronic State
3042	13487	Childhood Disintegrative Disease
3043	13490	Active Cochleovestibular Meniere's Disease
3044	13491	Active Vestibular Meniere's Disease
3045	13492	Active Cochlear Meniere's Disease
3046	13498	Urethral Syndrome
3047	13499	Jejunal Cancer
3048	135	Benign Vaginal Carcinosarcoma
3049	1350	Paranasal Sinus Neoplasm
3050	13500	Hairy Tongue
3051	13501	Mobius Syndrome
3052	13507	Trigonitis
3053	13514	Venous Tributary Occlusion Of Retina
3054	13515	Tuberous Sclerosis
3055	13518	Stiffness Of Joint
3056	1352	Paranasal Sinus Disease
3057	13520	Neonatal Infective Mastitis
3058	13521	Tetanus Neonatorum
3059	13523	Loiasis
3060	13526	Candidal Endocarditis
3061	13527	Candidal Otitis Externa
3062	13528	Candidal Enteritis
3063	13533	Osteopetrosis
3064	13534	Purulent Labyrinthitis
3065	13535	Intrapelvic Lymph Node Mast Cell Malignancy
3066	13538	Cornea Squamous Cell Carcinoma
3067	13543	Hyperparathyroidism
3068	13544	Low Tension Glaucoma
3069	13548	Secondary Parkinson Disease
3070	13549	Interval Angle-closure Glaucoma
3071	1355	Paranasal Sinus Lymphoma
3072	13550	Angle-closure Glaucoma
3073	13554	Gonococcal Peritonitis
3074	13555	Pharyngeal Gonorrhea
3075	13556	Gonococcal Keratosis
3076	13558	Gonococcal Urethritis
3077	1356	Lymphoma By Site
3078	13560	Subserous Uterine Fibroid
3079	13561	Optic Disk Drusen
3080	13562	Glaucoma Associated With Pupillary Block
3081	13564	Aspergillosis
3082	13565	Neuroaspergillosis
3083	13566	Tibial Collateral Ligament Bursitis
3084	1357	Maxillary Sinus Cancer
3085	13573	Schizo-affective Type Schizophrenia Chronic State With Acute Exacerbation
3086	13574	Cortical Senile Cataract
3087	13575	Non-renal Secondary Hyperparathyroidism
3088	13576	Twin-to-twin Transfusion Syndrome
3089	13577	Ascorbic Acid Deficiency
3090	13579	Kwashiorkor
3091	1358	Maxillary Sinus Neoplasm
3092	13580	Cholestasis
3093	13581	Magnesium Deficiency
3094	13582	Potassium Deficiency
3095	13583	Fetal Nutrition Disorder
3096	13585	Alveolar Periostitis
3097	13589	Female Infertility Of Uterine Origin
3098	13593	Eclampsia
3099	136	Vaginal Carcinosarcoma
3100	1360	Frontal Sinus Cancer
3101	13601	Enteropathogenic Escherichia Coli Infectious Disease
3102	13602	Acute Schizophrenic Episode Subchronic State
3103	13603	Obstructive Jaundice
3104	13604	Acute Schizophrenic Episode Chronic State With Acute Exacerbation
3105	13605	Acute Schizophrenic Episode Chronic State
3106	13608	Biliary Atresia
3107	1361	Frontal Sinus Neoplasm
3108	13619	Extrahepatic Cholestasis
3109	1362	Paranasal Sinus Sarcoma
3110	13620	Patent Foramen Ovale
3111	13622	Campylobacteriosis
3112	13623	Staphylococcal Enterocolitis
3113	13626	Photokeratitis
3114	13628	Glucose-6-phosphate Dehydrogenase Deficiency
3115	13629	Dentine Erosion
3116	1363	Ethmoid Sinus Cancer
3117	13636	Fanconi's Anemia
3118	1364	Ethmoidal Sinus Neoplasm
3119	13641	Exfoliation Syndrome
3120	13643	Pneumococcal Septicemia
3121	13644	Streptococcal Septicemia
3122	13648	Paranoid State
3123	13649	Polyneuropathy In Collagen Vascular Disease
3124	13650	Joint Disorder
3125	13651	Eversion Of Lacrimal Punctum
3126	13653	Stenosis Of Lacrimal Punctum
3127	13654	Stenosis Of Lacrimal Passage
3128	13655	Acquired Tear Duct Stenosis
3129	13656	Gastrin Secretion Abnormality
3130	13658	Infective Urethral Stricture
3131	13662	Ulcer Of Anus And Rectum
3132	13663	Acute Suppurative Otitis Media With Tympanic Membrane Intact
3133	13664	Post-vaccinal Encephalitis
3134	13668	Meningococcal Encephalitis
3135	13670	Hypocalcemia And Hypomagnesemia Of Newborn
3136	13676	Posterior Scleritis
3137	13677	SAPHO Syndrome
3138	13679	Simple Type Schizophrenia Subchronic State
3139	13680	Simple Type Schizophrenia Subchronic State With Acute Exacerbation
3140	13681	Simple Type Schizophrenia In Remission
3141	13682	Simple Type Schizophrenia Chronic State
3142	13687	Chronic Duodenal Ileus
3143	13689	Prostate Calculus
3144	13690	Acute Gonococcal Cystitis
3145	13691	Dermoid Cyst Of Skin
3146	13693	Disorder Of Ureter
3147	13694	Unilateral Vesicoureteral Reflux With Reflux Nephropathy
3148	13695	Bilateral Vesicoureteral Reflux With Reflux Nephropathy
3149	13696	Vesicoureteral Reflux With Reflux Nephropathy
3150	137	Vagina Squamous Papilloma
3151	13702	Postpartum Benign Essential Hypertension
3152	13709	Premature Ejaculation
3153	1371	Uterine Corpus Adenomatoid Tumor
3154	13711	Dental Fluorosis
3155	13714	Anodontia
3156	13717	Mature Cataract
3157	13720	Schistosoma Mattheei Infectious Disease
3158	13722	Neuroschistosomiasis
3159	13723	Schistosoma Bovis Infectious Disease
3160	13724	Scurvy
3161	13725	Beriberi
3162	1373	Endometrial Stromal Nodule
3163	13730	Malignant Renovascular Hypertension
3164	13731	Malignant Secondary Hypertension
3165	13732	Panophthalmitis
3166	13734	AIDS-related Pneumocystis Jirovecii Pneumonia
3167	13736	Uterine Inflammatory Disease
3168	13738	Infarct Of Liver
3169	13739	Nutmeg Liver
3170	13742	Neurofibroma Of Spinal Cord
3171	13743	Spinal Cord Lipoma
3172	1375	Neonatal Urinary Tract Infectious Disease
3173	13753	Histoplasma Duboisii Meningitis
3174	13754	Histoplasma Capsulatum Meningitis
3175	13755	Histoplasma Duboisii Pericarditis
3176	13756	Epiphora Due To Insufficient Drainage
3177	13757	Excessive Tearing
3178	1376	Perinatal Infectious Disease
3179	13760	Pthirus Pubis Infestation
3180	13762	Bovine Trypanosomiasis
3181	13763	Dourine
3182	13767	Clonorchiasis
3183	13768	Opisthorchiasis
3184	13774	Addison's Disease
3185	13775	Plantar Wart
3186	13777	Epidermodysplasia Verruciformis
3187	13778	Chancroid
3188	1378	Uterine Corpus Mixed Epithelial And Mesenchymal Tumor
3189	13781	Hypermobility Syndrome
3190	13787	Localized Anterior Staphyloma
3191	13788	Equatorial Staphyloma
3192	13789	Staphyloma Posticum
3193	13790	Acute Tympanitis
3194	13791	Myringitis Bullosa Hemorrhagica
3195	13794	Anterior Scleritis
3196	13799	Female Breast Central Part Cancer
3197	138	Vaginal Squamous Tumor
3198	1380	Endometrial Cancer
3199	13800	Inclusion Conjunctivitis
3200	13801	Pharyngoconjunctival Fever
3201	13809	Familial Combined Hyperlipidemia
3202	1381	Fox Fordyce Disease
3203	13810	Familial Hypercholesterolemia
3204	13811	Chronic Subinvolution Of Uterus
3205	13812	Adhesions Of Uterus
3206	13814	Hypoglossal Nerve Disease
3207	13817	Single Episode Manic Disease Moderate Degree
3208	13818	Single Episode Manic Disorder Mild Degree
3209	13819	Lymphogranuloma Venereum
3210	1382	Miliaria
3211	13820	Congenital Pneumonia
3212	13822	Tetanic Cataract
3213	13823	Parasitic Eyelid Infestation
3214	13825	Squamous Blepharitis
3215	1383	Sweat Gland Disease
3216	13832	Patent Ductus Arteriosus
3217	13837	Convergence Excess Or Spasm
3218	13839	Extrapyramidal And Movement Disease
3219	1384	Chlamydia Trachomatis Urethritis
3220	13844	Suppressed Lactation - Delivered
3221	13845	Suppressed Lactation
3222	13850	Acquired Hallux Varus
3223	1386	Abetalipoproteinemia
3224	13861	Scleroperikeratitis
3225	13862	Acute Closed-angle Glaucoma
3226	13864	Trochlear Nerve Disease
3227	13865	Facial Neuralgia
3228	13866	Multiple Cranial Nerve Palsy
3229	13867	Focal Labyrinthitis
3230	13868	Hypoactive Sexual Desire Disorder
3231	13869	Psychosexual Dysfunction With Male Orgasmic Disease
3232	1387	Hypolipoproteinemia
3233	1388	Tangier Disease
3234	13884	Sick Sinus Syndrome
3235	13887	Residual Chronic Schizophrenia
3236	1389	Polyneuropathy
3237	13891	Bird Fancier's Lung
3238	139	Squamous Cell Papilloma
3239	1390	Hypobetalipoproteinemia
3240	13902	White Piedra
3241	13906	Malignant Pleural Effusion
3242	13909	Red-green Color Blindness
3243	1391	Norum Disease
3244	13910	Red Color Blindness
3245	13911	Achromatopsia
3246	13912	Acquired Color Blindness
3247	13913	Lumbosacral Plexus Lesion
3248	13918	Somatization Disorder
3249	13919	Irregular Astigmatism
3250	1392	Pseudopapilledema
3251	13921	Bacterial Esophagitis
3252	13922	Eosinophilic Esophagitis
3253	13923	Acute Psychogenic Paranoid Psychosis
3254	13924	Necrotizing Ulcerative Gingivitis
3255	13929	Lacrimal Duct Obstruction
3256	1393	Visual Pathway Disease
3257	13934	Facial Paralysis
3258	13938	Amenorrhea
3259	1394	Urinary Schistosomiasis
3260	13941	Benign Paroxysmal Positional Nystagmus
3261	13942	Acute Gonococcal Salpingitis
3262	13943	Acute Gonococcal Prostatitis
3263	13945	Cadasil
3264	13948	Bladder Neck Obstruction
3265	13949	Interstitial Cystitis
3266	1395	Schistosomiasis
3267	13951	Uterine Corpus Epithelioid Leiomyoma
3268	13953	Uterine Corpus Dissecting Leiomyoma
3269	13954	Mitotically Active Variant Uterine Corpus Leiomyoma
3270	13955	Uterus Interstitial Leiomyoma
3271	13956	Uterine Corpus Myxoid Leiomyoma
3272	13957	Uterine Corpus Lipoleiomyoma
3273	13958	Uterine Corpus Bizarre Leiomyoma
3274	13962	Peripheral Focal Retinitis And Retinochoroiditis
3275	13963	Nuclear Senile Cataract
3276	13964	Morgagni Cataract
3277	13969	Schizo-affective Type Schizophrenia Subchronic State With Acute Exacerbation
3278	1397	Chronic Orbital Inflammation
3279	13970	Schizo-affective Type Schizophrenia Chronic State
3280	13972	Female Breast Lower-outer Quadrant Cancer
3281	13975	Metastatic Tumor To The Brain Stem
3282	13976	Peptic Esophagitis
3283	13979	Primary Pulmonary Coccidioidomycosis
3284	1398	Parasitic Infectious Disease
3285	13980	Coccidioidal Meningitis
3286	1399	Primary Lacrimal Atrophy
3287	13994	Cleidocranial Dysplasia
3288	13995	Secondary Malignant Neoplasm To The Small Intestine
3289	13996	Small Intestine Lymphoma
3290	13999	Contact Blepharoconjunctivitis
3291	1400	Lacrimal Apparatus Disease
3292	14000	Rubeosis Iridis
3293	14001	Diabetes Mellitus Insulin Dependent Type, Uncontrolled, With Peripheral Circulatory Disorder
3294	14004	Thoracic Aortic Aneurysm
3295	14006	Splenic Artery Aneurysm
3296	14018	Alcoholic Liver Cirrhosis
3297	14019	Brucella Canis Brucellosis
3298	1402	Agalactia
3299	14021	Tietze's Syndrome
3300	14022	Algoneurodystrophy
3301	14026	Folic Acid Deficiency Anemia
3302	14032	Malignant Parietal Pleura Tumor
3303	14033	Malignant Visceral Pleura Tumor
3304	14037	Aorta Atresia
3305	14038	Precocious Puberty
3306	14039	POEMS Syndrome
3307	1404	Residual Stage Angle-closure Glaucoma
3308	14040	Autoimmune Polyendocrine Syndrome
3309	14041	Endocrine Tuberculosis
3310	14042	Bipolar I Disorder
3311	14043	Neonatal Myasthenia Gravis
3312	14044	Rheumatic Pericarditis
3313	14045	Syndrome Of Infant Of A Diabetic Mother
3314	14049	Phaeohyphomycosis
3315	1405	Primary Angle-closure Glaucoma
3316	14056	Rheumatic Endocarditis
3317	14059	Paraurethral Gland Cancer
3318	1406	Iritis
3319	14063	Acute Glomerulonephritis With Lesion Of Rapidly Progressive Glomerulonephritis
3320	14064	Acute Poststreptococcal Glomerulonephritis
3321	14066	Acute Diffuse Nephritis
3322	14067	Plasmodium Falciparum Malaria
3323	14068	Blackwater Fever
3324	14069	Cerebral Malaria
3325	1407	Anterior Uveitis
3326	14070	Vestibular Nystagmus
3327	14072	Neoplastic Pregnancy Complications
3328	14075	Geniculate Ganglionitis
3329	14080	Glucocorticoid-remediable Aldosteronism
3330	14081	Toxic Labyrinthitis
3331	14087	Epicondylitis
3332	14089	Root Caries
3333	14090	Heartwater Disease
3334	14092	Renal Artery Atheroma
3335	14095	Boutonneuse Fever
3336	14096	Infertility Due To Extratesticular Cause
3337	14099	Acquired Gastric Outlet Stenosis
3338	14107	De Quervain Disease
3339	14108	Syphilitic Peritonitis
3340	14110	Anus Cancer
3341	14111	Median Rhomboid Glossitis
3342	14114	Congenital Adhesion Of Tongue
3343	14115	Toxic Shock Syndrome
3344	14116	Multiple Symmetric Lipomatosis
3345	14117	Group A Hyperlipidemia
3346	14118	Familial Lipoprotein Lipase Deficiency
3347	1412	Bacteriuria
3348	14121	Blue Toe Syndrome
3349	14125	Abducens Nerve Neoplasm
3350	14130	Lateral Cystocele
3351	14131	Midline Cystocele
3352	14133	Masters-Allen Syndrome
3353	14139	Anus Lymphoma
3354	1414	Ovarian Dysfunction
3355	14140	Pulp Erosion
3356	14145	Malignant Anus Melanoma
3357	14146	Ureterolithiasis
3358	1415	Gyrate Atrophy
3359	14150	Spinal Cord Lymphoma
3360	14151	Spinal Cord Melanoma
3361	14152	Spinal Cord Sarcoma
3362	14155	Acute Retrobulbar Neuritis
3363	14157	Malnutrition Of Mild Degree
3364	14159	Obstructive Hydrocephalus
3365	14163	Metastatic Malignant Tumor To The Anus
3366	14165	Bilateral Hyperactive Labyrinth
3367	1417	Choroid Disease
3368	14172	Rheumatic Congestive Heart Failure
3369	14174	Central Neurocytoma
3370	14175	Von Hippel-Lindau Disease
3371	14176	Selective IgG Deficiency Disease
3372	14177	Congenital Hypogammaglobulinemia
3373	14178	Immunodeficiency With Increased IgM
3374	14179	Bruton-type Agammaglobulinemia
3375	14181	Calcific Tendinitis
3376	14182	Metastatic Tumor To The Choroid
3377	14183	Alcoholic Neuropathy
3378	14184	Polyneuropathy Due To Drug
3379	14188	Frozen Shoulder
3380	1419	Residual Schizophrenia Subchronic State With Acute Exacerbation
3381	14190	Shared Paranoid Disease
3382	14191	Simple Paranoid State
3383	14192	Bicipital Tenosynovitis
3384	14199	Posterior Dislocation Of Lens
3385	14200	Diplopia
3386	14202	Adult Dermatomyositis
3387	14203	Childhood Type Dermatomyositis
3388	14213	Hypophosphatasia
3389	14215	Hyperamylasemia
3390	14218	Dihydropyrimidine Dehydrogenase Deficiency
3391	14219	Renal Tubular Acidosis
3392	14221	Metabolic Syndrome X
3393	14223	Ochronosis
3394	14224	Tracheal Calcification
3395	14225	Acute Frontal Sinusitis
3396	14227	Azoospermia
3397	14228	Oligospermia
3398	14230	Scleromalacia Perforans
3399	14233	Orbital Cyst
3400	14239	Gastrointestinal Tularemia
3401	14243	Chronic Perichondritis Of Pinna
3402	14244	Epiphora Due To Excess Lacrimation
3403	14245	Cystoid Macular Retinal Degeneration
3404	14247	Chronic Purulent Otitis Media
3405	14248	Chronic Atticoantral Disease
3406	1425	Pyoureter
3407	14250	Down Syndrome
3408	14251	Vitreoretinal Dystrophy
3409	14252	Dystrophies Primarily Involving The Retinal Pigment Epithelium
3410	14253	Retinal Dystrophy In Systemic Or Cerebroretinal Lipidoses
3411	14256	Adult-onset Still's Disease
3412	14258	Leukemic Reticuloendotheliosis Of Lymph Nodes Of Inguinal Region And Lower Limb
3413	1426	Ureteral Disease
3414	14261	Fragile X Syndrome
3415	14262	Oral Candidiasis
3416	14263	Fits In Newborn
3417	14264	Benign Neonatal Seizures
3418	14265	Pulmonary Valve Insufficiency
3419	14268	Sclerosing Cholangitis
3420	14269	Suppurative Cholangitis
3421	1427	Disorder Of Pancreatic Internal Secretion
3422	14270	Ascending Cholangitis
3423	14271	Acute Cholangitis
3424	14272	Pericholangitis
3425	14275	Atrophic Vulva
3426	14276	Shoulder Impingement Syndrome
3427	14278	Arthropathy Of The Hand
3428	1428	Endocrine Pancreas Disease
3429	14283	Primary Hypertrophic Osteoarthropathy
3430	14284	Patellofemoral Pain Syndrome
3431	14286	Neurogenic Arthropathy
3432	14287	Brawny Scleritis
3433	14289	Ebstein Anomaly
3434	14291	LEOPARD Syndrome
3435	14292	Vulvar Dystrophy
3436	14305	Tuberculous Empyema
3437	14308	Skin Epithelioid Hemangioma
3438	14311	Norovirus Gastroenteritis
3439	14312	Nontoxic Uninodular Goiter
3440	14313	Thyroid Nodule
3441	14319	Pleuropneumonia
3442	1432	Blindness
3443	14320	Generalized Anxiety Disorder
3444	14323	Marfan Syndrome
3445	14324	Plasmodium Malariae Malaria
3446	14325	Mixed Malaria
3447	14326	Avian Malaria
3448	14327	Gonococcal Pericarditis
3449	14330	Parkinson's Disease
3450	14332	Postencephalitic Parkinson Disease
3451	14336	Estrogen Excess
3452	14338	Pseudomonal Pneumonia
3453	14339	Paraphrenia
3454	14350	Suppurative Thyroiditis
3455	14351	Riedel's Fibrosing Thyroiditis
3456	14353	Acute Thyroiditis
3457	1436	Corneal Ectasia
3458	14360	Opisthorchis Viverrini Infectious Disease
3459	14363	Congenital Syphilitic Meningitis
3460	14365	Systemic Primary Carnitine Deficiency Disease
3461	14374	Norwegian Scabies
3462	14384	Parietal Lobe Neoplasm
3463	1439	Pyuria
3464	14392	Thrombophlebitis Migrans
3465	14397	Protozoal Dysentery
3466	1440	Machado-Joseph Disease
3467	14400	Capillary Leak Syndrome
3468	14401	Cutis Marmorata
3469	14402	Critical Illness Polyneuropathy
3470	1441	Spinocerebellar Ataxia
3471	14413	Labyrinthine Bilateral Reactive Loss
3472	14415	Legg-Calve-Perthes Disease
3473	14418	Dracunculiasis
3474	14419	Mansonella Ozzardi Infectious Disease
3475	1442	Alpers Syndrome
3476	14421	Brugia Malayi Filariasis
3477	14422	Dipetalonemiasis
3478	14423	Glossopharyngeal Neuralgia
3479	14425	Secondary Malignant Neoplasm Of Intra-abdominal Lymph Node
3480	14426	Secondary Malignant Neoplasm Of Intrathoracic Lymph Node
3481	14427	Abnormality Of Glucagon Secretion
3482	1443	Cerebral Degeneration
3483	14433	Enterohemorrhagic Escherichia Coli Infectious Disease
3484	14434	Enterotoxigenic Escherichia Coli Infectious Disease
3485	14435	Chronic Tubotympanic Suppurative Otitis Media
3486	14443	Cholinergic Urticaria
3487	14444	Sclerosing Keratitis
3488	14445	Chronic Closed-angle Glaucoma
3489	14447	Gonadal Dysgenesis
3490	14448	46 XY Gonadal Dysgenesis
3491	14449	Mixed Gonadal Dysgenesis
3492	14450	46 XX Gonadal Dysgenesis
3493	14451	Hyperkalemic Periodic Paralysis
3494	14452	Hypokalemic Periodic Paralysis
3495	14453	Farmer's Lung
3496	14456	Brucella Melitensis Brucellosis
3497	14457	Brucella Abortus Brucellosis
3498	14459	Hemangioma Of Orbit
3499	14463	Cavernous Hemangioma Of Orbit
3500	14464	Neuroleptic Malignant Syndrome
3501	14467	Drug-induced Persisting Amnestic Disease
3502	14472	Hantavirus Pulmonary Syndrome
3503	14473	Adenovirus Pneumonia
3504	14474	Respiratory Syncytial Virus Pneumonia
3505	14475	Parainfluenzal Pneumonia
3506	14476	SARS Coronavirus Pneumonia
3507	14477	Cytomegalovirus Pneumonia
3508	14482	Herpes Gestationis
3509	14483	Chorea Gravidarum
3510	14484	Sporotrichosis
3511	14489	Ureteral Lymphoma
3512	14490	Metastasis To The Ureter
3513	14491	Regional Ureteric Cancer
3514	14492	Metastatic Neoplasm Of Ureter
3515	14495	Dumping Syndrome
3516	14497	Wolman Disease
3517	14498	Lipoid Proteinosis
3518	14499	Fabry Disease
3519	145	Papilledema Associated With Retinal Disorder
3520	14500	Fucosidosis
3521	14501	Sjogren-Larsson Syndrome
3522	14502	Cholesterol Ester Storage Disease
3523	14503	Neuronal Ceroid Lipofuscinosis
3524	14504	Niemann-Pick Disease
3525	14507	Peripheral Degeneration Of Cornea
3526	14512	Candidal Paronychia
3527	14515	WAGR Syndrome
3528	14518	Idiopathic Cysts Of Iris And Ciliary Body
3529	14520	Adenovirus Gastroenteritis
3530	14521	Cutaneous Breast Cancer
3531	14522	Partial Arterial Retinal Occlusion
3532	14523	Argyll Robertson Pupil
3533	14524	Senile Degeneration Of Brain
3534	14525	Reye Syndrome
3535	14529	External Pathological Resorption
3536	1453	Atrophic Glossitis
3537	14530	Syringomyelia And Syringobulbia
3538	14534	Malignant Cardiac Peripheral Nerve Sheath Neoplasm
3539	14535	Malignant Cardiac Germ Cell Tumor
3540	14539	Metastasis To Heart
3541	14542	Macular Or Paramacular Focal Retinitis And Retinochoroiditis
3542	14544	Rete Testis Adenocarcinoma
3543	14545	Seminal Vesicle Adenocarcinoma
3544	14546	Sphenoidal Sinus Cancer
3545	14547	Sphenoid Sinus Squamous Cell Carcinoma
3546	14548	Steroid-induced Glaucoma - Borderline
3547	14549	Tympanosclerosis Involving Tympanic Membrane, Ear Ossicles And Middle Ear
3548	1455	Geographic Tongue
3549	14550	Root Resorption
3550	14555	Foster-Kennedy Syndrome
3551	14557	Primary Pulmonary Hypertension
3552	14558	Nontoxic Multinodular Goiter
3553	14559	Anaerobic Meningitis
3554	1456	Glossitis
3555	14566	Disease Of Cellular Proliferation
3556	1458	Postsurgical Hypothyroidism
3557	1459	Hypothyroidism
3558	146	Papilledema
3559	1460	Atheroembolism Of Kidney
3560	1461	Cholesterol Embolism
3561	1465	Salmonella Septicemia
3562	14654	Prostatitis
3563	1466	Salmonella Infectious Disease
3564	14669	Acrodysostosis
3565	1467	Serous Labyrinthitis
3566	14670	Hypertelorism, Microtia, Facial Clefting Syndrome
3567	14671	Multiple Intestinal Atresia
3568	14676	Congenital Contricting Bands
3569	14679	VACTERL Association
3570	1468	Labyrinthitis
3571	14680	Hereditary Inflammatory Vasculitis
3572	14681	Silver-Russell Syndrome
3573	14683	Binder Syndrome
3574	14686	Axenfeld-Rieger Syndrome
3575	14687	Diastrophic Dysplasia
3576	1469	Single Major Depressive Episode In Full Remission
3577	14692	Smith-Lemli-Opitz Syndrome
3578	14693	Clouston Syndrome
3579	14694	Johanson-Blizzard Syndrome
3580	14695	Galactokinase Deficiency
3581	14699	Thrombocytopenia-absent Radius Syndrome
3582	1470	Major Depressive Disorder
3583	14701	Propionic Acidemia
3584	14702	Branchiootorenal Syndrome
3585	14705	Pfeiffer Syndrome
3586	14711	FG Syndrome
3587	14717	Centronuclear Myopathy
3588	14720	Type I Ehlers-Danlos Syndrome
3589	14723	Beta-ketothiolase Deficiency
3590	14725	Autosomal Dominant Microcephaly
3591	14727	Dominant Cogenital Severe Sensorineural Deafness
3592	14731	Weaver Syndrome
3593	14735	Hereditary Angioedema
3594	14737	Craniofrontonasal Syndrome
3595	14739	Progressive High-tone Neural Deafness
3596	1474	Aggressive Periodontitis
3597	14743	Trichorhinophalangeal Syndrome Type I
3598	14744	Partington Syndrome
3599	14748	Sotos Syndrome
3600	14749	Methylmalonic Acidemia
3601	1475	Lymphangioma
3602	14753	Isovaleric Acidemia
3603	14755	Argininosuccinic Aciduria
3604	14756	Autosomal Dominant Type IV Ehlers-Danlos Syndrome
3605	14757	Type III Ehlers-Danlos Syndrome
3606	14759	Autosomal Recessive Type IV Ehlers-Danlos Syndrome
3607	14761	Greig Cephalopolysyndactyly Syndrome
3608	14762	Calcaneonavicular Coalition
3609	14764	Larsen Syndrome
3610	14766	Renal Agenesis
3611	14768	Saethre-Chotzen Syndrome
3612	14773	Cartilage-hair Hypoplasia
3613	14775	Type VI Ehlers-Danlos Syndrome
3614	14777	Benign Familial Neonatal Epilepsy
3615	14778	Blepharophimosis, Ptosis, And Epicanthus Inversus Syndrome
3616	14780	KBG Syndrome
3617	14784	Olivopontocerebellar Atrophy
3618	14787	Fryns Syndrome
3619	14789	Spondyloepiphyseal Dysplasia Congenita
3620	14791	Leber Congenital Amaurosis
3621	14793	Hypohidrotic Ectodermal Dysplasia
3622	14796	Dubowitz Syndrome
3623	14798	Blount's Disease
3624	1483	Gingival Disease
3625	1485	Cystic Fibrosis
3626	1486	Secondary Syphilitic Chorioretinitis
3627	1487	Secondary Syphilitic Uveitis
3628	1491	Corneal Anesthesia And Hypoesthesia
3629	1492	Eye And Adnexa Disease
3630	1495	Cystic Echinococcosis
3631	1496	Echinococcosis
3632	1498	Cholera
3633	1499	Vibrio Infectious Disease
3634	15	Reproductive System Disease
3635	150	Disease Of Mental Health
3636	1508	Candidiasis
3637	1509	Avoidant Personality Disorder
3638	1510	Personality Disorder
3639	1511	Residual Schizophrenia Chronic State With Acute Exacerbation
3640	1512	Chronic Gonorrhea Of Cervix
3641	1513	Chronic Cervicitis
3642	1515	Mitral Valve Syphilitic Endocarditis
3643	1516	Syphilitic Endocarditis
3644	1517	Cecal Benign Neoplasm
3645	1518	Cecal Disease
3646	1519	Cecum Carcinoma
3647	1520	Colon Carcinoma
3648	1521	Cecum Cancer
3649	1522	Cecum Lymphoma
3650	1523	Colon Lymphoma
3651	1525	Nodular Nonsuppurative Panniculitis
3652	1526	Panniculitis
3653	1528	Penile Non-neoplastic Disease
3654	1529	Penile Disease
3655	153	Fibroepithelial Neoplasm
3656	1530	Male Non-neoplastic Reproductive System Disease
3657	1532	Pleural Disease
3658	154	Mixed Cell Type Cancer
3659	1540	Parathyroid Carcinoma
3660	1542	Head And Neck Carcinoma
3661	1543	Metastatic Neoplasm Of Parathyroid
3662	155	Glandular And Epithelial Neoplasm
3663	1550	Gestational Diabetes Complicating Pregnancy, Childbirth, Or The Puerperium
3664	1554	Vibratory Urticaria
3665	1555	Urticaria
3666	1556	Arthus Reaction
3667	1557	Hypersensitivity Reaction Type III Disease
3668	1558	Angioedema
3669	1561	Cognitive Disorder
3670	1562	Chromoblastomycosis
3671	1563	Dermatomycosis
3672	1564	Fungal Infectious Disease
3673	1568	Calculus Of Gallbladder And Bile Duct With Acute And Chronic Cholecystitis
3674	1569	Mechanical Ectropion
3675	157	Epithelial Carcinoma
3676	1570	Ectropion
3677	1571	Spastic Ectropion
3678	1572	Normal Pressure Hydrocephalus
3679	1573	Communicating Hydrocephalus
3680	1574	Alcohol Abuse
3681	1575	Rheumatic Disease
3682	1577	Limited Scleroderma
3683	1578	Pulmonary Systemic Sclerosis
3684	1579	Respiratory System Disease
3685	1580	Diffuse Scleroderma
3686	1583	Laryngeal Tuberculosis
3687	1584	Acute Chest Syndrome
3688	1585	Rheumatic Pneumonia
3689	1586	Rheumatic Fever
3690	1587	Thrombocytopenia Due To Platelet Alloimmunization
3691	1588	Thrombocytopenia
3692	159	Mesothelial Neoplasm
3693	1591	Renovascular Hypertension
3694	1592	Secondary Malignant Neoplasm Of Retroperitoneum And Peritoneum
3695	1593	Metastasis To The Peritoneum
3696	1595	Endogenous Depression
3697	1596	Mental Depression
3698	1597	Single Episode Mild Major Depression
3699	1599	Single Episode Moderate Major Depression
3700	16	Integumentary System Disease
3701	1602	Lymphadenitis
3702	1607	Hypoglycemic Coma
3703	161	Keratosis
3704	1612	Breast Cancer
3705	1614	Male Breast Cancer
3706	1616	Benign Eccrine Breast Spiradenoma
3707	1618	Breast Fibroadenoma
3708	162	Cancer
3709	1620	Breast Fibroepithelial Tumor
3710	1623	Breast Leiomyoma
3711	1624	Breast Soft Tissue Tumor
3712	1625	Breast Adenoma
3713	1626	Breast Duct Papilloma
3714	1627	Intraductal Papilloma
3715	1628	Intraductal Papillary Breast Neoplasm
3716	1629	Breast Myofibroblastoma
3717	163	Mucoepidermoid Tumor
3718	1631	Benign Breast Phyllodes Tumor
3719	1634	Breast Papillomatosis
3720	1637	Breast Angiomatosis
3721	1638	Central Nervous System Tuberculosis
3722	1639	Skeletal Tuberculosis
3723	164	Cystic, Mucinous, And Serous Neoplasm
3724	1641	Benign Breast Adenomyoepithelioma
3725	1642	Breast Adenomyoepithelioma
3726	1647	Female Breast Upper-inner Quadrant Cancer
3727	1649	Female Breast Lower-inner Quadrant Cancer
3728	1650	Female Breast Axillary Tail Cancer
3729	1657	Ventricular Septal Defect
3730	1659	Supratentorial Cancer
3731	166	Melanotic Neuroectodermal Tumor
3732	1660	Malignant Pineal Area Germ Cell Neoplasm
3733	1661	Malignant Intracranial Germ Cell Neoplasm
3734	1664	Pineoblastoma
3735	1665	Central Nervous System Embryonal Cancer
3736	1666	Hip Enthesopathy
3737	1667	Peripheral Enthesopathy
3738	1670	Behcet's Syndrome Arthropathy
3739	1672	Spontaneous Tension Pneumothorax
3740	1673	Pneumothorax
3741	1677	Low Implantation Of Placenta
3742	1678	Chronic Interstitial Cystitis
3743	1679	Cystitis
3744	1680	Chronic Cystitis
3745	1681	Heart Septal Defect
3746	1682	Congenital Heart Disease
3747	1685	Glaucoma Associated With Vascular Disorder
3748	1686	Glaucoma
3749	1687	Neovascular Glaucoma
3750	169	Neuroendocrine Tumor
3751	1695	Congenital Ichthyosis
3752	1697	Ichthyosis
3753	1699	Congenital Ichthyosiform Erythroderma
3754	17	Musculoskeletal System Disease
3755	170	Endocrine Gland Cancer
3756	1700	X-linked Ichthyosis
3757	1701	Steroid Inherited Metabolic Disorder
3758	1702	Ichthyosis Vulgaris
3759	1703	Richter's Syndrome
3760	1709	Rickettsiosis
3761	171	Neuroectodermal Tumor
3762	1712	Aortic Valve Stenosis
3763	1713	Benign Shuddering Attacks
3764	172	Clear Cell Acanthoma
3765	1724	Duodenal Ulcer
3766	1725	Peritoneum Cancer
3767	1726	Partial Of Retinal Vein Occlusion
3768	1727	Retinal Vein Occlusion
3769	1729	Retinal Vascular Occlusion
3770	173	Eccrine Sweat Gland Neoplasm
3771	1730	Histoplasmosis Pneumonia
3772	1731	Histoplasmosis
3773	1733	Cryptosporidiosis
3774	1734	Viral Gastroenteritis
3775	1737	Duodenal Benign Neoplasm
3776	1738	Small Intestine Leiomyoma
3777	174	Acanthoma
3778	1741	Drug-induced Psychotic Disease With Delusion
3779	1742	Drug Psychosis
3780	1744	Malignant Lymphatic Vessel Tumor
3781	1748	Conjunctiva Squamous Cell Carcinoma
3782	1749	Squamous Cell Carcinoma
3783	175	Vascular Cancer
3784	1751	Malignant Conjunctiva Melanoma
3785	1752	Ocular Melanoma
3786	1754	Mitral Valve Stenosis
3787	1756	Facial Nerve Disease
3788	1757	Facial Hemiatrophy
3789	1758	Histoplasma Capsulatum Pneumonia
3790	1759	American Histoplasmosis
3791	176	Cardiovascular Cancer
3792	1760	Facial Nerve Neoplasm
3793	1761	Melkersson-Rosenthal Syndrome
3794	1762	Cheilitis
3795	1766	Factitious Disorder
3796	1768	Conversion Disorder
3797	1770	Toxic Megacolon
3798	1776	Labyrinthine Unilateral Reactive Loss
3799	1777	Unilateral Hyperactive Labyrinth
3800	178	Vascular Disease
3801	1781	Thyroid Cancer
3802	1785	Pituitary Cancer
3803	1786	Adrenal Rest Tumor
3804	1787	Pericarditis
3805	1788	Peritoneal Mesothelioma
3806	1789	Benign Peritoneal Mesothelioma
3807	1790	Malignant Mesothelioma
3808	1791	Peritoneal Carcinoma
3809	1792	Pancreas Lymphoma
3810	1793	Pancreatic Cancer
3811	1795	Tumor Of Exocrine Pancreas
3812	1796	Pancreas Sarcoma
3813	1798	Pancreatic Endocrine Carcinoma
3814	1799	Islet Cell Tumor
3815	18	Urinary System Disease
3816	180	Ossifying Fibroma
3817	1800	Neuroendocrine Carcinoma
3818	1801	Secondary Malignant Neoplasm To The Pancreas
3819	1802	Mononeuritis
3820	1803	Neuritis
3821	1804	Coxsackie Pericarditis
3822	1805	Coxsackie Carditis
3823	1806	Coxsackie Endocarditis
3824	1811	Reflex Sympathetic Dystrophy
3825	182	Calcinosis
3826	1822	Secondary Lacrimal Atrophy
3827	1823	Petit Mal Status
3828	1824	Status Epilepticus
3829	1825	Childhood Absence Epilepsy
3830	1826	Epilepsy Syndrome
3831	1827	Idiopathic Generalized Epilepsy
3832	1829	Urethral Stricture
3833	1832	Mild Hyperemesis Gravidarum
3834	1835	Mononeuritis Multiplex
3835	1837	Diabetic Ketoacidosis
3836	1838	Menkes Disease
3837	184	Bone Cancer
3838	1844	Mononeuritis Of Upper Limb
3839	1845	Strongylida Infectious Disease
3840	1849	Cannabis Dependence
3841	1852	Intrahepatic Cholestasis
3842	1856	Cherubism
3843	1858	McCune Albright Syndrome
3844	1862	Jaw Cancer
3845	1863	Skull Cancer
3846	1866	Giant Cell Reparative Granuloma
3847	1869	Chronic Rheumatic Pericarditis
3848	1873	Abortion Complicated By Metabolic Disorder
3849	1875	Impotence
3850	1876	Sexual Dysfunction
3851	1882	Atrial Heart Septal Defect
3852	1883	Hepatitis C
3853	1884	Viral Hepatitis
3854	1886	Flaviviridae Infectious Disease
3855	1891	Optic Nerve Disease
3856	1893	Eczematous Dermatitis Of Eyelid
3857	1894	Noninfectious Dermatoses Of Eyelid
3858	1895	Allergic Contact Dermatitis Of Eyelid
3859	1896	Sigmoid Neoplasm
3860	1897	Sigmoid Disease
3861	1901	Vagina Sarcoma
3862	1906	Malignant Skin Fibrous Histiocytoma
3863	1907	Malignant Fibroxanthoma
3864	1908	Cutaneous Fibrohistiocytic Neoplasm
3865	1909	Melanoma
3866	1910	Vaginal Yolk Sac Tumor
3867	1911	Endodermal Sinus Tumor
3868	1912	Metastasis To Vagina
3869	1913	Alternating Exotropia With A Pattern
3870	1919	Lesch-Nyhan Syndrome
3871	192	Sex Cord-gonadal Stromal Tumor
3872	1920	Hyperuricemia
3873	1921	Klinefelter's Syndrome
3874	1922	Endocrine Syndrome
3875	1923	Sex Differentiation Disease
3876	1924	Hypogonadism
3877	1925	Coffin-Siris Syndrome
3878	1926	Gaucher's Disease
3879	1927	Sphingolipidosis
3880	1928	Williams-Beuren Syndrome
3881	1929	Supravalvular Aortic Stenosis
3882	193	Reproductive Organ Cancer
3883	1930	Laurence-Moon Syndrome
3884	1931	Hypothalamic Disease
3885	1932	Angelman Syndrome
3886	1933	Rubinstein-Taybi Syndrome
3887	1934	Dysostosis
3888	1935	Bardet-Biedl Syndrome
3889	1936	Atherosclerosis
3890	1938	Primary Bacillaceae Infectious Disease
3891	194	Gonadal Tissue Neoplasm
3892	1941	Intermittent Alternating Exotropia
3893	1942	Intermittent Squint
3894	1943	Telogen Effluvium
3895	1947	Trichomoniasis
3896	1949	Cholecystitis
3897	195	Reproductive Endocrine Cancer
3898	1954	Benign Hypertensive Heart Disease
3899	196	Acinar Cell Tumor
3900	1962	Fallopian Tube Disease
3901	1963	Fallopian Tube Carcinoma
3902	1964	Fallopian Tube Cancer
3903	1965	Fallopian Tube Leiomyosarcoma
3904	1966	Fallopian Tube Soft Tissue Neoplasm
3905	1967	Leiomyosarcoma
3906	1969	Cerebral Palsy
3907	197	Glandular Cell Epithelial Neoplasm
3908	1970	Fallopian Tube Carcinosarcoma
3909	1973	Fallopian Tube Adenosarcoma
3910	1974	Adenosarcoma
3911	1975	Thymus Lipoma
3912	1977	Lipoma Of The Mediastinum
3913	1978	Juxtapapillary Focal Choroiditis And Chorioretinitis
3914	1979	Focal Chorioretinitis
3915	198	Mesonephric Tumor
3916	1982	Rhabdoviridae Infectious Disease
3917	1983	Mononegavirales Infectious Disease
3918	1984	Rectal Neoplasm
3919	1986	Perinatal Disease
3920	1987	Fetal Disease
3921	1988	Rectum Lymphoma
3922	1990	Metastasis To The Rectum
3923	1991	Metastases To Large Intestine
3924	1992	Rectum Malignant Melanoma
3925	1993	Rectum Cancer
3926	1995	Rectum Sarcoma
3927	1996	Rectum Adenocarcinoma
3928	1998	Lutembacher's Syndrome
3929	1999	Chronic Eustachian Salpingitis
3930	200	Giant Cell Tumor
3931	2000	Otosalpingitis
3932	2001	Neuroma
3933	2005	Tracheal Tuberculosis
3934	2006	Preretinal Fibrosis
3935	2007	Degeneration Of Macula And Posterior Pole
3936	201	Connective Tissue Cancer
3937	2010	Impaired Mobility Of Ear Ossicles Except Malleus
3938	2012	Nezelof Syndrome
3939	2014	Perinatal Digestive System Disorder
3940	2018	Hyperinsulinism
3941	2021	Placenta Cancer
3942	2022	Metastatic Neoplasm To The Placenta
3943	2024	Placental Choriocarcinoma
3944	2025	Gestational Choriocarcinoma
3945	2027	Fetal Or Neonatal Hemorrhage
3946	203	Exostosis
3947	2030	Anxiety Disorder
3948	2033	Communication Disorder
3949	2034	Encephalomalacia
3950	2038	Urogenital Abnormality
3951	204	Enthesopathy
3952	2043	Hepatitis B
3953	2044	Drug-induced Hepatitis
3954	2047	Hepatitis D
3955	2048	Autoimmune Hepatitis
3956	205	Hyperostosis
3957	2050	Acute Maxillary Sinusitis
3958	2051	Maxillary Sinusitis
3959	2053	Reactive Cutaneous Fibrous Lesion
3960	2055	Post-traumatic Stress Disorder
3961	2058	Chronic Mucocutaneous Candidiasis
3962	2059	Vulvar Disease
3963	206	Hereditary Multiple Exostoses
3964	2060	Vulvar Nodular Hidradenoma
3965	2061	Nodular Hidradenoma
3966	2062	Vulvar Tumor Of Skin Appendage Origin
3967	2064	Vulvar Syringoma
3968	2065	Syringoma
3969	2066	Vulvar Angiokeratoma
3970	2068	Bartholin's Gland Neoplasm
3971	2069	Vulvar Acquired Melanocytic Nevus
3972	2070	Vulvar Melanocytic Neoplasm
3973	2071	Vulvar Squamous Papilloma
3974	2072	Vulvar Squamous Tumor
3975	2073	Perinatal Intestinal Perforation
3976	2074	Intestinal Perforation
3977	2075	Minor Vestibular Glands Adenoma
3978	2076	Vulvar Glandular Tumor
3979	2077	Vulvar Congenital Melanocytic Nevus
3980	2078	Chondroid Syringoma Of The Vulva
3981	2079	Eccrine Mixed Tumor Of Skin
3982	208	Hereditary Neoplastic Syndrome
3983	2080	Vulvar Trichoepithelioma
3984	2083	Vulvar Soft Tissue Tumor
3985	2085	Vulvar Blue Nevus
3986	2086	Blue Nevus
3987	2088	Outlet Dysfunction Constipation
3988	2089	Constipation
3989	2092	Transient Arthritis
3990	2093	Vulvar Melanoma
3991	2094	Vulvar Sweat Gland Cancer
3992	2095	Sweat Gland Cancer
3993	2096	Vulvar Sarcoma
3994	2097	Vulval Paget's Disease
3995	2098	Vulva Adenocarcinoma
3996	2099	Extramammary Paget's Disease
3997	210	Heel Spur
3998	2100	Vulvar Metastasis
3999	2101	Vulva Squamous Cell Carcinoma
4000	2106	Thomsen Disease
4001	2108	Transplant-related Disease
4002	211	Ankle Or Tarsus Enthesopathy
4003	2112	Cystoisosporiasis
4004	2113	Coccidiosis
4005	2115	B Cell Deficiency
4006	2120	Focal Dermal Hypoplasia
4007	2121	Ectodermal Dysplasia
4008	2122	Pneumonic Tularemia
4009	2123	Tularemia
4010	2124	Intracranial Neoplasm
4011	2127	Brain Germinoma
4012	2128	Intracranial Germinoma
4013	2129	Atypical Teratoid Rhabdoid Tumor
4014	2131	Childhood Malignant Central Nervous System Neoplasm
4015	2132	Brain Sarcoma
4016	2133	Central Nervous System Sarcoma
4017	2135	Temporal Lobe Neoplasm
4018	2139	Paraurethral Gland Neoplasm
4019	214	Teeth Hard Tissue Disease
4020	2140	Urethral Urothelial Papilloma
4021	2142	Urethra Leiomyoma
4022	2143	Ovarian Malignant Mesothelioma
4023	2145	Malignant Ovarian Cyst
4024	2146	Ovary Sarcoma
4025	2147	Ovary Soft Tissue Neoplasm
4026	2148	Tuberculous Oophoritis
4027	2149	Urogenital Tuberculosis
4028	2150	Ovarian Lymphoma
4029	2151	Malignant Ovarian Surface Epithelial-stromal Neoplasm
4030	2152	Ovary Epithelial Cancer
4031	2153	Ovarian Wilms' Cancer
4032	2154	Nephroblastoma
4033	2155	Malignant Ovarian Germ Cell Neoplasm
4034	2156	Ovarian Germ Cell Cancer
4035	2158	Lung Metastasis
4036	216	Dental Caries
4037	2163	Nasal Cavity Disease
4038	217	Enamel Caries
4039	2170	Vaginitis
4040	2172	Malignant Eyelid Tumor
4041	2173	Eyelid Neoplasm
4042	2174	Ocular Cancer
4043	2176	Carbuncle
4044	2177	Complications Mainly Related To Pregnancy
4045	2179	Diabetes Mellitus Insulin Dependent Type, Uncontrolled, With Ophthalmic Manifestations
4046	218	Ascending Colon Cancer
4047	2180	Diabetic Oculopathy
4048	2181	Post-surgical Hypoinsulinemia
4049	2186	Macrocephaly
4050	2187	Amelogenesis Imperfecta
4051	219	Colon Cancer
4052	221	Acute Perichondritis Of Pinna
4053	2211	Factor XIII Deficiency
4054	2212	Coagulation Protein Disease
4055	2213	Hemorrhagic Disease
4056	2214	Inherited Blood Coagulation Disease
4057	2215	Factor VII Deficiency
4058	2216	Factor V Deficiency
4059	2217	Bernard-Soulier Syndrome
4060	2218	Blood Platelet Disease
4061	2219	Glanzmann's Thrombasthenia
4062	222	Perichondritis Of Auricle
4063	2222	Factor X Deficiency
4064	2223	Platelet Storage Pool Deficiency
4065	2224	Hemorrhagic Thrombocythemia
4066	2225	Megakaryocytic Tumor
4067	2226	Chronic Myeloproliferative Disease
4068	2227	Malignant Neoplasm Of Lymphatic And Hemopoietic Tissue
4069	2228	Thrombocytosis
4070	2229	Factor XI Deficiency
4071	223	Basilar Artery Insufficiency
4072	2230	Hemophilia
4073	2231	Factor XII Deficiency
4074	2232	Coagulation Factor Deficiency
4075	2233	Partial Epilepsy With Impairment Of Consciousness
4076	2234	Focal Epilepsy
4077	2235	Prothrombin Deficiency
4078	2236	Congenital Afibrinogenemia
4079	2237	Hepatitis
4080	2239	Granulomatous Hepatitis
4081	224	Transient Cerebral Ischemia
4082	2242	Mild Recurrent Major Depression
4083	2247	Spondylosis
4084	225	Syndrome
4085	2251	Hypertrophic Elongation Of Cervix
4086	2253	Cervix Disease
4087	2255	Short Rib-polydactyly Syndrome
4088	2256	Osteochondrodysplasia
4089	2257	Primary Spirochaetales Infectious Disease
4090	2265	Treponema Infectious Disease
4091	227	Ankylosis
4092	2271	Oropharyngeal Candidiasis
4093	2272	Vulvovaginal Candidiasis
4094	2273	Vulvovaginitis
4095	2275	Pharyngitis
4096	2277	Gonadal Disease
4097	2279	Joint Derangement
4098	2280	Hidradenitis Suppurativa
4099	2282	Hidradenitis
4100	2283	Keratopathy
4101	2286	Capillary Lymphangioma
4102	229	Female Reproductive System Disease
4103	2297	Leptospirosis
4104	230	Lateral Sclerosis
4105	2300	Spondylolysis
4106	2301	Atrophy Of Prostate
4107	2303	Stereotypic Movement Disorder
4108	231	Motor Neuron Disease
4109	2312	Nocardiosis
4110	2313	Primary Actinomycetales Infectious Disease
4111	2314	Malt Worker's Lung
4112	2316	Brain Ischemia
4113	2320	Obstructive Lung Disease
4114	2321	Dyspepsia
4115	2323	Prostate Non-neoplastic Disease
4116	2324	Coxsackie Meningitis
4117	2325	Enterovirus Meningitis
4118	2326	Gastroenteritis
4119	2327	Viral Gastritis
4120	2328	Astrovirus Gastroenteritis
4121	2329	Rotavirus Gastroenteritis
4122	233	Ocular Tuberculosis
4123	2334	Metastatic Carcinoma
4124	2338	Mandibular Cancer
4125	2339	Crouzon Syndrome
4126	234	Colon Adenocarcinoma
4127	2340	Craniosynostosis
4128	2344	Polyclonal Hypergammaglobulinemia
4129	2345	Plasma Protein Metabolism Disease
4130	2346	Monoclonal Paraproteinemia
4131	2347	Generalized Atherosclerosis
4132	2348	Arteriosclerotic Cardiovascular Disease
4133	2349	Arteriosclerosis
4134	235	Colonic Benign Neoplasm
4135	2350	Iron Overload
4136	2351	Iron Metabolism Disease
4137	2352	Hemochromatosis
4138	2354	Myelophthisic Anemia
4139	2355	Anemia
4140	2361	Macrocytic Anemia
4141	2364	Post-thrombotic Syndrome
4142	2365	West Nile Encephalitis
4143	2366	West Nile Fever
4144	2367	Neuroaxonal Dystrophy
4145	2368	Gangliosidosis
4146	2369	Diabetes Mellitus Insulin Dependent Type Not Stated As Uncontrolled With Renal Manifestations
4147	237	Adhesions And Disruptions Of Iris And Ciliary Body
4148	2370	Diabetic Nephropathy
4149	2373	Hereditary Elliptocytosis
4150	2376	Chronic Progressive Multiple Sclerosis
4151	2377	Multiple Sclerosis
4152	2378	Relapsing-remitting Multiple Sclerosis
4153	238	Pupil Disease
4154	2381	Vibrio Cholerae O1 Biovar El Tor Cholera
4155	2382	Kernicterus
4156	2383	Neonatal Jaundice
4157	2384	Wernicke Encephalopathy
4158	2385	Thiamine Deficiency
4159	2388	Renal Artery Disease
4160	2389	Fibromuscular Dysplasia
4161	239	Iridodialysis
4162	2392	Glandular Cystitis
4163	2394	Ovarian Cancer
4164	2399	Ovarian Clear Cell Neoplasm
4165	240	Iris Disease
4166	2401	Clitoris Cancer
4167	2402	Lymphangiectasis
4168	2409	Rhinosporidiosis
4169	2410	Skin Granular Cell Tumor
4170	2411	Granular Cell Tumor
4171	2412	Skin Tumor Of Neural Origin
4172	2413	Epithelioid And Spindle Cell Nevus
4173	2415	Benign Skin Melanocytic Nevus
4174	2417	Melanocytic Nevus
4175	2421	Skin Fibrous Tissue Neoplasm
4176	2423	Halo Nevus
4177	2424	Intradermal Nevus
4178	2425	Cutaneous Ganglioneuroma
4179	2426	Gangliocytoma
4180	2430	Skin Glomus Tumor
4181	2431	Glomus Tumor
4182	2433	Epidermal Appendage Tumor
4183	2434	Intraepidermal Nevus
4184	2435	Skin Glomangioma
4185	2436	Glomangioma
4186	2437	Skin Compound Nevus
4187	2438	Dermis Tumor
4188	2441	Frontal Sinus Squamous Cell Carcinoma
4189	2444	Hyperpituitarism
4190	2446	Gigantism
4191	2449	Acromegaly
4192	2450	Central Retinal Vein Occlusion
4193	2451	Protein S Deficiency
4194	2452	Thrombophilia
4195	2455	Angular Blepharoconjunctivitis
4196	2456	Blepharoconjunctivitis
4197	2457	Giant Papillary Conjunctivitis
4198	2458	Papillary Conjunctivitis
4199	2460	Anterior Dislocation Of Lens
4200	2462	Retinal Vascular Disease
4201	2467	Reactive Confusion
4202	2468	Psychotic Disorder
4203	2469	Swine Erysipelas
4204	2470	Erysipelothrix Infectious Disease
4205	2471	Erysipelothrix Rhusiopathiae Infectious Disease
4206	2473	Opportunistic Mycosis
4207	2474	Vernal Conjunctivitis
4208	2475	Chronic Conjunctivitis
4209	2476	Hereditary Spastic Paraplegia
4210	2477	Motor Peripheral Neuropathy
4211	2478	Spinocerebellar Degeneration
4212	2479	Central Nervous System Origin Vertigo
4213	248	Trachea Leiomyoma
4214	2481	Infantile Epileptic Encephalopathy
4215	2485	Phosphorus Metabolism Disease
4216	2487	Hypercholesterolemia
4217	2490	Congenital Nervous System Abnormality
4218	2491	Sensory Peripheral Neuropathy
4219	2492	Hereditary Peripheral Neuropathy
4220	2493	Gastric Antral Vascular Ectasia
4221	2494	Angiodysplasia
4222	2495	Senile Angioma
4223	2497	Enamel Erosion
4224	2498	Tooth Erosion
4225	250	Chronic Brain Damage
4226	2503	AIDS-related Vulvovaginal Candidiasis
4227	2508	Takayasu's Arteritis
4228	251	Alcohol-induced Mental Disorder
4229	2510	Kluver-Bucy Syndrome
4230	2512	Nevoid Basal Cell Carcinoma Syndrome
4231	2513	Basal Cell Carcinoma
4232	2514	Meningococcal Optic Neuritis
4233	2515	Meningococcal Infectious Disease
4234	2516	Intracranial Cavernous Angioma
4235	2517	Intracranial Structure Hemangioma
4236	2518	Orchitis
4237	2519	Testicular Disease
4238	252	Alcoholic Psychosis
4239	2524	Abnormal Glucose Tolerance In Mother Complicating Pregnancy Childbirth And/or Puerperium
4240	2526	Prostate Adenocarcinoma
4241	2527	Nephrosis
4242	2528	Myeloid Metaplasia
4243	2529	Splenic Disease
4244	2530	Splenic Abscess
4245	2531	Hematologic Cancer
4246	2533	Splenic Infarction
4247	2536	Chronic Inflammatory Demyelinating Polyneuritis
4248	2537	Inflammatory And Toxic Neuropathy
4249	2538	Landau-Kleffner Syndrome
4250	254	Hemangioma Of Intra-abdominal Structure
4251	2544	Extratemporal Epilepsy
4252	2545	Congenital Epilepsy
4253	2546	Atonic Epilepsy
4254	2547	Intractable Epilepsy
4255	2548	Reflex Epilepsy
4256	2549	Aggravated Epilepsy
4257	255	Hemangioma
4258	2550	Tactile Epilepsy
4259	2551	Anosognostic Epilepsy
4260	2555	Granulomatous Angiitis
4261	2556	Relapsing Polychondritis
4262	2557	Chondromalacia
4263	2559	Opiate Dependence
4264	256	Hemangioma Of Spleen
4265	2560	Morphine Dependence
4266	2562	Suppurative Periapical Periodontitis
4267	2563	Serratia Septicemia
4268	2565	Macular Corneal Dystrophy
4269	2566	Corneal Dystrophy
4270	2567	Primary Enterobacteriaceae Infectious Disease
4271	2568	Cervicitis
4272	2569	Retinal Drusen
4273	2570	Malignant Histiocytic Disease
4274	2571	Langerhans-cell Histiocytosis
4275	2573	Drug-induced Delirium
4276	2574	Diabetes Mellitus Insulin Dependent Type Uncontrolled With Renal Manifestations
4277	2575	Barbiturate Dependence
4278	2580	Rhizomelic Chondrodysplasia Punctata
4279	2581	Chondrodysplasia Punctata
4280	2582	Acatalasia
4281	2583	Agammaglobulinemia
4282	2584	Nephrotic Syndrome With Lesion Of Endothelial Glomerulonephritis
4283	2585	Nephrotic Syndrome With Lesion Of Segmental Hyalinosis
4284	2586	Nephrotic Syndrome With Lesion Of Hypocomplementemic Glomerulonephritis
4285	2587	Nephrotic Syndrome With Lesion Of Mesangiocapillary Glomerulonephritis
4286	2588	Nephrotic Syndrome With Lesion Of Persistent Glomerulonephritis
4287	2589	Nephrotic Syndrome With Lesion Of Membranous Glomerulonephritis
4288	259	Abortion Complicated By Embolism
4289	2590	Familial Nephrotic Syndrome
4290	2591	Nephrotic Syndrome With Lesion Of Lobular Glomerulonephritis
4291	2592	Nephrotic Syndrome With Lesion Of Focal Glomerulosclerosis
4292	2595	Glottis Cancer
4293	2596	Larynx Cancer
4294	2597	Glottis Neoplasm
4295	2598	Laryngeal Benign Neoplasm
4296	2599	Glottis Carcinoma
4297	26	Pancreas Disease
4298	260	Hepatic Flexure Cancer
4299	2600	Laryngeal Carcinoma
4300	2601	Juxtacortical Chondroma
4301	2602	Chondroma
4302	2609	Adenomyoma
4303	261	Transverse Colon Cancer
4304	2614	Serous Surface Papilloma
4305	2615	Papilloma
4306	2616	Wolffian Duct Adenoma
4307	262	Kidney Hemangiopericytoma
4308	2620	Ductal, Lobular, And Medullary Neoplasm
4309	2621	Autonomic Nervous System Neoplasm
4310	2622	Neuroblastic Tumor
4311	2623	Neuronal And Glio-neuronal Neoplasm
4312	2626	Choroid Plexus Papilloma
4313	2629	Papillary Serous Cystadenoma
4314	263	Kidney Cancer
4315	2630	Papillary Cystadenoma
4316	2631	Serous Cystadenoma
4317	2632	Papillary Serous Adenocarcinoma
4318	2633	Mucinous Cystadenoma
4319	2634	Cystadenoma
4320	2635	Mucinous Neoplasm
4321	2636	Ovarian Brenner Tumor
4322	2639	Breast Pericanalicular Fibroadenoma
4323	264	Hemangiopericytoma
4324	2640	Struma Ovarii
4325	2641	Ovarian Germ Cell Monodermal And Highly Specialized Teratoma
4326	2642	Lymphangiomyoma
4327	2643	Perivascular Epithelioid Cell Tumor
4328	2645	Benign Mesothelioma
4329	2647	Parachordoma
4330	2648	Sebaceous Adenoma
4331	2649	Chondroblastoma
4332	265	Spleen Angiosarcoma
4333	2651	Intraductal Papillomatosis
4334	2653	Benign Fibrous Mesothelioma
4335	2654	Serous Neoplasm
4336	2656	Breast Intracanalicular Fibroadenoma
4337	2658	Dermoid Cyst
4338	266	Malignant Soft Tissue Neoplasm Of The Spleen
4339	2660	Cystic Teratoma
4340	2661	Myoepithelioma
4341	2664	Sweat Gland Neoplasm
4342	2667	Benign Mesenchymoma
4343	2668	Mesenchymoma
4344	2669	Pacinian Tumor
4345	2670	Transitional Papilloma
4346	2671	Transitional Cell Carcinoma
4347	2673	Cystic Nephroma
4348	2676	Papillary Pseudomucinous Cystadenoma
4349	2678	Adult Mesoblastic Nephroma
4350	2679	Dysembryoplastic Neuroepithelial Tumor
4351	268	Liver Angiosarcoma
4352	2680	Pediatric Central Nervous System Tumor
4353	2681	Nevus
4354	2682	Intracystic Papillary Adenoma
4355	2683	Adenofibroma
4356	2685	Ossifying Fibromyxoid Tumor
4357	2687	Skin Sarcoma
4358	2689	Lymphangiosarcoma
4359	2691	Myoma
4360	2696	Leydig Cell Tumor
4361	2697	Renal Adenoma
4362	2698	Nephrogenic Adenofibroma
4363	2699	Sinonasal Papilloma
4364	270	Liver Sarcoma
4365	2700	Mucinous Adenofibroma
4366	2701	Nodular Tenosynovitis
4367	2702	Pigmented Villonodular Synovitis
4368	2703	Synovitis
4369	2704	Malignant Giant Cell Tumor Of The Tendon Sheath
4370	2705	Malignant Giant Cell Tumor
4371	2706	Synovium Cancer
4372	2708	Mushroom Workers' Lung
4373	271	Hemangioma Of Liver
4374	2710	Sick Building Syndrome
4375	2712	Phimosis
4376	2717	Bloom Syndrome
4377	2718	Hemopneumothorax
4378	272	Hepatic Vascular Disease
4379	2722	Acrodermatitis
4380	2723	Dermatitis
4381	2724	Port-wine Stain
4382	2725	Capillary Hemangioma
4383	2726	Acne Nevus
4384	2728	Pilosebaceous Hamartoma
4385	2729	Dyskeratosis Congenita
4386	2730	Epidermolysis Bullosa
4387	2731	Vesiculobullous Skin Disease
4388	2732	Rothmund-Thomson Syndrome
4389	2733	Skin Atrophy
4390	2734	Keratosis Follicularis
4391	2736	Hajdu-Cheney Syndrome
4392	2737	Witkop-Von Sallmann Disease
4393	2738	Pseudoxanthoma Elasticum
4394	2739	Gilbert Syndrome
4395	2741	Bilirubin Metabolic Disorder
4396	2742	Auditory System Disease
4397	2743	Pyeloureteritis Cystica
4398	2744	Pyelitis
4399	2745	Narcissistic Personality Disorder
4400	2746	Glycogen Storage Disease V
4401	2747	Glycogen Storage Disease
4402	2748	Glycogen Storage Disease III
4403	2749	Glycogen Storage Disease I
4404	275	Gastric Hemangioma
4405	2750	Glycogen Storage Disease IV
4406	2751	Glycogen Storage Disease VIII
4407	2752	Glycogen Storage Disease II
4408	2753	Nervous System Lysosomal Storage Disease
4409	2754	Glycogen Storage Disease VI
4410	2755	Mycobacterium Avium Complex Disease
4411	2756	Paratuberculosis
4412	2757	Mycobacterium Infectious Disease
4413	2762	Bone Carcinoma
4414	2763	Ethmoid Sinus Squamous Cell Carcinoma
4415	2764	Ethmoid Sinus Adenoid Cystic Carcinoma
4416	2766	Ethmoid Sinus Adenocarcinoma
4417	2768	Transient Tic Disorder
4418	2769	Tic Disorder
4419	277	Chorioangioma
4420	2770	Diaper Rash
4421	2771	Atopic Dermatitis And Related Conditions
4422	2772	Irritant Dermatitis
4423	2773	Contact Dermatitis
4424	2775	Long Bone Adamantinoma
4425	2776	Adamantinoma
4426	2777	Malignant Neoplasm Of Short Bones Of Upper Limb
4427	2778	Tumors Of Body Of Uterus, With Delivery
4428	2779	Tumors Of Body Of Uterus Complicating Pregnancy, Childbirth, Or The Puerperium
4429	2780	Rectosigmoid Junction Neoplasm
4430	2781	Rectosigmoid Cancer
4431	2782	Rectosigmoid Junction Cancer
4432	2784	Lung Sarcoma
4433	2785	Dandy-Walker Syndrome
4434	2786	Cerebellar Disease
4435	2788	Ciliophora Infectious Disease
4436	2789	Parasitic Protozoa Infectious Disease
4437	2790	Necatoriasis
4438	2791	Hookworm Infectious Disease
4439	2797	Idiopathic Interstitial Pneumonia
4440	2798	Bronchiolitis Obliterans Organizing Pneumonia
4441	2799	Bronchiolitis Obliterans
4442	28	Endocrine System Disease
4443	280	Ear Tuberculosis
4444	2800	Acute Interstitial Pneumonia
4445	2801	Nonspecific Interstitial Pneumonia
4446	2809	Primary Bartonellaceae Infectious Disease
4447	2810	Middle Lobe Syndrome
4448	2814	Malignant Neoplasm Of Acoustic Nerve
4449	2815	Cranial Nerve Malignant Neoplasm
4450	2816	Malignant Oculomotor Nerve Tumor
4451	2817	Cranial Nerve III Tumor
4452	2825	Nose Disease
4453	2828	Acalculous Cholecystitis
4454	283	Leukemic Reticuloendotheliosis Of Intra-abdominal Lymph Nodes
4455	2832	Geotrichosis
4456	2833	Dehydration Polycythemia
4457	2834	Acquired Polycythemia
4458	2835	Polycythemia Due To Hypoxia
4459	2838	Stress Polycythemia
4460	2839	Erythropoietin Polycythemia
4461	284	Malignant Neoplasm Of Abdomen
4462	2841	Asthma
4463	2842	Jervell-Lange Nielsen Syndrome
4464	2843	Long QT Syndrome
4465	2846	Bruxism
4466	2848	Melancholia
4467	285	Hairy Cell Leukemia
4468	2853	Atrophy Of Thyroid
4469	2855	Hyperthyroxinemia
4470	2856	Euthyroid Sick Syndrome
4471	2857	Abscess Of Thyroid
4472	2859	Hemoglobin C Disease
4473	2860	Hemoglobinopathy
4474	2861	Congenital Nonspherocytic Hemolytic Anemia
4475	2862	Glucosephosphate Dehydrogenase Deficiency
4476	287	Vision Disorder
4477	2870	Endometrial Adenocarcinoma
4478	2871	Endometrial Carcinoma
4479	2873	Metastatic Tumor To The Larynx
4480	2874	Metastasis To The Neck
4481	2876	Laryngeal Squamous Cell Carcinoma
4482	2877	Larynx Sarcoma
4483	2878	Throat Carcinoma
4484	2879	Nodular Degeneration Of Cornea
4485	288	Endometriosis Of Uterus
4486	2880	Hantavirus Infectious Disease
4487	2882	Cysts Of Iris, Ciliary Body And Anterior Chamber
4488	2883	Prostatic Adenoma
4489	2885	Benign Prostate Phyllodes Tumor
4490	2887	Prostate Leiomyoma
4491	2889	Retrocochlear Disease
4492	289	Endometriosis
4493	2890	Primary Klebsiella Infectious Disease
4494	2891	Thyroid Adenoma
4495	2892	Exocervical Carcinoma
4496	2893	Cervix Carcinoma
4497	2898	Commensal Streptococcal Infectious Disease
4498	2905	Commensal Escherichia Coli Infectious Disease
4499	2906	Rhabditida Infectious Disease
4500	2907	Goldenhar Syndrome
4501	2908	Treacher Collins Syndrome
4502	2910	Septic Abortion
4503	2913	Acute Pancreatitis
4504	2914	Immune System Disease
4505	2916	Hypersensitivity Reaction Type IV Disease
4506	2917	Cryoglobulinemia
4507	2918	Paraproteinemia
4508	292	Lacrimal System Cancer
4509	2920	Membranoproliferative Glomerulonephritis
4510	2921	Glomerulonephritis
4511	2926	Klippel-Trenaunay Syndrome
4512	2929	Newcastle Disease
4513	293	Lacrimal Gland Carcinoma
4514	2930	Avulavirus Infectious Disease
4515	2934	Aleutian Mink Disease
4516	2935	Chediak-Higashi Syndrome
4517	2936	Parvoviridae Infectious Disease
4518	2937	Human Herpesvirus 8 Infectious Disease
4519	2938	Epstein-Barr Virus Infectious Disease
4520	2939	Herpesviridae Infectious Disease
4521	294	Lacrimal Gland Cancer
4522	2942	Bronchiolitis
4523	2943	Poxviridae Infectious Disease
4524	2945	Severe Acute Respiratory Syndrome
4525	2946	Coronavirus Infectious Disease
4526	2947	Yellow Fever Virus Infectious Disease
4527	2948	Coronaviridae Infectious Disease
4528	2949	Nidovirales Infectious Disease
4529	295	Eye Carcinoma
4530	2950	Orbivirus Infectious Disease
4531	2951	Motion Sickness
4532	2952	Inner Ear Disease
4533	2956	Intra-abdominal Lymphangioma
4534	2957	Pulmonary Tuberculosis
4535	2958	Environmental Illness
4536	2959	Hyperimmunoglobulin Syndrome
4537	296	Mixed Lacrimal Gland Cancer
4538	2960	Photosensitive Trichothiodystrophy
4539	2961	DNA Repair Deficiency
4540	2962	Cockayne Syndrome
4541	2964	Periarthritis
4542	2965	Bursitis
4543	297	Pleomorphic Adenoma Carcinoma
4544	2972	Renal Artery Obstruction
4545	2973	Kidney Cortex Necrosis
4546	2974	Multicystic Dysplastic Kidney
4547	2975	Cystic Kidney
4548	2976	Glomerular Vascular Disorder
4549	2977	Primary Hyperoxaluria
4550	2978	Carbohydrate Metabolic Disorder
4551	298	Lacrimal Gland Adenocarcinoma
4552	2980	Bone Marrow Tansplantation Nephropathy
4553	2981	Kidney Papillary Necrosis
4554	2982	Perinephritis
4555	2983	Anuria
4556	2985	Chronic Rejection Of Renal Transplant
4557	2986	IgA Glomerulonephritis
4558	2987	Familial Mediterranean Fever
4559	2988	Antiphospholipid Syndrome
4560	2989	Atypical Small Acinar Proliferation Of The Prostate Gland
4561	299	Adenocarcinoma
4562	2990	Tumor Of Specialized Prostatic Stroma
4563	2991	Stromal Neoplasm
4564	2992	Prostate Neuroendocrine Neoplasm
4565	2994	Germ Cell Cancer
4566	2995	Ovarian Mixed Germ Cell-sex Cord Neoplasm
4567	2996	Mixed Germ Cell-sex Cord Neoplasm
4568	2997	Sertoli-Leydig Cell Tumor
4569	2998	Testicular Cancer
4570	2999	Granulosa Cell Tumor
4571	3	Disease By Environmental Exposure
4572	3001	Female Reproductive Endometrioid Cancer
4573	3002	Ovary Neuroendocrine Neoplasm
4574	3003	Nipple Neoplasm
4575	3004	Breast Myoepithelial Neoplasm
4576	3007	Breast Ductal Carcinoma
4577	3008	Invasive Ductal Carcinoma
4578	3009	Breast Neuroendocrine Neoplasm
4579	3010	Lobular Neoplasia
4580	3011	Breast Granular Cell Tumor
4581	3012	Li-Fraumeni Syndrome
4582	3013	Intraductal Breast Neoplasm
4583	3015	Breast Papillary Neoplasm
4584	3016	Breast Malignant Phyllodes Tumor
4585	3017	Breast Sarcoma
4586	3019	Postpartum Acute Renal Failure
4587	302	Substance Abuse
4588	3020	Complication Of Labor And/or Delivery
4589	3021	Acute Kidney Failure
4590	3022	Complication Of The Puerperium
4591	3024	Prostatic Acinar Adenocarcinoma
4592	3025	Acinar Cell Carcinoma
4593	3026	Metastatic Prostatic Adenocarcinoma
4594	3027	Metastatic Adenocarcinoma
4595	3028	Intramucosal Adenocarcinoma Colon Adenoma
4596	3029	Colon Mucinous Adenocarcinoma
4597	303	Substance-related Disorder
4598	3030	Mucinous Adenocarcinoma
4599	3033	Colon Signet Ring Adenocarcinoma
4600	3038	Submucosal Invasive Colon Adenocarcinoma
4601	3039	Cecum Adenocarcinoma
4602	3042	Allergic Contact Dermatitis
4603	3044	Food Allergy
4604	3047	Wissler's Syndrome
4605	3049	Churg-Strauss Syndrome
4606	305	Carcinoma
4607	3052	Balkan Nephropathy
4608	3055	Paratyphoid Fever
4609	3056	Paramyxoviridae Infectious Disease
4610	306	Dyskinetic Syndrome
4611	3067	Taste Disorder
4612	3068	Glioblastoma Multiforme
4613	3069	Astrocytoma
4614	3070	Malignant Glioma
4615	3071	Gliosarcoma
4616	3072	Secondary Glioblastoma Multiforme
4617	3073	Brain Glioblastoma Multiforme
4618	3074	Giant Cell Glioblastoma
4619	3076	Adult Astrocytic Tumour
4620	3077	Anaplastic Childhood Astrocytoma
4621	3078	Grade III Astrocytoma
4622	3079	Juvenile Astrocytoma
4623	308	Early Myoclonic Encephalopathy
4624	3081	Cystic Lymphangioma
4625	3082	Interstitial Lung Disease
4626	3083	Chronic Obstructive Pulmonary Disease
4627	3086	Gingival Overgrowth
4628	3087	Gingivitis
4629	3089	Granulomatous Orchitis
4630	3090	Testicular Non-neoplastic Disease
4631	3091	Acinetobacter Infectious Disease
4632	3092	Opportunistic Moraxellaceae Infectious Disease
4633	3093	Nervous System Cancer
4634	3094	Neuroepithelial Neoplasm
4635	3095	Germ Cell And Embryonal Cancer
4636	3096	Stenosis Of Lacrimal Sac
4637	3097	Stenosis And Insufficiency Of Lacrimal Passage
4638	3098	Small Cell Sarcoma
4639	310	MERRF Syndrome
4640	3100	Ureaplasma Urealyticum Urethritis
4641	3101	Primary Mycoplasmatales Infectious Disease
4642	3102	Cervical Rib Syndrome
4643	3103	Thoracic Outlet Syndrome
4644	3106	Nematoda Infectious Disease
4645	3107	Toxascariasis
4646	3108	Ascaridiasis
4647	3109	Idiopathic CD4-positive T-lymphocytopenia
4648	3110	Papillary Cystadenocarcinoma
4649	3111	Cystadenocarcinoma
4650	3112	Papillary Adenocarcinoma
4651	3113	Papillary Carcinoma
4652	3114	Serous Cystadenocarcinoma
4653	3115	Urinary Tract Transitional Cell Cancer
4654	3116	Kidney Benign Neoplasm
4655	3117	Hepatobiliary Benign Neoplasm
4656	3118	Hepatobiliary Disease
4657	3119	Gastrointestinal System Cancer
4658	312	Tenosynovitis Of Foot And Ankle
4659	3120	Gallbladder Papillomatosis
4660	3121	Gallbladder Cancer
4661	3122	Gastric Outlet Obstruction
4662	3125	Multiple Endocrine Neoplasia
4663	3127	Proctitis
4664	3128	Anus Disease
4665	313	Synovitis And Tenosynovitis
4666	3132	Porphyria Cutanea Tarda
4667	3133	Acute Porphyria
4668	3134	Facial Dermatosis
4669	3136	Scalp Dermatosis
4670	3137	Multiple Symmetrical Lipomatosis
4671	3138	Acanthosis Nigricans
4672	314	Tenosynovial Giant Cell Tumor
4673	3140	Scleredema Adultorum
4674	3141	Mucinoses
4675	3142	Leg Dermatosis
4676	3143	Eczematous Skin Disease
4677	3144	Cutis Laxa
4678	3145	Hyperlipoproteinemia Type III
4679	3146	Lipid Metabolism Disorder
4680	3148	Dermal Unilateral Segmental Cavernous Angioma
4681	3149	Keratoacanthoma
4682	315	Synovium Neoplasm
4683	3151	Skin Squamous Cell Carcinoma
4684	3153	Lipomatosis
4685	3156	Incontinentia Pigmenti Achromians
4686	3157	Congenital Melanocytic Nevus
4687	3158	Hand Dermatosis
4688	3159	Photosensitivity Disease
4689	3162	Malignant Spindle Cell Melanoma
4690	3163	Spindle Cell Cancer
4691	3164	Hair Nevus
4692	3165	Skin Benign Neoplasm
4693	3166	Leukemoid Reaction
4694	3168	Squamous Cell Neoplasm
4695	3169	Papillary Epithelial Neoplasm
4696	3171	Respiratory Tract Papilloma
4697	3172	Papillary Adenoma
4698	3173	Fallopian Tube Serous Papilloma
4699	3177	Verrucous Papilloma
4700	3178	Skin Papilloma
4701	3179	Inverted Papilloma
4702	318	Progressive Muscular Atrophy
4703	3181	Oligodendroglioma
4704	3183	Childhood Oligodendroglioma
4705	3184	Spinal Cord Oligodendroglioma
4706	3185	Spinal Cord Glioma
4707	3186	Adult Oligodendroglioma
4708	3187	Brain Oligodendroglioma
4709	319	Spinal Cord Disease
4710	3191	Nemaline Myopathy
4711	3192	Neurilemmoma
4712	3193	Peripheral Nerve Sheath Neoplasm
4713	3196	Cellular Schwannoma
4714	3197	Schwannoma Of Twelfth Cranial Nerve
4715	3198	Hypoglossal Nerve Neoplasm
4716	3199	C-P Angle Neurinoma
4717	320	Vascular Myelopathy
4718	3200	Cerebellopontine Angle Tumor
4719	3201	Sympathetic Neurilemmoma
4720	3202	Neurilemmoma Of The Fifth Cranial Nerve
4721	3203	Macrocystic Neurilemmoma
4722	3204	Neurilemmomatosis
4723	3205	Melanotic Neurilemmoma
4724	3206	Plexiform Schwannoma
4725	3208	Sensation Disorder
4726	3209	Junctional Epidermolysis Bullosa
4727	321	Tropical Spastic Paraparesis
4728	3210	Pelizaeus-Merzbacher Disease
4729	3211	Lysosomal Storage Disease
4730	3212	Hereditary Central Nervous System Demyelinating Disease
4731	3213	Demyelinating Disease
4732	3215	Infectious Bovine Rhinotracheitis
4733	3216	Jejunal Somatostatinoma
4734	3217	Small Intestinal Delta Cell Somatostatin Producing Tumor
4735	3218	Jejunal Neoplasm
4736	322	Myelitis
4737	3222	Causalgia
4738	3223	Complex Regional Pain Syndrome
4739	3225	Tracheal Disease
4740	3227	Tracheal Stenosis
4741	3229	Gastric Dilatation
4742	323	Human T-lymphotropic Virus 1 Infectious Disease
4743	3230	High Pressure Neurological Syndrome
4744	3231	Occupational Disease
4745	3234	Central Nervous System Lymphoma
4746	3239	Pigmented Spindle Cell Nevus
4747	3240	Aspiration Pneumonitis
4748	3241	Lipid Pneumonia
4749	3246	Embryonal Rhabdomyosarcoma
4750	3247	Rhabdomyosarcoma
4751	3250	Pleomorphic Rhabdomyosarcoma
4752	3251	Prostate Embryonal Rhabdomyosarcoma
4753	3252	Prostate Rhabdomyosarcoma
4754	3253	Embryonal Extrahepatic Bile Duct Rhabdomyosarcoma
4755	3254	Bile Duct Rhabdomyosarcoma
4756	3255	Botryoid Rhabdomyosarcoma
4757	3256	Embryonal Childhood Rhabdomyosarcoma
4758	3257	Pediatric Rhabdomyosarcoma
4759	3258	Orbit Embryonal Rhabdomyosarcoma
4760	3259	Orbit Rhabdomyosarcoma
4761	326	Ischemia
4762	3260	Spindle Cell Rhabdomyosarcoma
4763	3261	Job's Syndrome
4764	3262	Phagocyte Bactericidal Dysfunction
4765	3263	Piebaldism
4766	3264	Subacute Leukemia
4767	3265	Chronic Granulomatous Disease
4768	3267	Mucinous Ovarian Cystadenoma
4769	3269	Ovarian Cystadenoma
4770	327	Syringomyelia
4771	3274	Proliferative Type Fibrocystic Change Of Breast
4772	3275	Thymoma
4773	3276	Thymus Epithelial Cancer
4774	3277	Thymus Cancer
4775	3278	Encapsulated Thymoma
4776	3279	Spindle Cell Thymoma
4777	3280	Mixed Type Thymoma
4778	3281	Combined Thymoma
4779	3282	Dendritic Cell Thymoma
4780	3283	Invasive Malignant Thymoma
4781	3284	Thymic Carcinoma
4782	3292	Monkeypox
4783	3293	Lumpy Skin Disease
4784	3295	Fowlpox
4785	3296	Infectious Ectromelia
4786	3297	Infectious Myxomatosis
4787	3298	Vaccinia
4788	3299	Yersinia Pseudotuberculosis Infectious Disease
4789	3300	Yersinia Infectious Disease
4790	3301	Gonadoblastoma
4791	3302	Chordoma
4792	3303	Notochordal Cancer
4793	3304	Germinoma
4794	3305	Teratocarcinoma
4795	3306	Mixed Germ Cell Cancer
4796	3307	Teratoma
4797	3308	Embryonal Carcinoma
4798	3309	Neurodermatitis
4799	331	Central Nervous System Disease
4800	3310	Atopic Dermatitis
4801	3312	Bipolar Disorder
4802	3314	Angiomyolipoma
4803	3315	Lipoma
4804	3316	Perivascular Tumor
4805	3317	Hepatic Angiomyolipoma
4806	3318	Epithelioid Type Angiomyolipoma
4807	3319	Lymphangioleiomyomatosis
4808	332	Amyotrophic Lateral Sclerosis
4809	3320	Tay-Sachs Disease
4810	3321	Gangliosidosis GM2
4811	3322	Gangliosidosis GM1
4812	3323	Sandhoff Disease
4813	3324	Mood Disorder
4814	3325	Hyperglobulinemic Purpura
4815	3326	Purpura
4816	3327	Partial Motor Epilepsy
4817	3328	Temporal Lobe Epilepsy
4818	3329	Benign Epilepsy With Centrotemporal Spikes
4819	333	Chronic Factitious Illness With Physical Symptoms
4820	3330	Partial Sensory Epilepsy
4821	3331	Frontal Lobe Epilepsy
4822	3332	Haemonchiasis
4823	334	Histrionic Personality Disorder
4824	3340	Lymphangioendothelioma
4825	3341	Osteitis Fibrosa
4826	3342	Bone Inflammation Disease
4827	3343	Mucolipidosis
4828	3345	Xanthomatosis
4829	3347	Osteosarcoma
4830	3349	Osteogenic Neoplasm
4831	3350	Mesenchymal Cell Neoplasm
4832	3351	Bone Angioendothelial Sarcoma
4833	3352	Malignant Fibrous Histiocytoma Of Bone
4834	3354	Fibrosarcoma Of Bone
4835	3355	Fibrosarcoma
4836	3356	Localized Osteosarcoma
4837	3357	Extraosseous Osteosarcoma
4838	3359	Malignant Extraskeletal Cartilaginous And Osseous Tumor
4839	336	Non-traumatic Tendon Rupture
4840	3360	Multifocal Osteogenic Sarcoma
4841	3361	Pediatric Osteosarcoma
4842	3362	Coronary Aneurysm
4843	3365	Recurrent Osteosarcoma
4844	3367	Bone Leiomyosarcoma
4845	3368	Bone Ewing's Sarcoma
4846	3369	Peripheral Primitive Neuroectodermal Tumor
4847	337	Spinal Accessory Nerve Neoplasm
4848	3371	Chondrosarcoma
4849	3372	Chondroblastic Osteosarcoma
4850	3373	Juxtacortical Osteosarcoma
4851	3374	Peripheral Osteosarcoma
4852	3376	Bone Osteosarcoma
4853	3377	Small Cell Osteogenic Sarcoma
4854	3378	Conventional Central Osteosarcoma
4855	3379	Metachronous Osteosarcoma Of The Bone
4856	338	Cranial Nerve Neoplasm
4857	3381	Liposarcoma Of Bone
4858	3382	Liposarcoma
4859	3384	Metastatic Osteosarcoma
4860	3385	Bacterial Vaginosis
4861	3388	Periodontal Disease
4862	3389	Papillon-Lefevre Disease
4863	339	Accessory Nerve Disease
4864	3390	Palmoplantar Keratosis
4865	3393	Coronary Artery Disease
4866	3401	Inappropriate ADH Syndrome
4867	3402	Ectopic Hormone Secretion Syndrome Associated With Neoplasia
4868	3403	Hypergammaglobulinemia
4869	3404	Benign Monoclonal Gammopathy
4870	3405	Histiocytosis
4871	3407	Carotid Artery Disease
4872	341	Peripheral Vascular Disease
4873	3410	Carotid Artery Thrombosis
4874	3412	Infectious Canine Hepatitis
4875	3413	Alpha-mannosidosis
4876	3414	Mannosidase Deficiency Disease
4877	3417	Glossopharyngeal Nerve Neoplasm
4878	3418	Glossopharyngeal Nerve Disease
4879	3419	Optic Nerve Neoplasm
4880	342	Subclavian Artery Aneurysm
4881	3420	Neoplasm Of Visual Pathway
4882	3421	Trochlear Nerve Neoplasm
4883	3426	Vestibular Disease
4884	3428	Granulomatous Myositis
4885	3429	Inclusion Body Myositis
4886	3431	Cerebritis
4887	3436	Viral Laryngitis
4888	3437	Laryngitis
4889	344	Disease Of Biological Process
4890	3443	Mammary Paget's Disease
4891	3444	Scrotum Paget's Disease
4892	3445	Scrotal Carcinoma
4893	3446	Anal Paget's Disease
4894	3447	Anus Adenocarcinoma
4895	3448	Penis Paget's Disease
4896	3449	Penis Carcinoma
4897	345	Uterine Disease
4898	3450	Cutaneous Paget's Disease
4899	3451	Skin Carcinoma
4900	3454	Brain Infarction
4901	3456	Cervix Erosion
4902	3457	Invasive Lobular Carcinoma
4903	3458	Breast Adenocarcinoma
4904	3459	Breast Carcinoma
4905	3461	Breast Hamartoma
4906	3462	Hamartoma
4907	3463	Breast Disease
4908	3464	Hamartoma Of Skin Appendage
4909	3465	Congenital Nevus Of Skin
4910	3466	Cartilaginous Hamartoma
4911	3467	Mesenchymal Hamartoma
4912	3470	Hamartoma Of Central Nervous System
4913	3472	Hamartoma Of Lung
4914	3473	Brain Hamartoma
4915	3476	Lipomatous Hamartoma
4916	3478	Iris Cancer
4917	3479	Uveal Cancer
4918	348	Blepharochalasis
4919	3480	Uveal Disease
4920	3481	Septicemic Plague
4921	3482	Plague
4922	3485	Oxyurida Infectious Disease
4923	3486	Necrobiosis Lipoidica
4924	3487	Metabolic Skin Disease
4925	3488	Cellulitis
4926	349	Systemic Mastocytosis
4927	3490	Noonan Syndrome
4928	3491	Turner Syndrome
4929	3492	Mixed Connective Tissue Disease
4930	3493	Signet Ring Cell Adenocarcinoma
4931	3494	Bile Duct Signet Ring Cell Carcinoma
4932	3495	Extrahepatic Bile Duct Adenocarcinoma
4933	3497	Pancreatic Signet Ring Cell Adenocarcinoma
4934	3498	Pancreatic Ductal Adenocarcinoma
4935	3499	Gallbladder Signet Ring Cell Adenocarcinoma
4936	350	Mastocytosis
4937	3500	Gallbladder Adenocarcinoma
4938	3501	Ampullary Signet Ring Cell Adenocarcinoma
4939	3502	Ampulla Of Vater Adenocarcinoma
4940	3503	Breast Signet Ring Cell Adenocarcinoma
4941	3504	Prostate Signet Ring Cell Adenocarcinoma
4942	3507	Dermatofibrosarcoma Protuberans
4943	3508	Stricture Or Kinking Of Ureter
4944	3512	Neurofibrosarcoma
4945	3516	Adult Fibrosarcoma
4946	3517	Conventional Fibrosarcoma
4947	3519	Non-metastatic Fibrosarcoma
4948	3520	Pediatric Fibrosarcoma
4949	3521	Childhood Soft Tissue Sarcoma
4950	3522	Lateral Medullary Syndrome
4951	3523	Brain Stem Infarction
4952	3525	Middle Cerebral Artery Infarction
4953	3526	Cerebral Infarction
4954	3527	Cerebral Arterial Disease
4955	3528	Anterior Cerebral Artery Infarction
4956	3529	Central Core Myopathy
4957	3530	Chronic Wasting Disease
4958	3532	Peste Des Petits Ruminants Infectious Disease
4959	3533	Morbillivirus Infectious Disease
4960	3534	Lafora Disease
4961	3535	Unverricht-Lundborg Syndrome
4962	3540	Choroid Plexus Cancer
4963	3541	Cerebral Ventricle Cancer
4964	3542	Adult Choroid Plexus Cancer
4965	3544	Atypical Choroid Plexus Papilloma
4966	3545	Childhood Choroid Plexus Cancer
4967	3546	Somatosensory Disorder
4968	355	Mast-cell Sarcoma
4969	3557	Superior Mesenteric Artery Syndrome
4970	3558	Duodenal Obstruction
4971	3559	Pseudomyxoma Peritonei
4972	356	Intrathoracic Lymph Node Mast Cell Malignancy
4973	3565	Meningioma
4974	3568	Viral Hemorrhagic Septicemia
4975	357	Upper Limb Lymph Node Mast Cell Malignancy
4976	3571	Liver Cancer
4977	3572	Intracranial Sinus Thrombosis
4978	3574	Lateral Sinus Thrombosis
4979	3575	Cavernous Sinus Thrombosis
4980	3576	Sagittal Sinus Thrombosis
4981	3577	Sertoli Cell Tumor
4982	3578	Ovarian Gonadoblastoma
4983	3579	Testicular Gonadoblastoma
4984	3580	Testicular Mixed Germ Cell-sex Cord-stromal Neoplasm
4985	3583	Enterotoxemia
4986	3584	Commensal Clostridium Infectious Disease
4987	3586	Puerperal Pyrexia Of Unknown Origin
4988	3587	Pancreatic Ductal Carcinoma
4989	3589	Poor Prognosis Metastatic Gestational Trophoblastic Tumor
4990	3590	Gestational Trophoblastic Neoplasm
4991	3591	Nonmetastatic Gestational Trophoblastic Tumor
4992	3593	Epithelioid Trophoblastic Tumor
4993	3594	Choriocarcinoma
4994	3596	Placental Site Trophoblastic Tumor
4995	3597	Good Prognosis Metastatic Gestational Trophoblastic Tumor
4996	3602	Toxic Encephalopathy
4997	3603	Mucinous Cystadenocarcinoma
4998	3604	Ovarian Mucinous Cystadenocarcinoma
4999	3605	Ovarian Cystadenocarcinoma
5000	3606	Ovarian Mucinous Adenocarcinoma
5001	3607	Appendix Mucinous Cystadenocarcinoma
5002	3608	Appendix Adenocarcinoma
5003	3609	Breast Mucinous Cystadenocarcinoma
5004	361	Cervix Endometriosis
5005	3610	Breast Mucinous Carcinoma
5006	3611	Acute Retinal Necrosis Syndrome
5007	3612	Retinitis
5008	3613	Canavan Disease
5009	3614	Kallmann Syndrome
5010	3615	Infiltrating Angiolipoma
5011	3616	Angiolipoma
5012	3617	Epidural Spinal Canal Angiolipoma
5013	3618	Epidural Neoplasm
5014	3620	Central Nervous System Cancer
5015	3621	Central Nervous System Neuroepithelial Neoplasm
5016	3627	Aortic Aneurysm
5017	363	Uterine Cancer
5018	3633	Beta-mannosidosis
5019	3635	Congenital Myasthenic Syndrome
5020	3636	Commensal Desulfovibrionaceae Infectious Disease
5021	3637	Childhood Spinal Cord Tumor
5022	3639	Spinal Cord Intramedullary Teratoma
5023	364	Spontaneous Rupture Of Bladder
5024	3640	Central Nervous System Teratoma
5025	3641	Conus Medullaris Neoplasm
5026	3642	Empty Sella Syndrome
5027	3643	Sella Turcica Neoplasm
5028	3644	Hypothalamic Neoplasm
5029	3646	Necrosis Of Pituitary
5030	3648	Inborn Errors Pyruvate Metabolism
5031	3649	Pyruvate Decarboxylase Deficiency
5032	365	Bladder Disease
5033	3650	Lactic Acidosis
5034	3651	Pyruvate Carboxylase Deficiency Disease
5035	3652	Leigh Disease
5036	3653	Laboratory Infectious Disease
5037	3659	Sialuria
5038	366	Olfactory Nerve Neoplasm
5039	3660	Wheat Allergic Reaction
5040	3663	Cutaneous Mastocytosis
5041	3664	Mast Cell Neoplasm
5042	3665	Diffuse Cutaneous Mastocytosis
5043	3666	Cutaneous Solitary Mastocytoma
5044	3667	Cardiovirus Infectious Disease
5045	3668	Picornaviridae Infectious Disease
5046	3669	Intermittent Claudication
5047	367	Olfactory Nerve Disease
5048	3671	Pericoronitis
5049	3672	Rhabdoid Cancer
5050	3674	Kidney Rhabdoid Cancer
5051	3675	Childhood Kidney Neoplasm
5052	3677	Pulmonary Plasma Cell Granuloma
5053	368	Cerebrum Cancer
5054	3680	Malignant Neoplasm Of Lip, Oral Cavity And Pharynx
5055	3683	Lung Benign Neoplasm
5056	3686	Helicobacter Pylori Infectious Disease
5057	3687	MELAS Syndrome
5058	3688	Plexopathy
5059	3689	Brachial Plexus Neuritis
5060	369	Olfactory Neuroblastoma
5061	3690	Brachial Plexus Neuropathy
5062	3691	Anal Colloid Adenocarcinoma
5063	3692	Anal Canal Adenocarcinoma
5064	3693	Ampulla Of Vater Mucinous Adenocarcinoma
5065	3694	Adnexal Mucinous Adenocarcinoma
5066	3695	Adnexa Adenocarcinoma
5067	3696	Acute Sanguinous Otitis Media
5068	3697	Acute Transudative Otitis Media
5069	3698	Bile Duct Mucinous Adenocarcinoma
5070	3699	Uterine Ligament Mucinous Adenocarcinoma
5071	37	Skin Disease
5072	370	Malignant Olfactory Nerve Tumor
5073	3700	Uterine Ligament Adenocarcinoma
5074	3701	Cervical Mucinous Adenocarcinoma
5075	3702	Cervical Adenocarcinoma
5076	3703	Prostate Colloid Adenocarcinoma
5077	3704	Fallopian Tube Mucinous Adenocarcinoma
5078	3705	Fallopian Tube Mucinous Tumor
5079	3706	Fallopian Tube Adenocarcinoma
5080	3707	Endometrial Mucinous Adenocarcinoma
5081	3709	Rectum Mucinous Adenocarcinoma
5082	371	Extracranial Neuroblastoma
5083	3710	Bladder Colloid Adenocarcinoma
5084	3711	Bladder Adenocarcinoma
5085	3713	Ovary Adenocarcinoma
5086	3715	Non-suppurative Otitis Media And Eustachian Tube Disorder
5087	3716	Mucinous Stomach Adenocarcinoma
5088	3717	Gastric Adenocarcinoma
5089	3718	Arterivirus Infectious Disease
5090	3720	Extramedullary Plasmacytoma
5091	3721	Plasmacytoma
5092	3722	Solitary Osseous Plasmacytoma
5093	3723	Solitary Plasmacytoma Of Chest Wall
5094	3726	Puerperal Disease
5095	3728	Acute Allergic Sanguinous Otitis Media
5096	3729	Respirovirus Infectious Disease
5097	373	Infant Nutrition Disorder
5098	3730	Pneumonic Pasteurellosis
5099	3731	Primary Pasteurellaceae Infectious Disease
5100	3732	Bovine Respiratory Disease Complex
5101	3733	Theileriasis
5102	3737	Verrucous Carcinoma
5103	3739	Human Papillomavirus Related Squamous Cell Carcinoma
5104	374	Nutrition Disease
5105	3740	Vulva Verrucous Carcinoma
5106	3741	Bladder Verrucous Squamous Cell Carcinoma
5107	3742	Bladder Squamous Cell Carcinoma
5108	3743	Cervical Verrucous Carcinoma
5109	3744	Cervical Squamous Cell Carcinoma
5110	3747	Esophagus Verrucous Carcinoma
5111	3748	Esophagus Squamous Cell Carcinoma
5112	3749	Urethral Verrucous Carcinoma
5113	3750	Urethra Squamous Cell Carcinoma
5114	3751	Plantar Verrucous Skin Carcinoma
5115	3752	Larynx Verrucous Carcinoma
5116	3753	Hermansky-Pudlak Syndrome
5117	3755	Antithrombin III Deficiency
5118	3756	Protein C Deficiency
5119	3758	Fusobacterium Infectious Disease
5120	3762	Cytochrome-c Oxidase Deficiency Disease
5121	3763	Hermaphroditism
5122	3764	Denys-Drash Syndrome
5123	3765	Pseudohermaphroditism
5124	3766	Leukorrhea
5125	3767	Vaginal Discharge
5126	3770	Pulmonary Fibrosis
5127	3772	Intraventricular Meningioma
5128	3773	Third Ventricle Chordoid Glioma
5129	3774	Chordoid Glioma
5130	3777	Granuloma Annulare
5131	3781	Anovulation
5132	3783	Coffin-Lowry Syndrome
5133	379	External Ear Disease
5134	3798	Pleural Empyema
5135	3799	Feline Panleukopenia
5136	3800	Avian Leukosis
5137	3803	Crigler-Najjar Syndrome
5138	3805	Porokeratosis
5139	3809	Epidural Spinal Canal Meningioma
5140	381	Arthropathy
5141	3810	Chondrogenic Neoplasm
5142	3812	Mediastinum Chondroma
5143	3813	Central Nervous System Chondroma
5144	3814	Extraskeletal Chondroma
5145	3816	Glossopharyngeal Nerve Paralysis
5146	3817	Cranial Nerve Palsy
5147	3818	Photoallergic Dermatitis
5148	3819	Toxicodendron Dermatitis
5149	3820	Primary Chlamydiaceae Infectious Disease
5150	3821	Posterior Cerebral Artery Infarction
5151	3825	Shwartzman Phenomenon
5152	3827	Congenital Diaphragmatic Hernia
5153	3828	Chromophobe Adenoma
5154	3829	Pituitary Adenoma
5155	3836	Posttransplantation Lymphoproliferative Disease
5156	3837	Benign Lymphoproliferative Disease
5157	3838	Skin Lymphoproliferative Disease
5158	384	Wolff-Parkinson-White Syndrome
5159	3840	Craniopharyngioma
5160	3842	Skull Base Neoplasm
5161	3843	Diencephalic Neoplasm
5162	3844	Pediatric Craniopharyngioma
5163	3845	Childhood Intracranial Neoplasm
5164	3846	Adamantinous Craniopharyngioma
5165	3847	Papillary Craniopharyngioma
5166	3848	Adult Craniopharyngioma
5167	3849	Adult Intracranial Neoplasm
5168	3850	Hemangiopericytic Tumor
5169	3852	Peutz-Jeghers Syndrome
5170	3855	Seminal Vesicle Tumor
5171	3856	Male Reproductive Organ Cancer
5172	3857	Large Cell Medulloblastoma
5173	3859	Relapsed Medulloblastoma
5174	386	Postpericardiotomy Syndrome
5175	3860	Cerebellar Vermis Medulloblastoma
5176	3861	Medullomyoblastoma
5177	3862	FAP Associated Medulloblastoma
5178	3863	Region 17p13 Allelic Loss Associated Medulloblastoma
5179	3864	Adult Medulloblastoma
5180	3865	Adult Central Nervous System Primitive Neuroectodermal Neoplasm
5181	3866	Desmoplastic Medulloblastoma
5182	3867	Nevoid Basal Cell Carcinoma Syndrome Associated Medulloblastoma
5183	3868	Melanotic Medulloblastoma
5184	3869	Childhood Medulloblastoma
5185	3870	Childhood Central Nervous System Primitive Neuroectodermal Neoplasm
5186	3871	Medulloblastoma With Leptomeningeal Spread
5187	3872	Leptomeningeal Metastases
5188	3873	Nodular Medulloblastoma
5189	3875	Thrombophlebitis
5190	3876	Colonic Pseudo-obstruction
5191	3877	Functional Colonic Disease
5192	3878	Intestinal Pseudo-obstruction
5193	3881	Proteus Infectious Disease
5194	3883	Lynch Syndrome
5195	3890	Acute Intermittent Porphyria
5196	3891	Placental Insufficiency
5197	3892	Insulinoma
5198	3893	Hidrocystoma
5199	3895	Apocrine Adenoma
5200	3896	Hidradenoma
5201	3898	Skin Appendage Adenoma
5202	3899	Skin Appendage Neoplasm
5203	390	Obstetric Venous Problem
5204	3901	Vulvitis
5205	3902	Pseudorabies
5206	3904	Bronchus Carcinoma
5207	3905	Lung Carcinoma
5208	3906	Bronchial Neoplasm
5209	3907	Lung Squamous Cell Carcinoma
5210	3908	Non-small Cell Lung Carcinoma
5211	3909	Bronchogenic Lung Adenocarcinoma
5212	3910	Lung Adenocarcinoma
5213	3911	Progeria
5214	3914	Serous Cystadenoma Of Ovary
5215	3916	Borderline Malignancy Serous Cystadenoma
5216	3917	Pancreatic Serous Cystadenoma
5217	3918	Pancreatic Cystadenoma
5218	3919	Pancreatic Serous Cystic Neoplasm
5219	3923	Diffuse Lipomatosis
5220	3924	Main Bronchus Cancer
5221	3925	Steroid Lipomatosis
5222	3926	Mediastinal Lipomatosis
5223	3927	Pelvic Lipomatosis
5224	3928	Adiposis Dolorosa
5225	3930	Otitis Interna
5226	3933	Anterior Compartment Syndrome
5227	3939	Lipomatous Cancer
5228	3944	Arenaviridae Infectious Disease
5229	3946	Pituitary-dependent Cushing's Disease
5230	3947	Adrenal Gland Hyperfunction
5231	3948	Adrenocortical Carcinoma
5232	3950	Adrenal Carcinoma
5233	3951	Acute Myocarditis
5234	3952	Adrenal Cortex Disease
5235	3953	Adrenal Gland Cancer
5236	3959	Adrenal Cortical Adenocarcinoma
5237	396	Loeffler Endocarditis
5238	3962	Follicular Thyroid Carcinoma
5239	3963	Thyroid Carcinoma
5240	3964	Trabecular Follicular Adenocarcinoma
5241	3965	Merkel Cell Carcinoma
5242	3968	Papillary Follicular Thyroid Adenocarcinoma
5243	3969	Papillary Thyroid Carcinoma
5244	397	Restrictive Cardiomyopathy
5245	3973	Thyroid Medullary Carcinoma
5246	3974	Medullary Carcinoma
5247	3978	Extrinsic Cardiomyopathy
5248	398	Cutaneous Tuberculosis
5249	3981	Pantothenate Kinase-associated Neurodegeneration
5250	3982	Meige Syndrome
5251	3983	Oesophagostomiasis
5252	3984	Strongylus Equinus Infectious Disease
5253	3985	Ostertagiasis
5254	399	Tuberculosis
5255	3996	Urinary System Cancer
5256	3997	Urinary Tract Infiltrating Transitional Cell Carcinoma
5257	3998	Bartholin's Gland Transitional Cell Carcinoma
5258	3999	Bartholin's Gland Carcinoma
5259	4	Disease
5260	4000	Ovary Transitional Cell Carcinoma
5261	4001	Ovarian Carcinoma
5262	4003	Schneiderian Carcinoma
5263	4005	Endometrial Transitional Cell Carcinoma
5264	4006	Bladder Transitional Cell Carcinoma
5265	4007	Bladder Carcinoma
5266	4008	Fallopian Tube Transitional Cell Carcinoma
5267	4009	Renal Pelvis And Ureter Transitional Cell Cancer
5268	401	Multidrug-resistant Tuberculosis
5269	4010	Renal Pelvis And Ureter Cancer
5270	4011	Prostate Transitional Cell Carcinoma
5271	4012	Papillary Transitional Carcinoma
5272	4013	Urethra Transitional Cell Carcinoma
5273	4014	Sarcomatoid Transitional Cell Carcinoma
5274	4015	Spindle Cell Carcinoma
5275	402	Oral Tuberculosis
5276	4020	Psychomotor Disease
5277	4022	Ureterocele
5278	4023	Linitis Plastica
5279	4024	Scirrhous Adenocarcinoma
5280	4025	Steatitis
5281	4026	Vitamin E Deficiency
5282	4027	Fetal Distress
5283	4028	Angioma Serpiginosum
5284	4029	Gastritis
5285	403	Mouth Disease
5286	4030	Eosinophilic Gastritis
5287	4031	Eosinophilic Gastroenteritis
5288	4033	Bacterial Gastritis
5289	4034	Fungal Gastritis
5290	4035	Lymphocytic Gastritis
5291	4036	Helicobacter Pylori Gastritis
5292	4037	Necrotizing Gastritis
5293	4038	Granulomatous Gastritis
5294	4039	Crohn's Associated Gastritis
5295	404	Gastrointestinal Tuberculosis
5296	4043	Skeletal Muscle Cancer
5297	4044	Skeletal Muscle Neoplasm
5298	4045	Muscle Cancer
5299	4047	Liver Rhabdomyosarcoma
5300	4048	Central Nervous System Rhabdomyosarcoma
5301	4049	Mediastinum Rhabdomyosarcoma
5302	4050	Mediastinum Sarcoma
5303	4051	Alveolar Rhabdomyosarcoma
5304	4052	Rhabdomyosarcoma Recurrent
5305	4053	Rectum Rhabdomyosarcoma
5306	4054	Prostate Sarcoma
5307	4055	Ectomesenchymoma
5308	4056	Adult Rhabdomyosarcoma
5309	4057	Gallbladder Rhabdomyosarcoma
5310	4058	Gallbladder Sarcoma
5311	4059	Ovary Rhabdomyosarcoma
5312	4060	Breast Rhabdomyosarcoma
5313	4061	Testis Rhabdomyosarcoma
5314	4062	Testis Sarcoma
5315	4064	Bile Duct Sarcoma
5316	4065	Mixed Type Rhabdomyosarcoma
5317	4066	Anus Rhabdomyosarcoma
5318	4067	Anus Sarcoma
5319	407	Hepatic Tuberculosis
5320	4071	Duodenogastric Reflux
5321	4072	Duodenal Disease
5322	4073	Pancreatic Cystadenocarcinoma
5323	4074	Pancreas Adenocarcinoma
5324	4075	Bile Duct Cystadenocarcinoma
5325	4076	Pleomorphic Adenoma Of The Breast
5326	4077	Metastasizing Mixed Tumor Of Salivary Gland
5327	4078	Tricuspid Valve Stenosis
5328	4079	Heart Valve Disease
5329	4080	Tricuspid Valve Insufficiency
5330	4084	Testicular Trophoblastic Tumor
5331	4085	Trophoblastic Neoplasm
5332	4086	Testicular Germ Cell Tumor Non-seminomatous
5333	4087	Testicular Pure Germ Cell Tumor
5334	4088	Torovirus Infectious Disease
5335	409	Liver Disease
5336	4090	Agnosia
5337	4091	Caliciviridae Infectious Disease
5338	4092	Vesicular Exanthema Of Swine
5339	4099	Metastatic Squamous Cell Carcinoma
5340	410	Tuberculous Ascites
5341	4102	Secondary Carcinoma
5342	4104	Rinderpest
5343	4105	Canine Distemper
5344	4106	Commensal Bacteroidaceae Infectious Disease
5345	4107	Primary Flavobacteriaceae Infectious Disease
5346	4109	Tick Infestation
5347	411	Bovine Tuberculosis
5348	4110	Parasitic Ectoparasitic Infectious Disease
5349	4111	Cervical Adenosarcoma
5350	4112	Cervical Carcinosarcoma
5351	4113	Uterine Corpus Adenosarcoma
5352	4114	Uterine Body Mixed Cancer
5353	4115	Ovarian Mesodermal Adenosarcoma
5354	4117	Vaginal Adenosarcoma
5355	4118	Colon Neuroendocrine Neoplasm
5356	4119	Intestinal Neuroendocrine Benign Tumor
5357	412	Atypical Mycobacterium Infectious Disease
5358	4121	West Nile Virus Infectious Disease
5359	4123	Nail Disease
5360	413	Avian Tuberculosis
5361	4131	Erythrasma
5362	4136	Myxosarcoma
5363	4137	Common Bile Duct Disease
5364	4138	Bile Duct Disease
5365	414	Cardiovascular Tuberculosis
5366	4140	Biliary Dyskinesia
5367	4141	Intraorbital Meningioma
5368	4142	Meningioma By Site
5369	4143	Orbital Cancer
5370	4144	Herpes Zoster Dermatitis
5371	4147	Gastrointestinal Adenoma
5372	4148	Gastrointestinal Neuroendocrine Benign Tumor
5373	4151	Skull Base Chordoma
5374	4152	Chondroid Chordoma
5375	4153	Spinal Chordoma
5376	4154	Dentinogenesis Imperfecta
5377	4156	Primary Syphilis
5378	4157	Secondary Syphilis
5379	4159	Skin Cancer
5380	4160	Differentiating Neuroblastoma
5381	4161	Relapsed Neuroblastoma
5382	4163	Ganglioneuroblastoma
5383	4164	Cerebral Neuroblastoma
5384	4165	Regional Neuroblastoma
5385	4166	Syphilis
5386	417	Hypersensitivity Reaction Type II Disease
5387	4170	Localized Resectable Neuroblastoma
5388	4172	Localized Unresectable Neuroblastoma
5389	4173	Disseminated Neuroblastoma
5390	4175	Rh Isoimmunization
5391	4176	Blood Group Incompatibility
5392	418	Systemic Scleroderma
5393	4183	Pseudopseudohypoparathyroidism
5394	4184	Pseudohypoparathyroidism
5395	4186	Articulation Disorder
5396	4188	Echolalia
5397	4189	Mutism
5398	419	Scleroderma
5399	4193	Intracranial Thrombosis
5400	4194	Glucose Metabolism Disease
5401	4195	Hyperglycemia
5402	4196	Femoral Neuropathy
5403	420	Hypertrichosis
5404	4200	Commensal Bifidobacteriales Infectious Disease
5405	4201	Peroneal Neuropathy
5406	4202	Brain Stem Glioma
5407	4203	Brain Stem Cancer
5408	4205	Cerebellum Cancer
5409	4206	Childhood Brain Stem Neoplasm
5410	4207	Childhood Infratentorial Neoplasm
5411	4209	Brainstem Intraparenchymal Clear Cell Meningioma
5412	421	Hair Disease
5413	4210	Clear Cell Meningioma
5414	4211	Posterior Cranial Fossa Meningioma
5415	4217	Malignant Ovarian Brenner Tumor
5416	422	Congenital Structural Myopathy
5417	4223	Pyoderma
5418	4224	Adult Soft Tissue Sarcoma
5419	4226	Endometrial Stromal Sarcoma
5420	4227	Uterine Corpus Endometrial Stromal Sarcoma
5421	4228	Stromal Sarcoma
5422	423	Myopathy
5423	4230	Smooth Muscle Cancer
5424	4231	Histiocytoma
5425	4232	Extraosseous Ewing's Sarcoma
5426	4233	Clear Cell Sarcoma
5427	4235	Spindle Cell Sarcoma
5428	4236	Carcinosarcoma
5429	4238	Malignant Soft Tissue Neoplasm Of Central Nervous System
5430	4239	Alveolar Soft Part Sarcoma
5431	424	Pulmonary Immaturity
5432	4240	Malignant Miscellaneous Mesenchymal Tumor
5433	4242	Kidney Sarcoma
5434	4245	Extraskeletal Cartilaginous And Osseous Tumor
5435	4246	Malignant Mediastinal Mesenchymal Tumor
5436	4247	Coronary Restenosis
5437	4248	Coronary Stenosis
5438	4249	Gerstmann-Straussler-Scheinker Syndrome
5439	425	Certain Conditions Originating In The Perinatal Period
5440	4250	Conjunctivochalasis
5441	4251	Conjunctival Disease
5442	4252	Alexander Disease
5443	4253	Melorheostosis
5444	4254	Osteosclerosis
5445	4256	Rheumatism
5446	4257	Caffey Disease
5447	4258	Weissenbacher-Zweymüller Syndrome
5448	4260	Gait Apraxia
5449	4263	Drug-induced Akathisia
5450	4265	Angiomyoma
5451	4266	Intravascular Angioleiomyoma
5452	4267	Akinetic Mutism
5453	4270	Encephalitozoonosis
5454	4271	Microsporidiosis
5455	4273	Bovine Hemorrhagic Syndrome
5456	4274	Pestivirus Infectious Disease
5457	4277	Penis Basal Cell Carcinoma
5458	4278	Scrotum Basal Cell Carcinoma
5459	4279	Infundibulocystic Basal Cell Carcinoma
5460	4280	Nodular Basal Cell Carcinoma
5461	4281	Metatypical Basal Cell Carcinoma
5462	4282	Pigmented Basal Cell Carcinoma
5463	4283	Anal Margin Basal Cell Carcinoma
5464	4284	Anal Margin Carcinoma
5465	4285	Complications Of Pregnancy, Childbirth And The Puerperium
5466	4286	Sebaceous Basal Cell Carcinoma
5467	4287	External Ear Basal Cell Carcinoma
5468	4288	External Ear Carcinoma
5469	4289	Micronodular Basal Cell Carcinoma
5470	429	Gynatresia
5471	4290	Adamantinoid Basal Cell Epithelioma
5472	4291	Fibroepithelial Basal Cell Carcinoma
5473	4292	Morpheaform Basal Cell Carcinoma
5474	4293	Clear Cell Basal Cell Carcinoma
5475	4294	Adenoid Basal Cell Carcinoma
5476	4295	Follicular Basal Cell Carcinoma
5477	4297	Scimitar Syndrome
5478	4298	Respiratory System Abnormality
5479	4299	Infiltrative Basal Cell Carcinoma
5480	4300	Superficial Basal Cell Carcinoma
5481	4301	Vulva Basal Cell Carcinoma
5482	4302	Cystic Basal Cell Carcinoma
5483	4303	Sarcomatoid Basal Cell Carcinoma
5484	4304	Signet Ring Basal Cell Carcinoma
5485	4305	Bone Giant Cell Tumor
5486	4306	Radiculopathy
5487	4307	Polyradiculopathy
5488	4308	Polyradiculoneuropathy
5489	431	Myofascial Pain Syndrome
5490	4310	Smooth Muscle Tumor
5491	4313	Epidermolysis Bullosa Acquisita
5492	4318	Visna
5493	4320	Non-gestational Choriocarcinoma
5494	4321	Large Cell Acanthoma
5495	4322	Pilar Sheath Acanthoma
5496	4323	Epidermolytic Acanthoma
5497	4324	Acantholytic Acanthoma
5498	4325	Ebola Hemorrhagic Fever
5499	4326	Filoviridae Infectious Disease
5500	4327	Marburg Hemorrhagic Fever
5501	4329	Erdheim-Chester Disease
5502	433	Intraventricular Hemorrhage From Any Perinatal Cause
5503	4330	Non-langerhans-cell Histiocytosis
5504	4331	Burning Mouth Syndrome
5505	4332	Familial Hypophosphatemia
5506	4333	Parovarian Cyst
5507	4334	Splenic Manifestation Of Prolymphocytic Leukemia
5508	4336	Tinea Favosa
5509	4337	Tinea Capitis
5510	434	Anterior Mediastinum Cancer
5511	4346	Variegate Porphyria
5512	4347	Lymphocele
5513	4349	Complications Occurring Mainly In The Course Of Labor And Delivery
5514	435	Malignant Neoplasm Of Thymus, Heart And Mediastinum
5515	4350	Bovine Anaplasmosis
5516	4351	Primary Anaplasmataceae Infectious Disease
5517	4352	Ciliary Body Cancer
5518	4353	Ciliary Body Disease
5519	4356	Regressing Malignant Melanoma
5520	4357	Experimental Melanoma
5521	4358	Metastatic Melanoma
5522	4359	Amelanotic Melanoma
5523	436	Posterior Mediastinum Cancer
5524	4360	Epithelioid Cell Melanoma
5525	4362	Cervical Cancer
5526	4364	Malignant Breast Melanoma
5527	4367	Apparent Mineralocorticoid Excess Syndrome
5528	4369	Brain Hypoxia-Ischemia
5529	437	Myasthenia Gravis
5530	4370	Stomach Diverticulosis
5531	4371	Schnitzler Syndrome
5532	4372	Intracranial Embolism
5533	4374	Silo Filler's Disease
5534	4375	Agricultural Workers' Disease
5535	4376	Milk Allergic Reaction
5536	4377	Egg Allergy
5537	4378	Peanut Allergic Reaction
5538	4379	Nut Allergic Reaction
5539	438	Autoimmune Disease Of The Nervous System
5540	4381	Conventional Alveolar Rhabdomyosarcoma
5541	4383	Solid Alveolar Rhabdomyosarcoma
5542	4384	Orbit Alveolar Rhabdomyosarcoma
5543	4385	Papillary Squamous Carcinoma
5544	4386	Myofibroma
5545	4387	Recurrent Peripheral Primitive Neuroectodermal Tumor
5546	4388	Bone Peripheral Neuroepithelioma
5547	4389	Soft Tissue Peripheral Neuroepithelioma
5548	439	Neuromuscular Junction Disease
5549	4393	Henipavirus Infectious Disease
5550	4394	Reticulohistiocytic Granuloma
5551	4397	Granulomatous Dermatitis
5552	4398	Pustulosis Of Palm And Sole
5553	4399	Acneiform Dermatitis
5554	440	Neuromuscular Disease
5555	4400	Dermatosis Papulosa Nigra
5556	4403	Cervical Glandular Tumor
5557	4404	Occupational Dermatitis
5558	4406	Spongiotic Dermatitis
5559	4407	Phototoxic Dermatitis
5560	4409	Folliculitis
5561	4410	Contact Dermatitis Due To Arnica
5562	4411	Hepatitis E
5563	4412	Astroviridae Infectious Disease
5564	4413	Cervix Melanoma
5565	4415	Fibrous Histiocytoma
5566	4418	Cutaneous Fibrous Histiocytoma
5567	4419	Benign Deep Fibrous Histiocytoma
5568	4422	Malignant Adenofibroma
5569	4423	Sea-blue Histiocyte Syndrome
5570	4424	Juvenile Xanthogranuloma
5571	4425	Lipogranuloma
5572	4428	Dyslexia
5573	4430	Somatostatinoma
5574	4432	Pancreatic Somatostatinoma
5575	4433	Pancreatic Delta Cell Neoplasm
5576	4434	Small Intestine Neuroendocrine Neoplasm
5577	4435	Cavernous Sinus Meningioma
5578	4436	Anterior Cranial Fossa Meningioma
5579	4437	Skull Base Meningioma
5580	4438	Central Nervous System Germinoma
5581	4439	Central Nervous System Germ Cell Tumor
5582	4440	Seminoma
5583	4441	Dysgerminoma
5584	4442	Cervical Alveolar Soft Part Sarcoma
5585	4443	Cervical Soft Tissue Tumor
5586	4445	Arachnoid Cyst
5587	4446	Central Nervous System Cyst
5588	4447	Cystoid Macular Edema
5589	4448	Macular Degeneration
5590	4449	Macular Retinal Edema
5591	445	Bartter Disease
5592	4450	Renal Cell Carcinoma
5593	4451	Renal Carcinoma
5594	4452	Recurrent Renal Cell Carcinoma
5595	4454	Childhood Kidney Cell Carcinoma
5596	4455	Hereditary Renal Cell Carcinoma
5597	446	Hyperaldosteronism
5598	4463	Multilocular Clear Cell Renal Cell Carcinoma
5599	4464	Collecting Duct Carcinoma
5600	4465	Papillary Renal Cell Carcinoma
5601	4467	Renal Clear Cell Carcinoma
5602	4468	Clear Cell Adenocarcinoma
5603	447	Renal Tubular Transport Disease
5604	4471	Chromophobe Adenocarcinoma
5605	4472	Mucinous Tubular And Spindle Renal Cell Carcinoma
5606	4473	Sarcomatoid Renal Cell Carcinoma
5607	4478	Drug-Induced Dyskinesia
5608	4479	Pseudohypoaldosteronism
5609	448	Facial Neoplasm
5610	4480	Achondroplasia
5611	4481	Allergic Rhinitis
5612	4483	Rhinitis
5613	4486	Malignant Biphasic Mesothelioma
5614	4488	Sarcomatoid Mesothelioma
5615	4489	Malignant Epithelial Mesothelioma
5616	449	Head Neoplasm
5617	4490	Malignant Peritoneal Solitary Fibrous Tumor
5618	4491	Persian Gulf Syndrome
5619	4492	Avian Influenza
5620	4493	Orthomyxoviridae Infectious Disease
5621	4496	Metastatic Malignant Neoplasm To The Cervix
5622	4499	Child Nutrition Disorder
5623	450	Myotonic Disease
5624	4500	Hypokalemia
5625	4501	Orofaciodigital Syndrome
5626	4502	Relapsed Angiosarcoma
5627	4504	Central Nervous System Angiosarcoma
5628	4505	Pediatric Angiosarcoma
5629	4509	Angiosarcoma Associated With Lymphedema
5630	4510	Aorta Angiosarcoma
5631	4511	Breast Angiosarcoma
5632	4512	Conventional Angiosarcoma
5633	4513	Gallbladder Angiosarcoma
5634	4514	Thyroid Angiosarcoma
5635	4515	Thyroid Sarcoma
5636	4517	Skin Angiosarcoma
5637	452	Pleomorphic Adenoma
5638	4520	Cervical Endometrial Stromal Sarcoma
5639	4521	Cervix Endometrial Stromal Tumor
5640	4522	Superior Vena Cava Angiosarcoma
5641	4524	Prostate Angiosarcoma
5642	4525	Mediastinum Angiosarcoma
5643	4527	Ovarian Angiosarcoma
5644	4531	Mucoepidermoid Carcinoma
5645	4534	Hallermann-Streiff Syndrome
5646	4535	Hypotrichosis
5647	4539	Labyrinthine Disease
5648	4540	Dysgraphia
5649	4541	Nominal Aphasia
5650	4542	Basophil Adenoma
5651	4543	Retrograde Amnesia
5652	4545	Mesenchymal Chondrosarcoma
5653	4546	Pediatric Mesenchymal Chondrosarcoma
5654	4547	Adult Mesenchymal Chondrosarcoma
5655	4548	Extraskeletal Mesenchymal Chondrosarcoma
5656	4549	Extraosseous Chondrosarcoma
5657	4550	Anal Gland Neoplasm
5658	4551	Anus Neoplasm
5659	4552	Large Cell Carcinoma
5660	4553	Thymus Large Cell Carcinoma
5661	4554	Type C Thymoma
5662	4555	Ovarian Large-cell Neuroendocrine Carcinoma
5663	4556	Lung Large Cell Carcinoma
5664	4557	Oral Leukoedema
5665	4558	Ludwig's Angina
5666	456	Ascariasis
5667	4560	Non Specific Chronic Endometritis
5668	4561	Granulomatous Endometritis
5669	4562	Subacute Bacterial Endocarditis
5670	457	Ascaridida Infectious Disease
5671	4582	Metastatic Meningioma
5672	4583	Deletion Of Short Arm Of Chromosome 1 (1p) Associated Meningioma
5673	4584	Choroid Plexus Meningioma
5674	4585	Relapsed Meningioma
5675	4586	Familial Meningioma
5676	4587	Benign Meningioma
5677	4588	Secretory Meningioma
5678	4589	Deletion Of Chromosome 22 Associated Meningioma
5679	4590	Multiple Meningiomas
5680	4591	Lymphoplasmacyte-rich Meningioma
5681	4593	Pediatric Meningioma
5682	4594	Microcystic Meningioma
5683	4595	Adult Meningioma
5684	4596	Central Nervous System Adult Tumor
5685	4598	Deletion Of Chromosome 3p Associated Meningioma
5686	4603	Epidermolytic Hyperkeratosis
5687	4606	Bile Duct Cancer
5688	4607	Biliary Tract Cancer
5689	4608	Common Bile Duct Neoplasm
5690	461	Muscle Benign Neoplasm
5691	4610	Intestinal Benign Neoplasm
5692	4613	Ulnar Neuropathy
5693	4615	Carcinoma Of Unknown Primary
5694	4616	Bovine Atypical Interstitial Pneumonia
5695	4617	Periapical Granuloma
5696	4618	Maxillary Neoplasm
5697	462	Cancer By Anatomical Entity
5698	4621	Holoprosencephaly
5699	4624	Ollier Disease
5700	4625	Enchondromatosis
5701	4626	Hydranencephaly
5702	4627	Ideomotor Apraxia
5703	4629	Porcine Reproductive And Respiratory Syndrome
5704	4630	Inverted Transitional Papilloma
5705	4631	Inverted Papilloma Of Paranasal Sinus
5706	4633	Nasal Cavity Inverting Papilloma
5707	4636	Submandibular Adenitis
5708	4637	Cervical Adenitis
5709	4638	Postauricular Lymphadenitis
5710	4639	Suppurative Lymphadenitis
5711	4640	Axillary Adenitis
5712	4641	Bacteroides Infectious Disease
5713	4644	Epidermolysis Bullosa Simplex
5714	4645	Retinal Cancer
5715	4647	Trilateral Retinoblastoma
5716	4648	Familial Retinoblastoma
5717	4650	Bilateral Retinoblastoma
5718	4651	Unilateral Retinoblastoma
5719	4653	Intraocular Retinoblastoma
5720	4655	Relapsed Retinoblastoma
5721	4656	Extraocular Retinoblastoma
5722	4658	Benign Mastocytoma
5723	4659	Extracutaneous Mastocytoma
5724	4660	Indolent Systemic Mastocytosis
5725	4661	Multiple Chemical Sensitivity
5726	4662	Thalamic Disease
5727	4664	Filamentary Keratitis
5728	4665	Superficial Keratitis Without Conjunctivitis
5729	4667	Kyphosis
5730	4668	Congenital Kyphosis
5731	467	Venous Hemangioma
5732	4671	Freemartinism
5733	4674	Androgen Insensitivity Syndrome
5734	4675	Uremic Neuropathy
5735	4676	Uremia
5736	4677	Keratitis
5737	4678	Thymus Mucoepidermoid Carcinoma
5738	4679	Breast Mucoepidermoid Carcinoma
5739	468	Intramuscular Hemangioma
5740	4680	Breast Metaplastic Carcinoma
5741	4681	Bile Duct Mucoepidermoid Carcinoma
5742	4682	Extrahepatic Bile Duct Carcinoma
5743	4683	Cutaneous Mucoepidermoid Carcinoma
5744	4684	Skin Appendage Carcinoma
5745	4685	Lacrimal Gland Mucoepidermoid Carcinoma
5746	4686	Mucoepidermoid Esophageal Carcinoma
5747	4687	Mucoepidermoid Thyroid Carcinoma
5748	4688	Laryngeal Mucoepidermoid Carcinoma
5749	469	Deep Angioma
5750	4690	Childhood Mediastinal Neurogenic Tumor
5751	4691	Malignant Mediastinal Neurogenic Neoplasm
5752	4692	Endophthalmitis
5753	4693	Nerve Plexus Neoplasm
5754	4694	Malignant Peripheral Nerve Neoplasm
5755	4696	Intraneural Perineurioma
5756	4697	Perineurioma
5757	4698	Nerve Root Neoplasm
5758	4699	Epicardium Cancer
5759	47	Prostate Disease
5760	470	Verrucous Keratotic Hemangioma
5761	4700	Bathing Trunk Nevus
5762	4702	Mongolian Spot
5763	4705	Childhood Brain Tumor
5764	4706	Infratentorial Cancer
5765	4707	Cervicomedullary Junction Neoplasm
5766	4708	Foramen Magnum Meningioma
5767	471	Skin Hemangioma
5768	4711	Krebs 2 Carcinoma
5769	4712	Gastric Mesenchymal Neoplasm
5770	4714	Obstetrical Pelvic Hematoma
5771	4715	Gastric Neuroendocrine Neoplasm
5772	4716	Malignant Gastric Germ Cell Tumor
5773	4717	Extragonadal Germ Cell Cancer
5774	4719	Bone Giant Cell Sarcoma
5775	472	Subglottic Angioma
5776	4723	Intracranial Hypotension
5777	4724	Brain Edema
5778	4725	Neck Neoplasm
5779	4726	Anterior Synechiae
5780	4727	Adhesions Of Iris
5781	4730	Vasomotor Rhinitis
5782	4731	Atrophic Rhinitis
5783	4734	Calciphylaxis
5784	4737	Somatoform Disorder
5785	4738	Iris Or Ciliary Body Disorder
5786	4739	Testicular Brenner Tumor
5787	474	Histiocytoid Hemangioma
5788	4742	Mixed Embryonal Carcinoma And Teratoma Of The Testis
5789	4743	Mixed Testicular Germ Cell Tumor
5790	4744	Placenta Accreta
5791	4746	Olfaction Disorder
5792	4748	Childhood Supratentorial Neoplasm
5793	4749	Middle Cranial Fossa Meningioma
5794	4751	Striatonigral Degeneration
5795	4752	Multiple System Atrophy
5796	4754	Dictyocaulus Infectious Disease
5797	4756	Testicular Leydig Cell Tumor
5798	4757	Sex Cord-stromal Neoplasm
5799	4758	Peripheral Anterior Synechiae
5800	476	Breast Hemangioma
5801	4760	Malignant Catarrh
5802	4762	Vasculogenic Impotence
5803	4765	Pulmonary Blastoma
5804	4766	Embryoma
5805	4767	Classic Pulmonary Blastoma
5806	4768	Epithelial Predominant Pulmonary Blastoma
5807	4769	Pleuropulmonary Blastoma
5808	4772	Mesoblastic Nephroma
5809	4773	Congenital Mesoblastic Nephroma
5810	4775	Feline Acquired Immunodeficiency Syndrome
5811	4776	Rapidly Progressive Glomerulonephritis
5812	4777	Exudative Glomerulonephritis
5813	4778	Proliferative Glomerulonephritis
5814	4779	Focal Embolic Glomerulonephritis
5815	478	Breast Vascular Neoplasm
5816	4780	Anti-basement Membrane Glomerulonephritis
5817	4781	Diffuse Glomerulonephritis
5818	4782	Subacute Glomerulonephritis
5819	4783	Mesangial Proliferative Glomerulonephritis
5820	4784	Immune-complex Glomerulonephritis
5821	4786	Primitive Neuroectodermal Tumor With Leptomeningeal Spread
5822	4787	Cerebellopontine Angle Primitive Neuroectodermal
5823	4788	Intracranial Primitive Neuroectodermal Tumor
5824	479	Angiokeratoma
5825	4790	Medulloepithelioma
5826	4791	Supratentorial Primitive Neuroectodermal Tumor
5827	4794	Ependymoblastoma
5828	4795	Tay-Sachs Disease AB Variant
5829	4796	Space Motion Sickness
5830	4797	SM-AHNMD
5831	4798	Aggressive Systemic Mastocytosis
5832	4799	AIDS-related Idiopathic Thrombocytopenic Purpura
5833	48	Male Reproductive System Disease
5834	480	Movement Disease
5835	4800	Iris Vascular Disorder
5836	4804	Border Disease
5837	4807	Swine Vesicular Disease
5838	4808	Enterovirus Infectious Disease
5839	4809	Enzootic Porcine Encephalomyelitis
5840	481	Central Nervous System Hereditary Degenerative Disease
5841	4810	Cerebrotendinous Xanthomatosis
5842	4812	Adult Brainstem Gliosarcoma
5843	4813	Adult Brain Stem Glioma
5844	4814	Ganglioneuroma Of The Retroperitoneum
5845	4816	Maturing Ganglioneuroma
5846	4817	Ganglioneuroma
5847	4818	Lung Occult Non-small Cell Carcinoma
5848	4819	Lung Occult Carcinoma
5849	482	Hemangioma Of Peripheral Nerve
5850	4828	Metastatic Lung Carcinoma
5851	4829	Adenosquamous Cell Lung Carcinoma
5852	483	Cavernous Hemangioma
5853	4830	Adenosquamous Carcinoma
5854	4831	Spleen Mast Cell Malignancy
5855	4832	Non Small Cell Lung Cancer Recurrent
5856	4833	Recurrent Lung Carcinoma
5857	4837	Gorham's Disease
5858	4838	Myoepithelial Carcinoma
5859	4839	Sebaceous Adenocarcinoma
5860	484	Vascular Hemostatic Disease
5861	4840	Sebaceous Carcinoma
5862	4841	Malignant Tumor Of Epidermal Appendage
5863	4843	Subependymal Glioma
5864	4844	Benign Ependymoma
5865	4845	Pilomyxoid Astrocytoma
5866	4846	Cauda Equina Intradural Extramedullary Astrocytoma
5867	4847	Cauda Equina Neoplasm
5868	4848	Cerebellar Astrocytoma
5869	4850	Glioma Of Visual Pathway
5870	4851	Pilocytic Astrocytoma
5871	4852	Pleomorphic Xanthoastrocytoma
5872	4853	Pilocytic Astrocytoma Of Cerebellum
5873	4855	Diencephalic Astrocytomas
5874	4856	Gliofibroma
5875	4857	Diffuse Astrocytoma
5876	4858	Pineal Gland Astrocytoma
5877	486	Glomeruloid Hemangioma
5878	4860	Brain Stem Astrocytic Neoplasm
5879	4863	Spinal Cord Astrocytoma
5880	4864	Rubella Virus Infectious Disease
5881	4865	Togaviridae Infectious Disease
5882	4866	Salivary Gland Adenoid Cystic Carcinoma
5883	4867	Cervical Adenoid Cystic Carcinoma
5884	4868	Prostate Adenoid Cystic Carcinoma
5885	4869	Laryngeal Adenoid Cystic Carcinoma
5886	4870	Lacrimal Gland Adenoid Cystic Carcinoma
5887	4871	Cutaneous Adenocystic Carcinoma
5888	4872	Lung Adenoid Cystic Carcinoma
5889	4873	Anterior Horn Cell Disease
5890	4875	Trachea Adenoid Cystic Carcinoma
5891	4876	Trachea Carcinoma
5892	4877	Breast Adenoid Cystic Carcinoma
5893	4878	Esophageal Adenoid Cystic Carcinoma
5894	4879	Bartholin's Gland Adenoid Cystic Carcinoma
5895	488	Malignant Bone Vascular Tumor
5896	4880	Kidney Clear Cell Sarcoma
5897	4882	Pediatric Soft Part Clear Cell Sarcoma
5898	4884	Peritoneal Neoplasm
5899	4885	Colorado Tick Fever
5900	4887	Rotavirus Infectious Disease
5901	4889	Lymph Node Tuberculosis
5902	4890	Juvenile Myoclonic Epilepsy
5903	4892	Middle Ear Adenocarcinoma
5904	4893	Middle Ear Carcinoma
5905	4894	Rete Ovarii Adenocarcinoma
5906	4895	Rete Ovarii Neoplasm
5907	4896	Bile Duct Adenocarcinoma
5908	4897	Bile Duct Carcinoma
5909	4898	Adenocarcinoma In A Polyp
5910	490	Hemangioma Of Lung
5911	4900	Mixed Cell Adenocarcinoma
5912	4901	Peritoneal Serous Adenocarcinoma
5913	4902	Appendix Carcinoma
5914	4903	Granular Cell Carcinoma
5915	4904	Intestinal Type Carcinoma
5916	4905	Pancreatic Carcinoma
5917	4906	Small Intestine Adenocarcinoma
5918	4907	Small Intestine Carcinoma
5919	4908	Anal Carcinoma
5920	4910	Urethra Adenocarcinoma
5921	4911	Superficial Spreading Adenocarcinoma
5922	4912	Disseminated Adenocarcinoma
5923	4914	Esophagus Adenocarcinoma
5924	4915	Basophilic Carcinoma
5925	4916	Pituitary Carcinoma
5926	4917	Villous Adenocarcinoma
5927	4918	Renal Pelvis Adenocarcinoma
5928	4919	Renal Pelvis Carcinoma
5929	492	Acquired Hemangioma
5930	4920	Eccrine Adenocarcinoma
5931	4921	Eccrine Sweat Gland Cancer
5932	4922	Breast Secretory Carcinoma
5933	4923	Thymus Adenocarcinoma
5934	4924	Human Papillomavirus Related Adenocarcinoma
5935	4925	Human Papillomavirus Related Carcinoma
5936	4926	Bronchiolo-alveolar Adenocarcinoma
5937	4927	Klatskin's Tumor
5938	4928	Intrahepatic Cholangiocarcinoma
5939	4929	Tubular Adenocarcinoma
5940	4930	Nasal Cavity Adenocarcinoma
5941	4931	Nasal Cavity Carcinoma
5942	4932	Ampulla Of Vater Carcinoma
5943	4933	Apocrine Adenocarcinoma
5944	4934	Apocrine Sweat Gland Cancer
5945	4935	Acidophil Carcinoma
5946	4936	Mixed Eosinophil-basophil Carcinoma
5947	4937	Oxyphilic Adenocarcinoma
5948	4938	Ureter Adenocarcinoma
5949	4939	Ureter Carcinoma
5950	4942	Combined Hepatocellular Carcinoma And Cholangiocarcinoma
5951	4943	Adenocarcinoma In Situ
5952	4944	Gastroesophageal Junction Adenocarcinoma
5953	4947	Cholangiocarcinoma
5954	4948	Gallbladder Carcinoma
5955	495	Sclerosing Hemangioma
5956	4952	Postpoliomyelitis Syndrome
5957	4953	Poliomyelitis
5958	4955	Central Nervous System Melanocytic Neoplasm
5959	4956	Leptomeningeal Neoplasm
5960	4957	Meninges Hemangiopericytoma
5961	4958	Central Nervous System Hemangiopericytoma
5962	4959	Epidermolysis Bullosa Dystrophica
5963	496	Spindle Cell Hemangioma
5964	4960	Bone Marrow Cancer
5965	4961	Bone Marrow Disease
5966	4962	Pericardial Tuberculosis
5967	4964	Neurotic Disorder
5968	4966	Adrenocortical Hyperplasia
5969	4967	Adrenal Hyperplasia
5970	4968	Nelson Syndrome
5971	4969	Gerstmann Syndrome
5972	4970	Prosopagnosia
5973	4971	Myelofibrosis
5974	4972	Myelodysplastic Myeloproliferative Cancer
5975	4974	Actinobacillosis
5976	4975	Actinobacillus Infectious Disease
5977	4976	Elephantiasis
5978	4977	Lymphedema
5979	4978	Ewing's Family Recurrent Tumor
5980	4979	Recurrent Primitive Neuroectodermal Tumor
5981	4982	Metastatic Ewing's Sarcoma
5982	4983	Metastatic Ewing's Sarcoma/peripheral Primitive Neuroectodermal Tumor
5983	4985	Extraosseous Ewings Sarcoma-primitive Neuroepithelial Tumor
5984	4986	Nonparalytic Poliomyelitis
5985	4987	Recurrent Ewing's Sarcoma
5986	4988	Alcoholic Pancreatitis
5987	4989	Pancreatitis
5988	4990	Essential Tremor
5989	4991	Optic Nerve Astrocytoma
5990	4992	Optic Nerve Glioma
5991	4993	Atypical Polypoid Adenomyoma
5992	4994	Adenomyoma Of Uterine Corpus
5993	4995	Cervical Adenomyoma
5994	4997	Camurati-Engelmann Disease
5995	4998	Trichorhinophalangeal Syndrome Type II
5996	4999	Syphilitic Alopecia
5997	50	Thyroid Gland Disease
5998	5000	Cutaneous Syphilis
5999	5002	Equine Infectious Anemia
6000	5003	Eunuchism
6001	5006	Adult Primary Liver Cancer
6002	5007	Resectable Hepatocellular Carcinoma
6003	501	Central Nervous System Hemangioma
6004	5015	Hepatocellular Fibrolamellar Carcinoma
6005	5016	Hepatocellular Clear Cell Carcinoma
6006	5017	Hepatitis Virus Related Hepatocellular Carcinoma
6007	5019	Non-resectable Hepatocellular Carcinoma
6008	502	Central Nervous System Mesenchymal Non-meningothelial Tumor
6009	5022	Aflatoxins-related Hepatocellular Carcinoma
6010	5026	Sclerosing Hepatic Carcinoma
6011	5027	Recurrent Hepatocellular Carcinoma
6012	5028	Recurrent Cancer Of Liver
6013	5029	Alphavirus Infectious Disease
6014	5030	Pineal Parenchymal Tumor Of Intermediate Differentiation
6015	5031	Adult Pineal Parenchymal Tumor
6016	5032	Pineal Gland Cancer
6017	5039	Myoblastoma
6018	5040	Malignant Granular Cell Esophageal Tumor
6019	5041	Esophageal Cancer
6020	5042	Malignant Granular Cell Myoblastoma
6021	5043	Vulvar Granular Cell Tumor
6022	5044	Cardiac Granular Cell Neoplasm
6023	5046	Mediastinal Granular Cell Myoblastoma
6024	5047	Neurohypophysis Granular Cell Tumor
6025	5048	Posterior Pituitary Gland Neoplasm
6026	505	Hobnail Hemangioma
6027	5050	Ehrlich Tumor Carcinoma
6028	5052	Melioidosis
6029	5053	Primary Burkholderia Infectious Disease
6030	5055	Neuronal And Mixed Neuronal-glial Tumor Of Cerebellum
6031	5056	Adult Cerebellar Neoplasm
6032	5057	Papillary Meningioma Of The Cerebellum
6033	5058	Rhabdoid Meningioma
6034	5059	Childhood Cerebellar Neoplasm
6035	5062	Phencyclidine Abuse
6036	5063	Basosquamous Carcinoma
6037	5069	Uterine Corpus Soft Tissue Neoplasm
6038	507	Adjustment Disorder
6039	5070	Neoplasm Of Body Of Uterus
6040	5071	Central Nervous System Soft Tissue Neoplasm
6041	5072	Meninges Gliomatosis
6042	5073	Malignant Neoplasm Of Meninges
6043	5074	Malignant Ependymoma
6044	5075	Myxopapillary Ependymoma
6045	5076	Mixed Glioma
6046	5077	Subependymal Giant Cell Astrocytoma
6047	5078	Ganglioglioma
6048	5082	Liver Cirrhosis
6049	5083	Iodine Hypothyroidism
6050	5085	Transmissible Gastroenteritis Of Swine
6051	5086	Transmissible Enteritis Of Turkeys
6052	5087	Feline Infectious Peritonitis
6053	5088	Mixed Epithelial Stromal Tumour
6054	5090	Sternum Cancer
6055	5093	Thoracic Cancer
6056	5097	Axillary Cancer
6057	5099	Middle Ear Cancer
6058	5100	Middle Ear Disease
6059	5101	Auricular Cancer
6060	5102	Inner Ear Cancer
6061	5104	Testicular Infarct
6062	5107	Achromic Nevus
6063	5112	Swayback
6064	5113	Nutritional Deficiency Disease
6065	5115	Bovine Virus Diarrhea-mucosal Disease
6066	5116	Central Nervous System Dermoid Cyst
6067	5117	Dermoid Cyst Of Ovary
6068	5118	Ovarian Cystic Teratoma
6069	5119	Ovarian Cyst
6070	512	Epididymal Neoplasm
6071	5120	Roseolovirus Infectious Disease
6072	5123	Mediastinum Leiomyoma
6073	5124	Fallopian Tube Leiomyoma
6074	5125	Extrahepatic Bile Duct Leiomyoma
6075	5126	Central Nervous System Leiomyoma
6076	5127	Bizarre Leiomyoma
6077	5128	Deep Leiomyoma
6078	5129	Simple Partial Epilepsy
6079	5132	Leiomyoma Cutis
6080	5133	Skin Tumor Of Smooth Muscle Origin
6081	5134	Anus Leiomyoma
6082	5136	Lung Leiomyoma
6083	5137	Pericardium Leiomyoma
6084	5138	Leiomyomatosis
6085	5139	Cellular Leiomyoma
6086	5140	Gallbladder Leiomyoma
6087	5142	Vulvar Leiomyoma
6088	5143	Large Bowel Leiomyoma
6089	5146	Appendix Leiomyoma
6090	5147	Dartoic Leiomyoma
6091	5149	Epithelioid Neurofibroma
6092	5150	Neurofibroma Of Gallbladder
6093	5151	Plexiform Neurofibroma
6094	5152	Cellular Neurofibroma
6095	5153	Atypical Neurofibroma
6096	5154	Borna Disease
6097	5155	Multiple Mucosal Neuroma
6098	5157	Benign Pleural Mesothelioma
6099	5158	Pleural Cancer
6100	5160	Arteriosclerosis Obliterans
6101	5161	Monckeberg Arteriosclerosis
6102	5162	Arteriolosclerosis
6103	5165	Uterine Corpus Sarcoma
6104	5166	Endometrial Stromal Tumor
6105	5169	Ovarian Endometrioid Stromal Sarcoma
6106	5170	Vaginal Endometrial Stromal Sarcoma
6107	5171	Vaginal Endometrial Stromal Tumor
6108	5172	Endometrium Carcinoma In Situ
6109	5176	Renal Wilms' Tumor
6110	5178	Metachronous Kidney Wilms' Tumor
6111	5179	Mixed Cell Type Kidney Wilms' Tumor
6112	518	Scrotum Neoplasm
6113	5182	Blastema Predominant Kidney Wilms' Tumor
6114	5183	Hereditary Wilms' Tumor
6115	5184	Recurrent Nephroblastoma
6116	5185	Anaplastic Renal Wilms' Tumor
6117	5189	Epithelial Predominant Wilms' Tumor
6118	519	Aortitis
6119	5190	Cervical Wilms' Tumor
6120	5191	Stromal Predominant Kidney Wilms' Tumor
6121	5193	Nodular Ganglioneuroblastoma
6122	5194	Intermixed Schwannian Stroma-rich Ganglioneuroblastoma
6123	5195	Peripheral Nervous System Ganglioneuroblastoma
6124	5196	Fallopian Tube Adenomatoid Tumor
6125	5199	Ureteral Obstruction
6126	520	Aortic Disease
6127	5200	Urinary Tract Obstruction
6128	5204	Fructose-1,6-bisphosphatase Deficiency
6129	5205	Inborn Errors Fructose Metabolism
6130	5207	Monodermal Teratoma
6131	5208	Malignant Struma Ovarii
6132	5209	Benign Struma Ovarii
6133	5212	Congenital Disorder Of Glycosylation
6134	5213	Chronic Inflammatory Demyelinating Polyradiculoneuropathy
6135	5214	Demyelinating Polyneuropathy
6136	5215	Ephemeral Fever
6137	5221	Chronic Polyneuropathy
6138	5222	Acute Necrotizing Encephalitis
6139	5223	Infertility
6140	5224	Acute Hemorrhagic Encephalitis
6141	5225	Von Economo's Disease
6142	5226	Vaginal Blue Nevus
6143	5227	Cellular Blue Nevus
6144	5228	Common Blue Nevus
6145	5230	Hepatoerythropoietic Porphyria
6146	5231	Peritoneal And Retroperitoneal Tumors
6147	5232	Aortic Valve Prolapse
6148	5233	Glomangiosarcoma
6149	5236	Subungual Glomus Tumor
6150	5238	Benign Perivascular Tumor
6151	5239	Glomus Tumor Of Uncertain Malignant Potential
6152	524	Central Nervous System AIDS Arteritis
6153	5240	Retinal Hemangioblastoma
6154	5241	Hemangioblastoma
6155	5242	Resectable Cholangiocellular Carcinoma
6156	5244	Visual Alteration
6157	5245	Recurrent Cholangiocellular Carcinoma
6158	5246	Hilar Cholangiocellular Carcinoma
6159	5247	Liver Fluke-related Cholangiocarcinoma
6160	5248	Parasite-related Carcinoma
6161	525	Central Nervous System Vasculitis
6162	5250	Non-resectable Cholangiocellular Carcinoma
6163	5251	Inflammatory Leiomyosarcoma
6164	5252	Leiomyosarcoma Recurrent
6165	5253	Conventional Leiomyosarcoma
6166	5254	Central Nervous System Leiomyosarcoma
6167	5255	Leiomyosarcoma Nonmetastatic
6168	5258	Granular Cell Leiomyosarcoma
6169	5259	Colon Leiomyosarcoma
6170	526	Human Immunodeficiency Virus Infectious Disease
6171	5260	Colon Sarcoma
6172	5261	Heart Leiomyosarcoma
6173	5262	Heart Sarcoma
6174	5263	Ovary Leiomyosarcoma
6175	5264	Epithelioid Leiomyosarcoma
6176	5265	Lung Leiomyosarcoma
6177	5266	Leiomyosarcoma Metastatic
6178	5267	Anus Leiomyosarcoma
6179	5268	Myxoid Leiomyosarcoma
6180	5271	Small Intestine Leiomyosarcoma
6181	5272	Small Intestinal Sarcoma
6182	5273	Cutaneous Leiomyosarcoma
6183	5274	Malignant Dermis Tumor
6184	5275	Gallbladder Leiomyosarcoma
6185	5276	Esophagus Leiomyosarcoma
6186	5278	Pediatric Leiomyosarcoma
6187	528	Hydrarthrosis
6188	5280	Gastric Leiomyosarcoma
6189	5281	Malignant Mesenchymal Neoplasm Of The Stomach
6190	5282	Prostate Leiomyosarcoma
6191	5283	Vagina Leiomyosarcoma
6192	5284	Retroperitoneal Leiomyosarcoma
6193	5285	Breast Leiomyosarcoma
6194	5286	Vulvar Leiomyosarcoma
6195	5287	Kidney Leiomyosarcoma
6196	5288	Larynx Leiomyosarcoma
6197	5289	Uterus Leiomyosarcoma
6198	529	Blepharospasm
6199	5290	Uterine Corpus Smooth Muscle Neoplasm
6200	5291	Adult Leiomyosarcoma
6201	5292	Mediastinum Leiomyosarcoma
6202	5293	Extrahepatic Bile Duct Leiomyosarcoma
6203	5294	Vessel Leiomyosarcoma
6204	5295	Intestinal Disease
6205	5296	Liver Leiomyosarcoma
6206	5297	Rectum Leiomyosarcoma
6207	5299	Endometrial Clear Cell Adenocarcinoma
6208	53	Pituitary Gland Disease
6209	530	Eyelid Disease
6210	5301	Fallopian Tube Clear Cell Adenocarcinoma
6211	5302	Uterine Ligament Clear Cell Adenocarcinoma
6212	5303	Cervical Clear Cell Adenocarcinoma
6213	5304	Ovarian Clear Cell Adenocarcinoma
6214	5305	Malignant Ovarian Clear Cell Neoplasm
6215	5306	Bladder Clear Cell Adenocarcinoma
6216	5307	Urethra Clear Cell Adenocarcinoma
6217	5308	Ampulla Of Vater Clear Cell Adenocarcinoma
6218	5309	Epithelial-myoepithelial Carcinoma
6219	5310	Glycogen-rich Clear Cell Breast Carcinoma
6220	5312	Miscellaneous Mesenchymal Neoplasm
6221	5313	Vulvar Alveolar Soft Part Sarcoma
6222	5314	Alveolar Soft Part Sarcoma Recurrent
6223	5316	Alveolar Soft Part Sarcoma Nonmetastatic
6224	5317	Alveolar Soft Part Sarcoma Metastatic
6225	5323	Fallopian Tube Serous Tumor
6226	5324	Fallopian Tube Germ Cell Cancer
6227	5325	Roberts Syndrome
6228	5326	Partial Recent Retinal Detachment With Single Defect
6229	5327	Retinal Detachment
6230	5328	Retinal Detachment And Defect
6231	533	Thymus Gland Disease
6232	5330	Dental Pulp Disease
6233	5331	Testicular Granulosa Cell Tumor
6234	5334	Paraphimosis
6235	5335	Renal Neoplasm With T(6;11)(p21;q12)
6236	5337	Epulis
6237	5338	Gingival Hypertrophy
6238	5339	Cyclic Hematopoiesis
6239	534	Persistent Disorder Of Initiating Or Maintaining Wakefulness
6240	5340	Anterograde Amnesia
6241	5341	Pineal Region Yolk Sac Tumor
6242	5342	Childhood Endodermal Sinus Tumor
6243	5343	Central Nervous System Endodermal Sinus Tumor
6244	5344	Testicular Yolk Sac Tumor
6245	5345	Testicular Non-seminomatous Germ Cell Cancer
6246	5346	Mediastinal Endodermal Sinus Tumor
6247	5347	Mediastinal Non-seminomatous Germ Cell Cancer
6248	5348	Adult Endodermal Sinus Tumor
6249	5349	Central Nervous System Adult Germ Cell Tumor
6250	535	Sleep Disorder
6251	5350	Ovarian Endodermal Sinus Tumor
6252	5351	Ovarian Primitive Germ Cell Tumor
6253	5353	Colonic Disease
6254	5354	Lung PAP-AD
6255	5355	Mucinous Bronchioloalveolar Lung Carcinoma
6256	5358	Non-mucinous Bronchioloalveolar Lung Carcinoma
6257	5359	Pure BAC
6258	536	Persistent Disorder Of Initiating Or Maintaining Sleep
6259	5360	AD-BAC
6383	552	Pneumonia
6260	5361	Mixed Mucinous And Non-mucinous Bronchioloalveolar Lung Carcinoma
6261	5362	Focal Epithelial Hyperplasia
6262	5363	Myxoid Liposarcoma
6263	5364	Pulmonary Coin Lesion
6264	5368	Wolffian Duct Adenocarcinoma
6265	5369	Ovine Progressive Interstitial Pneumonia
6266	5370	Breast Hemangiopericytoma
6267	5373	Retroperitoneal Hemangiopericytoma
6268	5374	Pilomatrixoma
6269	5375	Hair Follicle Neoplasm
6270	5376	Skin Pilomatrix Carcinoma
6271	5378	Hemoglobin D Disease
6272	5379	Hemoglobin E Disease
6273	538	Internuclear Ophthalmoplegia
6274	5380	Lupus Vulgaris
6275	5381	Bile Duct Adenoma
6276	5382	Bartholin's Gland Adenoma
6277	5384	Bile Duct Cystadenoma
6278	5385	Mixed Cell Adenoma
6279	5386	Lung Adenoma
6280	5387	Middle Ear Adenoma
6281	5389	Oxyphilic Adenoma
6282	539	Ophthalmoplegia
6283	5390	Clear Cell Adenoma
6284	5391	Bronchus Adenoma
6285	5392	Acidophil Adenoma
6286	5393	Brain Angioma
6287	5394	Prolactinoma
6288	5395	Functioning Pituitary Adenoma
6289	5396	Prolactin Producing Pituitary Tumor
6290	5397	Ductal Adenoma
6291	5398	Lipoadenoma
6292	5399	Ovine Pulmonary Adenomatosis
6293	540	Strabismus
6294	5400	Trabecular Adenoma
6295	5401	Water-clear Cell Adenoma
6296	5402	Vaginal Adenoma
6297	5403	Microcystic Adenoma
6298	5404	Atypical Adenoma
6299	5408	Paget's Disease Of Bone
6300	5409	Lung Small Cell Carcinoma
6301	541	Convergence Insufficiency Or Palsy
6302	5410	Pulmonary Neuroendocrine Tumor
6303	5411	Lung Oat Cell Carcinoma
6304	5414	Lung Occult Small Cell Carcinoma
6305	5416	Recurrent Small Cell Lung Cancer
6306	5418	Schizoaffective Disorder
6307	5419	Schizophrenia
6308	5421	Lung Combined Type Small Cell Carcinoma
6309	5422	Combined Carcinoma Of Lung
6310	5423	Central Nervous System Hemangioblastoma
6311	5425	Ovarian Hyperstimulation Syndrome
6312	5426	Premature Ovarian Failure
6313	5427	Urinary Bladder Villous Adenoma
6314	5429	Bladder Flat Intraepithelial Lesion
6315	543	Dystonia
6316	5430	Intraurothelial Neoplasia
6317	5432	Bladder Papillary Transitional Cell Neoplasm
6318	5433	Urinary Tract Papillary Transitional Cell Benign Neoplasm
6319	5434	Scrapie
6320	5435	Variant Creutzfeldt-Jakob Disease
6321	5437	Intrahepatic Bile Duct Adenoma
6322	5438	Extrahepatic Bile Duct Adenoma
6323	5439	Papillary Hidradenoma
6324	5442	Eccrine Acrospiroma
6325	5443	Clear Cell Hidradenoma
6326	5444	Spiradenoma
6327	5445	Syringocystadenoma Papilliferum
6328	5446	Eccrine Papillary Adenoma
6329	5453	Pulmonary Venoocclusive Disease
6330	5455	Pulmonary Vascular Disorder
6331	5456	Spinal Vascular Disorder
6332	5457	Laryngeal Neuroendocrine Tumor
6333	5460	Contagious Pleuropneumonia
6334	5461	Primary Mycoplasma Infectious Disease
6335	5462	African Swine Fever
6336	5463	Cochlear Disease
6337	5465	Conjunctival Intraepithelial Neoplasm
6338	5467	Conjunctival Cancer
6339	5468	Biliary Papillomatosis
6340	5469	Biliary Tract Intraductal Papillary Mucinous Neoplasm
6341	5472	Tumor Of The Thecoma Fibroma Group
6342	5474	Ovarian Serous Adenofibroma
6343	5475	Uterine Corpus Adenofibroma
6344	5476	Cervical Adenofibroma
6345	5477	Clear Cell Adenofibroma
6346	5478	Fallopian Tube Adenofibroma
6347	5479	Papillary Adenofibroma
6348	548	Malignant Hypertensive Heart Disease
6349	5480	Ovarian Endometrioid Adenofibroma
6350	5482	Cystadenofibroma
6351	5484	Fibrous Synovial Sarcoma
6352	5485	Synovial Sarcoma
6353	5486	Metastatic Synovial Sarcoma
6354	5487	Spindle Cell Synovial Sarcoma
6355	5488	Mediastinum Synovial Sarcoma
6356	5489	Adult Synovial Sarcoma
6357	5491	Pediatric Synovial Sarcoma
6358	5492	Biphasic Synovial Sarcoma
6359	5493	Recurrent Synovial Sarcoma
6360	5494	Epithelioid Cell Synovial Sarcoma
6361	5495	Monophasic Synovial Sarcoma
6362	5496	Nonmetastatic Synovial Sarcoma
6363	5497	Hepadnaviridae Infectious Disease
6364	5500	Cellular Ependymoma
6365	5501	Pediculus Humanus Capitis Infestation
6366	5502	Lice Infestation
6367	5503	Spinal Cord Ependymoma
6368	5504	Tanycytic Ependymoma
6369	5505	Papillary Ependymoma
6370	5507	Clear Cell Ependymoma
6371	5508	Brain Stem Ependymoma
6372	5509	Pediatric Ependymoma
6373	551	Toxic Pneumonitis
6374	5510	Pineal Dysgerminoma
6375	5511	Dysgerminoma Of Ovary
6376	5513	Pediculus Humanus Corporis Infestation
6377	5514	Breast Squamous Cell Carcinoma
6378	5515	Nasal Cavity Squamous Cell Carcinoma
6379	5516	Gastric Squamous Cell Carcinoma
6380	5517	Stomach Carcinoma
6381	5518	Penis Squamous Cell Carcinoma
6382	5519	Colon Squamous Cell Carcinoma
6384	5520	Head And Neck Squamous Cell Carcinoma
6385	5521	Keratinizing Squamous Cell Carcinoma
6386	5522	Basaloid Squamous Cell Carcinoma
6387	5524	Adenoid Squamous Cell Carcinoma
6388	5525	Anal Squamous Cell Carcinoma
6389	5526	Middle Ear Squamous Cell Carcinoma
6390	5527	Ampulla Of Vater Squamous Cell Carcinoma
6391	5528	Rectum Squamous Cell Carcinoma
6392	5529	Lacrimal Gland Squamous Cell Carcinoma
6393	5530	Thymus Squamous Cell Carcinoma
6394	5531	Ovarian Squamous Cell Carcinoma
6395	5532	Ovarian Squamous Cell Neoplasm
6396	5533	Endometrial Squamous Cell Carcinoma
6397	5534	Renal Pelvis Squamous Cell Carcinoma
6398	5535	Gallbladder Squamous Cell Carcinoma
6399	5536	Sarcomatoid Squamous Cell Skin Carcinoma
6400	5537	Squamous Cell Bile Duct Carcinoma
6401	5538	External Ear Squamous Cell Carcinoma
6402	5539	Ureter Squamous Cell Carcinoma
6403	5540	Fallopian Tube Squamous Cell Carcinoma
6404	5545	Anal Neuroendocrine Tumor
6405	5546	Femoral Cancer
6406	5547	Pulmonary Artery Choriocarcinoma
6407	5549	CNS Choriocarcinoma
6408	5550	Choriocarcinoma Of Ovary
6409	5551	Choriocarcinoma Of The Testis
6410	5552	Mediastinum Choriocarcinoma
6411	5553	Pineal Region Choriocarcinoma
6412	5554	Childhood Neoplasm Of The Testis
6413	5556	Testicular Malignant Germ Cell Cancer
6414	5557	Testicular Germ Cell Cancer
6415	5559	Mediastinal Cancer
6416	5560	Mediastinal Mesenchymal Tumor
6417	5561	Gastric Teratoma
6418	5562	Dermoid Cyst With Malignant Transformation
6419	5563	Malignant Teratoma
6420	5564	Fallopian Tube Teratoma
6421	5565	Adult Teratoma
6422	5566	Mature Teratoma
6423	5567	Ovarian Germ Cell Teratoma
6424	5568	Mediastinum Teratoma
6425	5569	Malignant Syringoma
6426	557	Kidney Disease
6427	5570	Malignant Acrospiroma
6428	5572	Beckwith-Wiedemann Syndrome
6429	5573	Classical Swine Fever
6430	5574	VIPoma
6431	5575	Delayed Puberty
6432	5576	Inhibited Male Orgasm
6433	5577	Gastrinoma
6434	5578	Small Intestinal Gastrinoma
6435	5579	Gastric Gastrinoma
6436	558	Acute Pyelonephritis Without Lesion Of Renal Medullary Necrosis
6437	5580	Pancreatic Gastrinoma
6438	5583	Lung Giant Cell Carcinoma
6439	5585	Ferguson-Smith Tumor
6440	5587	Volkmann Contracture
6441	5588	Lung Papillary Adenocarcinoma
6442	559	Acute Pyelonephritis
6443	5590	Aggressive Digital Papillary Adenocarcinoma
6444	5591	Eccrine Papillary Adenocarcinoma
6445	5592	Breast Papillary Carcinoma
6446	5593	Gastric Papillary Adenocarcinoma
6447	5594	Intraductal Papillary Adenocarcinoma With Invasion
6448	5595	Papillary Thymic Adenocarcinoma
6449	5597	Fallopian Tube Papillary Adenocarcinoma
6450	5598	Fallopian Tube Serous Adenocarcinoma
6451	5599	Precursor T-lymphoblastic Lymphoma/leukemia
6452	560	Jaw-winking Syndrome
6453	5600	Precursor Lymphoblastic Lymphoma/leukemia
6454	5601	T-cell Neoplasm
6455	5602	T-cell Adult Acute Lymphocytic Leukemia
6456	5603	Acute T Cell Leukemia
6457	5604	Adult Acute Lymphocytic Leukemia
6458	5605	Breast Medullary Carcinoma
6459	5608	Dental Pulp Calcification
6460	5609	Congenital Adrenal Gland Disorder
6461	561	Trigeminal Nerve Disease
6462	5611	Anaplastic Intraspinal Meningioma
6463	5612	Spinal Cancer
6464	5613	Anaplastic Meningioma
6465	5614	Eye Disease
6466	5615	Spinal Canal Intradural Extramedullary Neoplasm
6467	5616	Intraepithelial Neoplasm
6468	562	Third Cranial Nerve Disease
6469	5621	Histiocytic And Dendritic Cell Cancer
6470	5622	Major Puerperal Infectious Disease
6471	5623	Adenosquamous Breast Carcinoma
6472	5624	Adenosquamous Bile Duct Carcinoma
6473	5625	Esophageal Adenosquamous Carcinoma
6474	5626	Thymus Adenosquamous Carcinoma
6475	5627	Adenosquamous Gallbladder Carcinoma
6476	5628	Ampulla Of Vater Adenosquamous Carcinoma
6477	5629	Adenosquamous Colon Carcinoma
6478	563	Primary Fusobacteriaceae Infectious Disease
6479	5630	Bartholin's Gland Adenosquamous Carcinoma
6480	5631	Endometrial Adenosquamous Carcinoma
6481	5632	Optic Nerve Sheath Meningioma
6482	5633	Visual Pathway Meningioma
6483	5634	Adenosquamous Prostate Carcinoma
6484	5635	Gastric Adenosquamous Carcinoma
6485	5636	Cervical Adenosquamous Carcinoma
6486	5637	Adenosquamous Pancreas Carcinoma
6487	5638	Malignant Giant Cell Tumor Of Soft Parts
6488	5639	Rete Testis Neoplasm
6489	5641	Diffuse Pulmonary Fibrosis
6490	5642	Localized Pulmonary Fibrosis
6491	5643	Urethral Villous Adenoma
6492	5644	Tricuspid Valve Prolapse
6493	5648	Choroid Plexus Carcinoma
6494	5649	Solid Carcinoma
6495	565	Bilateral Hypoactive Labyrinth
6496	5651	Anaplastic Carcinoma
6497	5652	Metaplastic Carcinoma
6498	5655	Chiasmal Syndrome
6499	5656	Cranial Nerve Disease
6500	5658	Lipid-rich Carcinoma
6501	5659	Invasive Carcinoma
6502	566	Labyrinthine Dysfunction
6503	5660	Lymphoepithelioma-like Carcinoma
6504	5662	Pleomorphic Carcinoma
6505	5663	Helicobacter Pylori-related Carcinoma
6506	5665	External Ear Cancer
6507	5667	Sweat Gland Carcinoma
6508	5670	Comedo Carcinoma
6509	5672	Large Intestine Cancer
6510	5675	Cribriform Carcinoma
6511	5677	Extragonadal Nonseminomatous Germ Cell Tumor
6512	5678	Nerve Fibre Bundle Defect
6513	5679	Retinal Disease
6514	5680	Embryonal Testis Carcinoma
6515	5681	Ovarian Embryonal Carcinoma
6516	5683	Hereditary Breast Ovarian Cancer
6517	5684	Spondyloepimetaphyseal Dysplasia, Sponastrime Type
6518	5687	Flat Adenoma Syndrome
6519	5688	Werner Syndrome
6520	5690	Atypical Lipomatous Tumor
6521	5691	Visual Cortex Disease
6522	5692	Cellular Myxoid Liposarcoma
6523	5693	Adult Liposarcoma
6524	5694	Esophagus Liposarcoma
6525	5695	Pediatric Liposarcoma
6526	5696	Larynx Liposarcoma
6527	5697	Liposarcoma Of The Ovary
6528	5698	Fibroblastic Liposarcoma
6529	5699	Kidney Liposarcoma
6530	57	Aortic Valve Insufficiency
6531	5700	Gastric Liposarcoma
6532	5701	Breast Liposarcoma
6533	5702	Pleomorphic Liposarcoma
6534	5703	Mixed Liposarcoma
6535	5704	Sclerosing Liposarcoma
6536	5705	Spindle Cell Liposarcoma
6537	5707	Liposarcoma Nonmetastatic
6538	5708	Liposarcoma Metastatic
6539	5709	Mixed-type Liposarcoma
6540	571	Median Neuropathy
6541	5710	Liposarcoma Recurrent
6542	5711	Vulvar Liposarcoma
6543	5712	Cutaneous Liposarcoma
6544	5713	Mediastinum Liposarcoma
6545	5714	Intracranial Liposarcoma
6546	5715	Functionless Pituitary Adenoma
6547	5716	Hormone Producing Pituitary Cancer
6548	5717	Recurrent Pituitary Tumor
6549	5718	Adrenal Neuroblastoma
6550	5719	Adrenal Medulla Cancer
6551	572	Mononeuritis Of Upper Limb And Mononeuritis Multiplex
6552	5720	Neuroblastomas Of The Adrenal Gland And Sympathetic Nervous System
6553	5723	Optic Atrophy
6554	5724	Seminal Vesicle Cystadenoma
6555	5725	Rete Ovarii Cystadenoma
6556	5726	Uterine Ligament Papillary Cystadenoma
6557	5727	Uterine Ligament Cancer
6558	5728	Diffuse Peritoneal Leiomyomatosis
6559	5729	Intravenous Leiomyomatosis
6560	573	Nerve Compression Syndrome
6561	5730	Salpingitis Isthmica Nodosa
6562	5731	Chronic Salpingitis
6563	5732	Pyosalpinx
6564	5733	Salpingitis
6565	5738	Secondary Myelofibrosis
6566	574	Peripheral Nervous System Disease
6567	5740	Small Intestinal Vasoactive Intestinal Peptide Producing Tumor
6568	5741	Pancreatic Vasoactive Intestinal Peptide Producing Tumor
6569	5742	Pancreatic Acinar Cell Adenocarcinoma
6570	5743	Acinic Cell Breast Carcinoma
6571	5744	Ovary Serous Adenocarcinoma
6572	5746	Ovarian Serous Cystadenocarcinoma
6573	5747	Uterine Ligament Serous Adenocarcinoma
6574	5748	Rheumatic Pulmonary Valve Disease
6575	5749	Pulmonary Valve Disease
6576	5750	Uterine Corpus Serous Adenocarcinoma
6577	5751	Pancreatic Serous Cystadenocarcinoma
6578	5752	Cervical Serous Adenocarcinoma
6579	5757	Endocervicitis
6580	5758	Malignant Mesenchymoma
6581	5759	Sebaceous Gland Neoplasm
6582	576	Proteinuria
6583	5760	Sebaceous Breast Carcinoma
6584	5761	Vulvar Sebaceous Carcinoma
6585	5763	Lung Clear Cell-sugar-tumor
6586	5764	Lung Meningioma
6587	5765	Primary Ectopic Meningioma
6588	5766	Pulmonary Sclerosing Hemangioma
6589	5767	Hilar Lung Neoplasm
6590	5768	Nager Syndrome
6591	5769	Verruciform Xanthoma Of Skin
6592	5770	Mycobacterium Avium-intracellulare Lymphadenitis
6593	5771	Mycobacterium Avium Complex Lymphadenitis
6594	5772	Central Nervous System Hematologic Cancer
6595	5773	Oral Submucous Fibrosis
6596	5774	Giant Hemangioma
6597	5775	Cavernous Hemangioma Of Colon
6598	5776	Cavernous Hemangioma Of Face
6599	5777	Rectum Neuroendocrine Neoplasm
6600	578	Urination Disorder
6601	5781	Atrophic Flaccid Tympanic Membrane
6602	5782	Tympanic Membrane Disease
6603	5784	Esophageal Neuroendocrine Tumor
6604	5785	Recurrent Hepatoblastoma
6605	5786	Recurrent Childhood Cancer Of Liver
6606	5789	Mixed Hepatoblastoma
6607	5790	Resectable Hepatoblastoma
6608	5792	Hepatoblastoma With Pure Fetal Epithelial Differentiation
6609	5796	Nonresectable Hepatoblastoma
6610	5797	Mixed Hepatoblastoma With Teratoid Features
6611	5798	Macrotrabecular Hepatoblastoma
6612	580	Acute Urate Nephropathy
6613	5802	Hepatoblastoma With Combined Fetal Epithelial Differentiation
6614	5804	Discrete Subaortic Stenosis
6615	5805	Subvalvular Aortic Stenosis
6616	5806	Stork Bite
6617	5809	Childhood Parosteal Osteogenic Sarcoma
6618	581	Gouty Nephropathy
6619	5810	Adenosine Deaminase Deficiency
6620	5812	MHC Class II Deficiency
6621	5813	Purine Nucleoside Phosphorylase Deficiency
6622	5815	Cerebral Lymphoma
6623	5818	ALPS-associated Lymphoma
6624	5819	Localized Lymphoma
6625	582	Hemoglobinuria
6626	5820	Composite Lymphoma
6627	5821	Methotrexate-associated Lymphoproliferation
6628	5822	Gray Zone Lymphoma
6629	5823	Pediatric Lymphoma
6630	5825	Adult Lymphoma
6631	5826	Breast Lymphoma
6632	5828	Endometrioid Ovary Carcinoma
6633	5829	Uterine Ligament Endometrioid Adenocarcinoma
6634	583	Hemolytic Anemia
6635	5830	Cervical Endometrioid Adenocarcinoma
6636	5831	Fallopian Tube Endometrioid Adenocarcinoma
6637	5832	Metastatic Endometrioid Carcinoma
6638	5834	Spermatocytoma
6639	5838	Extragonadal Seminoma
6640	5842	Testis Seminoma
6641	5843	Posteroinferior Myocardial Infarction
6642	5844	Myocardial Infarction
6643	5845	Anterolateral Myocardial Infarction
6644	5846	Septal Myocardial Infarction
6645	5847	Posterior Myocardial Infarction
6646	5848	Apical Myocardial Infarction
6647	5849	Subendocardial Myocardial Infarction
6648	585	Nephrolithiasis
6649	5850	Inferior Myocardial Infarction
6650	5851	Posterolateral Myocardial Infarction
6651	5852	Inferolateral Myocardial Infarct
6652	5853	Lateral Myocardial Infarction
6653	5854	Silent Myocardial Infarction
6654	5855	Anteroseptal Myocardial Infarction
6655	5857	Secondary Chondrosarcoma
6656	5859	Periosteal Chondrosarcoma
6657	5861	Myxoid Chondrosarcoma
6658	5862	Localized Chondrosarcoma
6659	5863	Recurrent Chondrosarcoma
6660	5865	Metastatic Chondrosarcoma
6661	5866	Juxtacortical Chondrosarcoma
6662	5867	Clear Cell Chondrosarcoma
6663	587	Tuberculous Lung Cavity
6664	5870	Eosinophilic Pneumonia
6665	5872	Placental Necrosis
6666	5874	Retroperitoneal Germ Cell Neoplasm
6667	5875	Retroperitoneal Cancer
6668	5876	Apocrine Sweat Gland Neoplasm
6669	5877	Endocardium Cancer
6670	5884	Benign Intermediate Mesothelioma
6671	5886	Mixed Embryonal Carcinoma And Teratoma With Seminoma Of The Testis
6672	5888	Congenital Cystic Kidney Disease
6673	5889	Anaplastic Ependymoma
6674	589	Congenital Hemolytic Anemia
6675	5890	Malignant Adult Ependymoma
6676	5893	Childhood Malignant Mesenchymoma
6677	5894	Adult Malignant Mesenchymoma
6678	5895	Clear Cell Cystadenofibroma
6679	5896	Ovarian Clear Cell Cystadenofibroma
6680	5897	Ovarian Clear Cell Adenofibroma
6681	5898	Polycystic Kidney Disease
6682	5900	Meningeal Melanocytoma
6683	5907	Penis Non-invasive Verrucous Carcinoma
6684	5908	Penis Verrucous Carcinoma
6685	591	Phobic Disorder
6686	5913	Brachial Plexus Neoplasm
6687	5914	Nonencapsulated Sclerosing Carcinoma
6688	5915	Uterus Intravascular Leiomyomatosis
6689	5916	Uterine Corpus Leiomyomatosis
6690	5917	Uterine Corpus Diffuse Leiomyomatosis
6691	5918	Localized Unresectable Adult Primary Liver Cancer
6692	5919	Localized Unresectable Adult Primary Hepatoma
6693	5920	Malignant Fibrous Histiocytoma Metastatic
6694	5921	Adult Brainstem Mixed Glioma
6695	5922	Adult Brainstem Astrocytoma
6696	5923	Distal Biliary Tract Carcinoma
6697	5924	Recurrent Extrahepatic Bile Duct Cancer
6698	5926	Extrahepatic Bile Duct Small Cell Adenocarcinoma
6699	5928	Autosomal Recessive Polycystic Kidney
6700	593	Agoraphobia
6701	5931	Unresectable Extrahepatic Bile Duct Cancer
6702	5933	Resectable Bile Duct Cancer
6703	5934	Localized Extrahepatic Bile Duct Cancer
6704	5936	Ovarian Mixed Germ Cell Neoplasm
6705	5937	Autosomal Dominant Polycystic Kidney
6706	594	Panic Disorder
6707	5940	Malignant Peripheral Nerve Sheath Tumor
6708	5941	Lung Carcinoma Metastatic To The Brain
6709	5948	Angiokeratoma Of Mibelli
6710	5949	Angiokeratoma Circumscriptum
6711	5957	Bladder Urachal Squamous Cell Carcinoma
6712	5958	Bladder Urachal Carcinoma
6713	5963	Schistosoma Hematobium-related Bladder Squamous Cell Carcinoma
6714	5973	Kidney Pelvis Papillary Carcinoma
6715	5974	Renal Pelvis Transitional Cell Carcinoma
6716	5975	Renal Pelvis Papillary Tumor
6717	5976	Occlusion Precerebral Artery
6718	5977	Renal Pelvis Neoplasm
6719	5979	Human Papilloma Virus Related Vulvar Squamous Cell Carcinoma
6720	5980	Hemispheric Anaplastic Astrocytoma
6721	5981	Hamartoma Of Hypothalamus
6722	5982	Kidney Fibrosarcoma
6723	5983	Kidney Osteogenic Sarcoma
6724	5989	Clear Cell Myomelanocytic Tumor Of The Falciform Ligament/Ligamentum Teres
6725	599	Specific Phobia
6726	5990	Internal Auditory Canal Meningioma
6727	5991	Early Onset Breast Ovarian Cancer Syndrome
6728	5996	Blunt Duct Adenosis Of Breast
6729	5997	Non-proliferative Fibrocystic Change Of The Breast
6730	5998	Microglandular Adenosis
6731	5999	Apocrine Adenosis Of Breast
6732	600	Animal Phobia
6733	6000	Congestive Heart Failure
6734	6001	Breast Fibrosarcoma
6735	6003	Aleukemic Leukemia Cutis
6736	6004	Aleukemic Leukemia
6737	6013	Mediastinum Embryonal Carcinoma
6738	6014	Mediastinal Germ Cell Cancer
6739	6015	Adult Central Nervous System Teratoma
6740	6016	Adult Central Nervous System Mature Teratoma
6741	6017	Central Nervous System Mature Teratoma
6742	6018	Adult Central Nervous System Immature Teratoma
6743	6019	Central Nervous System Immature Teratoma
6744	602	Cancerophobia
6745	6020	Metastatic MPNST
6746	6021	Malignant Testicular Leydig Cell Tumor
6747	6022	Central Nervous System Melanoma
6748	6023	Metastasis To The Parathyroid Gland
6749	6024	Selective IgE Deficiency Disease
6750	6025	Selective Immunoglobulin Deficiency Disease
6751	603	AIDS Phobia
6752	6031	Disseminated Squamous Cell Carcinoma
6753	6032	Juvenile Type Testicular Granulosa Cell Tumor
6754	6033	Heart Fibrosarcoma
6755	6034	Heart Malignant Hemangiopericytoma
6756	6037	Spindle Cell Intraocular Melanoma
6757	6039	Uveal Melanoma
6758	6041	Choroid Spindle Cell Melanoma
6759	6043	Ciliary Body Spindle Cell Melanoma
6760	6045	AIDS Retinopathy
6761	6048	Telangiectatic Glomangioma
6762	605	Flying Phobia
6763	6050	Esophageal Disease
6764	6052	Central Nervous System Childhood Germ Cell Tumor
6765	6053	Pediatric Germ Cell Cancer
6766	6054	Frontal Sinus Schneiderian Papilloma
6767	6055	Paranasal Sinus Schneiderian Papilloma
6768	6059	Nasal Vestibule Papilloma
6769	606	Brown-Sequard Syndrome
6770	6065	Urinary Tract Non-invasive Transitional Cell Neoplasm
6771	6067	Ovarian Mucinous Neoplasm
6772	607	Paraplegia
6773	6071	Resectable Duodenal Carcinoma
6774	6077	Localized Malignant Mesothelioma
6775	6078	Secondary Malignant Neoplasm To The Nervous System
6776	6079	Drop Secondary Malignant Neoplasm To The Spinal Cord
6777	6080	Spinal Cord Secondary Cancer
6778	6081	Childhood Testicular Endodermal Sinus Neoplasm
6779	6082	Pediatric Testicular Germ Cell Tumor
6780	6083	Childhood Ovarian Endodermal Sinus Tumor
6781	6084	Pediatric Ovarian Germ Cell Tumor
6782	6085	Meningeal Melanoma
6783	6086	Malignant Leptomeningeal Tumor
6784	6087	Predominant Disturbance Of Emotions
6785	6088	Acute Stress Disorder
6786	6089	Pediatric Leptomeningeal Melanoma
6787	609	Skin Abnormality
6788	6090	Adult Leptomeningeal Melanoma
6789	6091	Ampulla Of Vater Intestinal Type Adenocarcinoma
6790	6098	Thalamic Neoplasm
6791	61	Mitral Valve Disease
6792	6101	Signet Ring Cell Variant Cervical Mucinous Adenocarcinoma
6793	6102	Herpetic Gastritis
6794	6103	Thoracic Spinal Canal And Spinal Cord Meningioma
6795	6104	Mixed Embryonal Carcinoma And Teratoma Of The Mediastinum
6796	6105	Mediastinum Malignant Teratoma
6797	6107	Mediastinal Mixed Non-seminomatous Germ Cell Tumor
6798	6108	Mesenchymal Hamartoma Of The Liver
6799	6109	Hepatic And Intrahepatic Bile Duct Non-epithelial Neoplasm
6800	611	Leukocyte-adhesion Deficiency Syndrome
6801	6110	Jugular Foramen Meningioma
6802	6111	Jugular Foramen Neoplasm
6803	6112	Cerebral Meningioma
6804	6113	Intracerebral Cystic Meningioma
6805	6114	Cerebral Convexity Meningioma
6806	6115	Lateral Ventricle Meningioma
6807	6118	Renal Pelvis Inverted Papilloma
6808	6119	Renal Pelvis Urothelial Papilloma
6809	612	Primary Immunodeficiency Disease
6810	6122	AIDS-related Anal Cancer
6811	6126	Anal Canal Carcinoma
6812	6128	Gliomatosis Cerebri
6813	613	T Lymphocyte Deficiency
6814	6132	Bronchitis
6815	6139	Uterine Corpus Epithelioid Leiomyosarcoma
6816	614	Lymphopenia
6817	6148	Nasal Cavity Carcinoma In Situ
6818	615	Leukopenia
6819	616	Deltaretrovirus Infectious Disease
6820	6160	Childhood Choriocarcinoma Of The Testis
6821	6161	Childhood Testicular Mixed Germ Cell Tumor
6822	6162	Childhood Embryonal Testis Carcinoma
6823	6163	Familial Renal Papillary Carcinoma
6824	6166	Prostatic Urethra Urothelial Carcinoma
6825	6167	Prostatic Urethral Cancer
6826	617	Retroviridae Infectious Disease
6827	6170	Ovarian Carcinosarcoma
6828	6171	Uterine Carcinosarcoma
6829	6174	Sporadic Conventional Renal Cell Carcinoma
6830	6175	Mediastinal Neurilemmoma
6831	6178	Metastatic Ovarian Small Cell Carcinoma With Hypercalcemia
6832	6179	Ovarian Small Cell Carcinoma
6833	6180	Cytomegalovirus Gastritis
6834	6184	Squamous Cell Carcinoma Of Unknown Primary
6835	619	Lymphoproliferative Disease
6836	6190	Rectum Kaposi's Sarcoma
6837	6192	Inflammatory MFH
6838	6193	Epithelioid Sarcoma
6839	6195	Conjunctivitis
6840	6196	Reactive Arthritis
6841	6197	Conventional Malignant Hemangiopericytoma
6842	6198	Corneal Intraepithelial Neoplasm
6843	6199	Cornea Cancer
6844	62	Aortic Valve Disease
6845	620	Blood Protein Disease
6846	6200	Recurrent Malignant Pericardial Mesothelioma
6847	6201	Pericardial Mesothelioma
6848	6202	Mesothelioma Malignant Recurrent
6849	6203	Thyroid Hyalinizing Trabecular Adenoma
6850	6204	Follicular Adenoma
6851	6208	Mediastinal Osteogenic Sarcoma
6852	6209	Malignant Mediastinum Hemangiopericytoma
6853	621	Simian Acquired Immunodeficiency Syndrome
6854	6210	Bladder Diffuse Clear Cell Adenocarcinoma
6855	6211	Mixed Epithelial Tumor Of Ovary
6856	6212	Ovarian Endometrial Cancer
6857	6213	Ovarian Serous Tumor
6858	6214	Ovarian Papillary Neoplasm
6859	6217	Gastric Diffuse Adenocarcinoma
6860	622	Lentivirus Infectious Disease
6861	6225	Cronkhite-Canada Syndrome
6862	6227	Articular Cartilage Disease
6863	6228	Peritoneal Serous Papillary Adenocarcinoma
6864	6229	Childhood Mature Teratoma Of The Ovary
6865	6230	Childhood Teratoma Of The Ovary
6866	6231	Mature Teratoma Of The Ovary
6867	6232	Ovarian Biphasic Or Triphasic Teratoma
6868	6239	Non-invasive Bladder Papillary Urothelial Neoplasm
6869	624	Transient Hypogammaglobulinemia Of Infancy
6870	6240	Transitional Cell Intraepithelial Neoplasm
6871	6244	Familial Renal Oncocytoma
6872	6245	Renal Oncocytoma
6873	6246	Oncocytic Neoplasm
6874	6249	Mediastinum Seminoma
6875	625	Transient Hypogammaglobulinemia
6876	6250	Epstein-Barr Virus Related Carcinoma
6877	6255	Growth Hormone Secreting Pituitary Adenoma
6878	6256	Malignant Growth Hormone Secreting Neoplasm Of Pituitary
6879	6257	Chromophil Adenoma Of The Kidney
6880	6258	Type 1 Papillary Adenoma Of The Kidney
6881	6259	Type 2 Papillary Adenoma Of The Kidney
6882	626	Complement Deficiency
6883	6262	Follicular Dendritic Cell Sarcoma
6884	6263	Inflammatory Breast Carcinoma
6885	6268	Recurrent Extraskeletal Chondrosarcoma
6886	627	Severe Combined Immunodeficiency
6887	6270	Gastric Cardia Carcinoma
6888	6271	Gastric Cardia Adenocarcinoma
6889	6273	Metastasis To Pituitary Gland
6890	6274	Malignant Thyroid Stimulating Hormone Producing Neoplasm Of Pituitary Gland
6891	6275	TSH Producing Pituitary Tumor
6892	6276	Malignant ACTH Producing Neoplasm Of Pituitary Gland
6893	6277	ACTH-producing Pituitary Tumor
6894	6278	Ovarian Mucinous Malignant Adenofibroma
6895	628	Combined T Cell And B Cell Immunodeficiency
6896	6284	Epicardium Lipoma
6897	6285	Heart Lipoma
6898	6286	Childhood Cerebellar Astrocytic Neoplasm
6899	6287	Recurrent Pediatric Cerebellar Astrocytoma
6900	6288	Recurrent Childhood Brain Tumor
6901	629	Congenital Disorder Of Natural Immunity
6902	6291	Cerebral Hemisphere Lipoma
6903	6292	Intracranial Lipoma
6904	6293	Central Nervous System Lipoma
6905	6294	Corpus Callosum Lipoma
6906	6296	Herpes Simplex Virus Esophagitis
6907	6297	Viral Esophagitis
6908	630	Genetic Disease
6909	6301	Prostate Basal Cell Carcinoma
6910	6307	Ectopic Thymus
6911	6308	Metastatic Transitional Cell Cancer Of The Renal Pelvis And Ureter
6912	631	Fibromyalgia
6913	6312	Clivus Chordoma
6914	6313	Clivus Chondroid Chordoma
6915	6314	Ovarian Fetiform Teratoma
6916	6315	Ovarian Solid Teratoma
6917	6316	Bartholin's Gland Adenocarcinoma
6918	6322	Tibial Adamantinoma
6919	6327	Ovarian Dermoid Cyst With Adenocarcinoma
6920	6328	Ovarian Dermoid Cyst With Secondary Carcinoma
6921	6329	Ovarian Dermoid Cyst With Secondary Tumor
6922	633	Myositis
6923	6331	Immature Teratoma Of Ovary
6924	6332	Adult Malignant Hemangiopericytoma
6925	6333	Adult Intracranial Malignant Hemangiopericytoma
6926	6334	Anterior Optic Tract Meningioma
6927	6335	Bilateral Meningioma Of Optic Nerve
6928	6337	Cerebellopontine Angle Meningioma
6929	6338	Testicular Tumor Of The Thecoma Fibroma Group
6930	6339	Vulvar Eccrine Adenocarcinoma
6931	6344	Melanocytic Psammomatous MPNST
6932	6345	Malignant Melanocytic Neoplasm Of The Peripheral Nerve Sheath
6933	635	Acquired Immunodeficiency Syndrome
6934	6354	CLL/SLL
6935	636	Central Pontine Myelinolysis
6936	6361	Renal Cell Carcinoma With Constitutional Chromosome 3 Translocations
6937	6364	Migraine
6938	6367	Acral Lentiginous Melanoma
6939	637	Metabolic Brain Disease
6940	6370	Hepatic Osteogenic Sarcoma
6941	6376	Hypersplenism
6942	6379	Diffuse Meningeal Melanocytosis
6943	638	Demyelinating Disease Of Central Nervous System
6944	6380	Adult Brain Medulloblastoma
6945	6381	Anterior Foramen Magnum Meningioma
6946	6382	Recurrent Childhood Glioma Of Brain Stem
6947	6383	Childhood Brain Stem Glioma
6948	6384	Recurrent Childhood Central Nervous System Tumor
6949	6385	Recurrent Childhood Brainstem Astrocytoma
6950	6386	Childhood Brainstem Astrocytoma
6951	639	Acute Disseminated Encephalomyelitis
6952	64	Epithelial Tissue Disease
6953	640	Encephalomyelitis
6954	6404	Metanephric Adenoma
6955	6405	Ovarian Papillary Cystadenoma
6956	6406	Double Outlet Right Ventricle
6957	6407	Ovarian Surface Papilloma
6958	6408	Ovary Papillary Carcinoma
6959	641	CNS Demyelinating Autoimmune Disease
6960	6419	Tetralogy Of Fallot
6961	642	Demyelinating Encephalopathy
6962	6420	Pulmonary Valve Stenosis
6963	6423	Childhood Central Nervous System Mature Teratoma
6964	6424	Pediatric CNS Teratoma
6965	6425	Eyelid Carcinoma
6966	6428	Cervical Adenoid Basal Carcinoma
6967	643	Progressive Multifocal Leukoencephalopathy
6968	6432	Pulmonary Hypertension
6969	6438	Malignant Choroid Melanoma
6970	644	Leukoencephalopathy
6971	6445	Ovarian Endometrioid Malignant Adenofibroma
6972	6446	Ceruminous Carcinoma
6973	6447	Ceruminous Tumor
6974	6448	Vulvar Apocrine Adenocarcinoma
6975	6451	Central Nervous System Fibrosarcoma
6976	6457	Cowden Disease
6977	6458	Cerebellar Liponeurocytoma
6978	6459	Lipoma Of The Rectum
6979	646	Viral Encephalitis
6980	6460	Large Intestine Lipoma
6981	6467	Bone Recurrent Ewing's Sarcoma
6982	6468	Mucinous Cystadenofibroma
6983	6469	Ovarian Mucinous Adenofibroma
6984	647	Polyomavirus Infectious Disease
6985	6474	Childhood Teratocarcinoma Of The Testis
6986	6476	Clear Cell Variant Infiltrating Bladder Urothelial Carcinoma
6987	6477	Invasive Bladder Transitional Cell Carcinoma
6988	648	Kuru
6989	6481	Bladder Signet Ring Cell Adenocarcinoma
6990	6482	Lung Acinar Adenocarcinoma
6991	6483	Rete Testis Adenoma
6992	6484	Mediastinal Melanocytic Neurilemmoma
6993	6488	Metastatic Tumor To The Iris
6994	6489	Periosteal Osteogenic Sarcoma
6995	649	Prion Disease
6996	6491	Breast Capillary Hemangioma
6997	6492	Breast Epithelioid Hemangioma
6998	6494	Pediatric Myxoid Chondrosarcoma
6999	6495	Adult Myxoid Chondrosarcoma
7000	6496	Extraskeletal Myxoid Chondrosarcoma
7001	6498	Seborrheic Keratosis
7002	65	Connective Tissue Disease
7003	6500	Cerebellar Angioblastoma
7004	6501	Brain Stem Angioblastoma
7005	6505	Vaginal Spindle Cell Epithelioma
7006	6506	Anaplastic Seminoma
7007	6510	Lung Occult Squamous Cell Carcinoma
7008	6511	Glandular Pattern Ovarian Yolk Sac Tumor
7009	6512	Hepatoid Pattern Ovarian Yolk Sac Tumor
7010	6514	Polyvesicular Vitelline Pattern Ovarian Yolk Sac Tumor
7011	6517	Clivus Meningioma
7012	6518	Bartholin's Gland Adenomyoma
7013	652	Congenital Musculoskeletal Abnormality
7014	6522	Mixed Cell Uveal Melanoma
7015	6523	Ciliary Body Mixed Cell Melanoma
7016	6524	Malignant Ciliary Body Melanoma
7017	6525	Choroid Mixed Cell Melanoma
7018	653	Purine-pyrimidine Metabolic Disorder
7019	6530	Cortical Thymoma
7020	6532	Monomorphic B-cell PTLD
7021	6533	Monomorphic PTLD
7022	6535	Plasma Cell PTLD
7023	6536	Plasma Cell Neoplasm
7024	654	Overnutrition
7025	6540	Transient Organic Mental Disorder
7026	6543	Acne
7027	6544	Atypical Meningioma
7028	6545	Adult Atypical Meningioma
7029	6546	Secondary Cardiac Lymphoma
7030	6547	Heart Lymphoma
7031	6548	Angiomatous Meningioma
7032	6549	Schistosoma Hematobium-related Bladder Verrucous Squamous Cell Carcinoma
7033	655	Inherited Metabolic Disorder
7034	6552	Gastric Small Cell Carcinoma
7035	6553	Posterior Foramen Magnum Meningioma
7036	6554	Ovarian Clear Cell Malignant Adenofibroma
7037	6556	Hamartoma Of Spinal Cord
7038	6559	Ethmoid Sinus Schneiderian Papilloma
7039	656	Adrenal Adenoma
7040	6562	Ethmoid Sinus Inverted Papilloma
7041	6563	Metastatic Testicular Cancer
7042	6564	Neurilemmoma Of The Pleura
7043	6566	Posterior Uveal Melanoma
7044	6567	Uterine Corpus Myxoid Leiomyosarcoma
7045	6569	Micropapillomatosis Labialis
7046	657	Adenoma
7047	6571	Non-invasive Bladder Urothelial Carcinoma
7048	6573	Recurrent Adult Brain Tumor
7049	6574	Borderline Malignancy Papillary Mucinous Cystadenoma
7050	6575	Childhood Optic Tract Astrocytoma
7051	6576	Childhood Optic Nerve Glioma
7052	6577	Ovarian Dermoid Cyst With Sebaceous Adenoma
7053	6578	Ovarian Dermoid Cyst With Secondary Sebaceous Tumor
7054	6579	Chest Wall Bone Cancer
7055	6581	Breast Apocrine Carcinoma
7056	6585	Oncocytic Breast Carcinoma
7057	6587	Invasive Tubular Breast Carcinoma
7058	6590	Spondylitis
7059	6594	Bladder Colonic Type Adenocarcinoma
7060	6595	Gastric Tubular Adenocarcinoma
7061	66	Muscle Tissue Disease
7062	660	Adrenal Cortex Cancer
7063	6602	Recurrent Malignant Peritoneal Mesothelioma
7064	6603	Kummell's Disease
7065	6604	Spondylosis And Allied Disorder
7066	6605	Classic Variant Of Chromophobe Renal Cell Carcinoma
7067	6606	Eosinophilic Variant Of Chromophobe Renal Cell Carcinoma
7068	6607	Nervous System Hibernoma
7069	6608	Endobronchial Leiomyoma
7070	6609	Basaloid Squamous Cell Carcinoma Of The Head And Neck
7071	6610	Bone Epithelioid Hemangioma
7072	6612	Leukocyte Adhesion Deficiency
7073	6613	Vaginal Villous Adenoma
7074	6618	Unknown Primary Adenocarcinoma
7075	6620	X-linked Hyper IgM Syndrome
7076	6621	Cerebral Angioma
7077	6627	Cervical Adenoma Malignum
7078	6628	Malignant Neoplasm Of Nipple
7079	6629	Nipple Carcinoma
7080	663	Scrotal Angioma
7081	6630	Ovarian Dermoid Cyst With Secondary Sarcoma
7082	6631	Ovarian Dermoid Cyst With Leiomyosarcoma
7083	6632	Ovarian Dermoid Cyst With Angiosarcoma
7084	6634	Adult Central Nervous System Choriocarcinoma
7085	6639	Pediatric CNS Choriocarcinoma
7086	664	Angiokeratoma Of Fordyce
7087	6641	Breast Juvenile Papillomatosis
7088	6643	Baastrup's Syndrome
7089	6648	Adult Pineoblastoma
7090	6652	Diffuse Idiopathic Skeletal Hyperostosis
7091	6654	Childhood Central Nervous System Immature Teratoma
7092	6657	Breast Large Cell Neuroendocrine Carcinoma
7093	6658	Pulmonary Large Cell Neuroendocrine Carcinoma
7094	6659	Cervical Large Cell Neuroendocrine Carcinoma
7095	6663	Papillotubular Adenocarcinoma
7096	6667	Regressing Nevus
7097	6675	Menopausal Syndrome
7098	6676	Froelich's Syndrome
7099	6677	Diffuse Infiltrative Lymphocytosis Syndrome
7100	6678	Tooth And Nail Syndrome
7101	668	Myositis Ossificans
7102	6680	Capgras Syndrome
7103	6681	Diffuse Leiomyomatosis Syndrome
7104	6682	Spondylolisthesis
7105	6683	Aarskog-Scott Syndrome
7106	6686	Achard Syndrome
7107	6687	Achenbach Syndrome
7108	6688	Autoimmune Lymphoproliferative Syndrome
7109	6689	Adherence Syndrome
7110	6690	Acroparesthesia Syndrome
7111	6691	Aagenaes Syndrome
7112	6692	Barre-Lieou Syndrome
7113	6693	Testicular Monophasic Choriocarcinoma
7114	6696	Synchronous Multifocal Osteogenic Sarcoma
7115	6697	Asynchronous Multifocal Osteogenic Sarcoma
7116	67	Neural Tissue Disease
7117	670	Amphetamine Abuse
7118	6700	Gastric Fundus Carcinoma
7119	6702	Recurrent Stomach Cancer
7120	6703	Gastric Pylorus Carcinoma
7121	6704	Anaplastic Gastric Carcinoma
7122	6705	Gastric Body Carcinoma
7123	6706	Tubular Variant Testicular Seminoma
7124	6707	Malignant Triton Tumor
7125	6708	Recurrent Ovarian Epithelial Cancer
7126	6710	Metastatic Anal Cancer
7127	6712	Anterior Spinal Artery Syndrome
7128	6713	Cerebrovascular Disease
7129	6714	Circumscribed Storiform Collagenoma
7130	6715	Collagen Nevus Of Skin
7131	6716	Eruptive Collagenoma
7132	672	Spleen Cancer
7133	6721	Littre Gland Carcinoma
7134	6723	Malignant Type AB Thymoma
7135	6725	Spinal Stenosis
7136	6726	Fibrillary Astrocytoma
7137	6727	Colon Small Cell Carcinoma
7138	6728	Recurrent Pediatric Optic Nerve Astrocytoma
7139	6729	Recurrent Pediatric Optic Nerve Glioma
7140	6730	Recurrent Childhood Optic Tract Astrocytoma
7141	6731	Recurrent Glioma Of Childhood Visual Pathway
7142	6733	Intrahepatic Bile Duct Cystadenoma
7143	6735	Schwannoma Of Jugular Foramen
7144	674	Cleft Palate
7145	6740	Cervix Small Cell Carcinoma
7146	6741	Bilateral Breast Cancer
7147	6742	Synchronous Bilateral Breast Carcinoma
7148	6750	Malignant Fibrous Histiocytoma Recurrent
7149	6752	Internal Auditory Canal Lipoma
7150	6755	Amyloid Tumor
7151	6758	Chest Wall Lymphoma
7152	6759	Bone Lymphoma
7153	676	Juvenile Rheumatoid Arthritis
7154	6760	Lung Lymphoma
7155	6761	Skin Lymphoma
7156	6762	Sternum Lymphoma
7157	6764	Peripheral Neuroblastoma
7158	6774	Polyembryoma Of The Ovary
7159	6776	Breast Myoepithelial Carcinoma
7160	6777	Villoglandular Endometrial Endometrioid Adenocarcinoma
7161	6778	Renal Pelvis And Ureter Localized Transitional Cell Cancer
7162	678	Progressive Supranuclear Palsy
7163	6784	Pediatric Desmoplastic Small Round Cell Tumor
7164	6785	Desmoplastic Small Round Cell Tumor
7165	6786	Childhood Botryoid Rhabdomyosarcoma
7166	6787	Childhood Vagina Botryoid Rhabdomyosarcoma
7167	6788	Vagina Botryoid Rhabdomyosarcoma
7168	6789	Vulvar Childhood Botryoid-type Embryonal Rhabdomyosarcoma
7169	679	Basal Ganglia Disease
7170	6792	Mixed Endodermal Sinus Neoplasm And Teratoma With Seminoma Of The Testis
7171	68	Lymphomyeloid Tissue Disease
7172	680	Tauopathy
7173	6801	Recurrent Hematologic Cancer
7174	6802	Relapsed Precursor T Lymphoblastic Lymphoma/leukemia
7175	6803	Recurrent Adult Acute Lymphocytic Leukemia
7176	6804	Colon Kaposi Sarcoma
7177	6807	Hamartoma Moniliformis
7178	6808	Basaloid Follicular Hamartoma
7179	6809	Vaginal Tubular Adenoma
7180	681	Progressive Bulbar Palsy
7181	6811	Juvenile Pilocytic Astrocytoma
7182	6812	Childhood Pilocytic Astrocytoma
7183	682	Compartment Syndrome
7184	6820	Anaplastic Childhood Astrocytoma Of Brain
7185	6823	Pancreatoblastoma
7186	6826	Recurrent Cancer Of Pancreas
7187	6827	Pancreatic Solid Pseudopapillary Carcinoma
7188	6828	Non-resectable Pancreatic Carcinoma
7189	683	Motor Neuritis
7190	6830	Resectable Pancreas Carcinoma
7191	6835	Recurrent Anal Cancer
7192	6837	Rete Ovarii Adenoma
7193	6838	Rete Ovarii Cystadenofibroma
7194	6839	Breast Intraductal Proliferative Lesion
7195	684	Hepatocellular Carcinoma
7196	6840	Glandular Cell Intraepithelial Neoplasm
7197	6841	Flat Ductal Epithelial Atypia
7198	6844	Kidney Pelvis Sarcomatoid Transitional Cell Carcinoma
7199	6845	Infiltrating Ureter Transitional Cell Carcinoma
7200	6846	Familial Melanoma
7201	6847	Adult Botryoid Rhabdomyosarcoma
7202	6848	Adult Vagina Botryoid Rhabdomyosarcoma
7203	6849	Testicular Intratubular Germ Cell Neoplasia Of The Unclassified Type
7204	6850	Hamartoma Of Eccrine Sweat Gland
7205	6851	Linear Eccrine Nevus With Comedones
7206	6852	Eccrine Angiomatous Hamartoma
7207	6854	Ethmoid Sinus Ectopic Meningioma
7208	6856	Pineal Region Teratoma
7209	6857	Pineal Region Mature Teratoma
7210	6858	Pineal Region Immature Teratoma
7211	686	Liver Carcinoma
7212	6860	Endobronchial Hamartoma
7213	6861	Recurrent Cancer Of Gallbladder
7214	6865	Oxyphilic Endometrial Endometrioid Adenocarcinoma
7215	6867	Mediastinal Gray Zone Lymphoma
7216	6868	Mediastinal Malignant Lymphoma
7217	6869	Parasagittal Meningioma
7218	687	Hepatoblastoma
7219	6870	Cockade Nevus
7220	6871	Spinal Cord Neuroblastoma
7221	6872	Spinal Cord Primitive Neuroectodermal Neoplasm
7222	6873	Skin Tag
7223	6874	Type 1a ALPS
7224	6876	Mixed Childhood Rhabdomyosarcoma
7225	6879	Hamartoma Of Apocrine Sweat Gland
7226	688	Embryonal Cancer
7227	6880	Small Bowel Fibrosarcoma
7228	6886	Ureter Small Cell Carcinoma
7229	6887	Recurrent Ureteric Cancer
7230	6888	Ureter Transitional Cell Carcinoma
7231	6893	AIDS-related Cervical Cancer
7232	6894	AIDS-related Cervical Kaposi's Sarcoma
7233	6895	AIDS-related Kaposi's Sarcoma
7234	6897	Malposition And Malpresentation Of Fetus
7235	6898	Ovary Mixed Epithelial Carcinoma
7236	6899	Malignant Ovarian Mixed Epithelial Neoplasm
7237	69	Hemopoetic Tissue Disease
7238	690	Childhood Cancer Of Liver
7239	6901	Familiar Ovarian Carcinoma
7240	6903	Eye Lymphoma
7241	6905	AIDS-related Herpes Zoster
7242	6906	Glomangiomatosis
7243	6917	Predominantly Cortical Thymoma
7244	6919	Extramucosal (perianal) Adenocarcinoma
7245	6923	Fibrolipomatous Hamartoma Of Peripheral Nerve
7246	6925	Peroneal Nerve Paralysis
7247	6929	Retinal Edema
7248	693	Dental Enamel Hypoplasia
7249	6931	Papillary Extrahepatic Bile Duct Adenocarcinoma
7250	6932	Urinary Bladder Inverted Papilloma
7251	6933	Bladder Transitional Cell Papilloma
7252	6934	Urethra Inverted Papilloma
7253	6935	Ureter Inverted Papilloma
7254	6936	Ureter Urothelial Papilloma
7255	6938	Pediatric Intraocular Retinoblastoma
7256	6939	Childhood Brain Meningioma
7257	6943	Vulvar Inverted Follicular Keratosis
7258	6944	Vulvar Seborrheic Keratosis
7259	6945	Inverted Follicular Keratosis
7260	6947	Sphenoidal Sinus Neoplasm
7261	6948	Malignant Gastric Teratoma
7262	6949	Malignant Gastric Germ Cell Tumor
7263	6950	Combat Disorder
7264	6951	Telangiectatic Osteogenic Sarcoma
7265	6954	Epstein-Barr Virus Related Lymphoma
7266	6955	Intracranial Melanoma
7267	6956	Malignant Intracranial Neoplasm By Morphology
7268	6958	Aleukemic Monocytic Leukemia Cutis
7269	6959	Rectal Cloacogenic Carcinoma
7270	6961	Bartholin's Gland Squamous Cell Carcinoma
7271	6962	Recurrent Cancer Of Skin
7272	6969	Acute Canaliculitis
7273	6970	Acute Inflammation Of Lacrimal Passage
7274	6975	Bladder Urothelial Papillary Carcinoma
7275	6976	Micropapillary Variant Infiltrating Bladder Urothelial Carcinoma
7276	6977	Pancreatic Cholera
7277	698	Dentin Sensitivity
7278	6980	Recurrent Rectosigmoid Cancer
7279	6981	Recurrent Colorectal Cancer
7280	6988	Peripheral Epithelioid Sarcoma
7281	6989	Non-neoplastic Non-molar Trophoblastic Disorder
7282	699	Mitochondrial Myopathy
7283	6990	Placental Site Nodule Or Plaque
7284	6991	Exaggerated Placental Site
7285	6992	Intraocular Mixed Cell Type Melanoma
7286	6993	Iris Mixed Cell Melanoma
7287	6994	Malignant Iris Melanoma
7288	6995	Metastasis To The Kidney
7289	6996	Intermediate Cell Type Choroid Melanoma
7290	6997	Intermediate Cell Type Ciliary Body Melanoma
7291	6998	Gallbladder Mucinous Carcinoma
7292	6999	Lung Recurrent Squamous Cell Carcinoma
7293	7	Disease Of Anatomical Entity
7294	70	Lymphoid Tissue Disease
7295	700	Mitochondrial Metabolism Disease
7296	7001	Recurrent Large Cell Carcinoma Of Lung
7297	7002	Recurrent Adenocarcinoma Of Lung
7298	7003	Malignant Vaginal Mixed Tumor Resembling Synovial Sarcoma
7299	7004	ACTH-secreting Pituitary Adenoma
7300	7005	Gemistocytic Astrocytoma
7301	7006	Childhood Cerebral Diffuse Astrocytoma
7302	7007	Childhood Cerebral Astrocytoma
7303	7008	Protoplasmic Astrocytoma
7304	7009	Adult Diffuse Astrocytoma
7305	701	Dentin Dysplasia
7306	7011	Recurrent Thyroid Carcinoma
7307	7012	Anaplastic Thyroid Carcinoma
7308	7013	Ovarian Mucinous Cystadenofibroma
7309	7014	Infiltrating Lipoma
7310	7015	Deep Fatty Neoplasm
7311	7016	Tendon Sheath Lipoma
7312	7017	Lumbosacral Lipoma
7313	7018	Secondary Malignant Neoplasm To The Adult Brain
7314	702	Tooth Abnormality
7315	7023	Borderline Ovarian Serous Neoplasm With Microinvasion
7316	7024	Mucinous Intrahepatic Cholangiocarcinoma
7317	7025	Anaplastic Malignant Intracranial Meningioma
7318	7026	Adult Malignant Meningioma
7319	7029	Site Specific Early Onset Breast Cancer Syndrome
7320	7030	Bronchial Mucus Gland Adenoma
7321	7031	Glottis Squamous Cell Carcinoma
7322	7032	Bile Duct Clear Cell Adenocarcinoma
7323	7033	Anisakiasis
7324	7037	Childhood Immature Teratoma Of Ovary
7325	7039	Borst-Jadassohn Intraepidermal Carcinoma
7326	7040	Uveal Epithelioid Cell Melanoma
7327	7041	Choroid Epithelioid Cell Melanoma
7328	7042	Ciliary Body Epithelioid Cell Melanoma
7329	7043	Metastatic Vulvar Cancer
7330	7045	Basaloid Lung Carcinoma
7331	7046	Cervical Basaloid Squamous Cell Carcinoma
7332	7047	Penis Basaloid Carcinoma
7333	7048	Vulvar Basaloid Squamous Cell Carcinoma
7334	7049	Basaloid Squamous Cell Skin Carcinoma
7335	705	Leber Hereditary Optic Neuropathy
7336	7050	Thymus Basaloid Carcinoma
7337	7051	Esophageal Basaloid Squamous Cell Carcinoma
7338	7053	Anaplastic Small Cell Thyroid Carcinoma
7339	7054	Multiple Skull Base Meningioma
7340	706	Mature B-cell Neoplasm
7341	7061	Precursor B Lymphoblastic Lymphoma/leukemia
7342	707	B-cell Lymphoma
7343	7070	Recurrent Pediatric Rhabdomyosarcoma
7344	7071	Spinal Cord Dermoid Cyst
7345	7074	Choroidal Hemorrhage And Rupture
7346	7075	Atypical Vulvar Nevus
7347	7076	Lipid-rich Breast Carcinoma
7348	7077	Malignant Melanocytic Peripheral Nerve Sheath Tumor Of Mediastinum
7349	7078	Malignant Mediastinal Peripheral Nerve Sheath Tumor
7350	7079	Adult Cystic Teratoma
7351	7081	Lung Mixed Small Cell And Squamous Cell Carcinoma
7352	7083	Recurrent Adult Primary Hepatoma
7353	7084	Recurrent Adult Primary Liver Cancer
7354	7086	Multicentric Papillary Thyroid Carcinoma
7355	7088	Columnar Cell Variant Papillary Carcinoma
7356	7089	Tall Cell Variant Papillary Carcinoma
7357	709	Splenic Manifestation Of Hairy Cell Leukemia
7358	7095	Pediatric Epithelioid Sarcoma
7359	7097	Macrocystic Pattern Testicular Yolk Sac Tumor
7360	7099	Ovarian Dermoid Cyst With Squamous Cell Carcinoma
7361	710	Splenic Manifestation Of Leukemia
7362	7103	Diaphragma Sellae Meningioma
7363	7105	Epiglottis Neoplasm
7364	711	Refractory Hairy Cell Leukemia
7365	712	Refractory Hematologic Cancer
7366	7127	Radiation Cystitis
7367	713	HCL-V
7368	7132	Urinary Bladder Small Cell Neuroendocrine Carcinoma
7369	7133	Gallbladder Small Cell Carcinoma
7370	7134	Esophagus Small Cell Carcinoma
7371	7136	Ampulla Of Vater Small Cell Carcinoma
7372	7138	Cystitis Cystica
7373	7139	Endometrial Small Cell Carcinoma
7374	7140	Bartholin's Gland Small Cell Carcinoma
7375	7141	Prostate Small Cell Carcinoma
7376	7142	Thymus Small Cell Carcinoma
7377	7144	Laryngeal Small Cell Carcinoma
7378	7145	Papillary Cystic Tumor
7379	7146	Langerhans Cell Sarcoma
7380	7147	Ankylosing Spondylitis
7381	7148	Rheumatoid Arthritis
7382	7149	Metastatic Parathyroid Cancer
7383	715	T-cell Leukemia
7384	7150	Recurrent Parathyroid Cancer
7385	7152	Prostate Stromal Sarcoma
7386	7154	Anaplastic Oligodendroglioma
7387	7155	Adult Undifferentiated Oligodendroglioma
7388	7156	Anaplastic Childhood Oligodendroglioma
7389	7157	Metastatic Squamous Neck Cancer With Occult Primary
7390	7158	Recurrent Metastatic Squamous Cell Cancer To The Neck With Occult Primary
7391	716	Human T-lymphotropic Virus 2 Infectious Disease
7392	7160	Rectum Leiomyoma
7393	7162	Recurrent Larynx Cancer
7394	7164	Mediastinum Mature Teratoma
7395	7165	Subacute Thyroiditis
7396	7166	Thyroiditis
7397	7168	Lung Occult Adenocarcinoma
7398	7169	Lung Occult Large Cell Carcinoma
7399	7170	Recurrent Non-cutaneous Melanoma
7400	7171	Recurrent Cutaneous Melanoma
7401	7173	Cloacogenic Carcinoma
7402	7174	Anus Basaloid Carcinoma
7403	7175	Anal Buschke-Lowenstein Tumor
7404	7177	Anal Canal Squamous Cell Carcinoma
7405	7179	Mixed Eosinophil-basophil Adenoma
7406	718	Autoimmune Hemolytic Anemia
7407	7181	Benign Dermal Neurilemmoma
7408	7186	Metastatic Childhood Sarcoma Of Soft Tissue
7409	7187	Subacute Lymphocytic Thyroiditis
7410	7188	Autoimmune Thyroiditis
7411	7191	Ovarian Endometrioid Cystadenoma
7412	7192	Hereditary Conventional Renal Cell Carcinoma
7413	7198	Maxillary Sinus Adenoid Cystic Carcinoma
7414	720	Normocytic Anemia
7415	7202	Intermediate Malignant Teratoma
7416	7206	Melanomatosis
7417	7207	Lung Combined Large Cell Neuroendocrine Carcinoma
7418	7210	Psammomatous Meningioma
7419	7211	Fibrous Meningioma
7420	7212	Meningothelial Meningioma
7421	7213	Transitional Meningioma
7422	7214	Noninvasive Malignant Thymoma
7423	7215	Relapsed Childhood Ependymoma
7424	722	Spontaneous Abortion
7425	7221	Gallbladder Papillary Carcinoma
7426	7222	Gallbladder Pleomorphic Giant Cell Adenocarcinoma
7427	7223	Breast Giant Fibroadenoma
7428	7224	Spinal Meninges Cancer
7429	7230	Postgerminal Center Chronic Lymphocytic Leukemia/small Lymphocytic Lymphoma
7430	7231	Pediatric CNS Embryonal Cell Carcinoma
7431	7232	Central Nervous System Embryonal Carcinoma
7432	7233	Adult Central Nervous System Embryonal Carcinoma
7433	7234	Pancreatic Colloid Cystadenocarcinoma
7434	7235	Pancreatic Mucinous Cystadenoma
7435	7236	Pancreatic Invasive Mucinous Cystadenocarcinoma
7436	7237	Pancreatic Non-invasive Mucinous Cystadenocarcinoma
7437	7238	AIDS-related Gastric Kaposi's Sarcoma
7438	724	Female Stress Incontinence
7439	7241	Uterine Corpus Apoplectic Leiomyoma
7440	7242	Uterine Corpus Cellular Leiomyoma
7441	7244	Bladder Urachal Urothelial Carcinoma
7442	7245	Metastatic Endometrial Adenocarcinoma
7443	7246	Lymphoepithelioma-like Acinar Prostate Adenocarcinoma
7444	7252	Cerebral Meninges Malignant Neoplasm
7445	7256	Anaplastic Urethra Carcinoma
7446	7262	Gallbladder Anaplastic Carcinoma
7447	7263	Selective IgD Deficiency Disease
7448	7266	Familiar Fallopian Tube Carcinoma
7449	7267	Lung Clear Cell Carcinoma
7450	7268	Solid Carcinoma Of Lung With Mucus Formation
7451	7269	Cribriform Variant Testicular Seminoma
7452	727	Premenstrual Tension
7453	7273	Adrenal Gland Tuberculosis
7454	728	Nodular Episcleritis
7455	7280	Congenital Epulis
7456	7281	Uterine Corpus Adenocarcinofibroma
7457	7284	Skene Gland Carcinoma
7458	7289	Secretory Uterine Corpus Endometrioid Adenocarcinoma
7459	7293	Mucin-rich Endometrial Endometrioid Adenocarcinoma
7460	7295	Recurrent Childhood Soft Tissue Sarcoma
7461	7296	Nonmetastatic Childhood Soft Tissue Sarcoma
7462	7297	Childhood Extraosseous Osteosarcoma
7463	730	Urethral Benign Neoplasm
7464	7301	Inferior Vena Cava Leiomyosarcoma
7465	7302	Endodermal Sinus Pattern Testicular Yolk Sac Tumor
7466	7304	Breast Carcinoma Metastatic To The Brain
7467	7305	Astroblastoma
7468	7306	Anaplastic Oligoastrocytoma
7469	731	Urinary System Benign Neoplasm
7470	7312	Breast Adenomyoepithelial Adenosis
7471	7315	Jewett-Marshall Bladder Cancer
7472	7316	Inherited Neuropathy
7473	7319	Axonal Neuropathy
7474	732	Urethral Disease
7475	7320	Ovarian Serous Cystadenofibroma
7476	7323	Primary Cerebral Lymphoma In Immunocompetent Host
7477	7324	Hepatitis C Virus Related Hepatocellular Carcinoma
7478	7325	Hepatitis B Virus Related Hepatocellular Carcinoma
7479	7326	Cranial Pseudosarcomatous Fasciitis
7480	7327	Pseudosarcomatous Fibromatosis
7481	7328	Iris Spindle Cell Melanoma
7482	7332	Esophageal Tuberculosis
7483	7333	Nephrogenic Adenoma Of Urinary Bladder
7484	7334	Nephrogenic Adenoma
7485	7335	Extraocular Extension Of Melanoma
7486	734	Urethra Cancer
7487	7340	Pediatric Ovarian Dysgerminoma
7488	7344	Anaplastic Brainstem Astrocytoma
7489	7345	Anaplastic Glioma Of Brain Stem
7490	7347	Ovarian Stromal Hyperthecosis
7491	735	Metastatic Neoplasm Of Urethra
7492	7350	Thymic Dysplasia
7493	7351	Localized Askin's Tumor
7494	7352	Diencephalic Anaplastic Astrocytoma
7495	7356	Rectum Sarcomatoid Carcinoma
7496	7357	Rectal Anaplastic Carcinoma
7497	7358	Recurrent Rectal Cancer
7498	736	Male Urethral Cancer
7499	7360	Solid Pattern Testicular Yolk Sac Tumor
7500	7362	Teratoma Of CNS With Malignant Transformation
7501	7363	Vulvar Keratinizing Squamous Cell Carcinoma
7502	7364	Organic Anxiety Disorder
7503	7365	Kimura Disease
7504	7371	Superficial Urinary Bladder Cancer
7505	7378	Pituitary Hypoplasia
7506	7379	Adrenal Medulla Carcinoma
7507	738	Female Urethral Cancer
7508	7380	Squamous Cell Papilloma Of Skin
7509	7381	Lymphohistiocytoid Mesothelioma
7510	7384	Localized Resectable Adult Primary Hepatoma
7511	7385	Localized Resectable Adult Primary Liver Cancer
7512	7388	Pulmonary Vein Leiomyosarcoma
7513	7389	Pulmonary Artery Leiomyosarcoma
7514	739	Metastasis To The Urethra
7515	7390	Superior Vena Cava Leiomyosarcoma
7516	7391	Superior Vena Cava Malignant Neoplasm
7517	7398	Cerebral Primitive Neuroectodermal Tumor
7518	74	Hematopoietic System Disease
7519	7400	Nijmegen Breakage Syndrome
7520	7401	Colonic L-cell Glucagon-like Peptide Producing Tumor
7521	7402	L-cell Glucagon-like Peptide Producing Tumor
7522	7407	Metastatic Carcinoma To The Uterine Cervix
7523	7408	Vulvar Keratoacanthoma-like Carcinoma
7524	7409	Vulvar Non-keratinizing Squamous Cell Carcinoma
7525	7410	Vulvar Squamous Cell Carcinoma With Tumor Giant Cells
7526	7411	Ovarian Endometrioid Cystadenofibroma
7527	7419	Metaplastic Meningioma
7528	7420	Placental Infarction
7529	7423	Ovarian Mucinous Cystic Tumor With Mural Nodules
7530	7426	Cutaneous Anthrax
7531	7427	Anthrax Disease
7532	7428	Pineal Region Germinoma
7533	7429	Childhood Brain Germinoma
7534	743	Dermatographia
7535	7430	Childhood Germ Cell Brain Tumor
7536	7435	Polyvesicular Vitelline Pattern Testicular Yolk Sac Tumor
7537	7436	Sarcomatoid Uterine Corpus Endometrioid Adenocarcinoma
7538	7437	Uterus Perivascular Epithelioid Cell Tumor
7539	7438	Ovarian Clear Cell Cystadenocarcinoma
7540	7439	Polyp Of Middle Ear
7541	744	Muscle Calcification And Ossification
7542	7441	Chronic Metabolic Polyneuropathy
7543	7442	Monoclonal Gammopathy Of Uncertain Significance
7544	7444	Diffuse Intraductal Papillomatosis
7545	745	Epididymis Adenomatoid Tumor
7546	7455	Hypogonadotropism
7547	7457	Enterobiasis
7548	7459	Acantholytic Variant Squamous Cell Breast Carcinoma
7549	746	Adenomatoid Tumor
7550	7460	Spindle Cell Variant Squamous Cell Breast Carcinoma
7551	7461	Large Cell Keratinizing Variant Squamous Cell Breast Carcinoma
7552	7463	Childhood Pleomorphic Rhabdomyosarcoma
7553	7465	Chronic NK-cell Lymphocytosis
7554	7468	Spitz Nevus
7555	7469	Balloon Cell Nevus
7556	7470	Neural Nevus
7557	7471	Deep Penetrating Nevus
7558	7472	Recurrent Nevus
7559	7473	Recurrent Malignant Pleural Mesothelioma
7560	7474	Malignant Pleural Mesothelioma
7561	7475	Diverticulitis
7562	7479	Duodenal Somatostatinoma
7563	7480	Large Cell Carcinoma With Rhabdoid Phenotype
7564	7482	Petrous Apex Meningioma
7565	7483	Cervical Keratinizing Squamous Cell Carcinoma
7566	7486	Metastatic Renal Cell Carcinoma
7567	7488	Posterior Urethra Cancer
7568	7489	Osgood-Schlatter's Disease
7569	749	Active Peptic Ulcer Disease
7570	7491	Vulvar Proximal-type Epithelioid Sarcoma
7571	7492	Central Epithelioid Sarcoma
7572	7497	Brain Ependymoma
7573	7498	AIDS-related Human Papillomavirus Infectious Disease
7574	75	Lymphatic System Disease
7575	750	Peptic Ulcer Disease
7576	7501	Pediatric Infratentorial Ependymoma
7577	7502	Pediatric Supratentorial Ependymoma
7578	7503	Extrahepatic Bile Duct Papillary Adenoma
7579	7504	Mixed Embryonal Carcinoma And Endodermal Sinus Neoplasm Of The Testis
7580	7505	Small Intestine Neoplasm
7581	7506	Small Intestinal L-cell Glucagon-like Peptide Producing Tumor
7582	7507	Malformation Of Placenta
7583	7511	Breast Intraductal Papillomatosis
7584	7512	Localized Intraductal Papillomatosis
7585	7514	Wolffian Adnexal Neoplasm
7586	7515	Lumbar Spinal Canal And Spinal Cord Meningioma
7587	7516	Childhood Central Nervous System Mixed Germ Cell Tumor
7588	7517	Central Nervous System Mixed Germ Cell Tumor
7589	7518	Inhibited Female Orgasm
7590	7519	Endocervical Carcinoma
7591	752	Peptic Ulcer Perforation
7592	7520	Periductal Breast Myoepitheliosis
7593	7521	Breast Myoepitheliosis
7594	7522	Pediatric Infratentorial Ependymoblastoma
7595	7526	Metastatic Neoplasm To The Ciliary Body
7596	7527	Acute Gonococcal Endometritis
7597	7528	Acute Endometritis
7598	7531	Anal Gland Adenocarcinoma
7599	7532	Squamous Papillomatosis
7600	7533	Subareolar Duct Papillomatosis
7601	7537	Breast Cystic Hypersecretory Carcinoma
7602	7538	Breast Ductal Adenoma
7603	7539	Pregnancy Adenoma
7604	754	Bladder Tuberculosis
7605	7540	Breast Apocrine Adenoma
7606	7541	Mixed Epithelial/mesenchymal Metaplastic Breast Carcinoma
7607	7542	Osteosarcoma Arising In Bone Paget's Disease
7608	7543	Recurrent Squamous Cell Carcinoma Of The Esophagus
7609	7544	Recurrent Esophagus Cancer
7610	7549	Ceruminoma
7611	7551	Gonorrhea
7612	7553	Infiltrating Bladder Urothelial Carcinoma Sarcomatoid Variant
7613	7554	Paget's Disease And Intraductal Carcinoma Of Breast
7614	7555	HIV Leukoencephalopathy
7615	7558	Glossopharyngeal Motor Neuropathy
7616	7559	Asymmetric Motor Neuropathy
7617	7565	Vulvar Eccrine Porocarcinoma
7618	7566	Eccrine Porocarcinoma
7619	7567	Vulvar Clear Cell Hidradenocarcinoma
7620	7568	Adult Brain Meningioma
7621	757	Thyrotoxicosis With Toxic Single Thyroid Nodule
7622	7571	Malignant Cystic Nephroma
7623	7574	Pancreatic Intraductal Papillary-colloid Carcinoma
7624	7575	Pancreatic Intraductal Papillary-mucinous Neoplasm
7625	7576	Metastatic Pancreatic Adenocarcinoma
7626	7577	Pancreatic Foamy Gland Adenocarcinoma
7627	7578	Breast Scirrhous Carcinoma
7628	758	Situs Inversus
7629	7581	Psychogenic Depressive Psychosis
7630	7583	Glottis Verrucous Carcinoma
7631	7584	Subglottis Verrucous Carcinoma
7632	7585	Subglottis Squamous Cell Carcinoma
7633	7586	Supraglottis Verrucous Carcinoma
7634	7587	Supraglottis Squamous Cell Carcinoma
7635	7588	Mixed Endodermal Sinus Neoplasm And Teratoma Of The Testis
7636	7589	Ovarian Dermoid Cyst With Melanocytic Nevus
7637	759	Congenital Disorder
7638	7590	Ovarian Dermoid Cyst With Secondary Melanocytic Lesion
7639	7591	Gestational Ovarian Choriocarcinoma
7640	7593	Recurrent Pediatric Medulloblastoma
7641	7596	Asbestos-related Lung Carcinoma
7642	7598	Cervical Lymphoepithelioma-like Carcinoma
7643	7599	Lymphoepithelioma-like Thymic Carcinoma
7644	76	Stomach Disease
7645	7600	Infiltrating Bladder Lymphoepithelioma-like Carcinoma
7646	7601	Advanced Malignant Pleural Mesothelioma
7647	7602	Intracortical Osteogenic Sarcoma
7648	7603	Fibrosarcomatous Osteosarcoma
7649	7607	Chief Cell Adenoma
7650	7608	Parathyroid Adenoma
7651	7609	Parathyroid Transitional Clear Cell Adenoma
7652	761	Meningococcal Endocarditis
7653	7610	Mixed Cell Type Adenoma Of Parathyroid
7654	7611	Parathyroid Oncocytic Adenoma
7655	7612	Childhood Intracortical Osteosarcoma
7656	7613	Sarcomatosis Of The Meninges
7657	7614	Meninges Sarcoma
7658	7615	Sarcomatosis
7659	762	Bacterial Endocarditis
7660	763	Meningococcal Carditis
7661	7631	Adult Ependymoblastoma
7662	7632	Cowper Gland Carcinoma
7663	7633	Macular Holes
7664	7634	Suprasellar Meningioma
7665	7635	Gasserian Ganglion Meningioma
7666	7636	Recurrent Cancer Of Small Intestine
7667	7638	Paget's Disease And Invasive Ductal Carcinoma Of Breast
7668	7639	Malignant Granular Cell Skin Tumor
7669	764	Meningococcal Pericarditis
7670	7641	Non-resectable Small Intestine Carcinoma
7671	7642	Cholangiolocellular Carcinoma
7672	7643	Acantholytic Squamous Cell Skin Carcinoma
7673	7646	Multiple Spinal Canal And Spinal Cord Meningioma
7674	7650	Pulmonary Type Ovarian Small Cell Carcinoma
7675	7651	Hypercalcemic Type Ovarian Small Cell Carcinoma
7676	7652	Rare Cancer-associated Syndrome
7677	7656	Adult Infiltrating Astrocytic Neoplasm
7678	7657	Anaplastic Astrocytoma Of Adult
7679	7664	Endometrial Mixed Adenocarcinoma
7680	7665	Non-gestational Ovarian Choriocarcinoma
7681	767	Muscular Atrophy
7682	7671	Recurrent Penis Cancer
7683	7672	Regressing Non-cutaneous Melanoma
7684	7675	Testicular Fibroma
7685	7676	Testicular Thecoma
7686	7677	Bone Metastatic Ewing's Sarcoma
7687	7678	Sphenoid Sinus Inverted Papilloma
7688	7679	Sphenoid Sinus Schneiderian Papilloma
7689	768	Retinoblastoma
7690	7681	Mixed Choriocarcinoma And Teratoma Of The Testis
7691	7683	Dissecting Aortic Aneurysm
7692	7684	Maxillary Sinus Adenocarcinoma
7693	7685	Pancreatic Non-invasive Intraductal Papillary-mucinous Carcinoma
7694	7689	Leptomeninges Sarcoma
7695	769	Neuroblastoma
7696	7693	Abdominal Aortic Aneurysm
7697	7694	Bladder Urachal Adenocarcinoma
7698	7696	Lung Hilum Cancer
7699	7697	Pancreatic ACTH Hormone Producing Tumor
7700	7698	Non-functioning Pancreatic Endocrine Tumor
7701	77	Gastrointestinal System Disease
7702	7702	AIDS-related Oropharyngeal Candidiasis
7703	7704	Human Papilloma Virus Related Endocervical Adenocarcinoma
7704	7706	Cytomegalovirus Esophagitis
7705	7707	Rectum Signet Ring Adenocarcinoma
7706	7708	Perianal Skin Paget's Disease
7707	771	Retinal Cell Cancer
7708	7710	Metastatic Extraskeletal Chondrosarcoma
7709	7712	Recurrent Adult Soft Tissue Sarcoma
7710	7713	Tuberculum Sellae Meningioma
7711	7714	Metastatic Malignant Hemangiopericytoma
7712	7716	Mixed Ductal-endocrine Carcinoma
7713	7717	Colloid Carcinoma Of The Pancreas
7714	7718	Osteoclast-like Giant Cell Neoplasm Of The Pancreas
7715	772	Metastasis To The Retina
7716	7724	Generalized Convulsive Epilepsy
7717	7725	Epilepsy With Generalized Tonic-clonic Seizures
7718	7728	Chronic Allograft Arteriopathy
7719	7729	Acinar Cell Cystadenocarcinoma
7720	773	Metastasis To Eye
7721	7731	Childhood Malignant Hemangiopericytoma
7722	7732	Childhood Malignant Schwannoma
7723	7733	Signet Ring Cell Intrahepatic Cholangiocarcinoma
7724	7735	Pancreatic Colloid Cystadenoma
7725	7736	Retinal Telangiectasia
7726	7739	Human Papilloma Virus Related Penile Squamous Cell Carcinoma
7727	774	Retina Lymphoma
7728	7747	Pediatric Extraocular Retinoblastoma
7729	775	Intraocular Lymphoma
7730	7750	Adult Brain Ependymoma
7731	7752	Extrahepatic Biliary Papillomatosis
7732	7753	Recurrent Cancer Of Testis
7733	7754	Chondroid Hamartoma Of Lung
7734	7756	Neonatal Leukemia
7735	7757	Childhood Leukemia
7736	7762	Childhood Multilocular Cystic Kidney Neoplasm
7737	7763	Carcinoma Of Supraglottis
7738	7764	Subglottis Carcinoma
7739	7765	Coats Disease
7740	778	Delusional Disorder
7741	7786	Mixed Choriocarcinoma And Embryonal Carcinoma Of The Testis
7742	7787	Breast Osteosarcoma
7743	7788	Adult Spinal Cord Ependymoma
7744	7793	Recurrent Uterine Sarcoma
7745	7799	Transitional Cell Carcinoma Of The Ureter With Glandular Differentiation
7746	780	Placenta Disease
7747	7801	Plasmacytoma-like PTLD
7748	7805	Nonmetastatic Extraskeletal Osteosarcoma
7749	7806	Adult Spinal Cord Glioblastoma Multiforme
7750	7807	Choroid Necrotic Melanoma
7751	7808	Necrotic Uveal Melanoma
7752	7809	Anaplastic Giant Cell Thyroid Carcinoma
7753	7810	AIDS-related Cytomegalovirus Enterocolitis
7754	7812	Enterovirus Gastroenteritis
7755	7814	Cytomegalovirus Colitis
7756	7815	Recurrent Malignant Thymoma
7757	7817	Mixed Astrocytoma-ependymoma-oligodendroglioma
7758	7818	Petroclival Meningioma
7759	7819	Sphenoorbital Meningioma
7760	782	Renal Infectious Disease
7761	7820	Sphenocavernous Meningioma
7762	7824	Spinal Multifocal Clear Cell Meningioma
7763	7825	Chronic Toxic Polyneuropathy
7764	7826	Adult Papillary Meningioma
7765	7827	Adult Extraosseous Osteosarcoma
7766	783	End Stage Renal Failure
7767	7833	Cervical Papillary Squamous Cell Carcinoma
7768	7834	Human Papilloma Virus Related Cervical Squamous Cell Carcinoma
7769	7836	Mixed Acinar-endocrine Carcinoma
7770	7839	Infiltrating Nipple Syringomatous Adenoma
7771	784	Chronic Kidney Failure
7772	7840	Pancreatic Non-functioning Delta Cell Tumor
7773	7841	Pediatric Cerebral Ependymoblastoma
7774	7843	Female Breast Carcinoma
7775	7847	Vascular Hemorrhagic Disorder
7776	7848	Interdigitating Dendritic Cell Sarcoma
7777	7849	Dendritic Cell Sarcoma
7778	7850	Recurrent Uvea Melanoma
7779	7851	Pancreatic Intraductal Papillary-mucinous Adenoma
7780	7855	Recurrent Ovarian Germ Cell Neoplasm
7781	786	Laryngeal Disease
7782	7867	Adult Central Nervous System Germinoma
7783	7868	Maxillary Sinus Inverted Papilloma
7784	7875	Adult Xanthogranuloma
7785	7878	Uterine Corpus Atypical Polypoid Adenomyoma
7786	7880	Luteoma
7787	789	Hypotony Of Eye Associated With Another Ocular Disorder
7788	7890	Testicular Spermatocytic Seminoma With Sarcoma
7789	7891	Testicular Spermatocytic Seminoma
7790	7892	Breast Adenohibernoma
7791	7894	Mite Infestation
7792	790	Ocular Hypotension
7793	7902	Adult Extraosseous Chondrosarcoma
7794	7903	Intracranial Chondrosarcoma
7795	7907	Mixed Astrocytoma-ependymoma
7796	791	Disorganized Schizophrenia In Remission
7797	7910	Maxillary Sinus Squamous Cell Carcinoma
7798	7912	Mixed Oligodendroglioma-astrocytoma
7799	7915	Cervical Spinal Canal And Spinal Cord Meningioma
7800	7919	Nonmetastatic Extra-osseous Ewing's Sarcoma
7801	792	Disorganized Schizophrenia
7802	7920	Central Nervous System Benign Soft Tissue Neoplasm
7803	7921	Benign Mediastinal Psammomatous Neurilemmoma
7804	7922	Benign Mediastinal Neurilemmoma
7805	7926	Epithelial Malignant Thymoma
7806	7927	Malignant Type A Thymoma
7807	7928	Testis Refractory Cancer
7808	793	Schizophrenia In Remission
7809	7930	Glandular-alveolar Pattern Testicular Yolk Sac Tumor
7810	7931	Old Burn Scar-related Squamous Cell Carcinoma Of Skin
7811	7933	Childhood Precursor T-lymphoblastic Lymphoma/leukemia
7812	7936	Precursor T-lymphoblastic Lymphoma/leukemia Refractory
7813	7938	Dyschondroplasia
7814	794	Residual Schizophrenia In Remission
7815	7941	Barrett's Adenocarcinoma
7816	7945	Adult Central Nervous System Mixed Germ Cell Tumor
7817	7946	Recurrent Cancer Of Colon
7818	7949	Stroma-dominant And Stroma-poor Composite Ganglioneuroblastoma
7819	795	Residual Type Schizophrenia
7820	7951	Schwannian Stroma-rich And Stroma-poor Composite Ganglioneuroblastoma
7821	7953	Nipple Duct Carcinoma
7822	7956	EBV-related Posttransplantation Lymphoproliferative Disease
7823	7958	Sarcomatoid Penile Squamous Cell Carcinoma
7824	7959	Duodenal Gastrinoma
7825	7960	Malignant Spiradenoma
7826	7961	Cervical Non-keratinizing Squamous Cell Carcinoma
7827	7962	Tamoxifen-Related Endometrial Lesion
7828	7966	Type 3 ALPS
7829	7967	Lipid-cell Variant Infiltrating Bladder Urothelial Carcinoma
7830	7968	Plasmacytoid Variant Infiltrating Bladder Urothelial Carcinoma
7831	7969	Nested Variant Infiltrating Bladder Urothelial Carcinoma
7832	7971	Microcystic Variant Infiltrating Bladder Urothelial Carcinoma
7833	7972	Lymphoma-like Variant Infiltrating Bladder Urothelial Carcinoma
7834	7979	Helicobacter Pylori-related Gastric Adenocarcinoma
7835	7983	Breast Malignant Eccrine Spiradenoma
7836	7984	Sclerosing Breast Papilloma
7837	7986	Cerebral Falx Meningioma
7838	799	Varicose Veins
7839	7994	Central Nervous System Osteosarcoma
7840	7996	Familial Glomangioma
7841	7997	Thyrotoxicosis
7842	7998	Hyperthyroidism
7843	8000	Frontal Convexity Meningioma
7844	8002	Supraglottis Neoplasm
7845	8003	Alveoli Adenoma
7846	8004	Ovarian Dermoid Cyst With Prolactin Secreting Adenoma
7847	8005	Ovarian Dermoid Cyst With Secondary Pituitary-type Tumor
7848	8006	Skin Meningioma
7849	8007	Pancoast Tumor
7850	8009	Penis Mixed Squamous Cell Carcinoma
7851	801	Hemarthrosis
7852	8011	Metastatic Fibrosarcoma
7853	8012	Benign Pericardial Teratoma
7854	8013	Penis Papillary Carcinoma
7855	8014	Ovarian Dermoid Cyst With Corticotropin Secreting Adenoma
7856	8016	Anaplastic Ganglioglioma
7857	8018	Renal Pelvis And Ureter Regional Transitional Cell Cancer
7858	8019	Renal Pelvis And Ureter Recurrent Transitional Cell Cancer
7859	8020	Glomangiomyoma
7860	8021	Medullary Carcinoma With Amyloid Stroma
7861	8022	Liver Fibrosarcoma
7862	8023	Myxoid Liposarcoma Of The Ovary
7863	8024	Male Genital Tuberculosis
7864	8025	Gastric Signet Ring Cell Adenocarcinoma
7865	8026	Intestinal Adenocarcinoma Of The Stomach
7866	8029	Sporadic Breast Cancer
7867	8030	Periocular Meningioma
7868	8031	Pineal Region Meningioma
7869	8036	Childhood Ovarian Embryonal Carcinoma
7870	8042	Testis Polyembryoma
7871	8043	Chest Wall Parachordoma
7872	8045	Recurrent Cancer Of Prostate
7873	8050	Bladder Tubulo-cystic Clear Cell Adenocarcinoma
7874	8051	Bladder Papillary Clear Cell Adenocarcinoma
7875	8055	Recurrent Urethral Cancer
7876	8057	Olfactory Groove Meningioma
7877	8058	Pituitary Stalk Meningioma
7878	8060	Frontal Sinus Inverted Papilloma
7879	8068	Intraductal Breast Myoepitheliosis
7880	807	Carotid Artery Occlusion
7881	8072	Sarcomatous Intrahepatic Cholangiocarcinoma
7882	8078	Childhood Central Nervous System Germinoma
7883	8079	Monomorphic T-cell PTLD
7884	8080	Ovarian Mucinous Cystic Tumor Associated With Pseudomyxoma Peritonei
7885	8081	Myxomatous Pattern Testicular Yolk Sac Tumor
7886	8082	Cellular Congenital Mesoblastic Nephroma
7887	8083	Classic Congenital Mesoblastic Nephroma
7888	8084	Cervical Squamotransitional Carcinoma
7889	8087	Ovarian Dermoid Cyst With Sebaceous Carcinoma
7890	8089	Advanced Adult Primary Hepatoma
7891	809	Cocaine Abuse
7892	8093	Maxillary Sinus Schneiderian Papilloma
7893	8094	Cervical Condylomatous Squamous Cell Carcinoma
7894	8096	Bladder Mixed Adenocarcinoma
7895	8097	Bladder Hepatoid Adenocarcinoma
7896	810	HIV-associated Lipodystrophy Syndrome
7897	8102	Fetal Adenoma
7898	8104	Vaginal Tubulovillous Adenoma
7899	8105	Extrahepatic Bile Duct Cystadenoma
7900	8106	Cellular Phase Chronic Idiopathic Myelofibrosis
7901	8107	S-T Syndrome
7902	8108	Fibroepithelial Polyp Of Urethra
7903	8109	Nephrogenic Adenoma Of The Urethra
7904	811	Lipodystrophy
7905	8110	Periampullary Adenocarcinoma
7906	8115	Recurrent Childhood Cerebral Astrocytoma
7907	8117	Neuronitis
7908	8118	Mature Gastric Teratoma
7909	8119	Anal Canal Paget's Disease
7910	8120	Adenocarcinoma In Villous Adenoma
7911	8121	Metastatic Extra-osseous Ewing's Sarcoma
7912	8122	Pseudovascular Skin Squamous Cell Carcinoma
7913	8125	Osteochondrosis
7914	813	Septic Arthritis
7915	8130	Breast Columnar Cell Mucinous Carcinoma
7916	8131	Sclerosing Mucoepidermoid Thyroid Carcinoma With Eosinophilia
7917	8133	Epiglottis Cancer
7918	8135	Gallbladder Lymphoma
7919	8136	Transitional Cell Carcinoma Of The Ureter With Mixed Differentiation
7920	8137	Thymus Clear Cell Carcinoma
7921	8138	Thymus Sarcomatoid Carcinoma
7922	8140	Adrenal Gland Ganglioneuroblastoma
7923	8144	Pregerminal Center Chronic Lymphocytic Leukemia/small Lymphocytic Lymphoma
7924	8145	Metastatic Neoplasm To The Gallbladder
7925	8146	Anaplastic Secondary Supratentorial Astrocytic Neoplasm
7926	8148	Recurrent Childhood Malignant Germ Cell Tumor
7927	8149	Malignant Childhood Germ Cell Neoplasm
7928	8150	Pancreatic Invasive Intraductal Papillary-mucinous Carcinoma
7929	8151	Appendiceal L-cell Glucagon-like Peptide Producing Tumor
7930	8152	Distal 1/3 Of Common Bile Duct Adenocarcinoma
7931	8153	Fibroosseous Pseudotumor Of Digits
7932	8158	Complement Component 5 Deficiency
7933	8160	Adult Desmoplastic Small Round Cell Tumor
7934	8161	Thyroid Hurthle Cell Carcinoma
7935	8162	Thyroid Hurthle Cell Adenoma
7936	8163	Gallbladder Cancer Unresectable
7937	8167	Gallbladder Melanoma
7938	817	Interstitial Myocarditis
7939	8170	Fibroepithelial Polyp Of The Anus
7940	8177	Endocervical Type Cervical Adenomyoma
7941	8178	Endometrial Type Cervical Adenomyoma
7942	8179	Cervical Atypical Polypoid Adenomyoma
7943	8186	Fallopian Tube Gestational Choriocarcinoma
7944	8187	Gestational Uterine Corpus Choriocarcinoma
7945	8188	Uterine Corpus Choriocarcinoma
7946	819	Mediastinitis
7947	8192	Recurrent Vulva Cancer
7948	8193	Papillary Pattern Testicular Yolk Sac Tumor
7949	8194	Recurrent Pediatric Hepatoma
7950	8195	Hepatoid Pattern Testicular Yolk Sac Tumor
7951	8197	Ovarian Dermoid Cyst With Melanoma
7952	8199	Bursa Syphilis
7953	82	Myotonic Cataract
7954	820	Myocarditis
7955	8200	Tertiary Syphilis
7956	8203	Sacral Spinal Canal And Spinal Cord Meningioma
7957	8205	Alloimmunization
7958	8207	Hilar Lung Carcinoma
7959	8208	Lung Superior Sulcus Carcinoma
7960	8211	Fallopian Tube Cystadenofibroma
7961	8216	Parapharyngeal Meningioma
7962	8219	Recurrent Epithelioid Sarcoma
7963	8220	Recurrent Extraosseous Ewing's Sarcoma
7964	8221	Upper Clivus Meningioma
7965	8222	Adenocarcinoma In Tubular Adenoma
7966	8223	Penile Urethral Cancer
7967	8224	Central Breast Papilloma
7968	8225	Microscopic Breast Papilloma
7969	8227	Atypical Breast Papilloma
7970	8228	Metastatic Extraskeletal Osteosarcoma
7971	8229	Metastatic Small Intestinal Adenocarcinoma
7972	823	Periapical Periodontitis
7973	8230	Intrahepatic Biliary Papillomatosis
7974	8233	Inflammatory Liposarcoma
7975	8234	Malignant Hemangiopericytoma Recurrent
7976	8238	Metastatic Endometrial Carcinoma
7977	8239	Lower Clivus Meningioma
7978	824	Periodontitis
7979	8243	Meningeal Melanomatosis
7980	8244	Bone Recurrent PNET
7981	8246	Breast Myoid Hamartoma
7982	8251	Adult Pleomorphic Rhabdomyosarcoma
7983	8252	Chronic Rhinitis
7984	8255	Vulva Fibroepithelial Polyp
7985	8256	Olfactory Neural Tumor
7986	8257	Transitional Cell Carcinoma Of The Ureter With Squamous Differentiation
7987	8259	Bulbomembranous Urethral Cancer
7988	8269	Adenocarcinoma In Adenomatous Polyposis Coli
7989	827	Ureter Tuberculosis
7990	8272	Anterior Urethra Cancer
7991	8274	Synovial Angioma
7992	8275	Intratubular Embryonal Carcinoma
7993	8276	Hodgkin-like Posttransplantation Lymphoproliferative Disease
7994	8281	Recurrent Malignant Peripheral Nerve Sheath Neoplasm
7995	8282	Adult Epithelioid Sarcoma
7996	8283	Peritonitis
7997	8285	Nonmetastatic Epithelioid Sarcoma
7998	8286	Metastatic Epithelioid Sarcoma
7999	8287	Multiple Chondromatous Hamartoma Of Lung
8000	8288	Clear Cell Squamous Cell Skin Carcinoma
8001	8289	Breast Adenolipoma
8002	829	Crystal Arthropathy
8003	8292	Atypical Follicular Adenoma
8004	8295	Scabies
8005	83	Cataract
8006	8302	Mixed Endometrial Stromal And Smooth Muscle Tumor
8007	8303	Congenital Granular Cell Tumor
8008	8304	Lymph Node Palisaded Myofibroblastoma
8009	8305	Nonossifying Fibromyxoid Tumor
8010	8307	Early Invasive Cervical Adenocarcinoma
8011	8309	Metastatic Carcinoma From The Small Bowel
8012	8310	Sclerosing Adenosis Of Breast
8013	8329	Resectable Small Intestine Carcinoma
8014	833	Auditory System Cancer
8015	8331	Perineural Angioma
8016	8334	Testicular Intratubular Germ Cell Neoplasia With Extratubular Extension
8017	8335	Microglandular Adenosis Of Breast
8018	8336	Childhood Choriocarcinoma Of The Ovary
8019	8337	Appendicitis
8020	8338	Villoglandular Variant Cervical Mucinous Adenocarcinoma
8021	8339	Intestinal Variant Cervical Mucinous Adenocarcinoma
8022	8340	Endocervical Type Cervical Mucinous Adenocarcinoma
8023	8344	Type 1b ALPS
8024	8345	Type 2 ALPS
8025	8348	Localized PNET Of Bone
8026	8349	Metastatic Peripheral Neuroepithelioma Of Bone
8027	8352	Aortic Malignant Tumor
8028	8353	Epithelioid Malignant Peripheral Nerve Sheath Tumor
8029	8354	Complement Component 3 Deficiency
8030	8358	Pseudoglandular Variant Testicular Seminoma
8031	8361	Glassy Cell Variant Cervical Adenosquamous Carcinoma
8032	8362	Enteric Pattern Testicular Yolk Sac Tumor
8033	8365	Inferior Vena Cava Malignant Neoplasm
8034	8366	Esophageal Adenocarcinoma Recurrent
8035	8368	Chordoid Meningioma
8036	8369	Adult Malignant Schwannoma
8037	8376	Mixed Embryonal Carcinoma And Endodermal Sinus Neoplasm With Seminoma Of The Testis
8038	8381	Ectopic Calcitonin Production
8039	8382	Recurrent Endometrial Cancer
8040	8386	Ectopic Chorionic Gonadotropin Secretion Disease
8041	8387	Metastatic Non-cutaneous Melanoma
8042	8388	Mixed Embryonal Carcinoma And Seminoma Of The Testis
8043	8389	Lumbar Plexus Neoplasm
8044	8390	Mixed Choriocarcinoma And Seminoma Of The Testis
8045	8392	Reticular Pattern Testicular Yolk Sac Tumor
8046	8394	Adult Type Testicular Granulosa Cell Tumor
8047	8398	Osteoarthritis
8048	8399	Trombiculiasis
8049	84	Osteochondritis Dissecans
8050	840	Cork-handlers' Disease
8051	8400	Malignant Cornea Melanoma
8052	8401	Malignant Hemangiopericytoma Nonmetastatic
8053	8408	Meckel's Diverticulitis
8054	8409	Microinvasive Cervical Squamous Cell Carcinoma
8055	841	Extrinsic Allergic Alveolitis
8056	8410	Childhood Kidney Angiomyolipoma
8057	8411	Kidney Angiomyolipoma
8058	8413	Recurrent Extraskeletal Osteosarcoma
8059	8415	Carcinoma Arising In Nasal Papillomatosis
8060	8418	Congenital Fibrosarcoma
8061	8419	Colloid Adenoma
8062	8420	Malignant Glandular Tumor Of Peripheral Nerve Sheath
8063	8426	Follicular Infundibulum Tumor
8064	8427	Retinal Melanoma
8065	8428	Breast Apocrine Carcinoma In Situ
8066	8429	Testicular Seminoma With Syncytiotrophoblastic Cells
8067	8431	Physiological Polycythemia
8068	8432	Polycythemia
8069	8433	Thyroid Malformation
8070	8435	Drug Dependence Complicating Pregnancy, Childbirth, Or The Puerperium
8071	8437	Intestinal Obstruction
8072	8438	Afferent Loop Syndrome
8073	8439	Postgastrectomy Syndrome
8074	844	Chronic Depressive Disorder
8075	8440	Ileus
8076	8442	Paralytic Ileus
8077	8443	Brachial Plexus Lesion
8078	8444	Nerve Root And Plexus Disorder
8079	8445	Intestinal Volvulus
8080	8446	Intussusception
8081	8448	Intestinal Impaction
8082	8449	Vitamin B Deficiency
8083	845	Cyclothymic Disorder
8084	8451	Vitamin Deficiency
8085	8452	Malnutrition
8086	8453	Folic Acid Deficiency
8087	8454	Ariboflavinosis
8088	8455	Pyridoxine Deficiency Anemia
8089	8456	Choline Deficiency Disease
8090	8457	Pellagra
8091	8458	Thiamine And Niacin Deficiency State
8092	8459	Vitamin B 12 Deficiency
8093	846	Arthropathy Associated With Hematological Disorder
8094	8461	Aicardi Syndrome
8095	8463	Corneal Ulcer
8096	8464	Flat Retinoschisis
8097	8465	Retinoschisis
8098	8466	Retinal Degeneration
8099	8467	Retinoschisis And Retinal Cysts
8100	8469	Influenza
8101	8472	Localized Scleroderma
8102	8476	Whipple Disease
8103	8477	Malabsorption Syndrome
8104	8478	Actinomycosis
8105	848	Arthritis
8106	8481	Rheumatic Myocarditis
8107	8482	Transient Retinal Arterial Occlusion
8108	8483	Retinal Artery Occlusion
8109	8484	Maple Bark Strippers' Lung
8110	8485	Mucormycosis
8111	8487	Secondary Retinal Cyst
8112	8488	Polyhydramnios
8113	8489	Disorder Of Amniotic Fluid And Membranes
8114	849	Rheumatoid Lung Disease
8115	8490	Primary Hypotonic Uterine Dysfunction
8116	8491	Prolonged First Stage Of Labor
8117	8493	Abnormality Of Forces Of Labor
8118	8494	Dystocia
8119	8495	Prolonged Labor
8120	8498	Hereditary Night Blindness
8121	8499	Night Blindness
8122	850	Lung Disease
8123	8500	Hereditary Retinal Dystrophy
8124	8501	Fundus Dystrophy
8125	8502	Bullous Skin Disease
8126	8503	Impetigo Herpetiformis
8127	8504	Impetigo
8128	8505	Dermatitis Herpetiformis
8129	8506	Bullous Pemphigoid
8130	8507	Juvenile Dermatitis Herpetiformis
8131	8508	Subcorneal Pustular Dermatosis
8132	851	Bartholin's Duct Cyst
8133	8512	Puerperal Pulmonary Embolism
8134	8514	Acute Pulmonary Heart Disease
8135	8515	Cor Pulmonale
8136	8516	Pulmonary Embolism And Infarction
8137	8517	Acute Cor Pulmonale
8138	8519	Barbiturate Abuse
8139	8521	Recurrent Manic Episodes
8140	8523	Nodular Lymphoma Involving Lymph Nodes Of Axilla And Upper Limb
8141	8524	Nodular Lymphoma
8142	8525	Nodular Lymphoma Involving Intra-abdominal Lymph Nodes
8143	8527	Monocytic Leukemia
8144	8529	Ulcer Of Lower Limbs
8145	853	Polymyalgia Rheumatica
8146	8530	Toxic Gastroenteritis And Colitis
8147	8533	Hypopharynx Cancer
8148	8534	Gastroesophageal Reflux Disease
8149	8535	Ophthalmic Herpes Zoster
8150	8536	Herpes Zoster
8151	8538	Reticulosarcoma
8152	8539	Recurrent Manic Episodes In Full Remission
8153	854	Collagen Disease
8154	8540	Sezary's Disease Involving Lymph Nodes Of Head, Face, And Neck
8155	8541	Sezary's Disease
8156	8542	Hodgkin's Lymphoma, Lymphocytic-histiocytic Predominance Involving Lymph Nodes Of Axilla And Upper Limb
8157	8543	Hodgkin's Lymphoma, Lymphocytic-histiocytic Predominance
8158	8544	Chronic Fatigue Syndrome
8159	8545	Malignant Hyperthermia
8160	8549	Chronic Ulcer Of Skin
8161	8552	Chronic Myeloid Leukemia
8162	8553	Pyoderma Gangrenosum
8163	8556	Vallecula Cancer
8164	8557	Oropharynx Cancer
8165	8559	Carcinoma In Situ Of Female Genital Organs
8166	856	Biotinidase Deficiency
8167	8560	Carcinoma In Situ Of Breast And Genitourinary System
8168	8564	Lip Cancer
8169	8566	Herpes Simplex
8170	8567	Hodgkin's Lymphoma
8171	8568	Infectious Mononucleosis
8172	857	Multiple Carboxylase Deficiency
8173	8573	Lichen Nitidus
8174	8574	Lichen Disease
8175	8577	Ulcerative Colitis
8176	8578	Soft Palate Cancer
8177	8580	Malignant Histiocytosis
8178	8583	Burkitt's Tumor Or Lymphoma Involving Intrathoracic Lymph Nodes
8179	8584	Burkitt Lymphoma
8180	8586	Dysplasia Of Cervix
8181	8587	Burkitt's Tumor Or Lymphoma Extranodal And Solid Organ Sites
8182	859	Holocarboxylase Synthetase Deficiency
8183	8590	Acute Vascular Insufficiency Of Intestine
8184	8592	Reticulosarcoma Involving Lymph Nodes Of Inguinal Region And Lower Limb
8185	8593	Chronic Monocytic Leukemia
8186	8596	Scarlet Fever
8187	8598	Mild Degree Recurrent Episode Manic Disorder
8188	8599	Sezary's Disease Involving Lymph Nodes Of Inguinal Region And Lower Limb
8189	8600	Carcinoid Syndrome
8190	8601	Upper Gum Cancer
8191	8602	Gum Cancer
8192	8604	Hodgkin's Lymphoma, Lymphocytic-histiocytic Predominance Involving Intrapelvic Lymph Nodes
8193	8607	Herpetic Whitlow
8194	8609	Moderate Degree Recurrent Episode Manic Disease
8195	8611	Drug Induced Sleep Disorder
8196	8615	Spontaneous Abortion Complicated By Shock
8197	8616	Peyronie's Disease
8198	8618	Oral Cavity Cancer
8199	8619	Recurrent Hypersomnia
8200	862	Diplegia Of Upper Limb
8201	8620	Reticulosarcoma Involving Intrapelvic Lymph Nodes
8202	8622	Measles
8203	8623	Adhesions And Disruptions Of Pupillary Membranes
8204	8625	Postherpetic Trigeminal Neuralgia
8205	8626	Sezary's Disease Involving Spleen
8206	8627	Hodgkin's Lymphoma, Lymphocytic Depletion, Involving Lymph Nodes Of Inguinal Region And Lower Limb
8207	8628	Hodgkin's Lymphoma, Lymphocytic Depletion
8208	863	Nervous System Disease
8209	8630	Upper Lip Cancer
8210	8632	Kaposi's Sarcoma
8211	8633	Chronic Intestinal Vascular Insufficiency
8212	8634	Prostate Carcinoma In Situ
8213	8635	Uvula Cancer
8214	8638	Hodgkin's Lymphoma, Lymphocytic-histiocytic Predominance Involving Intra-abdominal Lymph Nodes
8215	8639	Alcohol Withdrawal Delirium
8216	864	Phlebitis
8217	8640	Reticulosarcoma Involving Lymph Nodes Of Multiple Sites
8218	8641	Hodgkin's Paragranuloma Involving Lymph Nodes Of Axilla And Upper Limb
8219	8642	Hodgkin's Paragranuloma
8220	8643	Duodenitis
8221	8644	Gastroduodenitis
8222	8645	Subacute Delirium
8223	8646	Substance-induced Psychosis
8224	8649	Tongue Cancer
8225	865	Vasculitis
8226	8650	Hodgkin's Granuloma Involving Intrapelvic Lymph Nodes
8227	8651	Hodgkin's Granuloma
8228	8653	Hodgkin's Lymphoma, Mixed Cellularity, Involving Intrathoracic Lymph Nodes
8229	8654	Hodgkin's Lymphoma, Mixed Cellularity
8230	8656	Sezary's Disease Involving Lymph Nodes Of Multiple Sites
8231	8659	Chickenpox
8232	866	Vein Disease
8233	8660	Postcricoid Region Cancer
8234	8661	Lip Carcinoma In Situ
8235	8662	Carcinoma In Situ Of Digestive Organ
8236	8663	Aryepiglottic Fold Cancer
8237	8664	Nodular Lymphoma Involving Intrapelvic Lymph Nodes
8238	8667	Hodgkin's Sarcoma Involving Intra-abdominal Lymph Nodes
8239	867	Maxillary Sinus Cholesteatoma
8240	8670	Eating Disorder
8241	8672	Viral Exanthem
8242	8674	Lymphosarcoma Involving Intrapelvic Lymph Nodes
8243	8675	Lymphosarcoma
8244	8676	Malignant Histiocytosis Involving Lymph Nodes Of Multiple Sites
8245	8677	Perinatal Necrotizing Enterocolitis
8246	8680	Alcoholic Gastritis
8247	8681	Paraneoplastic Polyneuropathy
8248	8683	Myeloid Sarcoma
8249	8687	Skin Carcinoma In Situ
8250	8688	Tonsillar Pillar Cancer
8251	8689	Anorexia Nervosa
8252	869	Cholesteatoma
8253	8690	Mycosis Fungoides Involving Lymph Nodes Of Head, Face, And Neck
8254	8691	Mycosis Fungoides
8255	8692	Myeloid Leukemia
8256	8696	Subacute Monocytic Leukemia
8257	870	Neuropathy
8258	8701	Hodgkin's Lymphoma, Lymphocytic-histiocytic Predominance Involving Lymph Nodes Of Head, Face, And Neck
8259	8702	Cheek Mucosa Cancer
8260	8703	Penis Herpetic Infectious Disease
8261	8704	Genital Herpes
8262	8712	Neurofibromatosis
8263	8716	Lymphosarcoma And Reticulosarcoma
8264	8717	Decubitus Ulcer
8265	8718	Carcinoma In Situ Of Respiratory System
8266	8719	In Situ Carcinoma
8267	872	Soft Tissue Disease
8268	8725	Vascular Dementia
8269	8729	Milker's Nodule
8270	873	Anaerobic Pneumonia
8271	8731	Carotid Body Cancer
8272	8736	Smallpox
8273	8738	Leukoplakia Of Penis
8274	874	Bacterial Pneumonia
8275	8741	Seborrheic Dermatitis
8276	8742	Hodgkin's Granuloma Involving Lymph Nodes Of Head, Face, And Neck
8277	8743	Erythema Infectiosum
8278	8745	Universal Ulcerative Colitis
8279	8747	Subacute Myeloid Leukemia
8280	8748	Acute Dermatitis Due To Solar Radiation
8281	8749	Actinic Reticuloid And Actinic Granuloma
8282	8751	Hodgkin's Granuloma Involving Intrathoracic Lymph Nodes
8283	8752	Tuberculous Pneumonia
8284	8754	Hodgkin's Lymphoma, Lymphocytic-histiocytic Predominance Involving Lymph Nodes Of Inguinal Region And Lower Limb
8285	8757	Gastric Mucosal Hypertrophy
8286	8758	Lymphosarcoma Involving Lymph Nodes Of Multiple Sites
8287	876	Pyomyositis
8288	8761	Megakaryocytic Leukemia
8289	8762	Herpes Simplex Virus Otitis Externa
8290	8765	Herpes Simplex Virus Septicemia
8291	8766	Lymphosarcoma Involving Intra-abdominal Lymph Nodes
8292	8767	Malignant Histiocytosis Involving Lymph Nodes Of Axilla And Upper Limb
8293	8768	Nodular Lymphoma Involving Spleen
8294	8769	Malignant Histiocytosis Involving Lymph Nodes Of Inguinal Region And Lower Limb
8295	8770	Reticulosarcoma Involving Intra-abdominal Lymph Nodes
8296	8771	Contagious Pustular Dermatitis
8297	8773	Nodular Lymphoma Involving Lymph Nodes Of Head, Face, And Neck
8298	8775	Ulcerative Proctosigmoiditis
8299	8778	Crohn's Disease
8300	8781	Rubella
8301	8785	Postherpetic Polyneuropathy
8302	8787	Disseminated Chorioretinitis
8303	8791	Breast Carcinoma In Situ
8304	8792	Eye Carcinoma In Situ
8305	8794	Hodgkin's Lymphoma, Lymphocytic-histiocytic Predominance Involving Intrathoracic Lymph Nodes
8306	8795	Hodgkin's Granuloma Involving Spleen
8307	8798	Hodgkin's Lymphoma, Mixed Cellularity, Involving Spleen
8308	8800	Lung Carcinoma In Situ
8309	8802	Trachea Carcinoma In Situ
8310	8803	Repetitive Intrusions Of Sleep
8311	8805	Intermediate Coronary Syndrome
8312	8806	Malignant Histiocytosis Involving Intrapelvic Lymph Nodes
8313	8807	Allergic Gastroenteritis And Colitis
8314	8811	Malignant Histiocytosis Involving Intrathoracic Lymph Nodes
8315	8812	Measles Virus Otitis Media
8316	882	Heterophyiasis
8317	8820	Ulcerative Ileocolitis
8318	8825	Hodgkin's Paragranuloma Involving Spleen
8319	8826	Colon Carcinoma In Situ
8320	8828	Systemic Inflammatory Response Syndrome
8321	883	Parasitic Helminthiasis Infectious Disease
8322	8832	Hodgkin's Lymphoma, Lymphocytic-histiocytic Predominance Involving Lymph Nodes Of Multiple Sites
8323	8836	Burkitt's Tumor Or Lymphoma Involving Lymph Nodes Of Head, Face, And Neck
8324	8837	Hodgkin's Lymphoma, Nodular Sclerosis, Involving Lymph Nodes Of Head, Face, And Neck
8325	8838	Hodgkin's Lymphoma, Nodular Sclerosis
8326	8839	Herpes Zoster Keratoconjunctivitis
8327	884	Metagonimiasis
8328	8844	Tuberculous Erythema Nodosum
8329	8847	Hodgkin's Lymphoma, Nodular Sclerosis, Involving Lymph Nodes Of Multiple Sites
8330	8849	Sublingual Gland Cancer
8331	885	Fascioliasis
8332	8850	Salivary Gland Cancer
8333	8852	Hodgkin's Granuloma Involving Intra-abdominal Lymph Nodes
8334	8854	Hodgkin's Lymphoma, Lymphocytic Depletion, Involving Intrathoracic Lymph Nodes
8335	8857	Lupus Erythematosus
8336	8858	Tonsil Cancer
8337	8860	Lymphosarcoma Involving Spleen
8338	8861	Pulmonary Subvalvular Stenosis
8339	8864	Acute Monocytic Leukemia
8340	8866	Actinic Keratosis
8341	8867	Molluscum Contagiosum
8342	8868	Mycosis Fungoides Involving Lymph Nodes Of Multiple Sites
8343	8869	Neuromyelitis Optica
8344	887	Trematoda Infectious Disease
8345	8870	Nodular Lymphoma Involving Intrathoracic Lymph Nodes
8346	8871	Hodgkin's Lymphoma, Nodular Sclerosis, Extranodal And Solid Organ Sites
8347	8872	Penis Carcinoma In Situ
8348	8875	Hodgkin's Sarcoma Involving Lymph Nodes Of Multiple Sites
8349	8876	Herpetic Vulvovaginitis
8350	888	Fasciolopsiasis
8351	8881	Rosacea
8352	8883	Lower Lip Cancer
8353	8886	Chorioretinitis
8354	889	Inborn Metabolic Brain Disease
8355	8892	Pityriasis Rosea
8356	8893	Psoriasis
8357	890	Mitochondrial Encephalomyopathy
8358	8903	Hodgkin's Granuloma Involving Lymph Nodes Of Axilla And Upper Limb
8359	8904	Nodular Lymphoma Involving Lymph Nodes Of Inguinal Region And Lower Limb
8360	8906	Herpes Zoster Otitis Externa
8361	8907	Ulcerative Proctitis
8362	891	Progressive Myoclonus Epilepsy
8363	8912	Tinea Nigra
8364	8913	Dermatophytosis
8365	8914	Burkitt's Tumor Or Lymphoma Involving Intrapelvic Lymph Nodes
8366	8915	Herpes Zoster Meningitis
8367	8916	Mycosis Fungoides Involving Lymph Nodes Of Axilla And Upper Limb
8368	8918	Hodgkin's Sarcoma Involving Lymph Nodes Of Inguinal Region And Lower Limb
8369	8919	Mycosis Fungoides Involving Lymph Nodes Of Inguinal Region And Lower Limb
8370	8920	Leukoplakia Of Vagina
8371	8921	Noninflammatory Vaginal Disorder
8372	8923	Skin Melanoma
8373	8924	Autoimmune Thrombocytopenic Purpura
8374	8925	Primary Thrombocytopenia
8375	8927	Learning Disability
8376	8928	Lymphosarcoma Involving Lymph Nodes Of Head, Face, And Neck
8377	8929	Atrophic Gastritis
8378	893	Wilson Disease
8379	8930	Retromolar Area Cancer
8380	8931	Evans' Syndrome
8381	8932	Herpes Zoster Iridocyclitis
8382	8936	Plantar Fascial Fibromatosis
8383	8937	Waldeyer's Ring Cancer
8384	8938	Reticulosarcoma Involving Intrathoracic Lymph Nodes
8385	8939	Hodgkin's Lymphoma, Nodular Sclerosis, Involving Lymph Nodes Of Axilla And Upper Limb
8386	894	Nervous System Heredodegenerative Disease
8387	8941	Seborrheic Infantile Dermatitis
8388	8943	Lattice Corneal Dystrophy
8389	8946	Severe Nonproliferative Diabetic Retinopathy
8390	8947	Diabetic Retinopathy
8391	895	Copper Metabolism Disease
8392	8955	Sideroblastic Anemia
8393	8956	Cowpox
8394	8958	Lymphosarcoma Involving Lymph Nodes Of Axilla And Upper Limb
8395	8959	Hodgkin's Lymphoma, Mixed Cellularity, Involving Lymph Nodes Of Inguinal Region And Lower Limb
8396	896	Metal Metabolism Disorder
8397	8962	Measles Virus Keratoconjunctivitis
8398	8964	Hodgkin's Sarcoma Involving Spleen
8399	8969	Tonsillar Fossa Cancer
8400	8970	Subacute Sclerosing Panencephalitis
8401	8973	Hodgkin's Lymphoma, Mixed Cellularity, Involving Lymph Nodes Of Multiple Sites
8402	8974	Burkitt's Tumor Or Lymphoma Involving Lymph Nodes Of Axilla And Upper Limb
8403	8976	Peripheral Lymph Node Tuberculosis
8404	8977	Malignant Histiocytosis Involving Lymph Nodes Of Head, Face, And Neck
8405	8978	Hodgkin's Lymphoma, Nodular Sclerosis, Involving Lymph Nodes Of Inguinal Region And Lower Limb
8406	8979	Hodgkin's Lymphoma, Lymphocytic Depletion, Involving Intrapelvic Lymph Nodes
8407	898	Polycystic Kidney Disease
8408	8980	Hodgkin's Lymphoma, Lymphocytic-histiocytic Predominance Involving Spleen
8409	8986	Narcolepsy
8410	899	Choledochal Cyst
8411	8990	Hodgkin's Granuloma Involving Lymph Nodes Of Multiple Sites
8412	8991	Cervix Uteri Carcinoma In Situ
8413	8992	Hodgkin's Granuloma Involving Lymph Nodes Of Inguinal Region And Lower Limb
8517	9181	Amebiasis
8414	8994	Hodgkin's Sarcoma Involving Lymph Nodes Of Head, Face, And Neck
8415	8995	Malignant Histiocytosis Involving Intra-abdominal Lymph Nodes
8416	8997	Polycythemia Vera
8417	90	Degenerative Disc Disease
8418	900	Hepatopulmonary Syndrome
8419	9001	Hodgkin's Lymphoma, Nodular Sclerosis, Involving Spleen
8420	9007	Sudden Infant Death Syndrome
8421	9008	Psoriatic Arthritis
8422	901	Liver Lymphoma
8423	9010	Burkitt's Tumor Or Lymphoma Involving Lymph Nodes Of Multiple Sites
8424	9011	Larynx Carcinoma In Situ
8425	9017	Sezary's Disease Involving Lymph Nodes Of Axilla And Upper Limb
8426	9019	Mycosis Fungoides Involving Spleen
8427	902	Malignant Non-epithelial Hepatic And Intrahepatic Bile Duct Neoplasm
8428	9020	Reticulosarcoma Involving Spleen
8429	9021	Esophageal Leukoplakia
8430	9024	Intestine Carcinoma In Situ
8431	9025	Hodgkin's Lymphoma, Nodular Sclerosis, Involving Intra-abdominal Lymph Nodes
8432	903	Gastrointestinal Lymphoma
8433	9033	Hodgkin's Sarcoma Involving Lymph Nodes Of Axilla And Upper Limb
8434	9036	Parotid Gland Cancer
8435	9037	Burkitt's Tumor Or Lymphoma Involving Lymph Nodes Of Inguinal Region And Lower Limb
8436	9039	Hodgkin's Paragranuloma Involving Lymph Nodes Of Head, Face, And Neck
8437	9040	Reticulosarcoma Involving Lymph Nodes Of Head, Face, And Neck
8438	9041	Hodgkin's Lymphoma, Mixed Cellularity, Involving Lymph Nodes Of Axilla And Upper Limb
8439	9042	Polyp Of Corpus Uteri
8440	9043	Uterine Cervix Leukoplakia
8441	9046	Nodular Lymphoma Involving Lymph Nodes Of Multiple Sites
8442	905	Zellweger Syndrome
8443	9051	Herpes Simplex Virus Meningitis
8444	9052	Hodgkin's Lymphoma, Lymphocytic Depletion, Involving Lymph Nodes Of Axilla And Upper Limb
8445	9053	Bladder Carcinoma In Situ
8446	9054	Lymphosarcoma Involving Intrathoracic Lymph Nodes
8447	9059	Herpes Simplex Virus Gingivostomatitis
8448	906	Peroxisomal Disease
8449	9060	Pityriasis Versicolor
8450	9061	Alcohol Induced Sleep Disorder
8451	9063	Ritter's Disease
8452	9064	Hodgkin's Lymphoma, Lymphocytic-histiocytic Predominance, Extranodal And Solid Organ Sites
8453	9065	Leishmaniasis
8454	9067	Hodgkin's Paragranuloma Involving Intrathoracic Lymph Nodes
8455	907	Liver Fibroma
8456	9070	Pseudopolyposis Of Colon
8457	9071	Malignant Histiocytosis Involving Spleen
8458	9072	Lethal Midline Granuloma
8459	9074	Systemic Lupus Erythematosus
8460	9076	Discoid Lupus Erythematosus Of Eyelid
8461	9078	Hodgkin's Paragranuloma Involving Intrapelvic Lymph Nodes
8462	9079	Hodgkin's Paragranuloma Involving Lymph Nodes Of Multiple Sites
8463	9080	Macroglobulinemia
8464	9082	Mycosis Fungoides Involving Intrathoracic Lymph Nodes
8465	9084	Hodgkin's Lymphoma, Mixed Cellularity, Involving Intra-abdominal Lymph Nodes
8466	9087	Anal Carcinoma In Situ
8467	9088	Parapsoriasis
8468	9091	REM Sleep Behavior Disorder
8469	9092	Hodgkin's Sarcoma Involving Intrathoracic Lymph Nodes
8470	9093	Hodgkin's Paragranuloma Involving Intra-abdominal Lymph Nodes
8471	9095	Esophagus Carcinoma In Situ
8472	9097	Erythematosquamous Dermatosis
8473	9098	Sebaceous Gland Disease
8474	910	Occipital Lobe Neoplasm
8475	9103	Carcinoma In Situ Of Male Genital Organs
8476	9105	Mycosis Fungoides Involving Intrapelvic Lymph Nodes
8477	9108	Uterus Carcinoma In Situ
8478	9109	Mycosis Fungoides Involving Intra-abdominal Lymph Nodes
8479	9111	Cutaneous Leishmaniasis
8480	9113	Granuloma Inguinale
8481	9114	Varicella-zoster Virus Pneumonia
8482	9115	Rubella Virus Arthritis
8483	9117	Hodgkin's Lymphoma, Lymphocytic Depletion, Involving Spleen
8484	9119	Acute Myeloid Leukemia
8485	9120	Amyloidosis
8486	9121	Hodgkin's Lymphoma, Mixed Cellularity, Extranodal And Solid Organ Sites
8487	9123	Eczema Herpeticum
8488	9124	Hodgkin's Lymphoma, Lymphocytic Depletion, Involving Intra-abdominal Lymph Nodes
8489	9125	Lower Gum Cancer
8490	913	Atrophic Muscular Disease
8491	9130	Hodgkin's Lymphoma, Nodular Sclerosis, Involving Intrapelvic Lymph Nodes
8492	9132	Liver Carcinoma In Situ
8493	9138	Stomach Carcinoma In Situ
8494	914	Peliosis Hepatis
8495	9140	Xeroderma Of Eyelid
8496	9141	Herpes Simplex Virus Meningoencephalitis
8497	9142	Hodgkin's Lymphoma, Lymphocytic Depletion, Involving Lymph Nodes Of Multiple Sites
8498	9143	Burkitt's Tumor Or Lymphoma Involving Spleen
8499	9146	Visceral Leishmaniasis
8500	9149	Hard Palate Cancer
8501	9150	Hodgkin's Lymphoma, Mixed Cellularity, Involving Intrapelvic Lymph Nodes
8502	9153	Variola Minor
8503	9155	Mucocutaneous Leishmaniasis
8504	9157	Hodgkin's Lymphoma, Nodular Sclerosis, Involving Intrathoracic Lymph Nodes
8505	9158	Sezary's Disease Involving Intra-abdominal Lymph Nodes
8506	9159	Gas Gangrene
8507	916	Liver Neoplasm
8508	9161	Sezary's Disease Involving Intrapelvic Lymph Nodes
8509	9164	Achalasia
8510	9165	Neurotic Excoriation
8511	9169	Wiskott-Aldrich Syndrome
8512	917	Liver Leiomyoma
8513	9173	Submandibular Gland Cancer
8514	9174	Rectum Carcinoma In Situ
8515	918	Liver Inflammatory Pseudotumor
8516	9180	Amebic Colitis
8518	9182	Pemphigus
8519	9184	Sleep Arousal Disorder
8520	9186	Hodgkin's Paragranuloma Involving Lymph Nodes Of Inguinal Region And Lower Limb
8521	9188	Vestibule Of Mouth Cancer
8522	9189	Generalized Hyperhidrosis
8523	9191	Diabetic Macular Edema
8524	9192	Dyskinesia Of Esophagus
8525	9195	Herpes Simplex Virus Keratitis
8526	9198	Sezary's Disease Involving Intrathoracic Lymph Nodes
8527	9199	Cataplexy And Narcolepsy
8528	92	Speech Disorder
8529	920	Childhood Liver Neoplasm
8530	9201	Lichen Planus
8531	9202	Disorder Of Optic Chiasm Associated With Pituitary Neoplasm And Disorder
8532	9203	Burkitt's Tumor Or Lymphoma Involving Intra-abdominal Lymph Nodes
8533	9206	Barrett's Esophagus
8534	9207	Periodic Limb Movement Disorder
8535	9210	Geniculate Herpes Zoster
8536	9212	Pityriasis Rubra Pilaris
8537	9214	Herpes Simplex Virus Iridocyclitis
8538	9216	Hodgkin's Lymphoma, Lymphocytic Depletion, Involving Lymph Nodes Of Head, Face, And Neck
8539	9217	Herpes Zoster Eyelid Dermatitis
8540	9220	Central Sleep Apnea
8541	9222	Lymphosarcoma Involving Lymph Nodes Of Inguinal Region And Lower Limb
8542	9224	Vulva Herpetic Infectious Disease
8543	9225	Hodgkin's Sarcoma Involving Intrapelvic Lymph Nodes
8544	9227	Hodgkin's Lymphoma, Mixed Cellularity, Involving Lymph Nodes Of Head, Face, And Neck
8545	9228	Congenital Rubella
8546	9230	Dyshidrosis
8547	9234	Kidney Carcinoma In Situ
8548	9235	Pyriform Sinus Cancer
8549	9240	Erythromelalgia
8550	9241	Reticulosarcoma Involving Lymph Nodes Of Axilla And Upper Limb
8551	9245	Alagille Syndrome
8552	9246	Cerebral Amyloid Angiopathy
8553	9248	Pallister-Hall Syndrome
8554	9249	Beemer-Langer Syndrome
8555	9250	Acrocallosal Syndrome
8556	9252	Amino Acid Metabolic Disorder
8557	9253	Gastrointestinal Stromal Tumor
8558	9254	Mast-cell Leukemia
8559	9255	Frontotemporal Dementia
8560	9256	Colorectal Cancer
8561	9258	Waardenburg's Syndrome
8562	9261	Nasopharynx Carcinoma
8563	9263	Homocystinuria
8564	9264	Sulfuraminoacidemia
8565	9265	Histidine Metabolism Disease
8566	9266	Cystinuria
8567	9267	Urea Cycle Disorder
8568	9268	Glycine Encephalopathy
8569	9269	Maple Syrup Urine Disease
8570	927	Metastatic Malignant Neoplasm To Brain
8571	9270	Alkaptonuria
8572	9271	Ornithine Carbamoyltransferase Deficiency
8573	9273	Citrullinemia
8574	9274	Hyperlysinemia
8575	9275	Tyrosinemia
8576	9277	Primary Cerebellar Degeneration
8577	9278	Hyperargininemia
8578	9279	Hyperhomocysteinemia
8579	928	CNS Metastases
8580	9280	Carbamoyl Phosphate Synthetase I Deficiency Disease
8581	9281	Phenylketonuria
8582	9282	Ocular Hypertension
8583	9283	Borderline Glaucoma
8584	9286	Priapism
8585	9287	Penile Vascular Disorder
8586	929	Myopathy Of Extraocular Muscle
8587	9296	Cleft Lip
8588	9297	Lip Disease
8589	9299	Myocardium Cancer
8590	93	Language Disorder
8591	930	Orbital Disease
8592	9300	Neurofibroma Of The Heart
8593	9305	Splenic Tuberculosis
8594	9306	Mechanical Strabismus
8595	9307	Rectal Prolapse
8596	931	Monieziasis
8597	9310	Nasal Cavity Neoplasm
8598	9312	Chronic Ethmoiditis
8599	9314	Glaucoma Associated With Anomalies Of Iris
8600	9317	Lymphangitis
8601	9321	Intervertebral Disc Disorder
8602	933	Cestoda Infectious Disease
8603	9335	Scotoma
8604	9336	Bestiality
8605	9339	Urethral False Passage
8606	934	Viral Infectious Disease
8607	9340	Cheilopalatoschisis
8608	9341	Urethral Diverticulum
8609	9346	Taylor's Syndrome
8610	9348	Carotid Artery Dissection
8611	9351	Diabetes Mellitus
8612	9352	Type 2 Diabetes Mellitus
8613	9353	Congenital Hip Dislocation
8614	9357	Hyperemesis Gravidarum
8615	9358	Fibular Collateral Ligament Bursitis
8616	9359	Enthesopathy Of Knee
8617	936	Brain Disease
8618	9360	Intrinsic Asthma
8619	9362	Status Asthmaticus
8620	9365	Vesiculitis
8621	9368	Keratoconjunctivitis
8622	9369	Orbital Plasma Cell Granuloma
8623	937	DNA Virus Infectious Disease
8624	9370	Exophthalmos
8625	9373	Postural Kyphosis
8626	9375	Fuchs' Heterochromic Uveitis
8627	9377	Pigment Dispersion Syndrome Of Iris
8628	9378	Glaucomatocyclitic Crisis
8629	9379	Glaucoma With Ocular Inflammation
8630	9383	Iridocyclitis
8631	9384	Gonococcal Iridocyclitis
8632	9385	Gonococcal Eye Infectious Disease
8633	9388	Lens-induced Iridocyclitis
8634	9389	Infectious Anterior Uveitis
8635	9392	Tracheitis
8636	9395	Croup
8637	9396	Acute Laryngitis
8638	9398	Epiglottitis
8639	9401	Epididymo-orchitis
8640	9402	Epididymitis
8641	9403	Isolated Explosive Disorder
8642	9405	Pituitary Dwarfism
8643	9406	Hypopituitarism
8644	9407	Strictly Posterior Acute Myocardial Infarction
8645	9408	Acute Myocardial Infarction
8646	9409	Diabetes Insipidus
8647	9410	Panhypopituitarism
8648	9411	Gonococcal Endocarditis
8649	9413	Congenital Abnormalities Of Uterus Complicating Pregnancy, Childbirth, Or The Puerperium
8650	9414	Abnormality Of Organs And Soft Tissues Of Pelvis Complicating Pregnancy, Childbirth, Or The Puerperium
8651	9415	Allergic Asthma
8652	9422	Abscess Of Eyelid
8653	9423	Blepharitis
8654	9426	Tuberculous Bronchiectasis
8655	9427	Hypertensive Encephalopathy
8656	9428	Intracranial Hypertension
8657	9432	Renal Glycosuria
8658	9439	Chronic Cholangitis
8659	9442	Cervical Mullerian Papilloma
8660	9443	Cervix Blue Nevus
8661	9445	Cervix Squamous Papilloma
8662	9446	Cholangitis
8663	9450	Infectious Disease Of The Breast And Nipple Associated With Childbirth
8664	9452	Fatty Liver Disease
8665	9455	Lipid Storage Disease
8666	9459	Isthmus Cancer
8667	946	Dientamoebiasis
8668	9460	Uterine Corpus Cancer
8669	9461	Exposure Keratitis
8670	9462	Cholesteatoma Of External Ear
8671	9463	Otitis Externa
8672	9467	Nail-patella Syndrome
8673	9468	Salmonella Meningitis
8674	9470	Bacterial Meningitis
8675	9471	Meningitis
8676	9473	Mononeuritis Of Lower Limb
8677	9476	Sheehan Syndrome
8678	9477	Pulmonary Embolism
8679	9478	Postpartum Depression
8680	9483	Ulcerative Blepharitis
8681	9487	Meckel's Diverticulum
8682	949	Chronic Dacryoadenitis
8683	9496	Unilateral Hypoactive Labyrinth
8684	9498	Pulmonary Eosinophilia
8685	9499	Disseminated Eosinophilic Collagen Disease
8686	950	Dacryoadenitis
8687	9500	Leukocyte Disease
8688	9502	Chronic Eosinophilic Pneumonia
8689	9503	Loeffler Syndrome
8690	9504	Benign Mammary Dysplasia
8691	9505	Cannabis Abuse
8692	9506	Acute Ethmoiditis
8693	9507	Ethmoid Sinusitis
8694	951	Toxic Myopathy
8695	9512	Simple Chronic Conjunctivitis
8696	9513	Plasmacytic Leukemia
8697	9514	Multiple Myeloma And Immunoproliferative Neoplasm
8698	9518	Abortion Complicated By Renal Failure
8699	952	Acute Dacryoadenitis
8700	9521	Laron Syndrome
8701	9528	Acute Renal Failure With Lesion Of Renal Medullary Necrosis
8702	9530	Rhesus Isoimmunisation Affecting Management Of Mother
8703	9531	Latent Syphilis
8704	9534	Tuberculous Pneumothorax
8705	9535	Arenavirus Hemorrhagic Fever
8706	9537	Lassa Fever
8707	9538	Multiple Myeloma
8708	9540	Vascular Skin Disease
8709	9541	Osteosclerotic Myeloma
8710	9543	Plasma Cell Myeloma PTLD
8711	9544	Refractory Plasma Cell Neoplasm
8712	9545	Recurrent Plasma Cell Neoplasm
8713	9547	Non-secretory Myeloma
8714	955	Benign Neurilemmoma
8715	9550	Indolent Myeloma
8716	9551	Smoldering Myeloma
8717	9552	Adrenal Gland Hypofunction
8718	9553	Adrenal Gland Disease
8719	956	Peripheral Nerve Schwannoma
8720	9561	Nasopharyngeal Disease
8721	9562	Primary Ciliary Dyskinesia
8722	9563	Bronchiectasis
8723	9565	Dextrocardia
8724	9574	Choanal Atresia
8725	9577	Neonatal Candidiasis
8726	9579	Pseudomonas Septicemia
8727	9584	Venezuelan Equine Encephalitis
8728	9585	Equine Encephalitis
8729	9588	Encephalitis
8730	9589	Urethral Calculus
8731	959	Esophagus Squamous Cell Papilloma
8732	9590	Lower Urinary Tract Calculus
8733	9594	Ovarian Metastasis
8734	9597	Krukenberg Carcinoma
8735	9598	Fasciitis
8736	9599	Proliferative Fasciitis
8737	96	Staphyloenterotoxemia
8738	960	Esophagus Leiomyoma
8739	9600	Plantar Fasciitis
8740	9601	Ischemic Fasciitis
8741	9602	Necrotizing Fasciitis
8742	9603	Intravascular Fasciitis
8743	961	Neurofibroma Of The Esophagus
8744	9617	Orthostatic Proteinuria
8745	962	Neurofibroma
8746	9620	Vesicoureteral Reflux
8747	9621	Non-congenital Cyst Of Kidney
8748	9622	Kidney Hypertrophy
8749	963	Episodic Ataxia
8750	9630	Genetic Anomaly Of Leucocyte
8751	9631	Pelger-Huet Anomaly
8752	9637	Stomatitis
8753	9640	Sarcocystosis
8754	9642	Rheumatic Chorea
8755	9643	Babesiosis
8756	9647	Obstructed Labor
8757	9649	Congenital Nystagmus
8758	9650	Pathologic Nystagmus
8759	9651	Systolic Heart Failure
8760	9653	Pre-eclampsia Or Eclampsia Superimposed On Pre-existing Hypertension
8761	9654	Hypertension Complicating Pregnancy, Childbirth And The Puerperium
8762	9655	Oral Mucosa Leukoplakia
8763	9663	Aphthous Stomatitis
8764	9667	Placental Abruption
8765	9669	Senile Cataract
8766	9672	Noma
8767	9673	Ulcerative Stomatitis
8768	9675	Pulmonary Emphysema
8769	9678	Cervical Incompetence Complicating Pregnancy, Childbirth, Or The Puerperium
8770	9681	Cervical Incompetence
8771	9682	Yellow Fever
8772	9694	Toxic Myocarditis
8773	9697	Gonococcal Keratitis
8774	9698	Gonococcal Endophthalmia
8775	9699	Ophthalmia Neonatorum
8776	970	Tenosynovitis
8777	9700	Bacterial Conjunctivitis
8778	9709	Rosacea Conjunctivitis
8779	971	Tendinitis
8780	9714	Occlusion Of Gallbladder
8781	9717	Hydrops Of Gallbladder
8782	9718	Meningococcal Myocarditis
8783	9719	Proliferative Vitreoretinopathy
8784	972	Malignant Neoplasm Of Cerebrum Except Lobes And Ventricles
8785	9720	Vitreous Disease
8786	9722	Ophthalmia Nodosa
8787	9723	Vitreous Abscess
8788	9724	Purulent Endophthalmitis
8789	9726	Vitreous Detachment
8790	9728	Vitreous Membranes And Strands
8791	9729	Crystalline Deposits In Vitreous
8792	9733	Renal Tuberculosis
8793	9734	Urinary Tuberculosis
8794	9735	Acute Allergic Mucoid Otitis Media
8795	9736	Blue Drum Syndrome
8796	9739	Eustachian Tube Disease
8797	974	Upper Respiratory Tract Disease
8798	9740	Postcholecystectomy Syndrome
8799	9741	Biliary Tract Disease
8800	9742	Pelvic Varices
8801	9743	Diabetic Neuropathy
8802	9744	Type 1 Diabetes Mellitus
8803	9745	Perianal Hematoma
8804	9746	Hemorrhoid
8805	9749	Internal Hemorrhoid
8806	9751	Popliteal Cyst
8807	9753	Rupture Of Synovium
8808	9754	Ganglion Or Cyst Of Synovium/tendon/bursa
8809	9761	Arthropathy Associated With Dermatological Disorder
8810	9762	Perinatal Cyanotic Attack
8811	9764	Biliary Calculus With Cholecystitis
8812	9765	Emphysematous Cholecystitis
8813	9766	Xanthogranulomatous Cholecystitis
8814	9767	Myocardial Stunning
8815	9768	Heart Aneurysm
8816	9770	Retracted Nipple Associated With Childbirth
8817	9771	Transient Neonatal Thrombocytopenia
8818	9772	Hematological Disease Of Fetus And Newborn
8819	9773	Female Breast Upper-outer Quadrant Cancer
8820	9775	Diastolic Heart Failure
8821	9776	Senile Atrophy Of Choroid
8822	9778	Irritable Bowel Syndrome
8823	9779	Bowel Dysfunction
8824	9784	Trichinosis
8825	9786	Bulbar Polio
8826	9787	Foreign Body Granuloma Of Muscle
8827	9788	Myositis Fibrosa
8828	979	Angioid Streaks Of Choroid
8829	9790	Toxocariasis
8830	9794	Hereditary Choroidal Atrophy
8831	9795	Tuberculous Meningitis
8832	9799	Eye Degenerative Disease
8833	98	Staphylococcal Infectious Disease
8834	980	Choroidal Sclerosis
8835	9801	Tuberculous Peritonitis
8836	9804	Pneumococcal Peritonitis
8837	9805	Pneumococcal Infectious Disease
8838	9808	Goodpasture Syndrome
8839	9809	Hypersensitivity Vasculitis
8840	981	Diffuse Secondary Choroid Atrophy
8841	9810	Polyarteritis Nodosa
8842	9811	Partial Circumpapillary Choroid Dystrophy
8843	9814	Rheumatic Heart Disease
8844	9815	Recent Retinal Detachment, Total Or Subtotal
8845	9816	Partial Recent Retinal Detachment With Giant Tear
8846	9818	Retinal Defect
8847	9819	Delimited Old Retinal Detachment
8848	982	Disorganized Type Schizophrenia Subchronic State With Acute Exacerbation
8849	9820	Central Gyrate Choroidal Dystrophy
8850	9821	Choroideremia
8851	9822	Partial Central Choroid Dystrophy
8852	9823	Partial Recent Retinal Detachment With Retinal Dialysis
8853	9824	Total Or Subtotal Old Retinal Detachment
8854	9827	Radioulnar Synostosis
8855	9828	Neonatal Abstinence Syndrome
8856	9829	Drug Abstinence Syndrome Or Symptom
8857	9834	Hyperopia
8858	9835	Refractive Error
8859	9836	Refraction Or Accommodation Disorder
8860	9837	Hypertropia
8861	9838	Cyclotropia
8862	9839	Accommodative Esotropia
8863	984	Temporomandibular Joint Disorder
8864	9840	Esotropia
8865	9841	Hypotropia
8866	9842	Total Circumpapillary Dystrophy Of Choroid
8867	9843	Monofixation Syndrome
8868	9847	Peripheral Vertigo
8869	9848	Endolymphatic Hydrops
8870	9849	Meniere's Disease
8871	985	Disorganized Type Schizophrenia Subchronic State
8872	9854	Lingual-facial-buccal Dyskinesia
8873	9855	Syphilitic Interstitial Keratitis
8874	9856	Congenital Syphilis
8875	9857	Interstitial Keratitis
8876	9858	Deep Keratitis
8877	986	Alopecia Areata
8878	9861	Miliary Tuberculosis
8879	9866	Lactation Disorder
8880	9867	Toxic Maculopathy
8881	9868	Intestinal Disaccharidase Deficiency
8882	9869	Hereditary Fructose Intolerance Syndrome
8883	987	Alopecia
8884	9870	Galactosemia
8885	9877	Urethral Gland Abscess
8886	9878	Excessive Vomiting Starting After 22 Completed Weeks Of Gestation
8887	988	Mitral Valve Prolapse
8888	9880	Cardiovascular Syphilis
8889	9883	Becker Muscular Dystrophy
8890	9884	Muscular Dystrophy
8891	9888	Alternating Esotropia
8892	9889	Alternating Esotropia With A Pattern
8893	9890	Intermittent Alternating Esotropia
8894	9891	Alternating Esotropia With V Pattern
8895	9892	Median Arcuate Ligament Syndrome
8896	9893	Periodontosis
8897	9898	Villonodular Synovitis
8898	9899	Glaucoma Associated With Tumors Or Cysts
8899	990	Congenital Heart Block
8900	9900	Protracted Reactive Paranoid Psychosis
8901	9903	Meibomian Cyst
8902	9905	Follicular Mucinosis
8903	9908	Internal Hordeolum
8904	9909	Hordeolum
8905	9910	Central Corneal Ulcer
8906	9911	Infected Hydrocele
8907	9912	Hydrocele
8908	9913	Axillary Metastasis
8909	9915	Malignant Neoplasm Of Ribs, Sternum And Clavicle
8910	9916	Secondary Malignant Neoplasm To The Chest Wall
8911	9919	Malignant Neoplasm Of Thoracic Esophagus
8912	992	Omsk Hemorrhagic Fever
8913	9923	Developmental Coordination Disorder
8914	9925	Hyperostosis Frontalis Interna
8915	9929	Meningococcal Meningitis
8916	993	Flavivirus Infectious Disease
8917	9930	Primary Neisseriaceae Infectious Disease
8918	9931	Waterhouse-Friderichsen Syndrome
8919	9935	Chronic Inflammation Of Lacrimal Passage
8920	9936	Chronic Canaliculitis
8921	9937	Chronic Dacryocystitis
8922	9938	Dacryocystitis
8923	9939	Dacryocystocele
8924	9940	Congenital Or Acquired Abnormality Of Vulva Complicating Pregnancy, Childbirth, Or The Puerperium
8925	9942	Lymph Node Disease
8926	9943	Syphilitic Episcleritis
8927	9945	Constant Exophthalmos
8928	9946	Steroid-induced Glaucoma
8929	9948	Residual Stage Corticosteroid-induced Glaucoma
8930	9952	Acute Lymphocytic Leukemia
8931	9953	B- And T-cell Mixed Leukemia
8932	9954	Null-cell Leukemia
8933	9955	Hypoplastic Left Heart Syndrome
8934	9957	Periostitis
8935	9958	Hemometra
8936	9965	Toxoplasmosis
8937	9969	Carotenemia
8938	997	Uterine Inversion
8939	9970	Obesity
8940	9971	Hypervitaminosis D
8941	9972	Hypervitaminosis A
8942	9973	Substance Dependence
8943	9974	Drug Dependence
8944	9975	Cocaine Dependence
8945	9976	Heroin Dependence
8946	9977	Hallucinogen Dependence
8947	9978	Acute Female Pelvic Peritonitis
8948	998	Eosinophilia-myalgia Syndrome
8949	9986	Orbit Lymphoma
8950	9987	Orbit Sarcoma
8951	9988	Tertiary Neurosyphilis
8952	9989	Metastasis To The Orbit
8953	999	Eosinophilia
8954	9993	Hypoglycemia
8955	9995	Endocrine And Metabolic Disturbances Specific To The Fetus And Newborn
8956	9997	Peripartum Cardiomyopathy
8957	complicated_by	Complicated_by
8958	composed_of	Composed_of
8959	derives_from	Derives_from
8960	has_material_basis_in	Has_material_basis_in
8961	has_symptom	Has_symptom
8962	inheres_in	Inheres_in
8963	is_a	Is_a
8964	located_in	Located_in
8965	occurs_with	Occurs_with
8966	part_of	Part_of
8967	realized_by	Realized_by
8968	realized_by_supression_with	Realized_by_supression_with
8969	results_in	Results_in
8970	results_in_formation_of	Results_in_formation_of
8971	transmitted_by	Transmitted_by
\.


--
-- Name: disease_ontology_mirrors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('disease_ontology_mirrors_id_seq', 8971, true);


--
-- Data for Name: diseases; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY diseases (id, doid, name, created_at, updated_at) FROM stdin;
2	1612	Breast Cancer	2015-06-02 22:29:12.813641	2015-06-02 22:29:12.813641
5	769	Neuroblastoma	2015-06-02 22:29:12.967686	2015-06-02 22:29:12.967686
7	1909	Melanoma	2015-06-02 22:29:13.278449	2015-06-02 22:29:13.278449
23	4947	Cholangiocarcinoma	2015-06-02 22:29:16.134975	2015-06-02 22:29:16.134975
26	3069	Astrocytoma	2015-06-02 22:29:16.871499	2015-06-02 22:29:16.871499
36	12603	Acute Leukemia	2015-06-02 22:29:17.765284	2015-06-02 22:29:17.765284
45	0050929	Mucosal Melanoma	2015-06-02 22:29:21.11459	2015-06-02 22:29:21.11459
46	1520	Colon Carcinoma	2015-06-02 22:29:21.136968	2015-06-02 22:29:21.136968
47	9256	Colorectal Cancer	2015-06-02 22:29:21.179956	2015-06-02 22:29:21.179956
1	8552	Chronic Myeloid Leukemia	2015-06-02 22:29:12.607005	2015-06-02 22:31:09.438003
3	3908	Non-small Cell Lung Carcinoma	2015-06-02 22:29:12.836034	2015-06-02 22:31:10.293469
4	0050905	Inflammatory Myofibroblastic Tumor	2015-06-02 22:29:12.946718	2015-06-02 22:31:10.467288
6	9256	Colorectal Cancer	2015-06-02 22:29:13.235179	2015-06-02 22:31:11.112558
8	9256	Colorectal Cancer	2015-06-02 22:29:13.373736	2015-06-02 22:31:11.829998
9	1781	Thyroid Cancer	2015-06-02 22:29:13.722091	2015-06-02 22:31:12.136329
10	2394	Ovarian Cancer	2015-06-02 22:29:13.955989	2015-06-02 22:31:12.54686
11	1612	Breast Cancer	2015-06-02 22:29:14.066385	2015-06-02 22:31:12.956319
12	5520	Head And Neck Squamous Cell Carcinoma	2015-06-02 22:29:14.104083	2015-06-02 22:31:13.145533
13	0050746	Mantle Cell Lymphoma	2015-06-02 22:29:14.123486	2015-06-02 22:31:13.34371
14	10534	Stomach Cancer	2015-06-02 22:29:14.143514	2015-06-02 22:31:13.774855
15	715	T-cell Leukemia	2015-06-02 22:29:14.236313	2015-06-02 22:31:13.971949
16	5635	Gastric Adenosquamous Carcinoma	2015-06-02 22:29:14.292391	2015-06-02 22:31:14.16347
17	1324	Lung Cancer	2015-06-02 22:29:14.329812	2015-06-02 22:31:14.594385
18	0060075	Estrogen-receptor Positive Breast Cancer	2015-06-02 22:29:14.350203	2015-06-02 22:31:14.763596
19	9119	Acute Myeloid Leukemia	2015-06-02 22:29:14.46484	2015-06-02 22:31:14.978765
20	9952	Acute Lymphocytic Leukemia	2015-06-02 22:29:14.576802	2015-06-02 22:31:15.310259
21	5015	Hepatocellular Fibrolamellar Carcinoma	2015-06-02 22:29:14.744755	2015-06-02 22:31:15.525343
22	3908	Non-small Cell Lung Carcinoma	2015-06-02 22:29:15.451591	2015-06-02 22:31:15.822776
24	4007	Bladder Carcinoma	2015-06-02 22:29:16.168928	2015-06-02 22:31:16.539946
25	3909	Bronchogenic Lung Adenocarcinoma	2015-06-02 22:29:16.793318	2015-06-02 22:31:16.713339
27	3068	Glioblastoma Multiforme	2015-06-02 22:29:16.89054	2015-06-02 22:31:17.466854
28	0050908	Myelodysplastic Syndrome	2015-06-02 22:29:16.909668	2015-06-02 22:31:17.651598
29	0050908	Myelodysplastic Syndrome	2015-06-02 22:29:17.054003	2015-06-02 22:31:17.817934
30	10747	Lymphoid Leukemia	2015-06-02 22:29:17.178034	2015-06-02 22:31:18.004088
31	4960	Bone Marrow Cancer	2015-06-02 22:29:17.197678	2015-06-02 22:31:18.383978
32	8997	Polycythemia Vera	2015-06-02 22:29:17.217134	2015-06-02 22:31:18.551946
33	9119	Acute Myeloid Leukemia	2015-06-02 22:29:17.272875	2015-06-02 22:31:18.751937
34	9253	Gastrointestinal Stromal Tumor	2015-06-02 22:29:17.303578	2015-06-02 22:31:18.917184
35	14145	Malignant Anus Melanoma	2015-06-02 22:29:17.561274	2015-06-02 22:31:19.091175
37	9538	Multiple Myeloma	2015-06-02 22:29:17.803826	2015-06-02 22:31:19.611306
38	3910	Lung Adenocarcinoma	2015-06-02 22:29:17.936702	2015-06-02 22:31:19.921432
39	9119	Acute Myeloid Leukemia	2015-06-02 22:29:18.138818	2015-06-02 22:31:20.093795
40	3068	Glioblastoma Multiforme	2015-06-02 22:29:18.354149	2015-06-02 22:31:20.432043
41	9253	Gastrointestinal Stromal Tumor	2015-06-02 22:29:19.521284	2015-06-02 22:31:20.604066
42	9119	Acute Myeloid Leukemia	2015-06-02 22:29:20.04503	2015-06-02 22:31:20.798452
43	3973	Thyroid Medullary Carcinoma	2015-06-02 22:29:20.185295	2015-06-02 22:31:21.0029
44	6477	Invasive Bladder Transitional Cell Carcinoma	2015-06-02 22:29:20.553142	2015-06-02 22:31:21.352351
\.


--
-- Name: diseases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('diseases_id_seq', 47, true);


--
-- Data for Name: drugs; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY drugs (id, name, pubchem_id, created_at, updated_at) FROM stdin;
1	N/A	\N	2015-06-02 22:29:12.625938	2015-06-02 22:29:12.625938
2	Nilotinib	\N	2015-06-02 22:29:12.67465	2015-06-02 22:29:12.67465
3	Dasatinib	\N	2015-06-02 22:29:12.678313	2015-06-02 22:29:12.678313
4	Imatinib	\N	2015-06-02 22:29:12.703556	2015-06-02 22:29:12.703556
5	MK-2206	\N	2015-06-02 22:29:12.824652	2015-06-02 22:29:12.824652
6	Crizotinib	\N	2015-06-02 22:29:12.846889	2015-06-02 22:29:12.846889
7	CH5424802	\N	2015-06-02 22:29:12.909736	2015-06-02 22:29:12.909736
8	TAE684	\N	2015-06-02 22:29:13.038282	2015-06-02 22:29:13.038282
9	Sorafenib	\N	2015-06-02 22:29:13.152358	2015-06-02 22:29:13.152358
10	Trametinib	\N	2015-06-02 22:29:13.209406	2015-06-02 22:29:13.209406
11	Panitumumab	\N	2015-06-02 22:29:13.256198	2015-06-02 22:29:13.256198
12	Dabrafenib	\N	2015-06-02 22:29:13.295493	2015-06-02 22:29:13.295493
13	Cetuximab	\N	2015-06-02 22:29:13.386256	2015-06-02 22:29:13.386256
14	PD0325901	\N	2015-06-02 22:29:13.414988	2015-06-02 22:29:13.414988
15	PLX4720	\N	2015-06-02 22:29:13.4185	2015-06-02 22:29:13.4185
16	Nutlin-3	\N	2015-06-02 22:29:13.442965	2015-06-02 22:29:13.442965
17	Capecitabine	\N	2015-06-02 22:29:13.466343	2015-06-02 22:29:13.466343
18	Vemurafenib	\N	2015-06-02 22:29:13.469872	2015-06-02 22:29:13.469872
19	Bevacizumab	\N	2015-06-02 22:29:13.473103	2015-06-02 22:29:13.473103
20	Dacarbazine	\N	2015-06-02 22:29:13.609679	2015-06-02 22:29:13.609679
21	Temozolomide	\N	2015-06-02 22:29:13.61299	2015-06-02 22:29:13.61299
22	AZD6244	\N	2015-06-02 22:29:13.862194	2015-06-02 22:29:13.862194
23	Olaparib	\N	2015-06-02 22:29:13.966691	2015-06-02 22:29:13.966691
24	Palbociclib (PD-0332991)	\N	2015-06-02 22:29:14.246727	2015-06-02 22:29:14.246727
25	BYL719	\N	2015-06-02 22:29:14.360751	2015-06-02 22:29:14.360751
26	Palbociclib	\N	2015-06-02 22:29:14.380847	2015-06-02 22:29:14.380847
27	GW-2580	\N	2015-06-02 22:29:14.589246	2015-06-02 22:29:14.589246
28	Erlotinib	\N	2015-06-02 22:29:14.734051	2015-06-02 22:29:14.734051
29	Daunorubicin	\N	2015-06-02 22:29:14.774677	2015-06-02 22:29:14.774677
30	Idarubicin	\N	2015-06-02 22:29:14.793556	2015-06-02 22:29:14.793556
31	Gefitinib	\N	2015-06-02 22:29:15.323994	2015-06-02 22:29:15.323994
32	Premetrexed	\N	2015-06-02 22:29:15.493975	2015-06-02 22:29:15.493975
33	Stauroporine	\N	2015-06-02 22:29:15.569909	2015-06-02 22:29:15.569909
34	Dacomitinib	\N	2015-06-02 22:29:15.603711	2015-06-02 22:29:15.603711
35	Neratinib	\N	2015-06-02 22:29:15.628148	2015-06-02 22:29:15.628148
36	Lapatinib	\N	2015-06-02 22:29:15.719713	2015-06-02 22:29:15.719713
37	Hormone Therapy	\N	2015-06-02 22:29:15.89406	2015-06-02 22:29:15.89406
38	Tamoxifen	\N	2015-06-02 22:29:15.925447	2015-06-02 22:29:15.925447
39	Fulvestrant	\N	2015-06-02 22:29:15.9286	2015-06-02 22:29:15.9286
40	Ponatinib	\N	2015-06-02 22:29:16.14609	2015-06-02 22:29:16.14609
41	PD173074	\N	2015-06-02 22:29:16.18088	2015-06-02 22:29:16.18088
42	Pazopanib	\N	2015-06-02 22:29:16.264867	2015-06-02 22:29:16.264867
43	AG1296	\N	2015-06-02 22:29:16.291843	2015-06-02 22:29:16.291843
44	ATRA	\N	2015-06-02 22:29:16.312621	2015-06-02 22:29:16.312621
45	CEP701	\N	2015-06-02 22:29:16.33322	2015-06-02 22:29:16.33322
46	SU5614	\N	2015-06-02 22:29:16.626918	2015-06-02 22:29:16.626918
47	Bortezomib	\N	2015-06-02 22:29:16.803404	2015-06-02 22:29:16.803404
48	Fasudil	\N	2015-06-02 22:29:16.806572	2015-06-02 22:29:16.806572
49	Pegylated IFN-2a	\N	2015-06-02 22:29:17.227243	2015-06-02 22:29:17.227243
50	TG101348	\N	2015-06-02 22:29:17.261932	2015-06-02 22:29:17.261932
51	SU11248	\N	2015-06-02 22:29:17.690927	2015-06-02 22:29:17.690927
52	Regorafenib	\N	2015-06-02 22:29:17.733753	2015-06-02 22:29:17.733753
53	NVP-BEZ235	\N	2015-06-02 22:29:18.060695	2015-06-02 22:29:18.060695
54	ARRY-142886	\N	2015-06-02 22:29:18.063827	2015-06-02 22:29:18.063827
55	Carmustine	\N	2015-06-02 22:29:18.364845	2015-06-02 22:29:18.364845
56	O(6)-benzylguanine	\N	2015-06-02 22:29:18.401718	2015-06-02 22:29:18.401718
57	NSC348884	\N	2015-06-02 22:29:19.117681	2015-06-02 22:29:19.117681
58	Valproic Acid	\N	2015-06-02 22:29:19.138696	2015-06-02 22:29:19.138696
59	17-AAG	\N	2015-06-02 22:29:19.404004	2015-06-02 22:29:19.404004
60	Crenolanib	\N	2015-06-02 22:29:19.531858	2015-06-02 22:29:19.531858
61	CH5132799	\N	2015-06-02 22:29:19.704548	2015-06-02 22:29:19.704548
62	Rapamycin	\N	2015-06-02 22:29:19.723909	2015-06-02 22:29:19.723909
63	Motesanib	\N	2015-06-02 22:29:20.195994	2015-06-02 22:29:20.195994
64	AZD1480	\N	2015-06-02 22:29:20.226988	2015-06-02 22:29:20.226988
65	Doxorubicin	\N	2015-06-02 22:29:20.343894	2015-06-02 22:29:20.343894
66	Everolimus	\N	2015-06-02 22:29:20.563444	2015-06-02 22:29:20.563444
67	Carfilzomib	\N	2015-06-02 22:29:21.192213	2015-06-02 22:29:21.192213
\.


--
-- Data for Name: genes; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY genes (id, entrez_id, name, description, official_name, created_at, updated_at, clinical_description, deleted, deleted_at) FROM stdin;
1	238	ALK	ALK amplifications, fusions and mutations have been shown to be driving events in non-small cell lung cancer. While crizontinib has demonstrated efficacy in treating the amplification, mutations in ALK have been shown to confer resistance to current tyrosine kinase inhibitors. Second-generation TKI's have seen varied success in treating these resistant cases, and the HSP90 inhibitor 17-AAG has been shown to be cytostatic in ALK-altered cell lines.	anaplastic lymphoma receptor tyrosine kinase	2015-06-02 22:28:52.981461	2015-06-02 22:28:52.981461	\N	f	\N
2	207	AKT1	AKT1, also referred to as protein kinase B, is a known oncogene. AKT activation relies on the PI3K pathway, and is recognized as a critical node in the pathway. The E17 hotspot is the most characterized of AKT1 mutations, and has been shown to result in activation of the protein. Mutations in AKT1 have also been shown to confer resistance to allosteric kinase inhibitors in vitro.	v-akt murine thymoma viral oncogene homolog 1	2015-06-02 22:28:53.387692	2015-06-02 22:28:53.387692	\N	f	\N
3	369	ARAF	ARAF has recently become increasingly considered for its oncogenic potential. Its potential as a target for informing clinical action was demonstrated by a single case of advanced lung adenocarcinoma harboring an S214C mutation that, when treated with sorafenib, acheived near-complete clinical remission. This finding has brought new focus on ARAF as a marker that should be assayed for in cancer treatment.	A-Raf proto-oncogene, serine/threonine kinase	2015-06-02 22:28:53.712004	2015-06-02 22:28:53.712004	\N	f	\N
4	25	ABL1	ABL1 is most relevant to cancer in its role in the BCR-ABL fusion protein that has become a signature of chronic myeloid leukemia (CML). Cells harboring this fusion have shown sensitivity to imatinib, greatly improving the prognostic outlook of the disease. However, additional mutations in ABL1 have been shown to confer resistance to imatinib. In these resistance cases, second-generation tyrosine kinase inhibitors such as dasatinib and nilotinib have exhibited some efficacy and are currently undergoing clinical trials for treating acquired resistance in CML.	ABL proto-oncogene 1, non-receptor tyrosine kinase	2015-06-02 22:28:53.968983	2015-06-02 22:28:53.968983	\N	f	\N
5	673	BRAF	BRAF mutations are found to be recurrent in many cancer types. Of these, the mutation of valine 600 to glutamic acid (V600E) is the most prevalent. V600E has been determined to be an activating mutation, and cells that harbor it, along with other V600 mutations are sensitive to the BRAF inhibitor dabrafenib. It is also common to use MEK inhibition as a substitute for BRAF inhibitors, and the MEK inhibitor trametinib has seen some success in BRAF mutant melanomas. BRAF mutations have also been correlated with poor prognosis in many cancer types, although there is at least one study that questions this conclusion in papillary thyroid cancer.	B-Raf proto-oncogene, serine/threonine kinase	2015-06-02 22:28:54.303148	2015-06-02 22:28:54.303148	\N	f	\N
6	672	BRCA1	BRCA1 mutations in the germline have become a hallmark for hereditary breast and ovarian cancers. Variants that have been demonstrated to reduce the function of the protein have been shown to increase risk for these cancers, as well as prostate and pancreatic cancer. These findings have been the impetus for the increased popularity of genetic testing of healthy indivudals to assess risk.	breast cancer 1, early onset	2015-06-02 22:28:54.683153	2015-06-02 22:28:54.683153	\N	f	\N
7	675	BRCA2	BRCA2 mutations in the germline have become a hallmark for hereditary breast and ovarian cancers. Variants that have been demonstrated to reduce the function of the protein have been shown to increase risk for these cancers, as well as prostate and pancreatic cancer. These findings have been the impetus for the increased popularity of genetic testing of healthy indivudals to assess risk.	breast cancer 2, early onset	2015-06-02 22:28:54.993601	2015-06-02 22:28:54.993601	\N	f	\N
8	595	CCND1	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, ranging from genomic amplification to changes in promoter methylation. While Cyclin D2 has only been found to be significantly deregulated in glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been shown to lead to poorer outcomes in a number of studies, and currently there are no FDA-approved targeted therapies.	cyclin D1	2015-06-02 22:28:55.358781	2015-06-02 22:28:55.358781	\N	f	\N
9	894	CCND2	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, ranging from genomic amplification to changes in promoter methylation. While Cyclin D2 has only been found to be significantly deregulated in glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been shown to lead to poorer outcomes in a number of studies, and currently there are no FDA-approved targeted therapies.	cyclin D2	2015-06-02 22:28:55.76153	2015-06-02 22:28:55.76153	\N	f	\N
10	896	CCND3	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, ranging from genomic amplification to changes in promoter methylation. Cyclin D3 loss has been reported in T-ALL, a seemingly unique trend when compared to the amplifcations and overexpressions of the other cyclin D's. In a mouse study, the targeted therapeutic palbociclib significantly increased the median survival of the cyclin D3 knockouts.	cyclin D3	2015-06-02 22:28:56.16802	2015-06-02 22:28:56.16802	\N	f	\N
11	898	CCNE1	Cyclin E, while currenly not as widely implicated as its cyclin D counterparts, has been implicated in various carcinomas, including breast, gastric, stomach and colorectal. High levels of cyclin E, either by gene amplification or overexpression, have been shown to lead to poorer prognosis in gastic carcinoma, and these measurements are correlated with later stage disease. In lung cancer, neoplastic cells with higher levels of the cyclin E/CDK2 complex are more radiosensitive than their more lowly expressed counterparts.	cyclin E1	2015-06-02 22:28:56.873761	2015-06-02 22:28:56.873761	\N	f	\N
12	1021	CDK6	CDK6, along with its partner CDK4, are key players in cell cycle progression. The complex has been implicated in a number of cancer types, and is the focus of therapeutic research and development. One targeted therapy for CDK inhibition is palbociclib, which may slow the growth of advanced stage breast cancers. It has also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors to PI3K inhibitors.	cyclin-dependent kinase 6	2015-06-02 22:28:57.122886	2015-06-02 22:28:57.122886	\N	f	\N
13	1019	CDK4	CDK4, along with its partner CDK6, are key players in cell cycle progression. The complex has been implicated in a number of cancer types, and is the focus of therapeutic research and development. One targeted therapy for CDK inhibition is palbociclib, which may slow the growth of advanced stage breast cancers. It has also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors to PI3K inhibitors.	cyclin-dependent kinase 4	2015-06-02 22:28:57.453231	2015-06-02 22:28:57.453231	\N	f	\N
14	1029	CDKN2A	CDKN2A loss has been shown to be a significant event in a number of cancer types. While no targeted therapeutic has been engaged in clinical trials, the prognostic impact has been studied by a number of meta-analyses. One mechanism by which loss of CDKN2A can occur is by hypermethylation of the promoter region for the gene. However, the prognostic impact of promoter hypermethylation has been relatively ambiguous. Many studies have suggesting poorer prognostic outcome for patients with hypermethylation in colorectal, liver, and younger lung cancer patients. This being said, there is still research to be done before this becomes a widely-accepted prognostic indicator.	cyclin-dependent kinase inhibitor 2A	2015-06-02 22:28:57.792798	2015-06-02 22:28:57.792798	\N	f	\N
15	1050	CEBPA	AML with mutated CEBPA' is a provisional entity in the WHO classification of acute myeloid leukemia (AML) and is recommended to be tested for in patients with AML. CEBPA mutations are particularly associated with cytogenetically normal AML (CN-AML). CEBPA is an intronless gene that is required for granulocyte formation in mice. N-terminal nonsense mutations result in a dominant negative C/EBP-alpha protein while C-terminal mutations reduce the DNA-binding potential of this transcription factor. CEBPA mutations are associated with a favorable prognosis, however, NPM1 and FLT3 mutations should also be assessed in CN-AML patients as concurrent mutations may have prognostic implications.	CCAAT/enhancer binding protein (C/EBP), alpha	2015-06-02 22:28:58.068682	2015-06-02 22:28:58.068682	\N	f	\N
16	3337	DNAJB1	DNAJB1 works upstream of MDM2, stabilizing the complex and facilitating p53 turnover. In hepatocellular fibrolamellar carcinoma (FL-HCC), the fusion DNAJB1 to PRKACA is suggested to be a diagnostic marker for this rare subtype of HCC. In one study, this fusion was observed in 15/15 FL-HCC cases examined and functional studies found that the fusion retained kinase activity.	DnaJ (Hsp40) homolog, subfamily B, member 1	2015-06-02 22:28:58.446637	2015-06-02 22:28:58.446637	\N	f	\N
17	5566	PRKACA	PRKACA has been studied in breast cancer and has been found to mediate resistance to HER2 targeted therapies. It has also been found to contain a mutation hotspot that contributes to neoplastic behavior in neuroendocrine cancers. In hepatocellular fibrolamellar carcinoma (FL-HCC), the fusion DNAJB1 to PRKACA is suggested to be a diagnostic marker for this rare subtype of HCC. In one study, this fusion was observed in 15/15 FL-HCC cases examined and functional studies found that the fusion retained kinase activity.	protein kinase, cAMP-dependent, catalytic, alpha	2015-06-02 22:28:58.711314	2015-06-02 22:28:58.711314	\N	f	\N
18	1788	DNMT3A	DNMT3A is one of several epigenetic modifiers identified as recurrently mutated in acute myeloid leukemia (AML). DNMT3A mutations are associated with cytogenetically normal AML. In vitro experiments indicate that the R882H mutation acts in a dominant negative manner to disrupt the de novo methyltransferase activity of wildtype homotetramers. AML patient bone marrow harboring R882 mutations were similarly demonstrated to be hypomethylated compared to patients with wildtype DNMT3A. These studies also indicated that non-R882 DNMT3A mutations may act in a functionally distinct manner from R882 mutations. Alternative mechanisms indicate independent prognostic outcomes and treatment protocols may need to be considered for these two classes of DNMT3A mutations.	DNA (cytosine-5-)-methyltransferase 3 alpha	2015-06-02 22:28:58.970241	2015-06-02 22:28:58.970241	\N	f	\N
19	1956	EGFR	EGFR is widely recognized for its importance in cancer. Amplification and mutations have been shown to be driving events in many cancer types. Its role in non-small cell lung cancer has spurred many research and drug development efforts. Tyrosine kinase inhibitors have shown efficacy in EGFR amplfied tumors, most notably gefitinib and erlotinib. Mutations in EGFR have been shown to confer resistance to these drugs, particularly the variant T790M, which has been functionally characterized as a resistance marker for both of these drugs. The later generation TKI's have seen some success in treating these resistant cases, and targeted sequencing of the EGFR locus has become a common practice in non-small cell lung cancer.	epidermal growth factor receptor	2015-06-02 22:28:59.366498	2015-06-02 22:28:59.366498	\N	f	\N
20	2064	ERBB2	ERBB2, commonly referred to as HER2, is amplified in HER2-positive breast cancer, and is treated in a separate manner than the other subtypes of breast cancer. Apart from being amplified, ERBB2 activating mutations have been shown to have clinical importance in HER2-negative breast cancer. These mutations have shown sensitivity to the tyrosine kinase inhibitor neratinib, and highlight the importance of clinical sequencing efforts in treating breast cancer.	erb-b2 receptor tyrosine kinase 2	2015-06-02 22:28:59.647987	2015-06-02 22:28:59.647987	\N	f	\N
21	2099	ESR1	ESR1 has been a focus in breast cancer for quite some time, but has also shown significance in endometrial, ovarian and other cancer types. ER-positive breast cancer that is resistant to hormone therapy has instigated clinical sequencing efforts to shed light on the mechanisms of this resistance. A number of mutations in the ligand binding domain of the protein have been implicated in hormone resistance and anti-estrogen therapies. This has spurred efforts to develop therapeutics that act to degrade the protein, rather than act as an antagonist. These agents are currently in clinical trials and have seen some success, highlighting the importance of sequencing efforts in treating breast cancer.	estrogen receptor 1	2015-06-02 22:28:59.968894	2015-06-02 22:28:59.968894	\N	f	\N
22	2263	FGFR2	The FGFR proteins are involved in a wide array of pathways known to play a signficant role in cancer. Activation of these receptors can lead to activation of the RAS-MAPK pathway and the PI3K-AKT pathway, among others. The mechanisms by which FGFR can be misregulated vary between cancers. Amplification of the receptors has been observed in lung and breast cancers, coding mutations and deletions have been seen in many cancers, and more recently, FGFR fusions that lead to pathway actiation have been demonstrated to have oncogenic potential across multiple cancer types. The targeted therapeutics ponatinib, dovitinib and pazopanib have seen success in treating over-active FGFR signalling, prompting use of diagnostic sequencing targeting the FGFR genes, especially in lung cancer patients.	fibroblast growth factor receptor 2	2015-06-02 22:29:00.303447	2015-06-02 22:29:00.303447	\N	f	\N
23	2261	FGFR3	The FGFR proteins are involved in a wide array of pathways known to play a signficant role in cancer. Activation of these receptors can lead to activation of the RAS-MAPK pathway and the PI3K-AKT pathway, among others. The mechanisms by which FGFR can be misregulated vary between cancers. Amplification of the receptors has been observed in lung and breast cancers, coding mutations and deletions have been seen in many cancers, and more recently, FGFR fusions that lead to pathway actiation have been demonstrated to have oncogenic potential across multiple cancer types. The targeted therapeutics ponatinib, dovitinib and pazopanib have seen success in treating over-active FGFR signalling, prompting use of diagnostic sequencing targeting the FGFR genes, especially in lung cancer patients.	fibroblast growth factor receptor 3	2015-06-02 22:29:00.776984	2015-06-02 22:29:00.776984	\N	f	\N
55	6697	SPR	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	sepiapterin reductase (7,8-dihydrobiopterin:NADP+ oxidoreductase)	2015-06-02 22:29:11.035611	2015-06-02 22:29:11.035611	\N	f	\N
24	2322	FLT3	FLT3 is an important cytokine receptor involved in normal hematopoiesis. Mutations in this gene are common in acute myeloid leukemia (AML) and screening for mutations in this gene has been recommended by the World Health Organization in patients with AML, particularly in cases of cytogenetically normal AML (CN-AML). FLT3 mutations commonly co-occur with mutations such as NPM1 that are associated with CN-AML and likely modulate prognostic impact. While FLT3-ITD mutations have been associated with poorer prognosis in AML, the prognostic impact of FLT3-TKD mutations are still up for debate.	fms-related tyrosine kinase 3	2015-06-02 22:29:01.037393	2015-06-02 22:29:01.037393	\N	f	\N
25	2624	GATA2	GATA2 is a transcription factor involved in stem cell maintenance with key roles in hematopoietic development. GATA2 mutations are associated with a variety of inherited and acquired immune disorders including myelodysplastic syndrome and acute myeloid leukemia. In addition to a role in hematopoiesis, the maintenance GATA2 expression has been implicated as a requirement in KRAS-driven non-small cell lung cancer. Preclinical models have indicated therapeutic benefit from targeting GATA2-mediated pathways in the context of KRAS-driven NSCLC.	GATA binding protein 2	2015-06-02 22:29:01.492482	2015-06-02 22:29:01.492482	\N	f	\N
26	3417	IDH1	IDH1 mutations have been observed in a number of cancer types, including sarcomas, hematologic malignancies, colon cancer and brain cancer. Mutations in the two isocitrate dehydrogenase enzymes involved in cytoplasmic (IDH1) and mitochondrial (IDH2) conversion of alpha-ketoglutarate to D-2-hydroxyglutarate have been described as mutually exclusive in many of these cancer types. The most frequent mutations involve R132 (IDH1) and R172 (IDH2) involve the active site and result in neomorphic enzyme activity. The implications of mutations in this gene vary greatly by cancer type. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 mutations have been associated with worse outcome, shorter overall survival, and normal karyotype. However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown better overall survival than patients with wild-type IDH1. Unlike the association with cytogenetically normal AML, in glioblastoma, IDH1 mutations have been associated with specific cytogenetic abnormalities, 1p and 19q deletions.	isocitrate dehydrogenase 1 (NADP+), soluble	2015-06-02 22:29:02.045537	2015-06-02 22:29:02.045537	\N	f	\N
27	3418	IDH2	IDH2 mutations have been observed in a number of cancer types, including sarcomas, hematologic malignancies, colon cancer and brain cancer. Mutations in the two isocitrate dehydrogenase enzymes involved in cytoplasmic (IDH1) and mitochondrial (IDH2) conversion of alpha-ketoglutarate to D-2-hydroxyglutarate have been described as mutually exclusive in many of these cancer types. The most frequent mutations involve R132 (IDH1) and R172 (IDH2) involve the active site and result in neomorphic enzyme activity. Although IDH2 (R172) mutations are associated with poorer overall prognosis in AML patients, its utility as a prognostic marker in MDS is still under debate. Additionally, IDH2 (R140) has been associated with improved overall survival in AML. IDH2 mutations have been associated with improved prognosis in gliomas.	isocitrate dehydrogenase 2 (NADP+), mitochondrial	2015-06-02 22:29:02.667611	2015-06-02 22:29:02.667611	\N	f	\N
28	3717	JAK2	JAK2 is a kinase that is misregulated or mutated in a number of myeloproliferative diseases and cancers. The mutation V617F is the most clinically relevant variant, and is seen in around half of myeloproliferative disorders. The variant is a known activating mutation, and activated JAK2 is sufficient to drive myeloproliferative disorders in mouse models. V617F, while most recurrent, is not the only mechanism by which JAK2 can be activated in patients. JAK2 is now one of the first diagnostic markers tested upon diagnosis with a myeloproliferative disorder.	Janus kinase 2	2015-06-02 22:29:02.971794	2015-06-02 22:29:02.971794	\N	f	\N
29	3815	KIT	c-KIT activation has been shown to have oncogenic activity in gastrointestinal stromal tumors (GISTs), melanomas, lung cancer, and other tumor types. The targeted therapeutics nilotinib and sunitinib have shown efficacy in treating KIT overactive patients, and are in late-stage trials in melanoma and GIST. KIT overactivity can be the result of many genomic events from genomic amplification to overexpression to missense mutations. Missense mutations have been shown to be key players in mediating clinical response and acquired resistance in patients being treated with these targeted therapeutics.	v-kit Hardy-Zuckerman 4 feline sarcoma viral oncogene homolog	2015-06-02 22:29:03.456248	2015-06-02 22:29:03.456248	\N	f	\N
30	3845	KRAS	Mutations in the RAS family of proteins have frequently observed across cancer types. The amino acid positions account for the overwhelming majority of these mutations, G12, G13 and Q61. The isoforms, despite their raw similarity, also behave very differently when expressed in non-native tissue types, likely due to differences in the C-terminal hyper-variable regions. Mis-regulation of isoform expression has been shown to be a driving event in cancer, as well as missense mutations at the three hotspots previously mentioned. While highly recurrent in cancer, targeted these RAS mutants has also been very elusive, and has not yet become common practice in the clinic.	Kirsten rat sarcoma viral oncogene homolog	2015-06-02 22:29:03.908919	2015-06-02 22:29:03.908919	\N	f	\N
31	5604	MAP2K1	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	mitogen-activated protein kinase kinase 1	2015-06-02 22:29:04.169067	2015-06-02 22:29:04.169067	\N	f	\N
32	4209	MEF2D	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	myocyte enhancer factor 2D	2015-06-02 22:29:04.447118	2015-06-02 22:29:04.447118	\N	f	\N
33	1436	CSF1R	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	colony stimulating factor 1 receptor	2015-06-02 22:29:04.703862	2015-06-02 22:29:04.703862	\N	f	\N
34	4255	MGMT	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	O-6-methylguanine-DNA methyltransferase	2015-06-02 22:29:04.930782	2015-06-02 22:29:04.930782	\N	f	\N
35	4869	NPM1	AML with mutated NPM1 is provisional entity in the WHO classification of AML and is recommended to be tested for in patients with cytogenetically normal AML (CN-AML). Evaluation of FLT3 mutations should be evaluated concurrently as they have prognostic consequences. NPM1 mutations are concentrated in exon 12, most frequently W288fs which results in cytoplasmic sequestration of the protein. Exon 12 NPM1 mutations in the absence of FLT3-ITD are associated with good prognostic outcomes. Mice expressing the Npm1-W288fs mutation develop myeloproliferative neoplasms but not overt leukemia, indicating it may require additional mutations to promote leukemic development.	nucleophosmin (nucleolar phosphoprotein B23, numatrin)	2015-06-02 22:29:05.166922	2015-06-02 22:29:05.166922	\N	f	\N
36	4893	NRAS	Mutations in the RAS family of proteins have frequently observed across cancer types. The amino acid positions account for the overwhelming majority of these mutations, G12, G13 and Q61. The isoforms, despite their raw similarity, also behave very differently when expressed in non-native tissue types, likely due to differences in the C-terminal hyper-variable regions. Mis-regulation of isoform expression has been shown to be a driving event in cancer, as well as missense mutations at the three hotspots previously mentioned. While highly recurrent in cancer, targeted these RAS mutants has also been very elusive, and has not yet become common practice in the clinic.	neuroblastoma RAS viral (v-ras) oncogene homolog	2015-06-02 22:29:05.520781	2015-06-02 22:29:05.520781	\N	f	\N
37	5290	PIK3CA	PIK3CA is the most recurrently mutated gene in breast cancer, and has been found to important in a number of cancer types. An integral part of the PI3K pathway, PIK3CA has long been described as an oncogene, with two main hotspots for activating mutations, the 542/545 region of the helical domain, and the 1047 region of the kinase domain. PIK3CA, and its interaction with the AKT and mTOR pathways, is the subject of an immense amount of research and development, and PI3K inhibition has seen some limited success in recent clinical trials. While monotherapies seem to be limited in their potential, there is a recent interest in pursuing PI3K inhibition as part of a combination therapy regiment with inhibition partners including TKI's, MEK inhibitors, PARP inhibitors, and in breast cancer, aromatase inhibitors.	phosphatidylinositol-4,5-bisphosphate 3-kinase, catalytic subunit alpha	2015-06-02 22:29:05.810107	2015-06-02 22:29:05.810107	\N	f	\N
38	5156	PDGFRA	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	platelet-derived growth factor receptor, alpha polypeptide	2015-06-02 22:29:06.122706	2015-06-02 22:29:06.122706	\N	f	\N
39	5371	PML	The PML-RARA fusion is the result of a recurrent, balanced translocation between chromosomes 15 and 17, denoted as t(15;17)(q22;q12), and a diagnostic event in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA (all-trans retinoic acid) in APL patients harboring the PML-RARA fusion. Recent interest has been shown in combining ATRA and arsenic trioxide for treating these patients, and early results seem promising.	promyelocytic leukemia	2015-06-02 22:29:06.469506	2015-06-02 22:29:06.469506	\N	f	\N
40	5914	RARA	The PML-RARA fusion is the result of a recurrent, balanced translocation between chromosomes 15 and 17, denoted as t(15;17)(q22;q12), and a diagnostic event in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA (all-trans retinoic acid) in APL patients harboring the PML-RARA fusion. Recent interest has been shown in combining ATRA and arsenic trioxide for treating these patients, and early results seem promising.	retinoic acid receptor, alpha	2015-06-02 22:29:06.729801	2015-06-02 22:29:06.729801	\N	f	\N
41	5728	PTEN	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	phosphatase and tensin homolog	2015-06-02 22:29:07.066011	2015-06-02 22:29:07.066011	\N	f	\N
42	5979	RET	RET mutations and the RET fusion RET-PTC lead to activation of this tyrosine kinase receptor and are associated with thyroid cancers. RET point mutations are the most common mutations identified in medullary thyroid cancer (MTC) with germline and somatic mutations in RET associated with hereditary and sporadic forms, respectively. The most common somatic form mutation is M918T (exon 16) and a variety of other mutations effecting exons 10, 11 and 15 have been described. The prognostic significance of these mutations have been hotly debated in the field, however, data suggests that some RET mutation may confer drug resistence. No RET-specific agents are currently clinically available but several promiscuous kinase inhibitors that target RET, among others, have been approved for MTC treatment.	ret proto-oncogene	2015-06-02 22:29:07.3947	2015-06-02 22:29:07.3947	\N	f	\N
43	861	RUNX1	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	runt-related transcription factor 1	2015-06-02 22:29:07.683853	2015-06-02 22:29:07.683853	\N	f	\N
44	23451	SF3B1	SF3B1 mutations have been described in several myeloid malignancies, predominantly myelodysplastic syndromes (MDS), as well as other hematologic malignancies and breast cancer. SF3B1 is one of several genes involved in RNA splicing that has been identified as recurrently mutated in MDS and other malignanices. The mutations affecting SF3B1 are typically heterozygous, point mutations suspected to be functionally deleterious with K700E described as a major hotspot mutation. MDS patients with SF3B1 mutations have been reported to have better overall and event-free survival than their wildtype counterparts. Additionally, these mutations are highly associated with subtypes of MDS characterized by ringed sideroblasts (refractory anemia with ringed sideroblasts and refractory cytopenia with multilineage dysplasia and ring sideroblasts).	splicing factor 3b, subunit 1, 155kDa	2015-06-02 22:29:07.977117	2015-06-02 22:29:07.977117	\N	f	\N
45	7157	TP53	TP53 mutations are universal across cancer types. Loss of tumor suppressors is most recognized by large deleterious events, such as frameshift mutations, or premature stop codons. In TP53 however, many of the observed mutations in cancer are found to be single nucleotide variants, or missense mutations. These variants are also very broadly distributed throughout the gene, not localizing in any particular hotspot. While a large proportion of cancer genomics research is focused on somatic variants, TP53 is also of note in the germline. Germline TP53 mutations are the hallmark of Li-Fraumeni syndrome, and many (both germline and somatic) have been found to have prognostic impact on patient outcomes.	tumor protein p53	2015-06-02 22:29:08.323138	2015-06-02 22:29:08.323138	\N	f	\N
46	7248	TSC1	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	tuberous sclerosis 1	2015-06-02 22:29:08.546279	2015-06-02 22:29:08.546279	\N	f	\N
47	7249	TSC2	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	tuberous sclerosis 2	2015-06-02 22:29:08.768926	2015-06-02 22:29:08.768926	\N	f	\N
48	7307	U2AF1	U2AF1 is one of several spliceosome complex genes frequently mutated in a variety of hematologic malignancies, particularly de novo myelodysplastic syndromes (MDS), as well as solid tumors such as lung and pancreatic cancers. Two hotspot mutations (S34 and Q157) occur within the two zinc-finger domains of the U2AF1 protein. These mutations have been associated with altered splicing patterns in vitro and in vivo. U2AF1 mutations in MDS have been associated with an increased risk of transformation to secondary acute myeloid leukemia, however, the impact of these mutations on overall survival has been an area of debate.	U2 small nuclear RNA auxiliary factor 1	2015-06-02 22:29:09.017481	2015-06-02 22:29:09.017481	\N	f	\N
49	7490	WT1	WT1 is a tumor suppressor gene associated with the development of Wilms' Tumor, from which it was named. Mutations in exon 7 and 9 of WT1 have been recurrently identified in acute myeloid leukemia and associated with poorer prognosis and chemotherapy resistance.	Wilms tumor 1	2015-06-02 22:29:09.34858	2015-06-02 22:29:09.34858	\N	f	\N
50	2475	MTOR	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	mechanistic target of rapamycin (serine/threonine kinase)	2015-06-02 22:29:09.692849	2015-06-02 22:29:09.692849	\N	f	\N
51	4851	NOTCH1	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	notch 1	2015-06-02 22:29:09.952112	2015-06-02 22:29:09.952112	\N	f	\N
52	4921	DDR2	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	discoidin domain receptor tyrosine kinase 2	2015-06-02 22:29:10.19064	2015-06-02 22:29:10.19064	\N	f	\N
53	4233	MET	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	MET proto-oncogene, receptor tyrosine kinase	2015-06-02 22:29:10.505085	2015-06-02 22:29:10.505085	\N	f	\N
54	4067	LYN	A summary for this gene has yet to be developed! Add one now by clicking the "Edit Gene" button.	LYN proto-oncogene, Src family tyrosine kinase	2015-06-02 22:29:10.807294	2015-06-02 22:29:10.807294	\N	f	\N
\.


--
-- Data for Name: sources; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY sources (id, pubmed_id, study_type, description, created_at, updated_at) FROM stdin;
1	24889366	\N	Rossi et al., 2014, Int. J. Oncol.	2015-06-02 22:28:53.00025	2015-06-02 22:29:21.755396
2	23401436	\N	Shaw et al., 2013, J. Clin. Oncol.	2015-06-02 22:28:53.00363	2015-06-02 22:29:22.191217
3	16095999	\N	Bellacosa et al., 2005, Adv. Cancer Res.	2015-06-02 22:28:53.399524	2015-06-02 22:29:22.674834
4	15023437	\N	Fresno Vara et al., 2004, Cancer Treat. Rev.	2015-06-02 22:28:53.403497	2015-06-02 22:29:23.08597
5	15676015	\N	Lee et al., 2005, APMIS	2015-06-02 22:28:53.719949	2015-06-02 22:29:23.49357
6	24569458	\N	Imielinski et al., 2014, J. Clin. Invest.	2015-06-02 22:28:53.722822	2015-06-02 22:29:23.904504
7	15719031	\N	Ren, 2005, Nat. Rev. Cancer	2015-06-02 22:28:53.976567	2015-06-02 22:29:24.312186
8	17457302	\N	Weisberg et al., 2007, Nat. Rev. Cancer	2015-06-02 22:28:53.978992	2015-06-02 22:29:24.722473
9	19724843	\N	Li et al., 2009, Oncol. Rep.	2015-06-02 22:28:54.319396	2015-06-02 22:29:25.130318
10	23594689	\N	Pakneshan et al., 2013, Pathology	2015-06-02 22:28:54.32423	2015-06-02 22:29:25.54173
11	24366442	\N	Nelson et al., 2014, Ann. Intern. Med.	2015-06-02 22:28:54.697188	2015-06-02 22:29:25.94877
12	12432268	\N	Diehl, Cancer Biol. Ther.	2015-06-02 22:28:55.375438	2015-06-02 22:29:26.462268
13	24387133	\N	Casimiro et al., 2014, Expert Opin Investig Drugs	2015-06-02 22:28:55.380765	2015-06-02 22:29:26.875842
14	14965268	\N	Mazumder et al., 2004, Curr Cancer Drug Targets	2015-06-02 22:28:56.884373	2015-06-02 22:29:27.282082
15	20370706	\N	Graf et al., 2010, Mini Rev Med Chem	2015-06-02 22:28:57.140091	2015-06-02 22:29:27.68956
16	24089445	\N	Sheppard et al., 2013, Clin. Cancer Res.	2015-06-02 22:28:57.145378	2015-06-02 22:29:28.100878
17	20473920	\N	Shima et al., 2011, Int. J. Cancer	2015-06-02 22:28:57.801315	2015-06-02 22:29:28.509625
18	23111194	\N	Bradly et al., 2012, Diagn. Mol. Pathol.	2015-06-02 22:28:57.804165	2015-06-02 22:29:28.918828
19	19357394	\N	Vardiman et al., 2009, Blood	2015-06-02 22:28:58.095311	2015-06-02 22:29:29.330817
20	11242107	\N	Pabst et al., 2001, Nat. Genet.	2015-06-02 22:28:58.099488	2015-06-02 22:29:29.737935
21	9012825	\N	Zhang et al., 1997, Proc. Natl. Acad. Sci. U.S.A.	2015-06-02 22:28:58.103836	2015-06-02 22:29:30.148521
22	24578576	\N	Honeyman et al., 2014, Science	2015-06-02 22:28:58.461467	2015-06-02 22:29:30.561325
23	24909179	\N	Moody et al., 2015, Oncogene	2015-06-02 22:28:58.731975	2015-06-02 22:29:31.071488
24	24167195	\N	Kim et al., 2013, Blood	2015-06-02 22:28:58.9777	2015-06-02 22:29:31.586977
25	24656771	\N	Russler-Germain et al., 2014, Cancer Cell	2015-06-02 22:28:58.980669	2015-06-02 22:29:32.099563
26	23953842	\N	Yewale et al., 2013, Biomaterials	2015-06-02 22:28:59.380417	2015-06-02 22:29:32.505714
27	18712184	\N	Charpidou et al., In Vivo	2015-06-02 22:28:59.384378	2015-06-02 22:29:32.91961
28	16947083	\N	Badache et al., 2006, J Mammary Gland Biol Neoplasia	2015-06-02 22:28:59.656178	2015-06-02 22:29:33.732154
29	10878580	\N	Yu et al., 2000, Bioessays	2015-06-02 22:28:59.659054	2015-06-02 22:29:34.469655
30	24185510	\N	Robinson et al., 2013, Nat. Genet.	2015-06-02 22:28:59.977676	2015-06-02 22:29:34.861742
31	22279420	\N	Mohibi et al., 2011, J Carcinog	2015-06-02 22:28:59.980338	2015-06-02 22:29:35.233249
32	18636142	\N	Katoh, 2008, Int. J. Oncol.	2015-06-02 22:29:00.311934	2015-06-02 22:29:35.677255
33	23558953	\N	Wu et al., 2013, Cancer Discov	2015-06-02 22:29:00.314935	2015-06-02 22:29:36.193963
34	12951584	\N	Stirewalt et al., 2003, Nat. Rev. Cancer	2015-06-02 22:29:01.047642	2015-06-02 22:29:36.600505
35	22541434	\N	Kumar et al., 2012, Cell	2015-06-02 22:29:01.50366	2015-06-02 22:29:37.008625
36	25619630	\N	Mir et al., 2015, Cancer Med	2015-06-02 22:29:01.507531	2015-06-02 22:29:37.420893
37	24065766	\N	Lu et al., 2013, Genes Dev.	2015-06-02 22:29:02.055825	2015-06-02 22:29:37.827929
38	19228619	\N	Yan et al., 2009, N. Engl. J. Med.	2015-06-02 22:29:02.058805	2015-06-02 22:29:38.240763
39	22417203	\N	Patel et al., 2012, N. Engl. J. Med.	2015-06-02 22:29:02.707622	2015-06-02 22:29:38.824385
40	17133099	\N	Levine et al., 2007, Curr. Opin. Hematol.	2015-06-02 22:29:02.979098	2015-06-02 22:29:39.263028
41	23944364	\N	Stankov et al., 2014, Curr. Pharm. Des.	2015-06-02 22:29:03.470527	2015-06-02 22:29:39.671123
42	22589270	\N	Prior et al., 2012, Cancer Res.	2015-06-02 22:29:03.920793	2015-06-02 22:29:40.088682
43	23226219	\N	Chou et al., 2012, PLoS ONE	2015-06-02 22:29:05.182725	2015-06-02 22:29:40.596362
44	18073307	\N	Elisei et al., 2008, J. Clin. Endocrinol. Metab.	2015-06-02 22:29:07.403847	2015-06-02 22:29:41.005642
45	25465739	\N	Perri et al., 2015, Crit. Rev. Oncol. Hematol.	2015-06-02 22:29:07.406604	2015-06-02 22:29:41.412572
46	21995386	\N	Papaemmanuil et al., 2011, N. Engl. J. Med.	2015-06-02 22:29:07.9944	2015-06-02 22:29:41.828161
47	24136165	\N	Cazzola et al., 2013, Blood	2015-06-02 22:29:08.00001	2015-06-02 22:29:42.341151
48	20182602	\N	Olivier et al., 2010, Cold Spring Harb Perspect Biol	2015-06-02 22:29:08.331169	2015-06-02 22:29:42.846368
49	25311244	\N	Okeyo-Owuor et al., 2015, Leukemia	2015-06-02 22:29:09.030248	2015-06-02 22:29:43.26668
50	22158538	\N	Graubert et al., 2012, Nat. Genet.	2015-06-02 22:29:09.034537	2015-06-02 22:29:43.670258
51	25212276		Schmidt et al., 2014, Leukemia	2015-06-02 22:29:12.605171	2015-06-02 22:29:44.077929
52	20537386		An et al., 2010, Leuk. Res.	2015-06-02 22:29:12.641188	2015-06-02 22:29:44.485892
53	15194504	Cell Line	Yamamoto et al., 2004, Biochem. Biophys. Res. Commun.	2015-06-02 22:29:12.690953	2015-06-02 22:29:45.014133
54	23888070		Beaver et al., 2013, Clin. Cancer Res.	2015-06-02 22:29:12.81235	2015-06-02 22:29:45.406385
55	20979473	Clinical Trial	Choi et al., 2010, N. Engl. J. Med.	2015-06-02 22:29:12.834704	2015-06-02 22:29:45.815502
56	21575866		Sakamoto et al., 2011, Cancer Cell	2015-06-02 22:29:12.898864	2015-06-02 22:29:46.236349
57	21030459		Sasaki et al., 2010, Cancer Res.	2015-06-02 22:29:12.945471	2015-06-02 22:29:46.634456
58	22072639		Bresler et al., 2011, Sci Transl Med	2015-06-02 22:29:12.987859	2015-06-02 22:29:47.043516
59	21948233		Heuckmann et al., 2011, Clin. Cancer Res.	2015-06-02 22:29:13.00761	2015-06-02 22:29:47.516876
60	18923525		George et al., 2008, Nature	2015-06-02 22:29:13.027138	2015-06-02 22:29:47.971892
61	24569458		Imielinski et al., 2014, J. Clin. Invest.	2015-06-02 22:29:13.141604	2015-06-02 22:29:48.375506
62	23325582	Clinical trial	Peeters et al., 2013, Clin. Cancer Res.	2015-06-02 22:29:13.232151	2015-06-02 22:29:48.728292
63	23020132	Clinical trial	Flaherty et al., 2012, N. Engl. J. Med.	2015-06-02 22:29:13.275726	2015-06-02 22:29:49.195464
64	21166657	Meta analysis	Lee et al., 2011, Br. J. Dermatol.	2015-06-02 22:29:13.311704	2015-06-02 22:29:49.706315
65	23463675	Clinical trial	Ponti et al., 2013, J. Clin. Pathol.	2015-06-02 22:29:13.335399	2015-06-02 22:29:50.116412
66	19001320	In vitro study	Di Nicolantonio et al., 2008, J. Clin. Oncol.	2015-06-02 22:29:13.372214	2015-06-02 22:29:50.731892
67	23845441	In vitro study	Rad et al., 2013, Cancer Cell	2015-06-02 22:29:13.402318	2015-06-02 22:29:51.170298
68	23812671	In vitro study	Ji et al., 2013, Clin. Cancer Res.	2015-06-02 22:29:13.428069	2015-06-02 22:29:51.65244
69	22180495	In vivo study	Yang et al., 2012, Cancer Res.	2015-06-02 22:29:13.454295	2015-06-02 22:29:52.061316
70	20619739	Retrospective study	De Roock et al., 2010, Lancet Oncol.	2015-06-02 22:29:13.482404	2015-06-02 22:29:52.472719
71	24594804	Metaanalysis	Chen et al., 2014, PLoS ONE	2015-06-02 22:29:13.556148	2015-06-02 22:29:52.989858
72	24586605	Retrospective study	Meckbach et al., 2014, PLoS ONE	2015-06-02 22:29:13.597824	2015-06-02 22:29:53.393529
73	24583796	Clinical trial	Menzies et al., 2014, Clin. Cancer Res.	2015-06-02 22:29:13.623157	2015-06-02 22:29:53.804987
74	24576830	In vitro study	Nissan et al., 2014, Cancer Res.	2015-06-02 22:29:13.645551	2015-06-02 22:29:54.321738
75	24388723	Retrospective study	Nagore et al., 2014, J. Am. Acad. Dermatol.	2015-06-02 22:29:13.683011	2015-06-02 22:29:54.726195
76	23524406	Case report	Rudin et al., 2013, J Thorac Oncol	2015-06-02 22:29:13.702065	2015-06-02 22:29:55.236574
77	21594703	Retrospective study	Howell et al., 2011, Ann. Surg. Oncol.	2015-06-02 22:29:13.720868	2015-06-02 22:29:55.646363
232	23029227		Qian et al., 2012, PLoS ONE	2015-06-02 22:29:20.648366	2015-06-02 22:31:05.380887
78	24570209	Retrospective study	Crescenzi et al., 2014, Horm. Metab. Res.	2015-06-02 22:29:13.740613	2015-06-02 22:29:56.148853
79	24588959	Perspective study	Zhang et al., 2014, Diagn Pathol	2015-06-02 22:29:13.759275	2015-06-02 22:29:56.56815
80	24354346	Retrospective study	Walczyk et al., 2014, Clin. Endocrinol. (Oxf)	2015-06-02 22:29:13.777569	2015-06-02 22:29:57.836153
81	24396464	Retrospective study	He et al., 2014, Oncol Lett	2015-06-02 22:29:13.814544	2015-06-02 22:29:58.298342
82	21098728	In vitro study	Corcoran et al., 2010, Sci Signal	2015-06-02 22:29:13.851297	2015-06-02 22:29:59.17554
83	23031422	Case report	Ponti et al., 2012, J Hematol Oncol	2015-06-02 22:29:13.871448	2015-06-02 22:29:59.639156
84	23346317	Review	Goff, 2013, J Gynecol Oncol	2015-06-02 22:29:13.954751	2015-06-02 22:30:00.050648
85	17070615		Gautschi et al., 2007, Lung Cancer	2015-06-02 22:29:14.009075	2015-06-02 22:30:00.558989
86	15961768		Arnold et al., 2005, J. Clin. Oncol.	2015-06-02 22:29:14.065167	2015-06-02 22:30:01.071181
87	16309541		Thomas et al., 2005, Int J Exp Pathol	2015-06-02 22:29:14.102873	2015-06-02 22:30:01.484857
88	17891190		Jares et al., 2007, Nat. Rev. Cancer	2015-06-02 22:29:14.122162	2015-06-02 22:30:01.995775
89	10547574		Takano et al., 1999, J. Pathol.	2015-06-02 22:29:14.14218	2015-06-02 22:30:02.404408
90	14612939		Oshimo et al., 2003, Int. J. Oncol.	2015-06-02 22:29:14.215663	2015-06-02 22:30:02.916866
91	23079656		Sawai et al., 2012, Cancer Cell	2015-06-02 22:29:14.23509	2015-06-02 22:30:03.636466
92	12432043		Keyomarsi et al., 2002, N. Engl. J. Med.	2015-06-02 22:29:14.25639	2015-06-02 22:30:04.079463
93	10224221		Donnellan et al., 1999, FASEB J.	2015-06-02 22:29:14.287968	2015-06-02 22:30:04.451571
94	25002028		Vora et al., 2014, Cancer Cell	2015-06-02 22:29:14.348998	2015-06-02 22:30:04.862398
95	23898052		Logan et al., 2013, Anticancer Res.	2015-06-02 22:29:14.369922	2015-06-02 22:30:05.373098
96	23111194		Bradly et al., 2012, Diagn. Mol. Pathol.	2015-06-02 22:29:14.426262	2015-06-02 22:30:05.783028
97	19965647	Retrospective study	Burnett et al., 2010, Blood	2015-06-02 22:29:14.463549	2015-06-02 22:30:06.192553
98	18450602	Retrospective study	Schlenk et al., 2008, N. Engl. J. Med.	2015-06-02 22:29:14.500903	2015-06-02 22:30:06.603204
99	14726504	Retrospective study	Fröhling et al., 2004, J. Clin. Oncol.	2015-06-02 22:29:14.520416	2015-06-02 22:30:07.11439
100	24186003		Lilljebjörn et al., 2014, Leukemia	2015-06-02 22:29:14.575524	2015-06-02 22:30:07.52353
101	22328973		Hammerman et al., 2011, Cancer Discov	2015-06-02 22:29:14.598735	2015-06-02 22:30:08.036013
102	24578576	Retrospective study	Honeyman et al., 2014, Science	2015-06-02 22:29:14.743541	2015-06-02 22:30:08.445627
103	22081665	Retrospective study	LaRochelle et al., 2011, Oncotarget	2015-06-02 22:29:14.763839	2015-06-02 22:30:08.859684
104	23632886	Retrospective study	Gaidzik et al., 2013, Blood	2015-06-02 22:29:14.802346	2015-06-02 22:30:09.265559
105	21067377	Retrospective study	Ley et al., 2010, N. Engl. J. Med.	2015-06-02 22:29:14.821655	2015-06-02 22:30:09.67568
106	24512939	Retrospective study	El Ghannam et al., Blood Cells Mol. Dis.	2015-06-02 22:29:14.91107	2015-06-02 22:30:10.084782
107	22490330	Retrospective study	Ribeiro et al., 2012, Blood	2015-06-02 22:29:14.929809	2015-06-02 22:30:10.595433
108	22291079	Retrospective study	Marcucci et al., 2012, J. Clin. Oncol.	2015-06-02 22:29:14.948696	2015-06-02 22:30:11.005952
109	16730237		Ji et al., 2006, Cancer Cell	2015-06-02 22:29:15.313083	2015-06-02 22:30:11.366727
110	15118125		Paez et al., 2004, Science	2015-06-02 22:29:15.333544	2015-06-02 22:30:11.825634
111	24736073		Lim et al., 2014, J Thorac Oncol	2015-06-02 22:29:15.353572	2015-06-02 22:30:12.236624
112	24457318		Fukihara et al., 2014, Oncology	2015-06-02 22:29:15.394828	2015-06-02 22:30:12.645914
113	24662454		Douillard et al., 2014, J Thorac Oncol	2015-06-02 22:29:15.413951	2015-06-02 22:30:13.127839
114	25668228	Review	Denis et al., 2015, Clin. Chim. Acta	2015-06-02 22:29:15.450366	2015-06-02 22:30:13.565836
115	24636847		Li et al., 2014, Lung Cancer	2015-06-02 22:29:15.481111	2015-06-02 22:30:14.077937
116	15728811		Kobayashi et al., 2005, N. Engl. J. Med.	2015-06-02 22:29:15.502582	2015-06-02 22:30:14.494661
117	24623981		Ding et al., 2014, Onco Targets Ther	2015-06-02 22:29:15.521	2015-06-02 22:30:14.83409
118	24729716		Li et al., 2014, Onco Targets Ther	2015-06-02 22:29:15.539715	2015-06-02 22:30:15.207113
119	24658966		Ai et al., 2014, Amino Acids	2015-06-02 22:29:15.558717	2015-06-02 22:30:15.614167
120	21430269		Sequist et al., 2011, Sci Transl Med	2015-06-02 22:29:15.592693	2015-06-02 22:30:16.129999
121	23220880		Bose et al., 2013, Cancer Discov	2015-06-02 22:29:15.617154	2015-06-02 22:30:16.537127
122	24185512		Toy et al., 2013, Nat. Genet.	2015-06-02 22:29:15.870543	2015-06-02 22:30:16.946061
123	24185510		Robinson et al., 2013, Nat. Genet.	2015-06-02 22:29:15.914467	2015-06-02 22:30:17.45745
124	24550739	Case study	Borad et al., 2014, PLoS Genet.	2015-06-02 22:29:16.133766	2015-06-02 22:30:17.870259
125	23558953		Wu et al., 2013, Cancer Discov	2015-06-02 22:29:16.167465	2015-06-02 22:30:18.277929
126	12357354	In vitro study	Tse et al., 2002, Leukemia	2015-06-02 22:29:16.280664	2015-06-02 22:30:18.791243
127	19965647		Burnett et al., 2010, Blood	2015-06-02 22:29:16.301231	2015-06-02 22:30:19.198151
128	14726387	Clinical trial	Smith et al., 2004, Blood	2015-06-02 22:29:16.321963	2015-06-02 22:30:19.610808
129	15626738	In vitro study	Bagrintseva et al., 2005, Blood	2015-06-02 22:29:16.34249	2015-06-02 22:30:20.020888
130	11290608	Retrospective study	Yamamoto et al., 2001, Blood	2015-06-02 22:29:16.362017	2015-06-02 22:30:20.434803
131	17957027	Retrospective study	Gale et al., 2008, Blood	2015-06-02 22:29:16.381711	2015-06-02 22:30:20.837193
132	21537333		Schnittger et al., 2011, Leukemia	2015-06-02 22:29:16.419695	2015-06-02 22:30:21.246143
133	24801015		Port et al., 2014, Ann. Hematol.	2015-06-02 22:29:16.531499	2015-06-02 22:30:21.666281
134	11585760	Retrospective study	Whitman et al., 2001, Cancer Res.	2015-06-02 22:29:16.565418	2015-06-02 22:30:22.166938
135	18230792	In vitro study	Zhang et al., 2008, J. Natl. Cancer Inst.	2015-06-02 22:29:16.599662	2015-06-02 22:30:22.578907
136	17965322	Retrospective study	Bacher et al., 2008, Blood	2015-06-02 22:29:16.703631	2015-06-02 22:30:22.986774
137	17940205	Retrospective study	Whitman et al., 2008, Blood	2015-06-02 22:29:16.721612	2015-06-02 22:30:23.400964
138	22368270	Clinical trial	Man et al., 2012, Blood	2015-06-02 22:29:16.739353	2015-06-02 22:30:23.814891
139	22624710		Barbacid, 2012, Cancer Cell	2015-06-02 22:29:16.792114	2015-06-02 22:30:24.215131
140	20376086	Retrospective study	Ho et al., 2010, Leukemia	2015-06-02 22:29:16.815868	2015-06-02 22:30:24.732378
141	20805365	Retrospective study	Schnittger et al., 2010, Blood	2015-06-02 22:29:16.834032	2015-06-02 22:30:25.240466
142	20368538	Retrospective study	Wagner et al., 2010, J. Clin. Oncol.	2015-06-02 22:29:16.85202	2015-06-02 22:30:25.651406
143	19933982	Retrospective study	Dubbink et al., 2009, Neurology	2015-06-02 22:29:16.870334	2015-06-02 22:30:26.163568
144	20127344	Retrospective study	Bleeker et al., 2010, Acta Neuropathol.	2015-06-02 22:29:16.889356	2015-06-02 22:30:26.643739
145	20494930	Retrospective study	Thol et al., 2010, Haematologica	2015-06-02 22:29:16.908441	2015-06-02 22:30:27.085936
146	20538800	Retrospective study	Abbas et al., 2010, Blood	2015-06-02 22:29:16.927454	2015-06-02 22:30:27.494296
147	22616558		Zhou et al., 2012, Leuk. Lymphoma	2015-06-02 22:29:16.998202	2015-06-02 22:30:27.844032
148	20421455	Retrospective study	Thol et al., 2010, Blood	2015-06-02 22:29:17.016557	2015-06-02 22:30:28.312053
149	21596855		Green et al., 2011, Blood	2015-06-02 22:29:17.034534	2015-06-02 22:30:28.72117
150	21997850		Lin et al., 2012, Ann. Hematol.	2015-06-02 22:29:17.052785	2015-06-02 22:30:29.13213
151	22033490		Patnaik et al., 2012, Leukemia	2015-06-02 22:29:17.072007	2015-06-02 22:30:29.546986
152	16081687	Retrospective study	Levine et al., 2005, Blood	2015-06-02 22:29:17.141975	2015-06-02 22:30:29.952233
153	19287384	Retrospective study	Kilpivaara et al., 2009, Nat. Genet.	2015-06-02 22:29:17.196443	2015-06-02 22:30:30.466439
154	16709929	Clinical trial	Kiladjian et al., 2006, Blood	2015-06-02 22:29:17.215919	2015-06-02 22:30:30.976341
155	18394554	In vitro study	Wernig et al., 2008, Cancer Cell	2015-06-02 22:29:17.251143	2015-06-02 22:30:31.383414
233	23861105		Wu et al., 2013, Am. J. Hematol.	2015-06-02 22:29:20.705618	2015-06-02 22:31:05.789704
156	16384925	Retrospective study	Cairoli et al., 2006, Blood	2015-06-02 22:29:17.271611	2015-06-02 22:30:31.793921
157	10485475	Retrospective study	Taniguchi et al., 1999, Cancer Res.	2015-06-02 22:29:17.302312	2015-06-02 22:30:32.202678
158	12000708	Retrospective study	Corless et al., 2002, Am. J. Pathol.	2015-06-02 22:29:17.332509	2015-06-02 22:30:32.61198
159	16551858	Retrospective study	Wardelmann et al., 2006, Clin. Cancer Res.	2015-06-02 22:29:17.355055	2015-06-02 22:30:33.021565
160	15217946	Retrospective study	Boldrini et al., 2004, Clin. Cancer Res.	2015-06-02 22:29:17.401774	2015-06-02 22:30:33.433616
161	23775962	Clinical trial	Hodi et al., 2013, J. Clin. Oncol.	2015-06-02 22:29:17.424432	2015-06-02 22:30:33.84215
162	18421059	Observational study	Hodi et al., 2008, J. Clin. Oncol.	2015-06-02 22:29:17.560052	2015-06-02 22:30:34.25098
163	19671763	In vitro study	Woodman et al., 2009, Mol. Cancer Ther.	2015-06-02 22:29:17.583186	2015-06-02 22:30:34.664465
164	17372901	In vitro study	Antonescu et al., 2007, Int. J. Cancer	2015-06-02 22:29:17.631997	2015-06-02 22:30:35.275621
165	16954519		Heinrich et al., 2006, J. Clin. Oncol.	2015-06-02 22:29:17.657791	2015-06-02 22:30:35.685091
166	16638875		Prenen et al., 2006, Clin. Cancer Res.	2015-06-02 22:29:17.6802	2015-06-02 22:30:36.195854
167	16618717	Retrospective study	Lièvre et al., 2006, Cancer Res.	2015-06-02 22:29:17.704294	2015-06-02 22:30:36.615844
168	24559322	Clinical trial	Sartore-Bianchi et al., 2014, Expert Rev Anticancer Ther	2015-06-02 22:29:17.723291	2015-06-02 22:30:37.014764
169	15696205	Retrospective study	Pao et al., 2005, PLoS Med.	2015-06-02 22:29:17.743579	2015-06-02 22:30:37.422619
170	24571676	Retrospective study	Andrade et al., 2014, BMC Cancer	2015-06-02 22:29:17.764061	2015-06-02 22:30:37.837442
171	19934290	Retrospective study	Ogino et al., 2009, Clin. Cancer Res.	2015-06-02 22:29:17.784007	2015-06-02 22:30:38.253137
172	18528420	Retrospective study	Chng et al., 2008, Leukemia	2015-06-02 22:29:17.802649	2015-06-02 22:30:38.657244
173	18794081	Retrospective study	Riely et al., 2008, Clin. Cancer Res.	2015-06-02 22:29:17.822635	2015-06-02 22:30:39.06564
174	11208838	Retrospective study	Schiller et al., 2001, J. Clin. Oncol.	2015-06-02 22:29:17.841123	2015-06-02 22:30:39.491539
175	15597105	Metaanalysis	Mascaux et al., 2005, Br. J. Cancer	2015-06-02 22:29:17.86158	2015-06-02 22:30:40.002846
176	18202412	In vitro study	Lièvre et al., 2008, J. Clin. Oncol.	2015-06-02 22:29:17.898131	2015-06-02 22:30:40.542519
177	19794967		Marchetti et al., 2009, Neoplasia	2015-06-02 22:29:17.935511	2015-06-02 22:30:41.011703
178	23014527	Retrospective study	Dogan et al., 2012, Clin. Cancer Res.	2015-06-02 22:29:17.962968	2015-06-02 22:30:41.423543
179	23524406	case report	Rudin et al., 2013, J Thorac Oncol	2015-06-02 22:29:18.028223	2015-06-02 22:30:41.834899
180	19029981	In vivo study	Engelman et al., 2008, Nat. Med.	2015-06-02 22:29:18.049141	2015-06-02 22:30:42.238573
181	20978259	Clinical trial	De Roock et al., 2010, JAMA	2015-06-02 22:29:18.172914	2015-06-02 22:30:42.651948
182	19915144		Emery et al., 2009, Proc. Natl. Acad. Sci. U.S.A.	2015-06-02 22:29:18.271575	2015-06-02 22:30:42.992175
183	19915144	In vitro study	Emery et al., 2009, Proc. Natl. Acad. Sci. U.S.A.	2015-06-02 22:29:18.290945	2015-06-02 22:30:43.381483
184	11070098		Esteller et al., 2000, N. Engl. J. Med.	2015-06-02 22:29:18.352943	2015-06-02 22:30:43.776159
185	15758010	Clinical Trial	Hegi et al., 2005, N. Engl. J. Med.	2015-06-02 22:29:18.4114	2015-06-02 22:30:44.185324
186	20007775		Westhoff et al., 2009, Proc. Natl. Acad. Sci. U.S.A.	2015-06-02 22:29:18.431097	2015-06-02 22:30:44.597218
187	19059939	Retrospective study	Schlenk et al., 2009, Haematologica	2015-06-02 22:29:18.523358	2015-06-02 22:30:45.109894
188	22417203	Retrospective study	Patel et al., 2012, N. Engl. J. Med.	2015-06-02 22:29:18.542304	2015-06-02 22:30:45.5204
189	16455956	Retrospective study	Thiede et al., 2006, Blood	2015-06-02 22:29:18.561666	2015-06-02 22:30:45.933663
190	16076867	Retrospective study	Schnittger et al., 2005, Blood	2015-06-02 22:29:18.580582	2015-06-02 22:30:46.43815
191	19357394		Vardiman et al., 2009, Blood	2015-06-02 22:29:18.599204	2015-06-02 22:30:46.847579
192	24927407		Ehninger et al., 2014, Blood Cancer J	2015-06-02 22:29:18.689446	2015-06-02 22:30:47.2586
193	15659725		Falini et al., 2005, N. Engl. J. Med.	2015-06-02 22:29:18.835867	2015-06-02 22:30:47.668191
194	19047294	Retrospective study	Büchner et al., 2009, J. Clin. Oncol.	2015-06-02 22:29:18.889015	2015-06-02 22:30:48.17981
195	24855211		Linch et al., 2014, Blood	2015-06-02 22:29:18.90762	2015-06-02 22:30:48.588419
196	22430270	Retrospective study	Gaidzik et al., 2012, J. Clin. Oncol.	2015-06-02 22:29:18.92623	2015-06-02 22:30:48.999722
197	20026798	Retrospective study	Becker et al., 2010, J. Clin. Oncol.	2015-06-02 22:29:18.96304	2015-06-02 22:30:49.412851
198	16051734	Retrospective study	Döhner et al., 2005, Blood	2015-06-02 22:29:18.98154	2015-06-02 22:30:49.817325
199	19587375	Retrospective study	Schnittger et al., 2009, Blood	2015-06-02 22:29:19.017345	2015-06-02 22:30:50.226496
200	24859829		Tian et al., 2014, Int. J. Hematol.	2015-06-02 22:29:19.070685	2015-06-02 22:30:50.840738
201	21719597	In vitro study	Balusu et al., 2011, Blood	2015-06-02 22:29:19.10681	2015-06-02 22:30:51.256078
202	24797300		Tassara et al., 2014, Blood	2015-06-02 22:29:19.127961	2015-06-02 22:30:51.660349
203	22180178	Clinical trial	Jakob et al., 2012, Cancer	2015-06-02 22:29:19.265705	2015-06-02 22:30:52.067456
204	15951308	Retrospective study	Bowen et al., 2005, Blood	2015-06-02 22:29:19.284403	2015-06-02 22:30:52.480442
205	24666267	Meta analysis	Therkildsen et al., 2014, Acta Oncol	2015-06-02 22:29:19.303096	2015-06-02 22:30:52.991541
206	16434492	Clinical trial	Bacher et al., 2006, Blood	2015-06-02 22:29:19.374856	2015-06-02 22:30:53.400955
207	18375819	Case report	Banerji et al., 2008, Mol. Cancer Ther.	2015-06-02 22:29:19.393267	2015-06-02 22:30:53.809898
208	23861977	Retrospective study	Tschandl et al., 2013, PLoS ONE	2015-06-02 22:29:19.447332	2015-06-02 22:30:54.225367
209	23569304	Clinical trial	Trunzer et al., 2013, J. Clin. Oncol.	2015-06-02 22:29:19.465419	2015-06-02 22:30:54.629627
210	21576590	Case report	Soon et al., 2011, Arch Dermatol	2015-06-02 22:29:19.483684	2015-06-02 22:30:55.038373
211	22745105		Heinrich et al., 2012, Clin. Cancer Res.	2015-06-02 22:29:19.520099	2015-06-02 22:30:55.44903
212	15928335		Corless et al., 2005, J. Clin. Oncol.	2015-06-02 22:29:19.565704	2015-06-02 22:30:55.85689
213	15146165		Lasota et al., 2004, Lab. Invest.	2015-06-02 22:29:19.608813	2015-06-02 22:30:56.47206
214	21558396		Tanaka et al., 2011, Clin. Cancer Res.	2015-06-02 22:29:19.694045	2015-06-02 22:30:56.882165
215	15647370		Kang et al., 2005, Proc. Natl. Acad. Sci. U.S.A.	2015-06-02 22:29:19.713415	2015-06-02 22:30:57.294054
216	19223544		Sartore-Bianchi et al., 2009, Cancer Res.	2015-06-02 22:29:19.733535	2015-06-02 22:30:57.802835
217	22357840		Liao et al., 2012, Clin. Cancer Res.	2015-06-02 22:29:19.753385	2015-06-02 22:30:58.214243
218	8674046		Yoshida et al., 1996, Cancer Res.	2015-06-02 22:29:20.04375	2015-06-02 22:30:58.624398
219	20085938		Courtney et al., 2010, J. Clin. Oncol.	2015-06-02 22:29:20.082618	2015-06-02 22:30:59.139916
220	22479427		Carico et al., 2012, PLoS ONE	2015-06-02 22:29:20.139709	2015-06-02 22:30:59.735463
221	21422803		Coxon et al., 2012, J. Endocrinol. Invest.	2015-06-02 22:29:20.183995	2015-06-02 22:31:00.165335
222	23056499		Couto et al., 2012, PLoS ONE	2015-06-02 22:29:20.215861	2015-06-02 22:31:00.571039
223	18073307		Elisei et al., 2008, J. Clin. Endocrinol. Metab.	2015-06-02 22:29:20.257945	2015-06-02 22:31:01.07932
224	9839497		Egawa et al., 1998, Jpn. J. Clin. Oncol.	2015-06-02 22:29:20.276878	2015-06-02 22:31:01.496707
225	21995386		Papaemmanuil et al., 2011, N. Engl. J. Med.	2015-06-02 22:29:20.296046	2015-06-02 22:31:02.004794
226	22698404		Jackson et al., 2012, Cancer Cell	2015-06-02 22:29:20.332942	2015-06-02 22:31:02.718471
227	16489069		Olivier et al., 2006, Clin. Cancer Res.	2015-06-02 22:29:20.353036	2015-06-02 22:31:03.13485
228	9569050		Berns et al., 1998, Br. J. Cancer	2015-06-02 22:29:20.389658	2015-06-02 22:31:03.545183
229	22923433		Iyer et al., 2012, Science	2015-06-02 22:29:20.551957	2015-06-02 22:31:04.052451
230	19966866	Mouse model	Liang et al., 2010, Oncogene	2015-06-02 22:29:20.582803	2015-06-02 22:31:04.461647
231	22923433	Retrospective study	Iyer et al., 2012, Science	2015-06-02 22:29:20.604797	2015-06-02 22:31:04.973727
234	18591546	Retrospective study	Virappane et al., 2008, J. Clin. Oncol.	2015-06-02 22:29:20.794464	2015-06-02 22:31:06.305475
235	19221039	Retrospective study	Gaidzik et al., 2009, Blood	2015-06-02 22:29:20.813694	2015-06-02 22:31:06.714076
236	19536888	Retrospective study	Renneville et al., 2009, Cancer	2015-06-02 22:29:20.850724	2015-06-02 22:31:07.125315
237	18559874	Retrospective study	Paschka et al., 2008, J. Clin. Oncol.	2015-06-02 22:29:20.9047	2015-06-02 22:31:07.558305
238	20664172		Di Nicolantonio et al., 2010, J. Clin. Invest.	2015-06-02 22:29:21.135739	2015-06-02 22:31:08.046425
239	21642685		Carvajal et al., 2011, JAMA	2015-06-02 22:29:21.155903	2015-06-02 22:31:08.51435
240	24107445		Zecchin et al., 2013, Mol. Cancer Ther.	2015-06-02 22:29:21.178552	2015-06-02 22:31:08.964453
\.


--
-- Data for Name: variants; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY variants (id, gene_id, name, description, created_at, updated_at, deleted, deleted_at) FROM stdin;
1	4	BCR-ABL	The BCR-ABL fusion protein, commonly referred to as the philadelphia chromosome, is the most well-studied fusion gene in cancer. It has widely been considered the initiating event in chronic myelogenous leukemia (CML), but despite its ability initiate disease in mice, its status an initiating mutation is in dispute. In what is commonly used as the poster-child for targeted therapeutics, the development and use of imatinib in the clinic has led to profound improvements in the prognosis of the disease. However, imatinib resistance is still seen in patients with mutations in the ABL kinase domain of the fusion, most notably the T315I variant. In patients resistant to imatinib, either acquired or otherwise, second generation BCR-ABL TKI's (dasatinib and nilotinib) have seen some success in delivering a tumor response.	2015-06-02 22:29:11.104226	2015-06-02 22:29:11.104226	f	\N
2	4	BCR-ABL T315I	While the efficacy of imatinib has revolutionized chronic myelogenous leukemia (CML) treatment, it is still not a cure-all. Both initial resistance and acquired resistance as a result of seleciton have been seen in a small subset of CML patients. The ABL kinase domain mutation T315I has been shown to be one such mutation that confers resistance to imatinib. Second generation TKI's (dasatinib and nilotinib) specific to BCR-ABL have shown efficacy in treating resistant cases.	2015-06-02 22:29:11.115664	2015-06-02 22:29:11.115664	f	\N
3	4	BCR-ABL E255K	While the efficacy of imatinib has revolutionized chronic myelogenous leukemia (CML) treatment, it is still not a cure-all. Both initial resistance and acquired resistance as a result of seleciton have been seen in a small subset of CML patients. The ABL kinase domain mutation E255K has been shown to be one such mutation that confers resistance to imatinib. Second generation TKI's (dasatinib and nilotinib) specific to BCR-ABL have shown efficacy in treating resistant cases.	2015-06-02 22:29:11.124752	2015-06-02 22:29:11.124752	f	\N
4	2	E17K	AKT1 E17K is a recurrent mutation that has been observed in breast, colorectal, lung, and ovarian cancer. It has been convincingly shown to be an activating mutation resulting in PI3K/AKT/mTOR pathway activity. It has been suggested that this mutation decreases the cell's sensitivity to AKT1 allosteric kinase ihibitors. This, and other AKT1 mutations, are the subject of much research and development for therapeutics.	2015-06-02 22:29:11.134409	2015-06-02 22:29:11.134409	f	\N
5	1	EML4-ALK	The EML4-ALK fusion has been seen in non-small cell lung cancer, and appears to be an alternative mechanism for ALK activation. Cells with this fusion have been shown to be sensitive to the ALK inhibitor crizotinib.	2015-06-02 22:29:11.143837	2015-06-02 22:29:11.143837	f	\N
6	1	EML4-ALK C1156Y	In patients with non-small cell lung cancer exhibiting EML4-ALK fusion, this variant has been shown to confer resistance to crizotinib.	2015-06-02 22:29:11.152849	2015-06-02 22:29:11.152849	f	\N
7	1	EML4-ALK L1196M	In patients with non-small cell lung cancer exhibiting EML4-ALK fusion, this variant has been shown to confer resistance to crizotinib.	2015-06-02 22:29:11.161956	2015-06-02 22:29:11.161956	f	\N
8	1	F1174L	ALK F1174L has been observed as recurrent in neuroblastoma, non-small cell lung cancer (NSCLC), and other cancer types. Neuroblastoma cells containing this mutation have shown resistance to low doses of criztonib. However, increased dosage can overcome this resistance in cell lines studies. TAE684 has also proven effective in both NSCLC and neuroblastoma F1174L containing cells.	2015-06-02 22:29:11.170731	2015-06-02 22:29:11.170731	f	\N
9	1	R1275Q	ALK R1275Q has been observed as a recurrent mutation in  neuroblastoma, non-small cell lung cancer (NSCLC), as well as other cancer types. Neuroblastoma cells with this mutation have shown sensitivity to the ALK-inhibitor TAE684. This, and the geldanamycin deriviative 17-DMAG, has been shown to be effective in NSCLC cell lines.	2015-06-02 22:29:11.179524	2015-06-02 22:29:11.179524	f	\N
10	3	S214C	ARAF S214C has been found to be a recurrent oncogenic mutation in non-small cell lung cancer. It has been shown to confer sensitivity to sorafenib and trametenib in cell lines. In a case study of advanced stage lung adenocarcinoma harboring this mutation, sorafenib also acheived near-complete clinical remission. This case has brought more interest to the variant from a research and clinical perspective.	2015-06-02 22:29:11.188449	2015-06-02 22:29:11.188449	f	\N
11	5	V600D	Patients harboring mutations in valine 600 residue of BRAF have been shown to be sensitive to dabrafenib. For more information on the V600 locus, see the V600E entry.	2015-06-02 22:29:11.197634	2015-06-02 22:29:11.197634	f	\N
12	5	V600E	BRAF V600E has been shown to be recurrent in many cancer types. It is one of the most widely studied variants in cancer. This variant is correlated with poor prognosis in certain cancer types, including colorectal cancer and papillary thyroid cancer. The targeted therapeutic dabrafenib has been shown to be effective in clinical trials with an array of BRAF mutations and cancer types. Dabrafenib has also shown to be effective when combined with the MEK inhibitor trametinib in colorectal cancer and melanoma. However, in patients with TP53, KRAS, and CDK2NA mutations, dabrafenib resistance has been reported. Ipilimumab, regorafenib, vemurafenib, and a number of combination therapies have been successful in treating V600E mutations. While the drugs cetuximab and panitumumab have been largely shown to be ineffective without supplementary treatment.	2015-06-02 22:29:11.206616	2015-06-02 22:29:11.206616	f	\N
13	5	V600E/V600M	A case study of a single patient harboring both a V600E and a V600M mutation, dabrafenib was shown to acheive clinical response.	2015-06-02 22:29:11.216148	2015-06-02 22:29:11.216148	f	\N
14	5	V600E AMPLIFICATION	Amplification of BRAF V600E has been shown to confer resistance to MEK inhibitors. For more information on the V600 locus, see the V600E entry.	2015-06-02 22:29:11.225153	2015-06-02 22:29:11.225153	f	\N
15	5	V600M	Patients harboring mutations in valine 600 residue of BRAF have been shown to be sensitive to dabrafenib. For more information on the V600 locus, see the V600E entry.	2015-06-02 22:29:11.234272	2015-06-02 22:29:11.234272	f	\N
16	5	V600R	Patients harboring mutations in valine 600 residue of BRAF have been shown to be sensitive to dabrafenib. For more information on the V600 locus, see the V600E entry.	2015-06-02 22:29:11.243205	2015-06-02 22:29:11.243205	f	\N
17	5	V600	BRAF mutations of the valine 600 residue have been shown to be recurrent in many cancer types. Of the V600 mutations, V600E is the most widely researched. V600 mutations as a whole have been correlated to poorer prognosis in colorectal and papilarry thyroid cancers. V600 mutations have also been shown to confer sensitivity to the BRAF inhibitor dabrafenib. For a more detailed summary, click the individual mutation pages on the left sidebar.	2015-06-02 22:29:11.252153	2015-06-02 22:29:11.252153	f	\N
18	8	AMPLIFICATION	CCND1 amplification has been implicated in poorer prognosis in non-small cell lung cancer.	2015-06-02 22:29:11.261397	2015-06-02 22:29:11.261397	f	\N
19	8	EXPRESSION	CCND1 expression, and its prognositc impact, is still in dispute. Three experiments in non-small cell lung cancer have shown it to have no impact on survival, but three additional studies have shown it results in poorer prognosis. There is also some ambiguity in how the boundaries between expression and overexpression are defined.	2015-06-02 22:29:11.270292	2015-06-02 22:29:11.270292	f	\N
20	8	OVEREXPRESSION	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, and range from genomic amplification to promoter methylation changes. While Cyclin D2 has only been found to be significantly misregulated in glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been shown to lead to poorer outcomes in a number of studies, and currently there are no FDA-approved targeted therapies.	2015-06-02 22:29:11.279528	2015-06-02 22:29:11.279528	f	\N
21	9	OVEREXPRESSION	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, and range from genomic amplification to promoter methylation changes. While Cyclin D2 has only been found to be significantly misregulated in glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been shown to lead to poorer outcomes in a number of studies, and currently there are no FDA-approved targeted therapies.	2015-06-02 22:29:11.289398	2015-06-02 22:29:11.289398	f	\N
22	9	PROMOTER DEMETHYLATION	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, and range from genomic amplification to promoter methylation changes. While Cyclin D2 has only been found to be significantly misregulated in glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been shown to lead to poorer outcomes in a number of studies, and currently there are no FDA-approved targeted therapies.	2015-06-02 22:29:11.298892	2015-06-02 22:29:11.298892	f	\N
23	10	LOSS	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are deregulated are widely variable, and range from genomic amplification to promoter methylation changes. Cyclin D3 loss has been reported in T-cell acute lymphoblastic leukemia (T-ALL), a seemingly unique trend when compared to the amplifcations and overexpressions of the other cyclin D's. Treating cyclin D3 knockout mice with the targeted therapeutic palbociclib significantly increased the median survival of a Notch-driven model of T-ALL.	2015-06-02 22:29:11.308603	2015-06-02 22:29:11.308603	f	\N
24	11	OVEREXPRESSION	Cyclin E, while currenly not as widely implicated as its counterpart, cyclin D, has been implicated in various carcinomas, including breast, gastric, stomach and colorectal. High levels of cyclin E, either by gene amplification or overexpression, are correlated with later stage disease and have been shown to lead to poorer prognosis in gastic carcinoma. It has also been shown, in lung cancer specifically, that neoplastic cells with higher levels of the cyclin E/CDK2 complex are more radiosensitive than their lowly expressed counterparts.	2015-06-02 22:29:11.319843	2015-06-02 22:29:11.319843	f	\N
25	13	EXPRESSION	CDK4, along with its partner CDK6, are key players in cell cycle progression. The complex has been implicated in a number of cancer types, and is the focus of therapeutic research and development. One targeted therapy for CDK inhibition is palbociclib, which may slow the growth of advanced stage breast cancers. It has also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors to PI3K inhibitors.	2015-06-02 22:29:11.330525	2015-06-02 22:29:11.330525	f	\N
26	12	EXPRESSION	CDK6, along with its partner CDK4, are key players in cell cycle progression. The complex has been implicated in a number of cancer types, and is the focus of therapeutic research and development. One targeted therapy for CDK inhibition is palbociclib, which may slow the growth of advanced stage breast cancers. It has also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors to PI3K inhibitors.	2015-06-02 22:29:11.340813	2015-06-02 22:29:11.340813	f	\N
27	14	PROMOTER HYPERMETHYLATION	CDKN2A loss has been shown to be a significant event in a number of cancer types. One mechanism by which this can occur is by hypermethylation of the CDKN2A promoter region. While no targeted therapeutic has been engaged in clinical trials, the prognostic impact has been studied by a number of meta-analyses. The prognostic impact of promoter hypermethylation has been relatively ambiguous. Many studies have shown significant p-values suggesting poorer prognostic outcomes for patients with hypermethylation in colorectal, liver, and younger lung cancer patients. This being said, there is still research to be done before this becomes a widely-accepted prognostic indicator.	2015-06-02 22:29:11.360791	2015-06-02 22:29:11.360791	f	\N
28	15	N-TERMINAL FRAME SHIFT	CEBPA N-terminal frame shift mutations that result in a premature stop codon are associated with cytogenetically normal acute myeloid leukemia (CN-AML). CEBPA mutations are associated with a favorable prognosis, however, NPM1 and FLT3 mutations should also be assessed in CN-AML patients as concurrent mutations may have prognostic implications.	2015-06-02 22:29:11.370439	2015-06-02 22:29:11.370439	f	\N
29	15	MUTATION	CEBPA mutations are associated with cytogenetically normal acute myeloid leukemia (CN-AML) and a favorable prognosis. However, NPM1 and FLT3 mutations should also be assessed in CN-AML patients as concurrent mutations may have prognostic implications.	2015-06-02 22:29:11.380101	2015-06-02 22:29:11.380101	f	\N
30	33	MEF2D-CSF1R	MEF2D-CSF1R is a fusion that has been observed in acute lymphocytic leukemia. In cell lines harboring this event, treatment with imatinib has shown notable sensitivity.	2015-06-02 22:29:11.389502	2015-06-02 22:29:11.389502	f	\N
31	16	DNAJB1-PRKACA	This fusion has been found to be very recurrent in the rare form of adolescent liver cancer, fibrolamellar hepatocellular carcinoma. In one study, this fusion was observed in 15/15 FL-HCC cases examined and functional studies found that the fusion retained kinase activity. The presence of this fusion may be used as a diagnostic marker for this rare tumor type.	2015-06-02 22:29:11.398833	2015-06-02 22:29:11.398833	f	\N
32	18	R882	DNMT3A R882 mutations are associated with cytogenetically normal acute myeloid leukemia (CN-AML) with R882H as the most common form. Mutations in DNMT3A have largely been associated with poorer prognosis, however this is not consistent across all studies. This may be a result of patient age or combining R882 and non-R882 mutations during analysis as studies have indicated independent mechanisms of action and differential prognostic implications for these mutation types. One study that independently analyzed R882 and non-R882 mutations showed R882 mutations were associated with poorer prognosis than patients with wildtype and non-R882 mutations, but only in older patients with AML.	2015-06-02 22:29:11.40828	2015-06-02 22:29:11.40828	f	\N
33	19	L858R	EGFR L858R has long been recognized as a functionally significant mutation in cancer, and is one of the most prevalent single mutations in lung cancer. Best described in non-small cell lung cancer (NSCLC), the mutation seems to confer sensitivity to first and second generation TKI's like gefitinib and neratinib. NSCLC patients with this mutation treated with TKI's show increased overall and progression-free survival, as compared to chemotherapy alone. Third generation TKI's are currently in clinical trials that specifically focus on mutant forms of EGFR, a few of which have shown efficacy in treating patients that failed to respond to earlier generation TKI therapies.	2015-06-02 22:29:11.417994	2015-06-02 22:29:11.417994	f	\N
34	19	T790M	EGFR T790M was one of the very first mutations recognized to confer resistance to targeted therapies in non-small cell lung cancer. While successful in amplified EGFR, the efficacy of the first and second generation TKI's (erlotinib, gefitinib, neratinib) in treating patients harboring this mutation before treatment is notably lower. This lack of efficacy can likely be to blame for the poorer prognosis for patients with this mutation as compared to patients with wildtype EGFR or other types of EGFR mutations. Approximately half of EGFR mutant tumors with acquired resistance to TKI inhibition have been shown to harbor this mutation, implicating it as a mechanism of acquired therapy resistence. The third generation TKI's are being developed with this resistance problem in mind, and early stage experiments have shown some efficacy of these drugs in previously resistant tumors with mutant EGFR.	2015-06-02 22:29:11.427445	2015-06-02 22:29:11.427445	f	\N
35	20	D769H	ERBB2 D769H was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-06-02 22:29:11.437816	2015-06-02 22:29:11.437816	f	\N
36	20	D769Y	ERBB2 D769Y was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-06-02 22:29:11.447188	2015-06-02 22:29:11.447188	f	\N
37	20	DEL 755-759	ERBB2 in-frame deletion of 755-759 was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-06-02 22:29:11.456504	2015-06-02 22:29:11.456504	f	\N
38	20	G309A	ERBB2 G309A was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-06-02 22:29:11.46577	2015-06-02 22:29:11.46577	f	\N
39	20	L755S	ERBB2 L755S was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was not shown to be an activating mutation, unlike many of the other variants queried. This mutation was also shown to confer resistance to the tyrosine kinase inhibitor lapatinib in MCF10A cell lines.	2015-06-02 22:29:11.474773	2015-06-02 22:29:11.474773	f	\N
40	20	L755W	ERBB2 L755W was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-06-02 22:29:11.483956	2015-06-02 22:29:11.483956	f	\N
41	20	P780INS	ERBB2 P780 insertion was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-06-02 22:29:11.492696	2015-06-02 22:29:11.492696	f	\N
42	20	R678Q	ERBB2 R678Q was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-06-02 22:29:11.501477	2015-06-02 22:29:11.501477	f	\N
43	20	R896C	ERBB2 R896C was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-06-02 22:29:11.510301	2015-06-02 22:29:11.510301	f	\N
44	20	V777L	ERBB2 V777L was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-06-02 22:29:11.519003	2015-06-02 22:29:11.519003	f	\N
111	40	PML-RARA	The PML-RARa fusion is seen as a diagnostic event in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA in APL patients harboring the PML-RARa fusion. Recent interest has been shown in combining ATRA and Arsenic Trioxide for treating these patients, and early results seem promising.	2015-06-02 22:29:12.163308	2015-06-02 22:29:12.163308	f	\N
45	20	V842I	ERBB2 V842I was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-06-02 22:29:11.527803	2015-06-02 22:29:11.527803	f	\N
46	21	L536Q	ESR1 biology has become a central focus in breast cancer therapy. In ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer resistance to hormone therapy. This evidence has led to an increased use of targeted sequencing of the estrogen receptor in breast and ovarian cancer. Y536Q is one of these ligand binding domain mutations, and is commonly implicated in this hormone resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.	2015-06-02 22:29:11.536937	2015-06-02 22:29:11.536937	f	\N
47	21	N538G	ESR1 biology has become a central focus in breast cancer therapy. In ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer resistance to hormone therapy. This evidence has led to an increased use of targeted sequencing of the estrogen receptor in breast and ovarian cancer. N538G is one of these ligand binding domain  , and is commonly implicated in this hormone resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.	2015-06-02 22:29:11.546039	2015-06-02 22:29:11.546039	f	\N
48	21	Y537C	ESR1 biology has become a central focus in breast cancer therapy. In ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer resistance to hormone therapy. This evidence has led to an increased use of targeted sequencing of the estrogen receptor in breast and ovarian cancer. Y537C is one of these ligand binding domain  , and is commonly implicated in this hormone resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.	2015-06-02 22:29:11.55513	2015-06-02 22:29:11.55513	f	\N
49	21	Y537N	ESR1 biology has become a central focus in breast cancer therapy. In ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer resistance to hormone therapy. This evidence has led to an increased use of targeted sequencing of the estrogen receptor in breast and ovarian cancer. Y537N is one of these ligand binding domain  , and is commonly implicated in this hormone resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.	2015-06-02 22:29:11.564135	2015-06-02 22:29:11.564135	f	\N
50	21	Y537S	ESR1 biology has become a central focus in breast cancer therapy. In ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer resistance to hormone therapy. This evidence has led to an increased use of targeted sequencing of the estrogen receptor in breast and ovarian cancer. Y537S is one of these ligand binding domain  , and is commonly implicated in this hormone resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.	2015-06-02 22:29:11.573083	2015-06-02 22:29:11.573083	f	\N
51	22	P235R	A summary for this variant has yet to be developed. Click "Edit Variant" to create one now!	2015-06-02 22:29:11.582321	2015-06-02 22:29:11.582321	f	\N
52	22	FGFR2-MGEA5	In a clinical sequencing program for advanced stage cancers, Wu et al (2013, Cancer Discovery) has idenified a number of FGFR fusions in patients with many different cancer types. These fusions were also found to retain oligomerization capability, and result in enhanced cell proliferation. Cell lines harboring these fusions were shown to respond to pazopanib. Additionally, tumor size reduction was achieved by both ponatinib and pazopanib treatments administered separately in a single patient with intrahepatic cholangiocarcinoma and this fusion. The authors use these cases to highlight the need for enhanced clinical sequencing efforts.	2015-06-02 22:29:11.591136	2015-06-02 22:29:11.591136	f	\N
53	23	FGFR3-BAIAP2L1	In a clinical sequencing program for advanced stage cancers, Wu et al (2013, Cancer Discovery) has identified a number of FGFR fusions in patients with many different cancer types. These fusions were also found to retain oligomerization capability, and result in enhanced cell proliferation. These fusions were shown to respond to pazopanib. The authors use these cases to highlight the need for enhanced clinical sequencing efforts.	2015-06-02 22:29:11.600258	2015-06-02 22:29:11.600258	f	\N
54	23	FGFR3-TACC3	In a clinical sequencing program for advanced stage cancers, Wu et al (2013, Cancer Discovery) has identified a number of FGFR fusions in patients with many different cancer types. These fusions were also found to retain oligomerization capability, and result in enhanced cell proliferation. These fusions were shown to respond to pazopanib. The authors use these cases to highlight the need for enhanced clinical sequencing efforts.	2015-06-02 22:29:11.609347	2015-06-02 22:29:11.609347	f	\N
55	24	ITD MUTATIONS	FLT3-ITD (internal tandem duplications) frequently occur in patients with hematologic malignancies such as chronic myelogenous leukemia, acute myeloid leukemia (AML) and myelodysplastic syndrome, but particularly in cytogenetically normal AML (CN-AML). These duplication events disrupt the juxtamembrane domain of FLT3 and can be the result of a duplication of internal FLT3 sequence or other unrelated sequence resulting in an in-frame duplication event. The length of these duplications can vary widely which may have prognostic consequences, but this has not been conclusively determined. FLT3-ITD mutations overall have generally been associated with poor prognosis. Additional genes associated with CN-AML such as NPM1 may modulate the prognosis associated with this variant.	2015-06-02 22:29:11.618466	2015-06-02 22:29:11.618466	f	\N
56	24	TKD MUTATIONS	FLT3 tyrosine kinase domain mutations (FLT3-TKD) are much less common than FLT3-ITD (internal tandem duplication) mutations and may not confer the same prognostic impact. Although the majority of mutations are point mutations effecting D835 (most frequently D835Y), a small proportion involve an in-frame deletion of I836. These mutations are within the activation loop of the second tyrosine kinase domain of FLT3 and thought to result in constitutive activation of the receptor.	2015-06-02 22:29:11.627668	2015-06-02 22:29:11.627668	f	\N
57	25	EXPRESSION	GATA2 misregulation has been observed in a number of hematologic malignancies, as well as non-small cell lung cancer. Treatment of over-active GATA2 pathways using the proteasome inhibitor bortezomib has shown dramatic tumor regression in lung cancer.	2015-06-02 22:29:11.636824	2015-06-02 22:29:11.636824	f	\N
58	26	R132	IDH1 R132 mutations have been observed in a number of cancer types, and appear to behave quite differently in different environments. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown to be associated with worse outcome and shorter overall survival. They have also been linked to cytogenetically normal AML, an intermediate risk subtype of the disease. However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown better overall survival than patients with wild-type IDH1. Also in contrast to AML, in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic abnormalities, 1p and 19q deletions.	2015-06-02 22:29:11.645859	2015-06-02 22:29:11.645859	f	\N
59	26	R132C	IDH1 R132 mutations have been observed in a number of cancer types, and appear to behave quite differently in different environments. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown to be associated with worse outcome and shorter overall survival. They have also been linked to cytogenetically normal AML, an intermediate risk subtype of the disease. However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown better overall survival than patients with wild-type IDH1. Also in contrast to AML, in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic abnormalities, 1p and 19q deletions.	2015-06-02 22:29:11.655155	2015-06-02 22:29:11.655155	f	\N
60	26	R132H	IDH1 R132 mutations have been observed in a number of cancer types, and appear to behave quite differently in different environments. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown to be associated with worse outcome and shorter overall survival. They have also been linked to cytogenetically normal AML, an intermediate risk subtype of the disease. However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown better overall survival than patients with wild-type IDH1. Also in contrast to AML, in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic abnormalities, 1p and 19q deletions.	2015-06-02 22:29:11.664444	2015-06-02 22:29:11.664444	f	\N
61	26	R132L	IDH1 R132 mutations have been observed in a number of cancer types, and appear to behave quite differently in different environments. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown to be associated with worse outcome and shorter overall survival. They have also been linked to cytogenetically normal AML, an intermediate risk subtype of the disease. However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown better overall survival than patients with wild-type IDH1. Also in contrast to AML, in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic abnormalities, 1p and 19q deletions.	2015-06-02 22:29:11.673705	2015-06-02 22:29:11.673705	f	\N
62	27	R140Q/L	IDH2 mutations have been observed in a number of hematologic malignancies. In acute myeloid leukemia, the R140Q/L mutants have shown improved overall survival as compared to their wild-type counterparts. In myelodysplastic syndromes, however, no prognostic link was discovered between IDH2 mutation status and overall survival.	2015-06-02 22:29:11.683244	2015-06-02 22:29:11.683244	f	\N
63	27	R172K	IDH2 mutations have been observed in a number of hematologic malignancies. In acute myeloid leukemia, the R172K mutation has been linked with poorer prognosis and worse overall survival than IDH2 wild-type patients. However, in myelodisplastic syndromes, studies did not find a prognostic association between this variant and patient outcomes.	2015-06-02 22:29:11.692345	2015-06-02 22:29:11.692345	f	\N
64	28	V617F	JAK2 V617F is a highly recurrent mutation in myeloproliferative diseases, occuring in around half of all MPD's. While less associated with cancer, when it is seen, it is more likely to be in myeloid leukemias than lymphoid leukemias. The V617F mutation is an activating mutation, resulting in increased kinase activity. The mutation seems to be restricted to hematologic malignancies. Treatment of JAK mutant diseases with ruxolitinib has seen some clinical success.	2015-06-02 22:29:11.711139	2015-06-02 22:29:11.711139	f	\N
65	29	D816V	KIT D816V is a mutation observed in acute myeloid leukemia (AML). This variant has been linked to poorer prognosis and worse outcome in AML patients.	2015-06-02 22:29:11.72214	2015-06-02 22:29:11.72214	f	\N
66	29	EXON 11 MUTATIONS	c-KIT mutations in exon 11 lie within the juxtamembrane domain, and are very recurrent in gastrointestinal stromal tumors, often bearing a poorer prognosis than other KIT mutations. Cells harboring exon 11 mutations have shown sensitivity to the tyrosine kinase inhibitor imatinib, offering a better prognosis to patients treated with the drug in the first year.	2015-06-02 22:29:11.731116	2015-06-02 22:29:11.731116	f	\N
67	29	INTERNAL DUPLICATION	c-KIT internal duplications have been observed in exon 11, within the juxtamembrane domain. In a case study of an anal melanoma patient harboring this event, imatinib confered marked response. Also, cells harboring exon 11 mutations have shown sensitivity to the tyrosine kinase inhibitor imatinib, offering a better prognosis to patients treated with the drug in the first year.	2015-06-02 22:29:11.740267	2015-06-02 22:29:11.740267	f	\N
68	29	EXON 13 MUTATIONS	c-KIT exon 13 mutations are relatively rare compared to other c-KIT mutations. These mutations lie within the tyrosine kinase 1 domain, and are found primarily in melanoma and gastrointestinal stromal tumors. Cell lines harboring these mutations show sensitivity to imatinib and sunitinib treatment. However, only imatinib has seen use in clinical settings to date, with sunitinib entering trials in imatinib-resistant cases.	2015-06-02 22:29:11.749326	2015-06-02 22:29:11.749326	f	\N
69	29	EXON 14 MUTATIONS	c-KIT exon 14 mutations lie within the tyrosine kinase domain of the protein. While relatively rare in primary gastrointestinal tumors, they are notably more prevalent in refractory disease, suggesting a role in imatinib resistance. Unlike mutations in other KIT exons, exon 14 mutations seem relatively rare in melanoma.	2015-06-02 22:29:11.758469	2015-06-02 22:29:11.758469	f	\N
70	29	EXON 17 MUTATIONS	c-KIT exon 17 mutations lie within the TK2 domain, containing the activation loop of the protein. In cell lines, mutations within this domain have been shown to be sensitive to imatinib. However, in double KIT mutants in which the exon 17 mutation is a secondary mutation, cell lines have shown resistance to both imatinib and sunitinib.	2015-06-02 22:29:11.767546	2015-06-02 22:29:11.767546	f	\N
71	29	EXON 9 MUTATIONS	c-KIT exon 9 mutations lie within the dimerization motif of the protein. Relative to other KIT mutations, exon 9 mutations have been associated with better overall survival. In exon 9 mutants, imatinib has shown efficacy both in vitro and in vivo.	2015-06-02 22:29:11.776239	2015-06-02 22:29:11.776239	f	\N
72	29	L576P	KIT L576P is an exon 11 mutation that lies within the juxtamembrane domain. It is one of the most recurrent KIT mutations in melanoma, and both in vitro and in vivo studies have shown sensitivity to imatinib.	2015-06-02 22:29:11.785002	2015-06-02 22:29:11.785002	f	\N
73	29	V654A	KIT V654A is an exon 13 mutation that lies within the tyrosine kinase 1 domain of the protein. It has been shown to be an activating mutation by in vitro studies. This mutation is associated with imatinib resistance in melanoma patients. However, second generation TKI's such as sunitinib and midostaurin (PKC 412) have seen success in acheiving tumor response.	2015-06-02 22:29:11.793851	2015-06-02 22:29:11.793851	f	\N
74	30	EXON 1 MUTATIONS	A study by Lièvre et al in 2006 showed that colorectal cancer patients with KRAS exon 1 mutations had low cetuximab response rates.	2015-06-02 22:29:11.803224	2015-06-02 22:29:11.803224	f	\N
75	30	EXON 2 MUTATIONS	In a study by Pao et al in 2005, non-small cell lung cancer patients harboring KRAS exon 2 mutations were associated with resistance to the EGFR inhibitors gefinitib and erlotinib.	2015-06-02 22:29:11.81405	2015-06-02 22:29:11.81405	f	\N
112	42	C634W	RET C639W has been implicated as an alternate mechanism of activating RET in medullary thyroid cancer. While there currently are no RET-specific inhibiting agents, promiscuous kinase inhibitors have seen some success in treating RET overactivity. Data suggests however, that the C639W mutation may lead to drug resistance, especially against the VEGFR-inhibitor motesanib.	2015-06-02 22:29:12.173305	2015-06-02 22:29:12.173305	f	\N
76	30	G12	While the KRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation, along with the mutations affecting the neighboring G13 position, may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-06-02 22:29:11.823909	2015-06-02 22:29:11.823909	f	\N
77	30	G12/G13	While the KRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-06-02 22:29:11.834151	2015-06-02 22:29:11.834151	f	\N
78	30	G12C	While the KRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation, along with the mutations affecting the neighboring G13 position, may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-06-02 22:29:11.844205	2015-06-02 22:29:11.844205	f	\N
79	30	G12D	While the KRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation, along with the mutations affecting the neighboring G13 position, may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-06-02 22:29:11.854019	2015-06-02 22:29:11.854019	f	\N
80	30	G13	While the KRAS G13 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation, along with the mutations affecting the neighboring G12 position, may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-06-02 22:29:11.86344	2015-06-02 22:29:11.86344	f	\N
81	30	G13D	While the KRAS G13 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation, along with the mutations affecting the neighboring G12 position, may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-06-02 22:29:11.873933	2015-06-02 22:29:11.873933	f	\N
82	31	P124S	MAP2K1 P124S is a recurrent mutation in melanoma, and is seen in bladder and colon cancer to a lesser degree. The P124S mutation has been shown to contribute to AZD6244 resistance in melanoma cell lines, but considerably less so than its Q56P counterpart.	2015-06-02 22:29:11.883543	2015-06-02 22:29:11.883543	f	\N
83	31	Q56P	MAP2K1 Q56P is a recurrent mutation in melanoma and gastric cancer. This mutation has been shown to confer considerable resistance to AZD6244 treatment of melanoma cell lines.	2015-06-02 22:29:11.892659	2015-06-02 22:29:11.892659	f	\N
84	32	MEF2D-CSF1R	MEF2D-CSF1R is a fusion that has been observed in acute lymphocytic leukemia. In cell lines harboring this event, treatment with imatinib has shown notable sensitivity.	2015-06-02 22:29:11.901586	2015-06-02 22:29:11.901586	f	\N
85	34	PROMOTER METHYLATION	MGMT promoter methylation has been observed to impact tumor progression in glioblastoma multiforme. In patients exhibiting promoter methylation, the akylating agent carmustine has shown efficacy. In patients lacking methylation, combining carmustine with the MGMT inhibitor O(6)-benzylguanine may be effective, but more experiments are required. Clinical trials have also shown selective sensitivity of promoter methylation-positive patients to temozolomide, making a case for wider methylation screening in GBM patients.	2015-06-02 22:29:11.910787	2015-06-02 22:29:11.910787	f	\N
86	35	EXON 12 MUTATIONS	NPM1 exon 12 mutations are frequently identified in patients with cytogenetically normal acute myeloid leukemia (AML) and often co-occur with FLT3-ITD. FLT3 status should also be evaluated as co-occurence with FLT3-ITD may impact prognosis. Exon 12 mutations have been identified as a predictor of good prognostic outcomes in the absence of FLT3-ITD. Due to their high frequency, NPM1 mutations have been retrospectively analyzed in the context of a number of therapies including variable results following ATRA treatment as well as improved response to high-dose daunorubicin or valproic acid. Additionally, multiple groups have shown increased surface expression of CD33 associated with NPM1 mutation, suggesting these patients may respond to anti-CD33 therapy. Cytoplasmic sequestration of NPM1 (NPM1c) is associated with a good response to induction therapy.	2015-06-02 22:29:11.920338	2015-06-02 22:29:11.920338	f	\N
87	35	W288FS	NPM1 W288fs (aka NPM1-A) is located in exon 12 of NPM1 and is the most common NPM1 mutation identified in acute myeloid leukemia. This mutation results in cytoplasmic localization of NPM1 (NPM1c) which is associated with a good response to induction therapy. Although it is the most extensively studied NPM1 exon 12 mutation, it is generally grouped with other exon 12 mutations for patient analysis (see NPM1 Exon 12 variants for more information).	2015-06-02 22:29:11.929467	2015-06-02 22:29:11.929467	f	\N
88	36	EXON 1 MUTATIONS	NRAS exon 1 mutations were studied by Jakob et al in 2012 and were shown to be correlated with poorer overall survival relative to wild-type NRAS in melanoma patients.	2015-06-02 22:29:11.93884	2015-06-02 22:29:11.93884	f	\N
89	36	EXON 2 MUTATIONS	NRAS exon 2 mutations have been shown to be correlated with poorer overall survival in melanoma patients and colorectal cancer patients, however no prognostic impact was seen in acute myeloid leukemia patients.	2015-06-02 22:29:11.947664	2015-06-02 22:29:11.947664	f	\N
90	36	EXON 3 MUTATIONS	In a multi-gene prognostic survey, Therkildsen et al 2014 found NRAS exon 3 and 4 mutations were correlated with poorer overall survival.	2015-06-02 22:29:11.956471	2015-06-02 22:29:11.956471	f	\N
91	36	EXON 4 MUTATIONS	In a multi-gene prognostic survey, Therkildsen et al 2014 found NRAS exon 3 and 4 mutations were correlated with poorer overall survival.	2015-06-02 22:29:11.965246	2015-06-02 22:29:11.965246	f	\N
92	36	G12	While the NRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated.	2015-06-02 22:29:11.974207	2015-06-02 22:29:11.974207	f	\N
93	36	G13D	While the NRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated.	2015-06-02 22:29:11.982914	2015-06-02 22:29:11.982914	f	\N
94	36	Q61	NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal stromal tumors, melanoma, and others. Two melanoma patients, each harboring mutations at this locus (Q61L and Q61R), responded to treatment with the akylating agent temozolomide. However, in colorectal cancer patients, mutations at this locus have been shown to confer resistance to cetuximab. The prognostic impact of mutations at this locus is currently under study.	2015-06-02 22:29:11.991632	2015-06-02 22:29:11.991632	f	\N
95	36	Q61L	NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal stromal tumors, melanoma, and others. A melanoma patient harboring a mutation at this locus responded to treatment with the akylating agent temozolomide. However, in colorectal cancer patients, mutations at this locus have been shown to confer resistance to cetuximab. The prognostic impact of mutations at this locus is currently under study.	2015-06-02 22:29:12.000406	2015-06-02 22:29:12.000406	f	\N
96	36	Q61R	NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal stromal tumors, melanoma, and others. A melanoma patient harboring a mutation at this locus responded to treatment with the akylating agent temozolomide. However, in colorectal cancer patients, mutations at this locus have been shown to confer resistance to cetuximab. The prognostic impact of mutations at this locus is currently under study.	2015-06-02 22:29:12.009326	2015-06-02 22:29:12.009326	f	\N
97	38	V536E	A summary for this variant has yet to be developed. Click "Edit Variant" to create one now!	2015-06-02 22:29:12.018454	2015-06-02 22:29:12.018454	f	\N
98	38	D842I	PDGFRA D842 mutations are characterized broadly as imatinib resistance mutations. This is most well characterized in gastrointestinal stromal tumors, but other cell lines containing these mutations have been shown to be resistant as well. In imatinib resistant cell lines, a number of other therapeutics have demonstrated efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).	2015-06-02 22:29:12.027481	2015-06-02 22:29:12.027481	f	\N
99	38	D842V	PDGFRA D842 mutations are characterized broadly as imatinib resistance mutations. This is most well characterized in gastrointestinal stromal tumors, but other cell lines containing these mutations have been shown to be resistant as well. In imatinib resistant cell lines, a number of other therapeutics have demonstrated efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).	2015-06-02 22:29:12.036617	2015-06-02 22:29:12.036617	f	\N
100	38	D842Y	PDGFRA D842 mutations are characterized broadly as imatinib resistance mutations. This is most well characterized in gastrointestinal stromal tumors, but other cell lines containing these mutations have been shown to be resistant as well. In imatinib resistant cell lines, a number of other therapeutics have demonstrated efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).	2015-06-02 22:29:12.045774	2015-06-02 22:29:12.045774	f	\N
101	38	DEL I843	PDGFRA D842 mutations are characterized broadly as imatinib resistance mutations. This is most well characterized in gastrointestinal stromal tumors, but other cell lines containing these mutations have been shown to be resistant as well. In imatinib resistant cell lines, a number of other therapeutics have demonstrated efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).	2015-06-02 22:29:12.0663	2015-06-02 22:29:12.0663	f	\N
102	38	DI842-843IM	PDGFRA D842 mutations are characterized broadly as imatinib resistance mutations. This is most well characterized in gastrointestinal stromal tumors, but other cell lines containing these mutations have been shown to be resistant as well. In imatinib resistant cell lines, a number of other therapeutics have demonstrated efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).	2015-06-02 22:29:12.075492	2015-06-02 22:29:12.075492	f	\N
103	37	E542K	PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in breast cancer, and are highly recurrent mutations in many other cancer types. E545K, and possibly the other mutations in the E545 region, may present patients with a poorer prognosis than patients with either patients with other PIK3CA variant or wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies for variants in PIK3CA are still in early clinical trial phases.	2015-06-02 22:29:12.085318	2015-06-02 22:29:12.085318	f	\N
104	37	E545K	PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in breast cancer, and are highly recurrent mutations in many other cancer types. E545K, and possibly the other mutations in the E545 region, may present patients with a poorer prognosis than patients with either patients with other PIK3CA variant or wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies for variants in PIK3CA are still in early clinical trial phases.	2015-06-02 22:29:12.094681	2015-06-02 22:29:12.094681	f	\N
105	37	EXON 20 MUTATIONS	PIK3CA H1047R is one of the most recurrent mutations in cancer, especially breast cancer. Of PIK3CA mutant breast cancers, over half harbor this mutation. Meta-analyses have shown that patients harboring this mutation may have worse overall survival, but other studies have shown no difference between H1047R and other PIK3CA mutants from a prognostic standpoint. While very prevalent, targeted therapies for this particular mutation are still in early clinical trial phases.	2015-06-02 22:29:12.103942	2015-06-02 22:29:12.103942	f	\N
106	37	EXON 9 MUTATIONS	PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in breast cancer, and are highly recurrent mutations in many other cancer types. E545K, and possibly the other mutations in the E545 region, may present patients with a poorer prognosis than patients with either patients with other PIK3CA variant or wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies for variants in PIK3CA are still in early clinical trial phases.	2015-06-02 22:29:12.11308	2015-06-02 22:29:12.11308	f	\N
107	37	H1047R	PIK3CA H1047R is one of the most recurrent mutations in cancer, especially breast cancer. Of PIK3CA mutant breast cancers, over half harbor this mutation. Meta-analyses have shown that patients harboring this mutation may have worse overall survival, but other studies have shown no difference between H1047R and other PIK3CA mutants from a prognostic standpoint. While very prevalent, targeted therapies for this particular mutation are still in early clinical trial phases.	2015-06-02 22:29:12.122016	2015-06-02 22:29:12.122016	f	\N
108	39	PML-RARA	The PML-RARa fusion is seen as a diagnostic event in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA in APL patients harboring the PML-RARa fusion. Recent interest has been shown in combining ATRA and arsenic trioxide for treating these patients, and early results seem promising.	2015-06-02 22:29:12.131846	2015-06-02 22:29:12.131846	f	\N
109	17	DNAJB1-PRKACA	This fusion has been found to be very recurrent in a rare form of adolescent liver cancer, hepatocellular fibrolamellar carcinoma. In a 2014 study, authors found Honeyman et al observed this fusion in all 15 of the FL-HCC cases they examined, and functional studies found that the fusion retained kinase activity. The presence of this fusion may be used as a diagnostic marker for this rare tumor type.	2015-06-02 22:29:12.141939	2015-06-02 22:29:12.141939	f	\N
110	41	R233*	PTEN R233* has been shown to be a loss of function mutation, and PTEN loss has been the subject of considerable research in breast cancer. PTEN loss may sensitize cells to PI3K-mTOR inhibition. While still being debated, there is data to support that PTEN loss is both associated with poorer prognosis, and no change in prognosis.	2015-06-02 22:29:12.153182	2015-06-02 22:29:12.153182	f	\N
113	42	M918T	RET M819T is the most common somatically acquired mutation in medullary thyroid cancer (MTC). While there currently are no RET-specific inhibiting agents, promiscuous kinase inhibitors have seen some success in treating RET overactivity. Data suggests however, that the M918T mutation may lead to drug resistance, especially against the VEGFR-inhibitor motesanib. It has also been suggested that RET M819T leads to more aggressive MTC with a poorer prognosis.	2015-06-02 22:29:12.183139	2015-06-02 22:29:12.183139	f	\N
114	44	K666N	SF3B1 K666N is a variant found in myelodysplastic syndromes, chronic leukemias, and more recently, breast cancer. This somatic mutation has been linked to better overall outcome and event-free survival in MDS patients.	2015-06-02 22:29:12.192965	2015-06-02 22:29:12.192965	f	\N
115	44	K700E	SF3B1 K700E is a variant found in myelodysplastic syndromes, chronic leukemias, and more recently, breast cancer. This somatic mutation has been linked to better overall outcome and event-free survival in MDS patients. Additionally, these mutations are the most common SF3B1 mutation observed in MDS and highly associated with subtypes of MDS that are defined by ringed sideroblasts.	2015-06-02 22:29:12.20256	2015-06-02 22:29:12.20256	f	\N
116	45	R175H	While loss-of-function events in TP53 are very common in cancer, the R175H variant seems not only to result in loss of tumor-suppression, but also acts as a gain-of-function mutation that promotes tumorigenesis in mouse models. Cell lines harboring this mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been shown that the R175H mutation is correlated with worse overall survival than wild-type TP53, but is not as detrimental as the R248W variant.	2015-06-02 22:29:12.212491	2015-06-02 22:29:12.212491	f	\N
117	45	R248Q	While loss-of-function events in TP53 are very common in cancer, the R248 variants seem not only to result in loss of tumor-suppression, but also act as a gain-of-function mutation that can promote tumorigenesis in mouse models. This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, R248 mutations have been shown to confer worse overall survival. The R248Q mutation has also shown an increased invasive behavior in cell lines. This is specific to the 248Q variant.	2015-06-02 22:29:12.221618	2015-06-02 22:29:12.221618	f	\N
118	45	R248W	While loss-of-function events in TP53 are very common in cancer, the R248 variants seem not only to result in loss of tumor-suppression, but also act as a gain-of-function mutation that can promote tumorigenesis in mouse models. This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, R248 mutations have been shown to confer worse overall survival.	2015-06-02 22:29:12.231373	2015-06-02 22:29:12.231373	f	\N
119	45	R249T	This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been suggested that the R249 mutants have been correlated with worse overall survival in breast cancer patients when compared to wild-type.	2015-06-02 22:29:12.241782	2015-06-02 22:29:12.241782	f	\N
120	45	R249W	This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been suggested that the R249 mutants have been correlated with worse overall survival in breast cancer patients when compared to wild-type.	2015-06-02 22:29:12.251871	2015-06-02 22:29:12.251871	f	\N
121	45	R273C	While loss-of-function events in TP53 are very common in cancer, the R273 variants seem not only to result in loss of tumor-suppression, but also act as a gain-of-function mutation that can promote tumorigenesis in mouse models. This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been suggested that the R273 mutants have been correlated with worse overall survival in breast cancer patients when compared to wild-type.	2015-06-02 22:29:12.26156	2015-06-02 22:29:12.26156	f	\N
122	45	R273H	While loss-of-function events in TP53 are very common in cancer, the R273 variants seem not only to result in loss of tumor-suppression, but also act as a gain-of-function mutation that can promote tumorigenesis in mouse models. This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been suggested that the R273 mutants have been correlated with worse overall survival in breast cancer patients when compared to wild-type.	2015-06-02 22:29:12.27122	2015-06-02 22:29:12.27122	f	\N
123	45	V173G/A	While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been suggested that the R249 mutants have been correlated with worse overall survival in breast cancer patients when compared to wild-type.	2015-06-02 22:29:12.28077	2015-06-02 22:29:12.28077	f	\N
124	46	FRAMESHIFT TRUNCATION	In a small cohort study of bladder cancer, patients with TSC1 mutations showed better responses to and increased treatment duration tolerance with the mTOR inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2 wildtype cells.	2015-06-02 22:29:12.290469	2015-06-02 22:29:12.290469	f	\N
125	46	LOSS-OF-FUNCTION	In a small cohort study of bladder cancer, patients with TSC1 mutations showed better responses to and increased treatment duration tolerance with the mTOR inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2 wildtype cells.	2015-06-02 22:29:12.300202	2015-06-02 22:29:12.300202	f	\N
126	47	LOSS-OF-FUNCTION	In a small cohort study of bladder cancer, patients with TSC1 mutations showed better responses to and increased treatment duration tolerance with the mTOR inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2 wildtype cells.	2015-06-02 22:29:12.3101	2015-06-02 22:29:12.3101	f	\N
127	48	Q157P/R	U2AF1 Q157P/R has been shown to be a recurrent mutation in acute myeloid leukemia (AML), myelodysplastic syndromes (MDS) and lung adenocarcinomas. This mutation is less common than the S34F mutation, occurs in the second zinc finger domain of U2AF1 and has been demonstrated to alter splicing. The impact of U2AF1 mutations on overall survival in MDS has been debated, however, patients with U2AF1 mutations were shown to be at an increased risk of transformation to secondary AML. The presence of this mutation was not associated with a specific prognostic outcome in AML when compared to U2AF1 wildtype patients.	2015-06-02 22:29:12.32	2015-06-02 22:29:12.32	f	\N
128	48	S34Y/F	U2AF1 S34Y/F has been shown to be a recurrent mutation in acute myeloid leukemia (AML), myelodysplastic syndromes (MDS) and lung adenocarcinomas. This mutation is the most commonly identified variant in MDS, occurs in the first zinc finger domain of U2AF1 and has been demonstrated to alter splicing. The impact of U2AF1 mutations on overall survival in MDS has been debated, however, patients with U2AF1 mutations were shown to be at an increased risk of transformation to secondary AML. The presence of this mutation was not associated with a specific prognostic outcome in AML when compared to U2AF1 wildtype patients.	2015-06-02 22:29:12.329849	2015-06-02 22:29:12.329849	f	\N
129	49	EXON 7 MUTATIONS	WT1 exon 7 mutations have been shown to be recurrent in acute myeloid leukemia. Many sources have examined the prognostic impact of these, agreeing that the mutant exon 7 cohort is correlated with worse overall survival and a number of poor prognistic outcomes. This may be the result of an overall poor response to chemotherapy from WT1 mutant tumors.	2015-06-02 22:29:12.339886	2015-06-02 22:29:12.339886	f	\N
130	49	EXON 9 MUTATIONS	WT1 exon 9 mutations have been shown to be recurrent in acute myeloid leukemia, although at a less frequent rate than their exon 7 counterparts. Many sources have examined the prognostic impact of these, agreeing that the mutant exon 9 cohort is correlated with worse overall survival and a number of poor prognistic outcomes. This may be the result of an overall poor response to chemotherapy from WT1 mutant tumors.	2015-06-02 22:29:12.349546	2015-06-02 22:29:12.349546	f	\N
131	6	LOSS-OF-FUNCTION	BRCA1 loss of function mutations have been shown to increase risk of breast and ovarian cancer in those carrying the allele in their germline. Treating BRCA mutant patients with PARP inhibitors such as Olaparib has led to significant response.	2015-06-02 22:29:12.359451	2015-06-02 22:29:12.359451	f	\N
132	7	LOSS-OF-FUNCTION	BRCA2 loss of function mutations have been shown to increase risk of breast and ovarian cancer in those carrying the allele in their germline. Treating BRCA mutant patients with PARP inhibitors such as Olaparib has led to significant response.	2015-06-02 22:29:12.369477	2015-06-02 22:29:12.369477	f	\N
133	19	EXON 19 DELETION	Deletions within exon 19 of EGFR are most common in lung cancer. These deletions, in non-small cell lung cancer, have been shown to be sensitive to the EGFR tyrosine kinase inhibitors gefitinib and erlotinib. There is also data to suggest that this event is a good prognostic marker in lung adenocarcinoma.	2015-06-02 22:29:12.379135	2015-06-02 22:29:12.379135	f	\N
134	19	G719S	While not as recurrent as the L858R mutation, EGFR G719S has also been shown to be an activating mutation. In lung cancer cell lines, it also confers sensitivity to the tyrosine kinase inhibitors gefitinib and erlotinib.	2015-06-02 22:29:12.389054	2015-06-02 22:29:12.389054	f	\N
135	51	D1643H	Activating mutations in NOTCH1, including D1643H, have been shown to be poor prognostic markers in lung cancer.	2015-06-02 22:29:12.398567	2015-06-02 22:29:12.398567	f	\N
136	51	R2328W	Activating mutations in NOTCH1, including R2328W, have been shown to be poor prognostic markers in lung cancer.	2015-06-02 22:29:12.407987	2015-06-02 22:29:12.407987	f	\N
137	51	V2444FS	Activating mutations in NOTCH1, including a frameshift insertion at V2444, have been shown to be poor prognostic markers in lung cancer.	2015-06-02 22:29:12.429015	2015-06-02 22:29:12.429015	f	\N
138	51	S2275FS	Activating mutations in NOTCH1, including a frameshift insertion at S2275, have been shown to be poor prognostic markers in lung cancer.	2015-06-02 22:29:12.43835	2015-06-02 22:29:12.43835	f	\N
139	52	L63V	Activating mutations in DDR2, including L63V, has been shown to be sensitive to dasatinib in cell lines.	2015-06-02 22:29:12.447625	2015-06-02 22:29:12.447625	f	\N
140	52	L239R	Activating mutations in DDR2, including L239R, has been shown to be sensitive to dasatinib in cell lines.	2015-06-02 22:29:12.456797	2015-06-02 22:29:12.456797	f	\N
141	52	G253C	Activating mutations in DDR2, including G253C, has been shown to be sensitive to dasatinib in cell lines.	2015-06-02 22:29:12.465753	2015-06-02 22:29:12.465753	f	\N
142	52	G505S	Activating mutations in DDR2, including G505S, has been shown to be sensitive to dasatinib in cell lines.	2015-06-02 22:29:12.476053	2015-06-02 22:29:12.476053	f	\N
143	52	I638F	DDR2 I638F has been shown to be a loss of function mutation, but also confers sensitivity to dasatinib in cell lines.	2015-06-02 22:29:12.486197	2015-06-02 22:29:12.486197	f	\N
144	52	G774V	Activating mutations in DDR2, including G774V, has been shown to be sensitive to dasatinib in cell lines.	2015-06-02 22:29:12.496036	2015-06-02 22:29:12.496036	f	\N
145	52	S768R	Activating mutations in DDR2, including S768R, has been shown to be sensitive to dasatinib in cell lines.	2015-06-02 22:29:12.505848	2015-06-02 22:29:12.505848	f	\N
146	53	AMPLIFICATION	MET amplification, like EGFR T790M, has been shown to be capable of driving acquired resistance to dacomitinib in patients with lung adenocarcinoma.	2015-06-02 22:29:12.51567	2015-06-02 22:29:12.51567	f	\N
147	30	G12V	KRAS G12V, like EGFR T790M, has been shown to be capable of driving acquired resistance to tyrosine kinase inhibitors in lung adenocarcinoma.	2015-06-02 22:29:12.524868	2015-06-02 22:29:12.524868	f	\N
148	30	G12A	KRAS G12A, like EGFR T790M, has been shown to be capable of driving acquired resistance to tyrosine kinase inhibitors in lung adenocarcinoma.	2015-06-02 22:29:12.534308	2015-06-02 22:29:12.534308	f	\N
\.


--
-- Data for Name: evidence_items; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY evidence_items (id, description, disease_id, source_id, variant_id, created_at, updated_at, rating, status, remote_errors, remote_ids, variant_hgvs, drug_interaction_description, evidence_level, evidence_type, variant_origin, evidence_direction, clinical_significance, deleted, deleted_at) FROM stdin;
1	Data from deep sequencing of a Ph-negative clone of a Ph-positive CML patient has found a driving mutation in DNMT3A that preceeded the BCR-ABL fusion, and may imply the possibility that BCR-ABL is not universally the initiating event in CML.	1	51	1	2015-06-02 22:29:12.60862	2015-06-02 22:29:12.60862	2	accepted	\N	\N	N/A	\N	2	0	0	1	4	f	\N
2	The presence of BCR-ABL fusion is considered the characterizing feature of chronic myeloid leukemia, and has been widely thought of as the initiating event in the disease.	1	52	1	2015-06-02 22:29:12.64262	2015-06-02 22:29:12.64262	4	accepted	\N	\N	N/A	\N	0	0	0	0	4	f	\N
3	The use of second-generation BCR-ABL targeted therapies has been effective in patients resistant to imatinib.	1	52	1	2015-06-02 22:29:12.664012	2015-06-02 22:29:12.664012	4	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
4	COS7 cell lines transfected with BCR/ABL constructs harboring E255K mutations were shown to be resistant to imatinib and exhibited increased kinase activity.	1	53	3	2015-06-02 22:29:12.692368	2015-06-02 22:29:12.692368	4	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
5	COS7 cell lines transfected with BCR/ABL constructs harboring T315I mutations were shown to be resistant to imatinib and exhibited increased kinase activity.	1	53	2	2015-06-02 22:29:12.749831	2015-06-02 22:29:12.749831	4	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
6	In chronic myeloid leukemia patients with the ABL T315I mutation, tumors have shown to be resistant to imatinib treatment.	1	52	2	2015-06-02 22:29:12.772999	2015-06-02 22:29:12.772999	4	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
7	PIK3CA mutation, but not AKT1 E17K, has been shown to confer sensitiity to the AKT inhibitor MK-2206 in breast cancer cell lines.	2	54	4	2015-06-02 22:29:12.814728	2015-06-02 22:29:12.814728	3	accepted	\N	\N	14:105246551-105246551 (C->T)	\N	1	2	0	1	0	f	\N
8	In patients with non-small cell lung cancer harboring the EML4-ALK fusion, treatment with crizotinib has shown to be effective in acheiving stable disease.	3	55	5	2015-06-02 22:29:12.837167	2015-06-02 22:29:12.837167	4	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
9	In patients with non-small cell lung cancer harboring EML4-ALK fusion, the C1156Y variant has been shown to confer resistance to crizotinib.	3	55	6	2015-06-02 22:29:12.867058	2015-06-02 22:29:12.867058	4	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
10	CH5424802 treatment resulted in significant tumor regression in xenograft models produced from Ba/F3 cells expressing EML4-ALK or AML4-ALK with the L1196M mutation	3	56	7	2015-06-02 22:29:12.900259	2015-06-02 22:29:12.900259	3	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
11	In patients with non-small cell lung cancer harboring EML4-ALK fusion, the L1196M variant has been shown to confer resistance to crizotinib.	3	55	7	2015-06-02 22:29:12.919188	2015-06-02 22:29:12.919188	4	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
12	Ba/F3 cells expressing the RANBP2-ALK fusion containing an F1174L mutation were more resistant to crizotinib treatment than Ba/F3 cells expressing RANBP2-ALK without this mutation.	4	57	8	2015-06-02 22:29:12.9479	2015-06-02 22:29:12.9479	3	accepted	\N	\N	2:29443695-29443695 (G->T)	\N	2	2	0	0	1	f	\N
13	CH5424802 is effective in inhibiting the activity of the F1174L ALK mutant in a kinase activity assay and proliferation assay using neuroblastoma KELLY cells.	5	56	8	2015-06-02 22:29:12.969016	2015-06-02 22:29:12.969016	3	accepted	\N	\N	2:29443695-29443695 (G->T)	\N	2	2	0	0	0	f	\N
14	Cells lines expressing ALK harboring the F1174L mutation are less sensitive to growth inhibition by crizotinib than cells expressing the R1275Q mutation.	5	58	8	2015-06-02 22:29:12.989256	2015-06-02 22:29:12.989256	3	accepted	\N	\N	2:29443695-29443695 (G->T)	\N	2	2	0	0	1	f	\N
15	High levels of crizotinib can overcome drug resistance of Ba/F3 cells expressing the EML4-ALK fusion containing the F1174L mutation.	5	59	8	2015-06-02 22:29:13.008986	2015-06-02 22:29:13.008986	3	accepted	\N	\N	2:29443695-29443695 (G->T)	\N	2	2	0	0	0	f	\N
16	SH-SY5Y and Kelly cells with mutant ALK (F1174L) and Ba/F3 cells overexpressing ALK harboring the F1174L mutation are sensitive to TAE684-mediated growth inhibition	5	60	8	2015-06-02 22:29:13.02848	2015-06-02 22:29:13.02848	4	accepted	\N	\N	2:29443695-29443695 (G->T)	\N	2	2	0	0	0	f	\N
17	Ba/F3 cells expressing the EML4-ALK fusion containing an F1174L mutation were more resistant to crizotinib treatment than Ba/F3 cells expressing EML4-ALK without this mutation.	3	57	8	2015-06-02 22:29:13.048662	2015-06-02 22:29:13.048662	3	accepted	\N	\N	2:29443695-29443695 (G->T)	\N	2	2	0	0	1	f	\N
18	Cells lines expressing ALK harboring the F1174L mutation are less sensitive to growth inhibition by crizotinib than cells expressing the R1275Q mutation	5	58	9	2015-06-02 22:29:13.072226	2015-06-02 22:29:13.072226	3	accepted	\N	\N	2:29432664-29432664 (C->T)	\N	2	2	0	0	0	f	\N
19	TAE684 inhibits growth of Ba/F3 cells expressing ALK mutations; however, cells with the R1275Q mutation were inhibited at a higher IC50 than those expressing F1174L.	5	60	9	2015-06-02 22:29:13.092248	2015-06-02 22:29:13.092248	3	accepted	\N	\N	2:29432664-29432664 (C->T)	\N	2	2	0	0	0	f	\N
20	The SMS-KCNR cell line harboring the R1275Q mutation was resistant to TAE684.	5	60	9	2015-06-02 22:29:13.123154	2015-06-02 22:29:13.123154	3	accepted	\N	\N	2:29432664-29432664 (C->T)	\N	2	2	0	0	1	f	\N
21	In one patient with S214C mutation, the use of sorafenib has led to more than 5 years of survival and near remission.	3	61	10	2015-06-02 22:29:13.142885	2015-06-02 22:29:13.142885	2	accepted	\N	\N	X:47426121-47426121 (C->G)	\N	1	2	0	0	0	f	\N
22	Sorafenib can inhibit ARF-mediated MEK phosphorylation and soft agar colony formation of AALE cells expressing ARAF S214C in vitro	3	61	10	2015-06-02 22:29:13.162198	2015-06-02 22:29:13.162198	3	accepted	\N	\N	X:47426121-47426121 (C->G)	\N	2	2	0	0	0	f	\N
23	Trametinib can inhibit ARF-mediated ERK phosphorylation and soft agar colony formation of AALE cells expressing ARAF S214C in vitro	3	61	10	2015-06-02 22:29:13.185348	2015-06-02 22:29:13.185348	3	accepted	\N	\N	X:47426121-47426121 (C->G)	\N	2	2	0	0	0	f	\N
24	In metastatic colorectal cancer patients with wildtype KRAS, BRAF mutations were associated with poor progression free survival regardless of treatment (panitumumab with best supportive care or best supportive care alone)	6	62	17	2015-06-02 22:29:13.238945	2015-06-02 22:29:13.238945	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
25	Melanoma patients with BRAF V600E/K mutations had longer progression-free survival, increased tumor regression,  and increased duration of response to combined dabrafenib and trametinib treatment compared to dabrafenib alone	7	63	17	2015-06-02 22:29:13.279966	2015-06-02 22:29:13.279966	3	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
26	BRAF mutations are associated with melanoma arising in non-chronic sun damaged skin and with superficial spreading melanoma	7	64	17	2015-06-02 22:29:13.313355	2015-06-02 22:29:13.313355	4	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
27	Patients with other BRAF V600 mutations also respond well to the V600E drug dabrafenib.	7	65	11	2015-06-02 22:29:13.337103	2015-06-02 22:29:13.337103	5	accepted	\N	\N	7:140453135-140453136 (CA->AT)	\N	1	2	0	0	0	f	\N
28	Cetuximab or panitumumab may be ineffective in patients with BRAF mutation unless BRAF inhibitor such as Sorafenib is introduced.	8	66	12	2015-06-02 22:29:13.375048	2015-06-02 22:29:13.375048	3	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	2	2	0	0	1	f	\N
58	In ER-positive breast cancer patients, Cyclin D1 overexpression is associated with shorter overall survival and increased metastasis.	11	86	20	2015-06-02 22:29:14.085011	2015-06-02 22:29:14.085011	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
29	Combined PD0325901 and PLX4720 administration to NSG mice subcutanousely injected with colorectal cell lines with a BRAF V600E mutation effectively inhibited tumor growth and reduced cellular proliferation	8	67	12	2015-06-02 22:29:13.40389	2015-06-02 22:29:13.40389	3	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	2	2	0	0	0	f	\N
30	Combined nutlin-3 and PLX4720 administration to athymic nude mice subcutanousely injected with the A357 colorectal cell line with a BRAF V600E mutation effectively inhibited tumor growth significantly more than single agent therapy	8	68	12	2015-06-02 22:29:13.429534	2015-06-02 22:29:13.429534	2	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	2	2	0	0	0	f	\N
31	Mouse xenografts using HT29 cells harboring the BRAF V600E mutation treated with combination therapy (capecitabine, vemurafenib, bevacizumab) showed increased survival and reduced tumor burden compared to single and double agent therapies.	6	69	12	2015-06-02 22:29:13.455694	2015-06-02 22:29:13.455694	2	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	2	2	0	0	0	f	\N
32	Chemotherapy-refractory patients with colorectal cancer harboring BRAF mutations had lower response and disease control rates as well as shorter progression free and overall survival following cetuximab plus chemotherapy than those with wildtype BRAF	6	70	12	2015-06-02 22:29:13.483836	2015-06-02 22:29:13.483836	3	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	2	0	0	1	f	\N
33	V600E is associated with adverse pathological features of colorectal cancer. This can be concluded as a marker of poor prognosis.	6	71	12	2015-06-02 22:29:13.557577	2015-06-02 22:29:13.557577	5	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	0	1	0	0	3	f	\N
34	Cell lines expressing the BRAF V600E mutation responded better to vemurafenib treatment than cells wildtype for BRAF as measured by reduced cellular proliferation and inhibition of MET and ERK phosphorylation	6	69	12	2015-06-02 22:29:13.577278	2015-06-02 22:29:13.577278	2	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	2	2	0	0	0	f	\N
35	BRAF status does not predict prognosis in patients treated with dacarbazine or temozolomide.	7	72	12	2015-06-02 22:29:13.59926	2015-06-02 22:29:13.59926	2	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	2	0	1	6	f	\N
36	Dabrafenib with trametinib provides higher response rate and lower toxicity-as compared to chemotherapy-in patients with melanoma.	7	73	12	2015-06-02 22:29:13.624621	2015-06-02 22:29:13.624621	5	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	2	0	0	0	f	\N
37	In the setting of BRAF(V600E), NF1 loss resulted in elevated activation of RAS-GTP but does not show resistance to MEK inhibitors.	7	74	12	2015-06-02 22:29:13.647059	2015-06-02 22:29:13.647059	3	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	2	2	0	1	1	f	\N
38	In the setting of BRAF(V600E), NF1 loss resulted in elevated activation of RAS-GTP and resistance to RAF inhibitors.	7	74	12	2015-06-02 22:29:13.664998	2015-06-02 22:29:13.664998	3	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	2	2	0	0	1	f	\N
39	BRAF V600E is correlated with shorter disease-free and overall Survival in a Spanish cohort of melanoma patients.	7	75	12	2015-06-02 22:29:13.684303	2015-06-02 22:29:13.684303	3	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	1	0	0	3	f	\N
40	In a patient with V600E-positive NSCLC, KRAS G12D seemed to confer resistance to dabrafenib.	3	76	12	2015-06-02 22:29:13.703416	2015-06-02 22:29:13.703416	2	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	2	0	0	1	f	\N
41	BRAF V600E is shown to be associated with the tall-cell variant of papillary thyroid cancer	9	77	12	2015-06-02 22:29:13.723156	2015-06-02 22:29:13.723156	3	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	0	0	0	4	f	\N
42	Thyroid nodule with BRAF V600E mutation is highly correlated with papillary thyroid cancer.	9	78	12	2015-06-02 22:29:13.74189	2015-06-02 22:29:13.74189	5	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	0	0	0	4	f	\N
43	Thyroid nodule with BRAF V600E mutation is highly correlated with papillary thyroid cancer.	9	79	12	2015-06-02 22:29:13.760593	2015-06-02 22:29:13.760593	5	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	0	0	0	4	f	\N
44	Unlike other studies that suggest a poorer outcome, BRAF mutation in this study was not correlated with poorer prognosis in papillary thyroid cancer.	9	80	12	2015-06-02 22:29:13.778952	2015-06-02 22:29:13.778952	5	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	1	0	1	3	f	\N
45	BRAF mutation correlated with poor prognosis in papillary thyroid cancer in both older (>65 yo) and younger (<65 yo) cohorts.	9	77	12	2015-06-02 22:29:13.796518	2015-06-02 22:29:13.796518	3	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	1	0	0	3	f	\N
46	BRAF V600E is correlated with poor prognosis in papillary thyroid cancer in a study of 187 patients with PTC and other thyroid diseases.	9	81	12	2015-06-02 22:29:13.815903	2015-06-02 22:29:13.815903	3	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	1	0	0	3	f	\N
47	V600E is correlated with disease recurrence in both age cohorts (>65 and <65 yo).	9	77	12	2015-06-02 22:29:13.833361	2015-06-02 22:29:13.833361	3	accepted	\N	\N	7:140453136-140453136 (A->T)	\N	1	1	0	0	3	f	\N
48	COLO201 and COLO206F cells harboring BRAF V600E mutations were cloned to be MEK inhibitor (AZD6244) resistant. The mechanim of this resistence was shown to be amplification of the BRAF V600E gene.	6	82	14	2015-06-02 22:29:13.85259	2015-06-02 22:29:13.85259	4	accepted	\N	\N	N/A	\N	3	2	0	0	1	f	\N
49	A single patient with BRAF V600E/V600M bi-allelic mutation responded to the V600E drug dabrafenib.	7	83	13	2015-06-02 22:29:13.872797	2015-06-02 22:29:13.872797	3	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
50	Patients with other BRAF V600 mutations also respond well to the V600E drug dabrafenib.	7	65	15	2015-06-02 22:29:13.895783	2015-06-02 22:29:13.895783	5	accepted	\N	\N	7:140453137-140453137 (C->T)	\N	1	2	0	0	0	f	\N
51	Patients with other BRAF V600 mutations also respond well to the V600E drug dabrafenib.	7	65	16	2015-06-02 22:29:13.932227	2015-06-02 22:29:13.932227	5	accepted	\N	\N	7:140453136-140453137 (AC->CT)	\N	1	2	0	0	0	f	\N
52	The combination of PARP inhibition (Olaparib) with BRCA mutation results in irreparable and lethal DNA damage. Response rates are higher in BRCA1 mutation positive women with high grade serous or undifferentiated ovarian cancer.	10	84	131	2015-06-02 22:29:13.956976	2015-06-02 22:29:13.956976	4	accepted	\N	\N	N/A	\N	1	2	1	0	0	f	\N
53	The combination of PARP inhibition (Olaparib) with BRCA mutation results in irreparable and lethal DNA damage. Response rates are higher in BRCA2 mutation positive women with high grade serous or undifferentiated ovarian cancer.	10	84	132	2015-06-02 22:29:13.986763	2015-06-02 22:29:13.986763	4	accepted	\N	\N	N/A	\N	1	2	1	0	0	f	\N
54	Inceased copy number of CCND1 is associated with poorer overall survival.	3	85	18	2015-06-02 22:29:14.010488	2015-06-02 22:29:14.010488	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
55	Three studies have found no significant survival impact for CCND1 in lung cancer.	3	85	19	2015-06-02 22:29:14.02908	2015-06-02 22:29:14.02908	3	accepted	\N	\N	N/A	\N	1	1	0	1	3	f	\N
56	Three studies have associated CCND1 expression with poorer survival.	3	85	19	2015-06-02 22:29:14.047406	2015-06-02 22:29:14.047406	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
57	Cyclin D1 overexpression is associated with the ER-positive subtype of breast cancer.	11	86	20	2015-06-02 22:29:14.067433	2015-06-02 22:29:14.067433	4	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
59	Cyclin D1 overexpression is associated with shorter overall survival and increased metastasis in head and neck squamous cell carcinoma.	12	87	20	2015-06-02 22:29:14.105107	2015-06-02 22:29:14.105107	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
60	Cyclin D1 overexpression is associated with shorter overall survival and increased metastasis in mantle cell lymphoma.	13	88	20	2015-06-02 22:29:14.124548	2015-06-02 22:29:14.124548	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
61	Cyclin D2 overexpression is associated with poor prognosis in gastric cancers.	14	89	21	2015-06-02 22:29:14.144478	2015-06-02 22:29:14.144478	4	accepted	\N	\N	N/A	\N	2	1	0	0	3	f	\N
62	Cyclin D2 overexpression is associated with the increased depth of cancer invasion in gastric cancers.	14	89	21	2015-06-02 22:29:14.161997	2015-06-02 22:29:14.161997	4	accepted	\N	\N	N/A	\N	2	1	0	0	3	f	\N
63	Cyclin D2 overexpression is associated with the presence pf lymph node metastasis in gastric cancers.	14	89	21	2015-06-02 22:29:14.180134	2015-06-02 22:29:14.180134	4	accepted	\N	\N	N/A	\N	2	1	0	0	3	f	\N
64	Cyclin D2 overexpression is associated with vascular invasion by cancer cells in gastric cancers.	14	89	21	2015-06-02 22:29:14.197771	2015-06-02 22:29:14.197771	4	accepted	\N	\N	N/A	\N	2	1	0	0	3	f	\N
65	CCND2 hypomethylation is seen to be more common in stage III and IV gastric tumors than stage I and II.	14	90	22	2015-06-02 22:29:14.216919	2015-06-02 22:29:14.216919	3	accepted	\N	\N	N/A	\N	2	0	0	0	5	f	\N
66	Treatment of Notch-driven T-cell leukemia in Ccnd3 knockout mice with Palbociclib (PD-0332991) significantly increased median survival.	15	91	23	2015-06-02 22:29:14.237304	2015-06-02 22:29:14.237304	3	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
67	Patients with high expression of total cyclin E and low-molecular weight cyclin E is strongly associated with poor prognosis in breast cancer, and the hazard ratio for these patients in 13.3 times higher than those with normal cyclin E levels.	11	92	24	2015-06-02 22:29:14.25768	2015-06-02 22:29:14.25768	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
68	Elevated levels of CCNE1 mRNA has been shown to be correlated with advanced stage gastric carcinoma.	16	93	24	2015-06-02 22:29:14.293574	2015-06-02 22:29:14.293574	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
69	Elevated levels of CCNE1 mRNA has been shown to be correlated with increased depth of tumor invasion in gastic carcinoma.	16	93	24	2015-06-02 22:29:14.311788	2015-06-02 22:29:14.311788	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
70	Elevated levels of CCNE1 mRNA has been shown to be correlated with increased depth of tumor invasion in gastic carcinoma.	17	93	24	2015-06-02 22:29:14.330964	2015-06-02 22:29:14.330964	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
71	In mouse xenograft studies of PIK3CA mutant breast cancers, the combination of PI3K and CDK4/6 inhibitors overcomes intrinsic and adaptive resistance leading to tumor regressions.	18	94	25	2015-06-02 22:29:14.35123	2015-06-02 22:29:14.35123	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
72	Palbociclib has been shown to dramatically improve progression-free survival by over 18 months in patients with ER+ Breast Cancer.	18	95	25	2015-06-02 22:29:14.371277	2015-06-02 22:29:14.371277	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
73	In mouse xenograft studies of PIK3CA mutant breast cancers, the combination of PI3K and CDK4/6 inhibitors overcomes intrinsic and adaptive resistance leading to tumor regressions.	18	94	26	2015-06-02 22:29:14.39034	2015-06-02 22:29:14.39034	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
74	Palbociclib has been shown to dramatically improve progression-free survival by over 18 months in patients with ER+ Breast Cancer.	18	95	26	2015-06-02 22:29:14.408212	2015-06-02 22:29:14.408212	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
75	In NSCLC patients younger than 60 years at age of diagnosis, p16 (CDKN2A) promoter hypermethylation is associated with shorter overall survival.	3	96	27	2015-06-02 22:29:14.427646	2015-06-02 22:29:14.427646	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
76	In NSCLC patients younger than 60 years at age of diagnosis, p16 (CDKN2A) promoter hypermethylation is associated with shorter time to recurrence.	3	96	27	2015-06-02 22:29:14.445616	2015-06-02 22:29:14.445616	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
77	CEBPA mutation status had no impact on ATRA treatment response in older (>60) patients with AML	19	97	29	2015-06-02 22:29:14.465867	2015-06-02 22:29:14.465867	4	accepted	\N	\N	N/A	\N	1	2	0	1	6	f	\N
78	CEBPA mutation was associated with improved overall survival in older (>60) patients with AML	19	97	29	2015-06-02 22:29:14.48323	2015-06-02 22:29:14.48323	4	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
79	CEBPA mutation was significantly associated with complete remission	19	98	29	2015-06-02 22:29:14.502239	2015-06-02 22:29:14.502239	4	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
80	FLT3 mutations did not alter overall survival in younger (16-60), cytogenetically normal AML patients with CEBPA	19	99	28	2015-06-02 22:29:14.5217	2015-06-02 22:29:14.5217	2	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
81	Overall survival was significantly longer in younger (16-60), cytogenetically normal AML patients with CEBPA mutations	19	99	28	2015-06-02 22:29:14.539382	2015-06-02 22:29:14.539382	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
82	Remission duration was significantly longer in younger (16-60), cytogenetically normal AML patients with CEBPA	19	99	28	2015-06-02 22:29:14.556857	2015-06-02 22:29:14.556857	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
83	Cell lines with MEF2D-CSF1R fusion show sensitivity to the tyrosine kinase inhibitors Imatinib and GW-2580	20	100	30	2015-06-02 22:29:14.577855	2015-06-02 22:29:14.577855	3	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
84	In 3T3 fibroblasts expressing the G253C mutation have to be sensitive to the tyrosine kinase inhibitor dasatinib.	3	101	141	2015-06-02 22:29:14.60007	2015-06-02 22:29:14.60007	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
85	In 3T3 fibroblasts expressing the G505S mutation have to be sensitive to the tyrosine kinase inhibitor dasatinib.	3	101	142	2015-06-02 22:29:14.618191	2015-06-02 22:29:14.618191	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
86	In 3T3 fibroblasts expressing the G774V mutation have to be sensitive to the tyrosine kinase inhibitor dasatinib.	3	101	144	2015-06-02 22:29:14.649658	2015-06-02 22:29:14.649658	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
87	In 3T3 fibroblasts expressing the I638F mutation have to be sensitive to the tyrosine kinase inhibitor dasatinib.	3	101	143	2015-06-02 22:29:14.667793	2015-06-02 22:29:14.667793	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
88	In 3T3 fibroblasts expressing the L239R mutation have to be sensitive to the tyrosine kinase inhibitor dasatinib.	3	101	140	2015-06-02 22:29:14.686052	2015-06-02 22:29:14.686052	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
89	In 3T3 fibroblasts expressing the L63V mutation have to be sensitive to the tyrosine kinase inhibitor dasatinib.	3	101	139	2015-06-02 22:29:14.704075	2015-06-02 22:29:14.704075	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
90	In a patient expressing a DDR2 S768R mutation, treatment with dasatinib plus erlotinib acheived a partial response.	3	101	145	2015-06-02 22:29:14.722596	2015-06-02 22:29:14.722596	3	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
118	In younger cytogenetically normal AML patients (<60 years), DNMT3A mutations other than R882 are prognostic for shorter disease free survival and overall survival compared to patients without the mutation.	19	108	32	2015-06-02 22:29:15.24378	2015-06-02 22:29:15.24378	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
91	A head-to-tail in-frame fusion between exon1 of DNAJB1 and exon2 of PRKACA resulting from a ~400kb deletion was observed in 100% (15/15) fibrolamellar hepatocellular carcinomas examined. The fusion was confirmed at both RNA and DNA level in all primary and metastatic tumor samples but not in adjacent normal tissue. Immunoprecipitation and Western blot analyses confirmed that the chimeric protein is expressed in tumor tissue, and a cell culture assay indicated that it retains kinase activity.	21	102	31	2015-06-02 22:29:14.745727	2015-06-02 22:29:14.745727	4	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
92	Daunorubicin treatment resulted in similar overall survival and disease free survival in de novo AML patients with DNMT3A R882 mutation compared to those who do not harbor this mutation.	19	103	32	2015-06-02 22:29:14.765112	2015-06-02 22:29:14.765112	4	accepted	\N	\N	N/A	\N	1	2	0	1	1	f	\N
93	Idarubicin increases the overall survival and disease free survival in de novo AML patients with DNMT3A R882 mutation compared to those who do not harbor this mutation.	19	103	32	2015-06-02 22:29:14.783915	2015-06-02 22:29:14.783915	4	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
94	Therapy-related AML was less common in patients with DNMT3A mutations (64.5% of which were R882) than patients wildtype for DNMT3A in a large cohort of younger (18-60) AML patients	19	104	32	2015-06-02 22:29:14.803809	2015-06-02 22:29:14.803809	3	accepted	\N	\N	N/A	\N	1	0	0	0	5	f	\N
95	DNMT3A mutations (59% of which were R882) were associated with an intermediate risk cytogenetic profile, normal cytogenetic profile, and M4 and M5 FAB subtypes	19	105	32	2015-06-02 22:29:14.823054	2015-06-02 22:29:14.823054	5	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
96	DNMT3A mutations (59% of which were R882) were associated with intermediate risk cytogenetics (including normal karyotype)	19	105	32	2015-06-02 22:29:14.842406	2015-06-02 22:29:14.842406	4	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
97	DNMT3A mutations (64.5% R882) were associated with older age, higher white blood cell count and cytogenetically normal AML in a large cohort of younger (18-60) AML patients	19	104	32	2015-06-02 22:29:14.859859	2015-06-02 22:29:14.859859	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
98	DNMT3A R882 mutations occur most often in de novo AML patients with intermediate cytogenic risk.	19	103	32	2015-06-02 22:29:14.87716	2015-06-02 22:29:14.87716	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
99	DNMT3A R882 mutations were associated with cytogenetically normal AML in a large cohort of younger (18-60) AML patients	19	104	32	2015-06-02 22:29:14.894127	2015-06-02 22:29:14.894127	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
100	DNMT3A R882 mutations were associated with older age, higher white blood cell count, and FAB M4 and M5 subtypes compared to wildtype DNMT3A in a cohort of cytogenetically normal AML patients	19	106	32	2015-06-02 22:29:14.912433	2015-06-02 22:29:14.912433	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
101	Young AML patients (<60 years old) with DNMT3A mutations (60% of which were R882) were older in age, had higher white blood cell counts and had higher platelet counts than patients wildtype for DNMT3A	19	107	32	2015-06-02 22:29:14.931094	2015-06-02 22:29:14.931094	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
102	Complete remission rates did not differ between patients with wildtype or mutant DNMT3A (62% of which affected R882) and cytogenetically normal AML	19	108	32	2015-06-02 22:29:14.94999	2015-06-02 22:29:14.94999	4	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
103	In a large cohort of AML patients (mean = 48 years), DNMT3A mutation (64.5% of which were R882) had no prognostic value on overall, relapse free and event free survival.	19	104	32	2015-06-02 22:29:14.981067	2015-06-02 22:29:14.981067	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
104	In a large cohort of cytogenetically normal AML patients (18-60 years old), DNMT3A mutation status (65.4% of which were R882) had no prognostic value for overall, relapse free and event free survival	19	104	32	2015-06-02 22:29:14.998615	2015-06-02 22:29:14.998615	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
105	In young AML patients (<60 years old), DNMT3A mutation status (60% of which were R882) was not predictive of overall and relapse free survival in patients with NPM1 mutations and wildtype FLT3 or wildtype NPM1 and FLT3-ITD	19	107	32	2015-06-02 22:29:15.016243	2015-06-02 22:29:15.016243	4	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
106	There is no difference in the complete remission rate of de novo AML patients with DNMT3A mutation compared to those who are wild type for DNMT3A.	19	103	32	2015-06-02 22:29:15.033826	2015-06-02 22:29:15.033826	4	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
107	DNMT3A mutations were associated with achievement of complete remission in a large cohort of younger (18-60) AML patients	19	104	32	2015-06-02 22:29:15.051146	2015-06-02 22:29:15.051146	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
108	AML patients with DNMT3A mutations (59% of which were R882) showed worse survival (event-free and overall) outcome than those without DNMT3A mutation.	19	105	32	2015-06-02 22:29:15.068446	2015-06-02 22:29:15.068446	5	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
109	Complete remission rate was not different between young AML patients (<60 years old) with or without DNMT3A mutations (60% of which were R882)	19	107	32	2015-06-02 22:29:15.085642	2015-06-02 22:29:15.085642	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
110	De novo AML patients with DNMT3A D882 mutation showed worse survival (event-free and overall) outcome than those without DNMT3A mutation.	19	105	32	2015-06-02 22:29:15.102638	2015-06-02 22:29:15.102638	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
111	DNMT3A mutations (62% of which were R882) were associated with reduced disease-free survival in patients with cytogenetically normal AML.	19	108	32	2015-06-02 22:29:15.120026	2015-06-02 22:29:15.120026	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
112	DNMT3A R882 mutation was associated with reduced relapse free and overall survival in ELN-unfavorable, cytogenetically normal AMLs	19	104	32	2015-06-02 22:29:15.137202	2015-06-02 22:29:15.137202	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
113	In a large cohort of young AML patients (18-60 years old), DNMT3A R882 mutations were associated with reduced relapse free survival in the entire cohort as well as the subset of patients with cytogenetically normal AML	19	104	32	2015-06-02 22:29:15.154172	2015-06-02 22:29:15.154172	3	accepted	\N	\N	N/A	\N	0	1	0	0	3	f	\N
114	In AML patients with FLT3-ITD mutations, concurrent DNMT3A mutations (including R882) were associated with worse overall survival compared to those without DNMT3A mutation.	19	105	32	2015-06-02 22:29:15.171619	2015-06-02 22:29:15.171619	5	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
115	In cytogenetically normal AML patients, DNMT3A R882 mutations are associated with lower overall and disease free survival as compared to patients with wild type DNMT3A.	19	106	32	2015-06-02 22:29:15.189376	2015-06-02 22:29:15.189376	5	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
116	In older cytogenetically normal AML patients (>59 years), DNMT3A R882 mutation is prognostic for shorter disease free survival and overall survival compared to patients without the mutation.	19	108	32	2015-06-02 22:29:15.207405	2015-06-02 22:29:15.207405	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
117	In young AML patients (<60 years old), DNMT3A mutations were associated with significantly reduced overall survival and relapse free survival in patients wildtype for NPM1 and FLT3	19	107	32	2015-06-02 22:29:15.225479	2015-06-02 22:29:15.225479	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
119	Young AML patients (<60 years old) with DNMT3A mutation have shorter overall survival and relapse-free survival than patients with wildtype DNMT3A	19	107	32	2015-06-02 22:29:15.262428	2015-06-02 22:29:15.262428	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
120	Young AML patients (<60 years old) with DNMT3A R882 mutations have shorter overall survival and relapse-free survival than patients with wildtype DNMT3A	19	107	32	2015-06-02 22:29:15.293704	2015-06-02 22:29:15.293704	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
121	Exon 19 deletion has been shown to be correlated with gefitinib response.	3	109	133	2015-06-02 22:29:15.314467	2015-06-02 22:29:15.314467	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
122	Gefinitib has been shown to be effective in treating cell lines with G719S missense mutations.	3	110	134	2015-06-02 22:29:15.334809	2015-06-02 22:29:15.334809	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
123	There is no statistical difference in progression free survival between lung cancer patients treated with gefitinib or erlotinib in the EGFR L858R setting.	3	111	33	2015-06-02 22:29:15.354885	2015-06-02 22:29:15.354885	3	accepted	\N	\N	7:55259514-55259515 (CT->AG)	\N	1	2	0	1	6	f	\N
124	There is no statistical difference in progression free survival between lung cancer patients treated with gefitinib or erlotinib in the EGFR L858R setting.	3	111	33	2015-06-02 22:29:15.375248	2015-06-02 22:29:15.375248	3	accepted	\N	\N	7:55259514-55259515 (CT->AG)	\N	1	2	0	1	6	f	\N
125	In NSCLC patients treated with EGFR tyrosine kinase inhibitors, the presence of L858R mutation is prognostic for better progression free survival.	3	112	33	2015-06-02 22:29:15.396133	2015-06-02 22:29:15.396133	4	accepted	\N	\N	7:55259514-55259515 (CT->AG)	\N	1	2	0	0	0	f	\N
126	Median survival of patients with EGFR L858R mutation is better than those with wild type EGFR.	3	113	33	2015-06-02 22:29:15.415188	2015-06-02 22:29:15.415188	3	accepted	\N	\N	7:55259514-55259515 (CT->AG)	\N	1	1	0	0	2	f	\N
127	Gefinitib has been shown to be effective in treating cell lines with L858R missense mutations.	3	110	33	2015-06-02 22:29:15.432694	2015-06-02 22:29:15.432694	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
128	The T790M mutation in EGFR has been shown to confer resistance to the tyrosine kinase inhibitor erlotinib, and patients harboring this mutation that are placed on the drug are likely to relapse.	22	114	34	2015-06-02 22:29:15.452606	2015-06-02 22:29:15.452606	5	accepted	\N	\N	7:55249071-55249071 (C->T)	\N	0	2	0	0	1	f	\N
129	In a NSCLC patient with T790M and L858R mutation, combination treatment with erlotinib and premetrexed has shown to be effective, reducing tumor size and resulting in stable disease.	3	115	34	2015-06-02 22:29:15.482372	2015-06-02 22:29:15.482372	3	accepted	\N	\N	7:55249071-55249071 (C->T)	\N	1	2	0	0	0	f	\N
130	In non-small cell lung cancer, the appearance of T790M mutation leads to resistance to gefitinib.	3	116	34	2015-06-02 22:29:15.503839	2015-06-02 22:29:15.503839	3	accepted	\N	\N	7:55249071-55249071 (C->T)	\N	1	2	0	0	1	f	\N
131	In NSCLC patients with T790M and another activating mutations, their progression free survival is shorter compared to those who do not possess T790M mutation.	3	117	34	2015-06-02 22:29:15.522249	2015-06-02 22:29:15.522249	4	accepted	\N	\N	7:55249071-55249071 (C->T)	\N	1	1	0	0	3	f	\N
132	Patients with NSCLC harboring EGFR T790M mutation have statistically worse overall survival compared to patients with L858R or other exon 19 activating mutations.	3	118	34	2015-06-02 22:29:15.54109	2015-06-02 22:29:15.54109	4	accepted	\N	\N	7:55249071-55249071 (C->T)	\N	1	1	0	0	3	f	\N
133	In NSCLC containing a T790M mutation, staurosporine may be inhibitive of EGFR, especially when an L858R mutation is also present.	3	119	34	2015-06-02 22:29:15.560092	2015-06-02 22:29:15.560092	1	accepted	\N	\N	7:55249071-55249071 (C->T)	\N	3	2	0	0	0	f	\N
134	In Lung Cancer patients with acquired resistance to Dacomitinib (PF00299804), MET amplification and EGFR T790M were found to be the primary drivers of resistance.	3	120	34	2015-06-02 22:29:15.594076	2015-06-02 22:29:15.594076	4	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
135	In MCF10A cell lines, the D769H mutation was shown to be sensitive to neratinib.	11	121	35	2015-06-02 22:29:15.618504	2015-06-02 22:29:15.618504	4	accepted	\N	\N	17:37880261-37880261 (G->C)	\N	2	2	0	0	0	f	\N
136	In MCF10A cell lines, the D769Y mutation was shown to be sensitive to neratinib.	11	121	36	2015-06-02 22:29:15.647979	2015-06-02 22:29:15.647979	4	accepted	\N	\N	17:37880261-37880261 (G->T)	\N	2	2	0	0	0	f	\N
137	In MCF10A cell lines retrovirally transduced with wildtype or mutant ERBB2, cells expressing the in-frame deletion of amino acids 755-759 were shown to be sensitive to neratinib.	11	121	37	2015-06-02 22:29:15.669745	2015-06-02 22:29:15.669745	5	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
138	In MCF10A cell lines, the G309A mutation was shown to be sensitive to neratinib.	11	121	38	2015-06-02 22:29:15.687892	2015-06-02 22:29:15.687892	5	accepted	\N	\N	17:37868205-37868205 (G->C)	\N	2	2	0	0	0	f	\N
139	The L755S mutation was shown to confer resistance to lapatinib in MCF10A cell lines retrovirally transduced with wildtype or mutant ERBB2.	11	121	39	2015-06-02 22:29:15.709874	2015-06-02 22:29:15.709874	5	accepted	\N	\N	17:37880220-37880220 (T->C)	\N	2	2	0	0	1	f	\N
140	The L755S mutation showed mild response to neratinib in MCF10A cell lines retrovirally transduced with wildtype or mutant ERBB2.	11	121	39	2015-06-02 22:29:15.728765	2015-06-02 22:29:15.728765	5	accepted	\N	\N	17:37880220-37880220 (T->C)	\N	2	2	0	0	0	f	\N
141	MCF10A cells transduced with ERBB2 harboring an L755W mutation were sensitive to the irreversible kinase inhibitor neratinib in an matrigel colony forming assay.	11	121	40	2015-06-02 22:29:15.746424	2015-06-02 22:29:15.746424	5	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
142	In MCF10A cell lines, the in-frame insertion of a single amino acid at position 780 was shown to be sensitive to neratinib.	11	121	41	2015-06-02 22:29:15.76407	2015-06-02 22:29:15.76407	5	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
143	MCF10A cells transduced with ERBB2 harboring an R678Q mutation were sensitive to lapatinib and the irreversible kinase inhibitor neratinib in an matrigel colony forming assay.	11	121	42	2015-06-02 22:29:15.785673	2015-06-02 22:29:15.785673	5	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
144	In MCF10A cell lines, the R896C mutation was shown to be sensitive to neratinib.	11	121	43	2015-06-02 22:29:15.805025	2015-06-02 22:29:15.805025	5	accepted	\N	\N	17:37881616-37881616 (C->T)	\N	2	2	0	0	0	f	\N
145	In MCF10A cell lines, the V777L mutation was shown to be sensitive to neratinib.	11	121	44	2015-06-02 22:29:15.826689	2015-06-02 22:29:15.826689	5	accepted	\N	\N	17:37881000-37881000 (G->T)	\N	2	2	0	0	0	f	\N
146	In MCF10A cell lines, the V842I mutation was shown to be sensitive to neratinib.	11	121	45	2015-06-02 22:29:15.847886	2015-06-02 22:29:15.847886	5	accepted	\N	\N	17:37881332-37881332 (G->A)	\N	2	2	0	0	0	f	\N
147	MCF7 cell lines harboring the L536Q mutation in the ligand-binding domain of ESR1 have shown resistance to hormone therapy.	11	122	46	2015-06-02 22:29:15.871831	2015-06-02 22:29:15.871831	3	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
148	The L536Q ligand binding domain mutation have been shown to result in constitutive activity and continued responsiveness to anti-estrogen therapies in MCF7 cell lines.	11	123	46	2015-06-02 22:29:15.915837	2015-06-02 22:29:15.915837	5	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
209	JAK2 V617F is not associated with lymphoid leukemia (B-lineage ALL, T-ALL or CLL).	30	152	64	2015-06-02 22:29:17.179131	2015-06-02 22:29:17.179131	4	accepted	\N	\N	9:5073770-5073770 (G->T)	\N	1	0	0	0	5	f	\N
149	MCF7 cell lines harboring the N538G mutation in the ligand-binding domain of ESR1 have shown resistance to hormone therapy.	11	122	47	2015-06-02 22:29:15.941745	2015-06-02 22:29:15.941745	3	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
150	The N538G ligand binding domain mutations have been shown to result in constitutive activity and continued responsiveness to anti-estrogen therapies in vitro.	11	123	47	2015-06-02 22:29:15.965055	2015-06-02 22:29:15.965055	5	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
151	MCF7 cell lines harboring the Y537C mutation in the ligand-binding domain of ESR1 have shown resistance to hormone therapy.	11	122	48	2015-06-02 22:29:15.990184	2015-06-02 22:29:15.990184	3	accepted	\N	\N	6:152419923-152419923 (A->G)	\N	2	2	0	0	1	f	\N
152	The Y537C ligand binding domain mutations have been shown to result in constitutive activity and continued responsiveness to anti-estrogen therapies in vitro.	11	123	48	2015-06-02 22:29:16.013765	2015-06-02 22:29:16.013765	5	accepted	\N	\N	6:152419923-152419923 (A->G)	\N	2	2	0	0	0	f	\N
153	MCF7 cell lines harboring the Y537N mutation in the ligand-binding domain of ESR1 have shown resistance to hormone therapy.	11	122	49	2015-06-02 22:29:16.038324	2015-06-02 22:29:16.038324	3	accepted	\N	\N	6:152419922-152419922 (T->A)	\N	2	2	0	0	1	f	\N
154	The Y537N ligand binding domain mutations have been shown to result in constitutive activity and continued responsiveness to anti-estrogen therapies in vitro.	11	123	49	2015-06-02 22:29:16.061541	2015-06-02 22:29:16.061541	5	accepted	\N	\N	6:152419922-152419922 (T->A)	\N	2	2	0	0	0	f	\N
155	MCF7 cell lines harboring the L537S mutation in the ligand-binding domain of ESR1 have shown resistance to hormone therapy.	11	122	50	2015-06-02 22:29:16.085842	2015-06-02 22:29:16.085842	3	accepted	\N	\N	6:152419923-152419923 (A->C)	\N	2	2	0	0	1	f	\N
156	The Y537S ligand binding domain mutations have been shown to result in constitutive activity and continued responsiveness to anti-estrogen therapies in vitro.	11	123	50	2015-06-02 22:29:16.108964	2015-06-02 22:29:16.108964	5	accepted	\N	\N	6:152419923-152419923 (A->C)	\N	2	2	0	0	0	f	\N
157	In a single patient with this fusion in intrahepatic cholangiocarcinoma. Ponatinib treatment resulted in necrosis and shrinkage of the primary and metastatic sites and overall stable disease. However, this response did not meet criteria for RECIST partial response.	23	124	52	2015-06-02 22:29:16.136061	2015-06-02 22:29:16.136061	2	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
158	Following identification of this fusion in a patient, this fusion was expressed in HEK 293T cells leading to oligomerization in the absence of ligand, induced morphologic changes in the cell and increased cellular proliferation consistent with FGFR activation. Mouse xenografts using the bladder cell line SW780 which harbors an FGFR3-BAIAP2L1 fusion showed reduced tumor burden when treated with the FGFR inhibitor PD173074.	24	125	53	2015-06-02 22:29:16.170142	2015-06-02 22:29:16.170142	3	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
159	In a 43 year old female patient with this fusion in intrahepatic cholangiocarcinoma. Both pazopanib and ponatinib separately resulted in minor tumor shrinkage. This fusion is also shown to be recurrent in multiple other cancer types.	23	124	54	2015-06-02 22:29:16.255075	2015-06-02 22:29:16.255075	3	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
160	AG1296 is effective in triggering apoptosis in Ba/F3 and primary AML cells with FLT3 internal tandem repeat	19	126	55	2015-06-02 22:29:16.282034	2015-06-02 22:29:16.282034	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
161	ATRA treatment did not effect overall survival in patients <60 years old with FLT3-ITD mutation	19	127	55	2015-06-02 22:29:16.302654	2015-06-02 22:29:16.302654	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
162	CEP701 was effective in reducing blast counts of 5/14 heavily pre-treated AML patients with FLT3 mutations	19	128	55	2015-06-02 22:29:16.323236	2015-06-02 22:29:16.323236	4	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
163	Ba/F3 cells with both FLT3-ITD and TKD mutations on the same allele have more resistance to daunorubicin than cells with FLT3-ITD alone.	19	129	55	2015-06-02 22:29:16.3438	2015-06-02 22:29:16.3438	3	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
164	WBC counts were higher in AML patients with internal tandem repeat of Flt3 compared to wild type	19	130	55	2015-06-02 22:29:16.363382	2015-06-02 22:29:16.363382	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
165	FLT3-ITD mutation without NPM1 was associated with increased relapse risk and reduced overall survival in young adult AML patients (median age 43)	19	131	55	2015-06-02 22:29:16.38306	2015-06-02 22:29:16.38306	4	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
166	Increasing level of FLT3-ITD mutant correlated with reduced disease-free and overall survival as well as increased relapse rate	19	131	55	2015-06-02 22:29:16.401572	2015-06-02 22:29:16.401572	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
167	FLT3-ITD duplication length did not effect prognosis in patients with an NPM1 mutation	19	132	55	2015-06-02 22:29:16.421074	2015-06-02 22:29:16.421074	4	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
168	In young AML patients (<60 years old), DNMT3A mutation status was not predictive of overall and relapse free survival in patients with NPM1 mutations and wildtype FLT3 or wildtype NPM1 and FLT3-ITD	19	107	55	2015-06-02 22:29:16.439628	2015-06-02 22:29:16.439628	4	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
169	Size of the FLT3-ITD mutant duplication had no impact on overall survival or relapse rate	19	131	55	2015-06-02 22:29:16.458089	2015-06-02 22:29:16.458089	2	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
170	A ratio of >0.49 FLT3-ITD/FLT3 wildtype level was associated with reduced event-free and overall survival in old (>59) and younger patients (<60) with an NPM1 mutation	19	132	55	2015-06-02 22:29:16.476223	2015-06-02 22:29:16.476223	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
171	AML patients with internal tandem repeat of FLT3 has worse overall survival than patients with wild type FLT3	19	130	55	2015-06-02 22:29:16.494726	2015-06-02 22:29:16.494726	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
172	In AML patients with FLT3-ITD mutations, concurrent DNMT3A mutations were associated with worse overall survival compared to those without DNMT3A mutation.	19	105	55	2015-06-02 22:29:16.513173	2015-06-02 22:29:16.513173	5	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
173	Meta-analysis of studies involving cytogentically normal younger (<60) patients showed reduced overall and relapse-free survival for patients with FLT3-ITD	19	133	55	2015-06-02 22:29:16.532762	2015-06-02 22:29:16.532762	2	accepted	\N	\N	N/A	\N	0	1	0	0	3	f	\N
174	Patients with NPM1 mutation and FLT3-ITD had reduced event-free survival compared to patients with wildtype FLT3	19	132	55	2015-06-02 22:29:16.549237	2015-06-02 22:29:16.549237	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
175	Simultaneous tandem repeat of FLT3 with loss of wild type FLT3 leads to poor survival and inferior disease free survival in patients with AML.	19	134	55	2015-06-02 22:29:16.566602	2015-06-02 22:29:16.566602	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
176	Using a ratio of FLT3-ITD/FLT3 wildtype levels as a continuous variable, a higher ratio was associated with reduced event-free survival in patients with an NPM1 mutation	19	132	55	2015-06-02 22:29:16.583027	2015-06-02 22:29:16.583027	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
177	Sorafenib is effective in patients with FLT3 internal tandem repeats, but not in wild type or D835 mutation.	19	135	55	2015-06-02 22:29:16.600845	2015-06-02 22:29:16.600845	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
178	Ba/F3 cells with both FLT3-ITD and TKD mutations on the same allele have more resistance to the protein tyrosine kinase (PTK) inhibitor SU5614 than cells with FLT3-ITD alone or FLT3 ITD and TKD mutations on opposing alleles.	19	129	55	2015-06-02 22:29:16.617716	2015-06-02 22:29:16.617716	3	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
179	CEP701 was effective in reducing blast counts of 5/14 heavily pre-treated AML patients with FLT3 mutations	19	128	56	2015-06-02 22:29:16.635781	2015-06-02 22:29:16.635781	4	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
180	Ba/F3 cells with both FLT3-ITD and TKD mutations on the same allele have more resistance to daunorubicin than cells with FLT3-ITD alone.	19	129	56	2015-06-02 22:29:16.652793	2015-06-02 22:29:16.652793	3	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
181	WBC counts were not significantly different in AML patients with FLT3 D835 mutations compared to wild type	19	130	56	2015-06-02 22:29:16.669874	2015-06-02 22:29:16.669874	3	accepted	\N	\N	N/A	\N	1	0	0	1	4	f	\N
182	AML patients with D835 mutation of FLT3 did not have worse overall survival than patients with wild type FLT3	19	130	56	2015-06-02 22:29:16.68683	2015-06-02 22:29:16.68683	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
183	Event-free survival was significantly improved in patients with both NPM1 and FLT3-TKD mutations compared to patients with 1) FLT3-TKD mutations alone 2) either NPM1 or FLT3-TKD when FLT3-ITD patients were excluded from the analysis 3) neither FLT3-TKD or NPM1 mutations or FLT3-TKD alone when only de novo, normal karyotype patients were analyzed	19	136	56	2015-06-02 22:29:16.704865	2015-06-02 22:29:16.704865	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
184	In AML patients, FLT3-TKD mutation was associated with poorer disease free survival compared to patients with wild type FLT3	19	137	56	2015-06-02 22:29:16.722834	2015-06-02 22:29:16.722834	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
185	Emergence of D835 mutation in AML patients with FLT3 tandem repeat is associated with sorafenib resistance	19	138	56	2015-06-02 22:29:16.740584	2015-06-02 22:29:16.740584	4	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
186	Sorafenib is effective in patients with FLT3 internal tandem repeat mutations, but not in patients with wild type or D835 mutation.	19	135	56	2015-06-02 22:29:16.757388	2015-06-02 22:29:16.757388	4	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
187	Ba/F3 cells with both FLT3-ITD and TKD mutations on the same allele have more resistance to the protein tyrosine kinase (PTK) inhibitor SU5614 than cells with FLT3-ITD alone or FLT3 ITD and TKD mutations on opposing alleles.	19	129	56	2015-06-02 22:29:16.774116	2015-06-02 22:29:16.774116	3	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
188	Targeting overactive GATA2-mediated pathways with inhibitors bortezomib and fasudil led to dramatic tumor regression.	25	139	57	2015-06-02 22:29:16.794326	2015-06-02 22:29:16.794326	4	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
189	In leukemia patients, IDH1 R132 mutation is associated with adults and normal karyotype.	19	140	58	2015-06-02 22:29:16.817159	2015-06-02 22:29:16.817159	2	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
190	Mutation status of IDH1 did not change event-free survival of patients with an NPM1 mutation	19	141	58	2015-06-02 22:29:16.835254	2015-06-02 22:29:16.835254	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
191	The complete remission and overall survival rates in patients with IDH1 R132 mutation is not significantly different from those who do not have this mutation	19	142	58	2015-06-02 22:29:16.853236	2015-06-02 22:29:16.853236	2	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
192	In patients with astrocytoma, the presence of IDH1 R132 mutation is prognostic for better survival compared to patients who harbor wild type mutation.	26	143	58	2015-06-02 22:29:16.872498	2015-06-02 22:29:16.872498	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
193	In patients with glioblastoma, those harboring IDH1 R132 mutation has higher overall survival compared to those who do not have IDH1 mutation	27	144	58	2015-06-02 22:29:16.891555	2015-06-02 22:29:16.891555	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
194	IDH1 R132 mutation in patients suffering from myelodysplastic syndromes is associated with worse overall survival	28	145	58	2015-06-02 22:29:16.910664	2015-06-02 22:29:16.910664	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
195	IDH1 R132 mutation is associated with patients of older age, high platelet count during diagnosis, cytogenic normalcy and NPM1 mutation	19	146	59	2015-06-02 22:29:16.928746	2015-06-02 22:29:16.928746	3	accepted	\N	\N	2:209113113-209113113 (G->A)	\N	1	0	0	0	4	f	\N
196	IDH1 R132 mutation in patients with AML is not associated with any prognostic value compared to patients with wild-type IDH1.	19	146	59	2015-06-02 22:29:16.945966	2015-06-02 22:29:16.945966	2	accepted	\N	\N	2:209113113-209113113 (G->A)	\N	1	1	0	1	6	f	\N
197	IDH1 R132 mutation in patients with AML is not associated with any prognostic value compared to patients with wild-type IDH1.	19	146	60	2015-06-02 22:29:16.963598	2015-06-02 22:29:16.963598	3	accepted	\N	\N	2:209113112-209113112 (C->T)	\N	1	1	0	1	6	f	\N
198	IDH1 R132 mutation in patients with AML is not associated with any prognostic value compared to patients with wild-type IDH1.	19	146	61	2015-06-02 22:29:16.980786	2015-06-02 22:29:16.980786	3	accepted	\N	\N	2:209113112-209113112 (C->A)	\N	1	1	0	1	6	f	\N
199	AML patients with IDH2 mutations such as R140Q/L have event free survival and overall survival similar to those with wild-type IDH2	19	147	62	2015-06-02 22:29:16.99951	2015-06-02 22:29:16.99951	2	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
200	In patients with IDH2 R140Q/L mutation, the presence of mutation does not impact overall survival or disease free survival.	19	148	62	2015-06-02 22:29:17.017784	2015-06-02 22:29:17.017784	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
201	In AML, patients with IDH2 R140K mutation have improved overall survival compared to those with wild-type IDH2	19	149	62	2015-06-02 22:29:17.035784	2015-06-02 22:29:17.035784	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
202	In patients suffering from MDS, the presence of IDH2 mutation such as R140Q/L do not confer prognostic value (overall survival)	29	150	62	2015-06-02 22:29:17.054991	2015-06-02 22:29:17.054991	2	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
203	R140Q mutation in IDH2 does not have prognostic value in patients with MDS.	29	151	62	2015-06-02 22:29:17.073233	2015-06-02 22:29:17.073233	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
204	AML patients with IDH2 mutations such as R172K have event free survival and overall survival similar to those with wild-type IDH2.	19	147	63	2015-06-02 22:29:17.090148	2015-06-02 22:29:17.090148	2	accepted	\N	\N	15:90631838-90631838 (C->T)	\N	1	1	0	1	6	f	\N
205	In AML, patients with an IDH2 R172K mutation have worse overall survival compared to those with wild-type IDH2	19	149	63	2015-06-02 22:29:17.107495	2015-06-02 22:29:17.107495	3	accepted	\N	\N	15:90631838-90631838 (C->T)	\N	1	1	0	0	3	f	\N
206	In patients suffering from MDS, the presence of IDH2 mutations such as R172K do not confer prognostic value (overall survival)	29	150	63	2015-06-02 22:29:17.124607	2015-06-02 22:29:17.124607	2	accepted	\N	\N	15:90631838-90631838 (C->T)	\N	1	1	0	1	6	f	\N
207	JAK2 V617F is associated with myeloid malignanices (AML, MDS, CMML/atypical CML).	1	152	64	2015-06-02 22:29:17.143234	2015-06-02 22:29:17.143234	4	accepted	\N	\N	9:5073770-5073770 (G->T)	\N	1	0	0	0	4	f	\N
208	JAK2 V617F is associated with myeloid neoplasms (AML, MDS, CMML/aCML)	1	152	64	2015-06-02 22:29:17.160382	2015-06-02 22:29:17.160382	4	accepted	\N	\N	9:5073770-5073770 (G->T)	\N	1	0	0	0	4	f	\N
210	The SNP rs10974944 in the Jak2 locus is associated with increased predisposition for JAK2 V617F mutation and its associated cancer	31	153	64	2015-06-02 22:29:17.198683	2015-06-02 22:29:17.198683	4	accepted	\N	\N	9:5073770-5073770 (G->T)	\N	1	0	0	0	4	f	\N
211	In patients with JAK2 V617F, the use of pegylated IFN-alpha-2a leads to reduction in the percentage of cells harboring JAK2 V617F.	32	154	64	2015-06-02 22:29:17.218113	2015-06-02 22:29:17.218113	4	accepted	\N	\N	9:5073770-5073770 (G->T)	\N	1	2	0	0	0	f	\N
212	TG101348 effectively inhibits STAT5 signaling in JAK2 V617F cells	32	155	64	2015-06-02 22:29:17.252481	2015-06-02 22:29:17.252481	3	accepted	\N	\N	9:5073770-5073770 (G->T)	\N	2	2	0	0	0	f	\N
213	In acute myloid leukemia patients, D816 mutation is associated with earlier relapse and poorer prognosis than wildtype KIT	33	156	65	2015-06-02 22:29:17.273941	2015-06-02 22:29:17.273941	4	accepted	\N	\N	4:55599321-55599321 (A->T)	\N	1	1	0	0	3	f	\N
214	KIT mutation is associated with larger, more invasive tumors, greater pathologic histology and older patients compared to tumors with wildtype KIT	34	157	66	2015-06-02 22:29:17.304676	2015-06-02 22:29:17.304676	2	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
215	KIT mutations were identified in morphologically benign, incidentally discovered GISTs at a rate similar to that seen in advanced, metastatic GIST patients indicating is not a prognostic marker for GIST	34	158	66	2015-06-02 22:29:17.333856	2015-06-02 22:29:17.333856	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
216	There is no significant association between wildtype KIT or KIT mutations in exon 9 or 11 in survival among GIST patients.	34	159	66	2015-06-02 22:29:17.35636	2015-06-02 22:29:17.35636	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
217	KIT mutation is associated with worse overall and cause-specific prognosis in patients with GIST compared to patients with wildtype KIT	34	157	66	2015-06-02 22:29:17.379111	2015-06-02 22:29:17.379111	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
218	KIT mutations detected in 5/60 patients showed no prognostic significance in patients with small cell lung cancer	17	160	66	2015-06-02 22:29:17.403024	2015-06-02 22:29:17.403024	2	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
219	Melanoma patients with KIT mutation but not KIT amplification showed response to imatinib treatment in a small cohort of patients.	7	161	66	2015-06-02 22:29:17.425805	2015-06-02 22:29:17.425805	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
220	Melanoma patients with KIT mutation but not KIT amplification showed response to imatinib treatment in a small cohort of patients.	7	161	68	2015-06-02 22:29:17.447366	2015-06-02 22:29:17.447366	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
221	GIST patients with exon 14 KIT mutations had reduced overall survival compared to patients wiltype for KIT	34	159	69	2015-06-02 22:29:17.464902	2015-06-02 22:29:17.464902	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
222	KIT mutation is associated with larger, more invasive tumors, greater pathologic histology and older patients compared to tumors with wildtype KIT	34	157	70	2015-06-02 22:29:17.482605	2015-06-02 22:29:17.482605	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
223	Melanoma patients with KIT mutation but not KIT amplification showed response to imatinib treatment in a small cohort of patients.	7	161	70	2015-06-02 22:29:17.50367	2015-06-02 22:29:17.50367	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
224	There is no significant association between wildtype KIT or KIT mutations in exon 9 or 11 in survival among GIST patients.	34	159	71	2015-06-02 22:29:17.524806	2015-06-02 22:29:17.524806	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
225	KIT mutations detected in 5/60 patients showed no prognostic significance in patients with small cell lung cancer	17	160	71	2015-06-02 22:29:17.542435	2015-06-02 22:29:17.542435	2	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
226	In a case study, a patient with anal melanoma harboring a 7 codon duplication in the juxtamambrane region (exon 11) of KIT showed marked response 4 months after imatinib treatment.	35	162	67	2015-06-02 22:29:17.562267	2015-06-02 22:29:17.562267	3	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
227	The melanoma cell line WM3211, which harbors the L576P mutation, is sensitive to dasatinib. Molecular modeling indicated the L576P mutation alters the conformation of KIT but did not alter the binding affinity of dasatinib.	7	163	72	2015-06-02 22:29:17.584439	2015-06-02 22:29:17.584439	3	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
228	The melanoma cell line WM3211, which harbors the L576P mutation, is not sensitive to imatinib, nilotinib, and sorafenib. Molecular modeling indicated the L576P mutation alters the conformation of KIT and reduces the binding affinity of imatinib.	7	163	72	2015-06-02 22:29:17.606584	2015-06-02 22:29:17.606584	3	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
229	Ba/F3 cells harboring the KIT L576P mutation are sensitive to dasantinib, nilotinib and imatinib.	3	164	72	2015-06-02 22:29:17.633224	2015-06-02 22:29:17.633224	3	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
230	KIT V654A results in imatinib resistance in GIST patient-derived cell lines.	34	165	73	2015-06-02 22:29:17.6591	2015-06-02 22:29:17.6591	3	accepted	\N	\N	4:55594258-55594258 (T->C)	\N	2	2	0	0	1	f	\N
231	In GIST tumor cells and patients harboring KIT V654A mutation, SU11248 is effective for those that are refractory to imatinib.	34	166	73	2015-06-02 22:29:17.681486	2015-06-02 22:29:17.681486	3	accepted	\N	\N	4:55594258-55594258 (T->C)	\N	1	2	0	0	0	f	\N
232	Patients with colorectal cancer who harbor KRAS mutation have low response rate to cetuximab	6	167	74	2015-06-02 22:29:17.705575	2015-06-02 22:29:17.705575	4	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
233	KRAS mutation status was not predictive of response to regorafenib treatment in patients that had received standard therapy and progressed within 3 months of their last treatment	6	168	75	2015-06-02 22:29:17.724531	2015-06-02 22:29:17.724531	4	accepted	\N	\N	N/A	\N	1	2	0	1	0	f	\N
234	In NSCLC, Exon 2 KRAS mutations were associated with resistance to the EGFR kinase inhibitors gefitinib and erlotinib	3	169	75	2015-06-02 22:29:17.744849	2015-06-02 22:29:17.744849	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
235	Children with early age leukaemia who had second hand smoke exposure are more likely to harbor KRAS mutation.	36	170	76	2015-06-02 22:29:17.766311	2015-06-02 22:29:17.766311	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
236	In patients with stage III colorectal cancer undergoing chemotherapy, KRAS G12 mutation did not impact overall or disease free survival.	8	171	76	2015-06-02 22:29:17.785274	2015-06-02 22:29:17.785274	4	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
237	The presence of KRAS mutations in MM patients is prognostic for shorter overall and progression free survival	37	172	76	2015-06-02 22:29:17.804911	2015-06-02 22:29:17.804911	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
238	KRAS mutations in lung cancer patients are not associated with smoking history, age or gender	3	173	76	2015-06-02 22:29:17.823938	2015-06-02 22:29:17.823938	3	accepted	\N	\N	N/A	\N	1	0	0	1	4	f	\N
239	There is no strong association between KRAS mutation status and overall or progression free survival in patients with NSCLC	3	174	76	2015-06-02 22:29:17.84243	2015-06-02 22:29:17.84243	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
240	A meta-analysis showed KRAS mutation is associated with worse outcome in patients with NSCLC	3	175	76	2015-06-02 22:29:17.862931	2015-06-02 22:29:17.862931	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
272	ATRA treatment improved overall and relapse-free survival in older (>60) patients with mutant NPM1 and without FLT3-ITD	19	187	86	2015-06-02 22:29:18.524625	2015-06-02 22:29:18.524625	2	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
241	Chemotherapy-refractory patients with colorectal cancer harboring KRAS mutations (primarily G12/G13) had lower response and disease control rates and shorter progression free and overall survival following cetuximab plus chemotherapy than those with wildtype KRAS	6	70	77	2015-06-02 22:29:17.880347	2015-06-02 22:29:17.880347	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
242	KRAS mutations were significantly associated with lack of response to cetuximab in patients with advanced colorectal cancer	6	176	77	2015-06-02 22:29:17.89944	2015-06-02 22:29:17.89944	3	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
243	KRAS mutations were significantly associated with reduced progression-free and overall survival in patients with advanced colorectal cancer	6	176	77	2015-06-02 22:29:17.917103	2015-06-02 22:29:17.917103	3	accepted	\N	\N	N/A	\N	2	1	0	0	3	f	\N
244	KRAS G12 mutations were the primary predictor of EGFR TKI resistance in patients with lung adenocarcinoma.	38	177	148	2015-06-02 22:29:17.937701	2015-06-02 22:29:17.937701	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
245	KRAS G12C occur more frequently in women than men	17	178	78	2015-06-02 22:29:17.964361	2015-06-02 22:29:17.964361	2	accepted	\N	\N	12:25398285-25398285 (C->A)	\N	1	0	0	0	4	f	\N
246	KRAS G12 mutations were the primary predictor of EGFR TKI resistance in patients with lung adenocarcinoma.	38	177	78	2015-06-02 22:29:17.984063	2015-06-02 22:29:17.984063	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
247	KRAS G12D mutation occurs in never smokers significantly more often than in smokers	17	178	79	2015-06-02 22:29:18.008957	2015-06-02 22:29:18.008957	3	accepted	\N	\N	12:25398284-25398284 (C->T)	\N	1	0	0	0	4	f	\N
248	In a patient with V600E-positive NSCLC, KRAS G12D seemed to confer resistance to dabrafenib.	3	179	79	2015-06-02 22:29:18.029715	2015-06-02 22:29:18.029715	2	accepted	\N	\N	12:25398284-25398284 (C->T)	\N	1	2	0	0	1	f	\N
249	The use of NVP-BEZ235 in conjunction with ARRY-142886, but not as monotherapy, in a lung cancer model with KRAS G12D mutation led to marked tumor regression.	3	180	79	2015-06-02 22:29:18.050609	2015-06-02 22:29:18.050609	4	accepted	\N	\N	12:25398284-25398284 (C->T)	\N	2	2	0	0	0	f	\N
250	KRAS G12 mutations were the primary predictor of EGFR TKI resistance in patients with lung adenocarcinoma.	38	177	79	2015-06-02 22:29:18.073598	2015-06-02 22:29:18.073598	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
251	KRAS G12 mutations were the primary predictor of EGFR TKI resistance in patients with lung adenocarcinoma.	38	177	147	2015-06-02 22:29:18.097145	2015-06-02 22:29:18.097145	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
252	Children with early age leukaemia who had second hand smoke exposure are more likely to harbor KRAS mutation.	36	170	80	2015-06-02 22:29:18.120314	2015-06-02 22:29:18.120314	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
253	The presence of KRAS mutations in MM patients is prognostic for shorter overall and progression free survival	39	172	80	2015-06-02 22:29:18.139908	2015-06-02 22:29:18.139908	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
254	KRAS mutations in lung cancer patients are not associated with smoking history, age or gender	3	173	80	2015-06-02 22:29:18.15631	2015-06-02 22:29:18.15631	3	accepted	\N	\N	N/A	\N	1	0	0	1	4	f	\N
255	Cells harboring KRAS G12V mutation were insensitive to cetuximab treatment in isogenic SW48 cells and in a mouse xenograft model	8	181	81	2015-06-02 22:29:18.174271	2015-06-02 22:29:18.174271	4	accepted	\N	\N	12:25398281-25398281 (C->T)	\N	2	2	0	0	1	f	\N
256	Cells harboring KRAS G13D mutation were sensitive to cetuximab treatment in isogenic SW48 cells and in a mouse xenograft model	8	181	81	2015-06-02 22:29:18.191028	2015-06-02 22:29:18.191028	4	accepted	\N	\N	12:25398281-25398281 (C->T)	\N	2	2	0	0	0	f	\N
257	KRAS G13D mutation is associated with better response to Cetuximab with longer progression-free and overall survival in colorectal patients compared to other KRAS	8	181	81	2015-06-02 22:29:18.208528	2015-06-02 22:29:18.208528	4	accepted	\N	\N	12:25398281-25398281 (C->T)	\N	1	2	0	0	0	f	\N
258	KRAS G13D mutation is associated with better response to Cetuximab with longer progression-free and overall survival in colorectal patients compared to other KRAS	8	181	81	2015-06-02 22:29:18.226857	2015-06-02 22:29:18.226857	4	accepted	\N	\N	12:25398281-25398281 (C->T)	\N	1	1	0	0	2	f	\N
259	The MAP2K1 P124S mutation confers increased resistance to AZD6244 inhibition by about 5 fold.	7	182	82	2015-06-02 22:29:18.272887	2015-06-02 22:29:18.272887	3	accepted	\N	\N	15:66729162-66729162 (C->T)	\N	2	2	0	0	1	f	\N
260	MAP2K1 Q56P confers increased resistance to inhibition by AZD6244 by 100 fold.	7	183	83	2015-06-02 22:29:18.292275	2015-06-02 22:29:18.292275	3	accepted	\N	\N	15:66727451-66727451 (A->C)	\N	2	2	0	0	1	f	\N
261	Cell lines with MEF2D-CSF1R fusion show sensitivity to the tyrosine kinase inhibitors Imatinib and GW-2580	20	100	84	2015-06-02 22:29:18.310988	2015-06-02 22:29:18.310988	3	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
262	In Lung Cancer patients with acquired resistance to Dacomitinib (PF00299804), MET amplification and EGFR T790M were found to be the primary drivers of resistance.	3	120	146	2015-06-02 22:29:18.330795	2015-06-02 22:29:18.330795	4	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
263	MGMT promoter methylation has been shown to confer sensitivity to alkylating agents, such as carmustine, in glioblastoma cells.	40	184	85	2015-06-02 22:29:18.35519	2015-06-02 22:29:18.35519	4	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
264	MGMT promoter methylation was associated with increased overall and disease-free survival as well as tumor regression in patients with gliomas.	40	184	85	2015-06-02 22:29:18.374278	2015-06-02 22:29:18.374278	4	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
265	In patients lacking MGMT promoter methylation, the use of an MGMT inhibitor, such as O(6)-benzylguanine, in combination with alkylating agents (Carmustine) may be useful in treating patients with initial resistance to alkylating agents.	40	184	85	2015-06-02 22:29:18.392202	2015-06-02 22:29:18.392202	4	accepted	\N	\N	N/A	\N	3	2	0	0	0	f	\N
266	In a randomized clinical trial, patients with MGMT promoter methyaltion benefitted from temozolomide. This benefit was also methylation status dependent, as those without methylation did not see increased survival.	40	185	85	2015-06-02 22:29:18.412686	2015-06-02 22:29:18.412686	5	accepted	\N	\N	N/A	\N	0	2	0	0	0	f	\N
267	NOTCH1 gain-of-function mutations, including D1643H, have shown to be correlated to poor prognosis in lung cancer. This is in a TP53 wild-type context.	3	186	135	2015-06-02 22:29:18.432399	2015-06-02 22:29:18.432399	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
268	NOTCH1 gain-of-function mutations, including R2328W, have shown to be correlated to poor prognosis in lung cancer. This is in a TP53 wild-type context.	3	186	136	2015-06-02 22:29:18.450499	2015-06-02 22:29:18.450499	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
269	NOTCH1 gain-of-function mutations, including S2275fs, have shown to be correlated to poor prognosis in lung cancer. This is in a TP53 wild-type context.	3	186	138	2015-06-02 22:29:18.468417	2015-06-02 22:29:18.468417	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
270	NOTCH1 gain-of-function mutations, including V2444fs, have shown to be correlated to poor prognosis in lung cancer. This is in a TP53 wild-type context.	3	186	137	2015-06-02 22:29:18.486821	2015-06-02 22:29:18.486821	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
271	ATRA treatment did not effect overall survival in patients <60 years old with NPM1 mutation regardless of FLT3-ITD status	19	127	86	2015-06-02 22:29:18.505276	2015-06-02 22:29:18.505276	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
273	Young patients (18-60) with NPM1 mutations had improved overall survival following high-dose versus standard dose daunorubicin (p=0.01) in univariate analysis. However, the adjusted p-value for multiple testing is 0.11.	19	188	86	2015-06-02 22:29:18.543643	2015-06-02 22:29:18.543643	2	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
274	NPM1 mutations were not associated with the M3 acute myeloid leukemia FAB subtype (0/55).	19	189	86	2015-06-02 22:29:18.562944	2015-06-02 22:29:18.562944	3	accepted	\N	\N	N/A	\N	1	0	0	1	4	f	\N
275	NPM1 mutations were not associated with the M2 FAB subtype of acute myeloid leukemia.	19	190	86	2015-06-02 22:29:18.581874	2015-06-02 22:29:18.581874	4	accepted	\N	\N	N/A	\N	1	0	0	0	5	f	\N
276	AML with mutated NPM1 is a provisional entity in WHO classification of acute myeloid leukemia (AML). This mutation should be tested for in clinical trials and is recommended for testing in patients with cytogentically normal AML.	19	191	86	2015-06-02 22:29:18.600584	2015-06-02 22:29:18.600584	5	accepted	\N	\N	N/A	\N	0	0	0	0	4	f	\N
277	NPM1 mutations were associated with de novo AML as well as M4 and M5 FAB subtypes	19	131	86	2015-06-02 22:29:18.618492	2015-06-02 22:29:18.618492	2	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
278	NPM1 mutations were associated with M4, M5a and M5b FAB subtypes of acute myeloid leukemia.	19	190	86	2015-06-02 22:29:18.636377	2015-06-02 22:29:18.636377	4	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
279	NPM1 mutations were associated with M5a and M5b FAB subtypes of acute myeloid leukemia	19	189	86	2015-06-02 22:29:18.654128	2015-06-02 22:29:18.654128	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
280	NPM1 mutations were associated with normal karyotype in older (>60) patients	19	187	86	2015-06-02 22:29:18.671724	2015-06-02 22:29:18.671724	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
281	CD33 and CD123 expression was significantly increased in patients with NPM1 mutation with FLT3-ITD, indicating these patients may respond to combined anti-CD33 and anti-CD123 therapy	19	192	86	2015-06-02 22:29:18.690778	2015-06-02 22:29:18.690778	2	accepted	\N	\N	N/A	\N	3	2	0	0	0	f	\N
282	CD33 expression was significantly increased in patients with NPM1 mutation with or without FLT3-ITD, indicating these patients may respond to anti-CD33 therapy	19	192	86	2015-06-02 22:29:18.708256	2015-06-02 22:29:18.708256	2	accepted	\N	\N	N/A	\N	3	2	0	0	0	f	\N
283	NPM1 mutation without FLT3-ITD was associated with reduced relapse risk and increased overall survival in young adult acute myeloid leukemia patients (median age 43)	19	131	86	2015-06-02 22:29:18.726614	2015-06-02 22:29:18.726614	4	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
284	Patients with NPM1 mutations were associated with improved complete remission rates as well as overall and disease free survival when all ages and karyotype were analyzed; however, when only normal karyotype patients were analyzed, only complete remission rates were improved	19	187	86	2015-06-02 22:29:18.746116	2015-06-02 22:29:18.746116	3	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
285	In young AML patients (<60 years old), DNMT3A mutation status was not predictive of overall and relapse free survival in patients with NPM1 mutations and wildtype FLT3 or wildtype NPM1 and FLT3-ITD	19	107	86	2015-06-02 22:29:18.765183	2015-06-02 22:29:18.765183	4	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
286	Mutation status of IDH1 did not change event-free survival of patients with an NPM1 mutation	19	141	86	2015-06-02 22:29:18.783821	2015-06-02 22:29:18.783821	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
287	Complete remission rates were higher and both disease-free and overall survival were longer for patients with Exon 12 NPM1 mutations.	19	189	86	2015-06-02 22:29:18.801013	2015-06-02 22:29:18.801013	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
288	Complete remission rates were higher and event-free survival was longer for normal karyotype AML patients with Exon 12 NPM1 mutations.	19	190	86	2015-06-02 22:29:18.818915	2015-06-02 22:29:18.818915	5	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
289	Cytoplasmic localization of NPM in AML patients was an independent prognositic factor associated with complete remission in response to induction therapy in a multivariate analysis (p=0.019) but not in a univariate analysis (p=0.07).	19	193	86	2015-06-02 22:29:18.837104	2015-06-02 22:29:18.837104	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
290	Event-free survival was significantly improved in patients with both NPM1 and FLT3-TKD mutations compared to patients with 1) FLT3-TKD mutations alone 2) either NPM1 or FLT3-TKD when FLT3-ITD patients were excluded from the analysis 3) neither FLT3-TKD or NPM1 mutations or FLT3-TKD alone when only de novo, normal karyotype patients were analyzed	19	136	86	2015-06-02 22:29:18.854542	2015-06-02 22:29:18.854542	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
291	Intermediate risk patients with mutant NPM1 had improved overall survival with the presence of either IDH1 or IDH2 mutations than those wildtype for both IDH1 and IDH2	19	188	86	2015-06-02 22:29:18.871893	2015-06-02 22:29:18.871893	2	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
292	Normal karyotype patients with NPM1 mutation and without FLT3-ITD had improved overall and relapse-free survival, complete remission rates and remission duration compared to all other combinations of mutants	19	194	86	2015-06-02 22:29:18.890242	2015-06-02 22:29:18.890242	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
293	NPM1 mutation was associated with higher complete remission rates, lower cumulative incidence of relapse and higher overall survival in intermediate risk AML patients	19	195	86	2015-06-02 22:29:18.9089	2015-06-02 22:29:18.9089	4	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
294	NPM1 mutation was associated with increased overall, event-free and relapse-free survival and remission after induction therapy in the entire cohort and in the cytogenetically normal subset of patients	19	196	86	2015-06-02 22:29:18.927618	2015-06-02 22:29:18.927618	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
295	NPM1 mutation without FLT3-ITD was significantly associated with complete remission	19	98	86	2015-06-02 22:29:18.945996	2015-06-02 22:29:18.945996	3	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
296	NPM1 mutations were associated with increased complete remission rates as well as longer overall disease free survival in normal karyotype AML patients >59 years old, particularly in those >69 years old	19	197	86	2015-06-02 22:29:18.964389	2015-06-02 22:29:18.964389	4	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
297	Younger (16-60), normal karyotype AML patients with Exon 12 NPM1 mutation and without FLT3-ITD have increased overall survival, relapse-free survival and response to induction chemotherapy	19	198	86	2015-06-02 22:29:18.982779	2015-06-02 22:29:18.982779	4	accepted	\N	\N	N/A	\N	1	1	0	0	2	f	\N
298	Coocurrence of FLT3-ITD mutations significantly reduced overall survival of normal karyotype AML patients	19	189	86	2015-06-02 22:29:19.000396	2015-06-02 22:29:19.000396	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
299	Monitoring NPM1 mutation by cDNA-based RT-PCR effectively predicted relapse in 62/93 patients by >1 log increase in NPM1 levels (N=57) or lack of reduction in NPM1 levels following first line therapy (N=15)	19	199	86	2015-06-02 22:29:19.018553	2015-06-02 22:29:19.018553	2	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
300	Patients with NPM1 mutation and FLT3-ITD had reduced event-free survival compared to patients with wildtype FLT3	19	132	86	2015-06-02 22:29:19.036093	2015-06-02 22:29:19.036093	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
301	Patients with NPM1 mutations and low levels of FLT3-ITD have worse overall survival and cumulative incidence of relapse than those with NPM1 mutations alone in intermediate risk AML patients	19	195	86	2015-06-02 22:29:19.053657	2015-06-02 22:29:19.053657	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
302	TET2 mutation reduces overall survival of normal karyotype patients with either an NPM1 mutation or NPM1 mutation without FLT3-ITD	19	200	86	2015-06-02 22:29:19.071938	2015-06-02 22:29:19.071938	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
303	Using a ratio of FLT3-ITD/FLT3 wildtype levels as a continuous variable, a higher ratio was associated with reduced event-free survival in patients with an NPM1 mutation	19	132	86	2015-06-02 22:29:19.089003	2015-06-02 22:29:19.089003	4	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
304	NSC348884 combined with ATRA treatment induces apoptosis in primary AML cells harboring mutant NPM1 but not in cells with wildtype NPM1 or both mutant NPM1 and FLT3-ITD	19	201	86	2015-06-02 22:29:19.108179	2015-06-02 22:29:19.108179	3	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
305	For patients with NPM1 mutation that achieved CR following induction therapy, relapse-free survival was improved following treatment with valproic acid	19	202	86	2015-06-02 22:29:19.129191	2015-06-02 22:29:19.129191	2	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
306	No NPM1 mutations were identified in patients with favorable risk cytogenetics (79/215 patients)	19	105	87	2015-06-02 22:29:19.147938	2015-06-02 22:29:19.147938	4	accepted	\N	\N	5:170837546-170837547 (0->TCAG)	\N	1	0	0	1	4	f	\N
307	NPM1 mutations were associated with intermediate risk cytogenetics (including normal karyotype)	19	105	87	2015-06-02 22:29:19.176374	2015-06-02 22:29:19.176374	4	accepted	\N	\N	5:170837546-170837547 (0->TCAG)	\N	1	0	0	0	4	f	\N
308	NPM1 mutation (Type A, W288fs) causes cytoplasmic localization of NPM when transfected into a non-hematopoietic cell line (293T cells). Cytoplasmic localization of NPM in AML patients was associated with good response to induction therapy.	19	193	87	2015-06-02 22:29:19.222319	2015-06-02 22:29:19.222319	3	accepted	\N	\N	5:170837546-170837547 (0->TCAG)	\N	3	2	0	0	0	f	\N
309	NSC348884 induced apoptosis in OPI-AML3 cells harboring an NPM1 mutation.	19	201	87	2015-06-02 22:29:19.244179	2015-06-02 22:29:19.244179	3	accepted	\N	\N	5:170837546-170837547 (0->TCAG)	\N	2	2	0	0	0	f	\N
310	In patients with stage IV melanoma, NRAS mutation was associated with reduced median survival compared to patients with wildtype NRAS	7	203	88	2015-06-02 22:29:19.266944	2015-06-02 22:29:19.266944	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
311	The presence of NRAS mutation in AML patients does not impact diease prognosis (resistant disease, disease-free survival, complete remission rate, relapse rate, induction death)	19	204	89	2015-06-02 22:29:19.285688	2015-06-02 22:29:19.285688	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
312	Patients with colorectal cancer harboring NRAS mutation have poorer survival outcome and worse prognosis than patients with wildtype NRAS.	6	205	89	2015-06-02 22:29:19.304388	2015-06-02 22:29:19.304388	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
313	In patients with stage IV melanoma, NRAS mutation was associated with reduced median survival compared to patients with wildtype NRAS	7	203	89	2015-06-02 22:29:19.322104	2015-06-02 22:29:19.322104	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
314	Patients with colorectal cancer harboring NRAS mutation have poorer survival outcome and worse prognosis than patients with wildtype NRAS.	6	205	90	2015-06-02 22:29:19.339751	2015-06-02 22:29:19.339751	3	accepted	\N	\N	N/A	\N	0	1	0	0	3	f	\N
315	Patients with colorectal cancer harboring NRAS mutation have poorer survival outcome and worse prognosis than patients with wildtype NRAS.	6	205	91	2015-06-02 22:29:19.357384	2015-06-02 22:29:19.357384	3	accepted	\N	\N	N/A	\N	0	1	0	0	3	f	\N
316	NRAS mutation status does not impact overall, event-free or disease-free survival in patients with AML	19	206	92	2015-06-02 22:29:19.376129	2015-06-02 22:29:19.376129	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
317	Likely due to increased reliance of mutant NRAS on HSP90 for stabilization, inhibition of HSP90 by 17-AAG was shown to be effective in a patient with metastatic malignant melanoma with an NRAS G13D mutation	7	207	93	2015-06-02 22:29:19.39454	2015-06-02 22:29:19.39454	2	accepted	\N	\N	1:115258744-115258744 (C->T)	\N	1	2	0	0	0	f	\N
318	In chemotherapy-refractory patients with colorectal cancer, NRAS mutation status (primarily Q61) was not informative for disease control rate, progression free survival or overall survival following cetuximab plus chemotherapy.	6	70	94	2015-06-02 22:29:19.413006	2015-06-02 22:29:19.413006	3	accepted	\N	\N	N/A	\N	1	2	0	1	1	f	\N
319	Chemotherapy-refractory patients with colorectal cancer harboring NRAS mutation (primarily Q61) have a significantly lower response rate to cetuximab than patients wildtype for NRAS.	6	70	94	2015-06-02 22:29:19.429998	2015-06-02 22:29:19.429998	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
320	Melanoma associated with NRAS Q61 mutation was more often associated with those at the extremity than those at the trunk	7	208	94	2015-06-02 22:29:19.448727	2015-06-02 22:29:19.448727	3	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
321	Vemurafenib resistance is associated with gain of Q61 mutation in NRAS.	7	209	94	2015-06-02 22:29:19.466687	2015-06-02 22:29:19.466687	4	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
322	In a melanoma patient with NRAS Q61L mutation, treatment with temozolomide resulted in disease free survival of 14 months	7	210	95	2015-06-02 22:29:19.484923	2015-06-02 22:29:19.484923	2	accepted	\N	\N	1:115256528-115256529 (TT->CA)	\N	1	2	0	0	0	f	\N
323	In a melanoma patient with Q61R mutation, treatment with temozolomide resulted in overall survival of 16 months	7	210	96	2015-06-02 22:29:19.502106	2015-06-02 22:29:19.502106	2	accepted	\N	\N	1:115256528-115256529 (TT->CC)	\N	1	2	0	0	0	f	\N
324	In CHO cells with PDGFRA D842I mutation that have shown imatinib resistance, crenolanib was significantly more potent at inhibiting kinase activity than imatinib.	41	211	98	2015-06-02 22:29:19.52236	2015-06-02 22:29:19.52236	4	accepted	\N	\N	4:55152092-55152093 (GA->AT)	\N	2	2	0	0	0	f	\N
325	In CHO cells with PDGFRA D842V mutation that have shown imatinib resistance, crenolanib was significantly more potent at inhibiting kinase activity than imatinib.	41	211	99	2015-06-02 22:29:19.544637	2015-06-02 22:29:19.544637	4	accepted	\N	\N	4:55152093-55152093 (A->T)	\N	2	2	0	0	0	f	\N
326	GIST cancer with D842V mutation is resistant to imatinib.	41	212	99	2015-06-02 22:29:19.566977	2015-06-02 22:29:19.566977	4	accepted	\N	\N	4:55152093-55152093 (A->T)	\N	1	2	0	0	1	f	\N
327	While cancer with PVGFRA V561D mutation is known to be sensitive to Imatinib, double mutation of V561D and D842V mutants are resistant to imatinib.	41	165	99	2015-06-02 22:29:19.587944	2015-06-02 22:29:19.587944	4	accepted	\N	\N	4:55152093-55152093 (A->T)	\N	1	2	0	0	1	f	\N
328	GIST tumors harboring PDGFRA D842V mutation are more likely to be benign than malignant.	41	213	99	2015-06-02 22:29:19.610065	2015-06-02 22:29:19.610065	3	accepted	\N	\N	4:55152093-55152093 (A->T)	\N	1	0	0	0	5	f	\N
329	In CHO cells with PDGFRA D842Y mutation that have shown imatinib resistance, crenolanib was significantly more potent at inhibiting kinase activity than imatinib.	41	211	100	2015-06-02 22:29:19.630886	2015-06-02 22:29:19.630886	4	accepted	\N	\N	4:55152092-55152092 (G->T)	\N	2	2	0	0	0	f	\N
330	In CHO cells with the PDGFRA deletion I843 mutation that have shown imatinib resistance, crenolanib was significantly more potent at inhibiting kinase activity than imatinib.	41	211	101	2015-06-02 22:29:19.651844	2015-06-02 22:29:19.651844	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
331	In CHO cells with PDGFRA D842-843IM mutation that have shown imatinib resistance, crenolanib was significantly more potent at inhibiting kinase activity than imatinib.	41	211	102	2015-06-02 22:29:19.672662	2015-06-02 22:29:19.672662	4	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
332	Breast cancer cell lines with E542K/E545K mutations showed increased sensitivity to CH5132799 than cells with wild-type PIK3CA gene.	11	214	103	2015-06-02 22:29:19.695373	2015-06-02 22:29:19.695373	4	accepted	\N	\N	3:178936082-178936082 (G->A)	\N	2	2	0	0	0	f	\N
333	Rapamycin inhibits transformation induced by mutation in PIK3CA	11	215	103	2015-06-02 22:29:19.714733	2015-06-02 22:29:19.714733	3	accepted	\N	\N	3:178936082-178936082 (G->A)	\N	2	2	0	0	0	f	\N
334	The presence of a PIK3CA mutation in exon 9 (such as E542K) or exon 20 were associated with lack of panitumumab or cetuximab response.	6	216	103	2015-06-02 22:29:19.73484	2015-06-02 22:29:19.73484	3	accepted	\N	\N	3:178936082-178936082 (G->A)	\N	3	2	0	0	1	f	\N
335	Coexistence of exon 9 (E542K or E545K) and exon 20 mutations but not either alone, is prognostic for worse overall survival and cancer specific survival.	6	217	103	2015-06-02 22:29:19.754631	2015-06-02 22:29:19.754631	2	accepted	\N	\N	3:178936082-178936082 (G->A)	\N	3	1	0	0	3	f	\N
336	The presence of exon 9 (such as E542K) or exon 20 mutations were associated with poorer survival compared to those with wild-type PIK3CA mutation.	6	216	103	2015-06-02 22:29:19.77176	2015-06-02 22:29:19.77176	3	accepted	\N	\N	3:178936082-178936082 (G->A)	\N	3	1	0	0	3	f	\N
337	PIK3CA mutation status was not predictive of response to regorafenib treatment in patients that had received standard therapy and progressed within 3 months of their last treatment	6	168	103	2015-06-02 22:29:19.788929	2015-06-02 22:29:19.788929	4	accepted	\N	\N	3:178936082-178936082 (G->A)	\N	1	2	0	1	6	f	\N
338	Breast cancer cell lines with E542K/E545K mutations showed increased sensitivity to CH5132799 than cells with wild-type PIK3CA gene.	11	214	104	2015-06-02 22:29:19.805973	2015-06-02 22:29:19.805973	4	accepted	\N	\N	3:178936091-178936091 (G->A)	\N	2	2	0	0	0	f	\N
339	Rapamycin inhibits transformation induced by mutation in PIK3CA	11	215	104	2015-06-02 22:29:19.823175	2015-06-02 22:29:19.823175	3	accepted	\N	\N	3:178936091-178936091 (G->A)	\N	2	2	0	0	0	f	\N
340	The presence of a PIK3CA mutation in exon 9 (such as E542K) or exon 20 were associated with lack of panitumumab or cetuximab response.	6	216	104	2015-06-02 22:29:19.840759	2015-06-02 22:29:19.840759	3	accepted	\N	\N	3:178936091-178936091 (G->A)	\N	3	2	0	0	1	f	\N
341	Coexistence of exon 9 (E542K or E545K) and exon 20 mutations but not either alone, is prognostic for worse overall survival and cancer specific survival.	6	217	104	2015-06-02 22:29:19.859762	2015-06-02 22:29:19.859762	2	accepted	\N	\N	3:178936091-178936091 (G->A)	\N	3	1	0	0	3	f	\N
342	The presence of exon 9 (such as E545K) or exon 20 mutation may result in poorer survival compared to those with wild-type PIK3CA mutation.	6	216	104	2015-06-02 22:29:19.877174	2015-06-02 22:29:19.877174	3	accepted	\N	\N	3:178936091-178936091 (G->A)	\N	3	1	0	0	3	f	\N
343	PIK3CA mutation status was not predictive of response to regorafenib treatment in patients that had received standard therapy and progressed within 3 months of their last treatment	6	168	104	2015-06-02 22:29:19.895465	2015-06-02 22:29:19.895465	4	accepted	\N	\N	3:178936091-178936091 (G->A)	\N	1	2	0	1	6	f	\N
344	Chemotherapy-refractory patients with colorectal cancer harboring Exon 20 PIK3CA mutations had lower response and disease control rates as well as shorter progression free and overall survival following cetuximab plus chemotherapy than those with wildtype PIK3CA	6	70	105	2015-06-02 22:29:19.914558	2015-06-02 22:29:19.914558	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
345	In chemotherapy-refractory patients with colorectal cancer, Exon 9 PIK3CA mutations (Exon 9) had no significant impact on response rate, disease control rate, progression free surivival or overall survival following cetuximab plus chemotherapy than those with wildtype PIK3CA	6	70	106	2015-06-02 22:29:19.934057	2015-06-02 22:29:19.934057	3	accepted	\N	\N	N/A	\N	1	2	0	1	6	f	\N
346	Breast cancer cell lines with H1047R mutation showed increased sensitivity to CH5132799 than cells with wild-type PIK3CA gene.	11	214	107	2015-06-02 22:29:19.952227	2015-06-02 22:29:19.952227	4	accepted	\N	\N	3:178952085-178952085 (A->G)	\N	2	2	0	0	0	f	\N
347	Rapamycin inhibits transformation induced by mutation in PIK3CA	11	215	107	2015-06-02 22:29:19.970055	2015-06-02 22:29:19.970055	3	accepted	\N	\N	3:178952085-178952085 (A->G)	\N	2	2	0	0	0	f	\N
348	The presence of a PIK3CA mutation in exon 9 or exon 20 (such as H1047R) were associated with lack of panitumumab or cetuximab response.	6	216	107	2015-06-02 22:29:19.988278	2015-06-02 22:29:19.988278	3	accepted	\N	\N	3:178952085-178952085 (A->G)	\N	3	2	0	0	1	f	\N
349	The presence of exon 20 (such as H1047R) or exon 9 mutation may result in poorer survival compared to those with wild-type PIK3CA mutation.	6	216	107	2015-06-02 22:29:20.007592	2015-06-02 22:29:20.007592	3	accepted	\N	\N	3:178952085-178952085 (A->G)	\N	3	1	0	0	3	f	\N
350	PIK3CA mutation status was not predictive of response to regorafenib treatment in patients that had received standard therapy and progressed within 3 months of their last treatment	6	168	107	2015-06-02 22:29:20.025353	2015-06-02 22:29:20.025353	4	accepted	\N	\N	3:178952085-178952085 (A->G)	\N	1	2	0	1	6	f	\N
351	Fusion protein degradation is accelerated upon ATRA treatment of acute promyelocytic cells at pharmalogical concentrations.	42	218	108	2015-06-02 22:29:20.046057	2015-06-02 22:29:20.046057	5	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
352	A head-to-tail in-frame fusion between exon1 of DNAJB1 and exon2 of PRKACA resulting from a ~400kb deletion was observed in 100% (15/15) fibrolamellar hepatocellular carcinomas examined. The fusion was confirmed at both RNA and DNA level in all primary and metastatic tumor samples but not in adjacent normal tissue. Immunoprecipitation and Western blot analyses confirmed that the chimeric protein is expressed in tumor tissue, and a cell culture assay indicated that it retains kinase activity.	21	102	109	2015-06-02 22:29:20.064122	2015-06-02 22:29:20.064122	4	accepted	\N	\N	N/A	\N	1	0	0	0	4	f	\N
353	Cells with PTEN deficiency have been shown to exhibit slowed growth in reponse to PI3K-mTOR inhibitors.	2	219	110	2015-06-02 22:29:20.083982	2015-06-02 22:29:20.083982	4	accepted	\N	\N	10:89717672-89717672 (C->T)	\N	2	2	0	0	0	f	\N
354	PTEN nonsense mutations, including R233*, have been shown to be inactivating and loss-of-function, but do not have prognostic value in glioblastoma multiforme patients.	40	220	110	2015-06-02 22:29:20.141115	2015-06-02 22:29:20.141115	3	accepted	\N	\N	10:89717672-89717672 (C->T)	\N	1	1	0	1	3	f	\N
355	Fusion protein degradation is accelerated upon ATRA treatment of acute promyelocytic cells at pharmalogical concentrations.	42	218	111	2015-06-02 22:29:20.164555	2015-06-02 22:29:20.164555	5	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
356	Medullary thyroid cancer cells with RET C634W mutation are insensitive to motesanib, compared to wild-type RET.	43	221	112	2015-06-02 22:29:20.186297	2015-06-02 22:29:20.186297	3	accepted	\N	\N	10:43609950-43609950 (C->G)	\N	2	2	0	0	1	f	\N
357	The use of AZD1480 on RET-mutated/rearranged cell lines in vitro led to strong repression of tyroid cancer cell growth.	43	222	113	2015-06-02 22:29:20.217136	2015-06-02 22:29:20.217136	3	accepted	\N	\N	10:43617416-43617416 (T->C)	\N	2	2	0	0	0	f	\N
358	Medullary thyroid cancer cells with RET M918T mutation are insensitive to motesanib, compared to wild-type RET.	43	221	113	2015-06-02 22:29:20.236409	2015-06-02 22:29:20.236409	3	accepted	\N	\N	10:43617416-43617416 (T->C)	\N	2	2	0	0	1	f	\N
359	In patients with medullary carcinoma, the presence of RET M918T mutation is associated with increased probability of lymph node metastases.	43	223	113	2015-06-02 22:29:20.259187	2015-06-02 22:29:20.259187	5	accepted	\N	\N	10:43617416-43617416 (T->C)	\N	1	0	0	0	4	f	\N
360	Compared to those who harbor a wild type RET, patients with RET M918T mutation develop larger and more aggressive medullary thyroid cancer.	43	224	113	2015-06-02 22:29:20.278199	2015-06-02 22:29:20.278199	4	accepted	\N	\N	10:43617416-43617416 (T->C)	\N	1	1	0	0	3	f	\N
361	Patients with SF3B1 mutations had a statistically significant longer overall survival as well as event free-survival. Both before and after adjustment for age, karyotype and sex.	29	225	114	2015-06-02 22:29:20.297377	2015-06-02 22:29:20.297377	3	accepted	\N	\N	2:198267359-198267359 (C->A)	\N	3	1	0	0	2	f	\N
362	Patients with SF3B1 mutations had a statistically significant longer overall survival as well as event free-survival. Both before and after adjustment for age, karyotype and sex.	29	225	115	2015-06-02 22:29:20.314909	2015-06-02 22:29:20.314909	3	accepted	\N	\N	2:198266834-198266834 (T->C)	\N	3	1	0	0	2	f	\N
363	Breast tumors in a mouse model with R175H mutation are more responsive to doxorubicin than breast tumors with wild type TP53.	11	226	116	2015-06-02 22:29:20.334263	2015-06-02 22:29:20.334263	3	accepted	\N	\N	17:7578406-7578406 (C->T)	\N	2	2	0	0	0	f	\N
364	Breast cancer patients who harbor R175H mutation have worse overall survival than those with wild type TP53, but have better prognosis than those with R248W mutation.	11	227	116	2015-06-02 22:29:20.354361	2015-06-02 22:29:20.354361	3	accepted	\N	\N	17:7578406-7578406 (C->T)	\N	1	1	0	0	3	f	\N
365	Breast cancer patients who harbor R248Q mutation have worse overall survival than those with wild type TP53, but have better prognosis than those with R248W mutation.	11	227	117	2015-06-02 22:29:20.371927	2015-06-02 22:29:20.371927	3	accepted	\N	\N	17:7577538-7577538 (C->T)	\N	1	1	0	0	3	f	\N
366	In breast cancer patients harboring TP53 mutation, mutations in DNA contact regions such as R248 are prognostic for a worse relapse-free survival compared to other non-silent mutations in TP53.	11	228	117	2015-06-02 22:29:20.390935	2015-06-02 22:29:20.390935	3	accepted	\N	\N	17:7577538-7577538 (C->T)	\N	1	1	0	0	3	f	\N
367	In breast cancer patients harboring R248W mutation, the prognosis is worse than any other hotspot TP53 mutation, as well as worse than patients with wild type TP53.	11	227	118	2015-06-02 22:29:20.408728	2015-06-02 22:29:20.408728	3	accepted	\N	\N	17:7577539-7577539 (G->A)	\N	1	1	0	0	3	f	\N
368	In breast cancer patients harboring TP53 mutation, mutations in conserved regions such as R249 are prognostic for a worse overall survival compared to those harboring wild-type TP53.	11	228	119	2015-06-02 22:29:20.426689	2015-06-02 22:29:20.426689	3	accepted	\N	\N	17:7577535-7577535 (C->G)	\N	1	1	0	0	3	f	\N
369	In breast cancer patients harboring TP53 mutation, mutations in conserved regions such as R249 are prognostic for a worse overall survival compared to those harboring wild-type TP53.	11	228	120	2015-06-02 22:29:20.444207	2015-06-02 22:29:20.444207	3	accepted	\N	\N	17:7577536-7577536 (T->A)	\N	1	1	0	0	3	f	\N
370	Breast cancer patients who harbor R273C mutation have worse overall survival than those with wild type TP53, but have better prognosis than those with R248W mutation.	11	227	121	2015-06-02 22:29:20.461854	2015-06-02 22:29:20.461854	3	accepted	\N	\N	17:7577121-7577121 (G->A)	\N	1	1	0	0	3	f	\N
371	In breast cancer patients  harboring TP53 mutation, mutations in DNA contact regions such as R273 are prognostic for a worse relapse-free survival compared to other non-silent mutations in TP53.	11	228	121	2015-06-02 22:29:20.479406	2015-06-02 22:29:20.479406	3	accepted	\N	\N	17:7577121-7577121 (G->A)	\N	1	1	0	0	3	f	\N
372	Breast cancer patients who harbor R273H mutation have worse overall survival than those with wild type TP53, but have better prognosis than those with R248W mutation.	11	227	122	2015-06-02 22:29:20.496699	2015-06-02 22:29:20.496699	3	accepted	\N	\N	17:7577120-7577120 (C->T)	\N	1	1	0	0	3	f	\N
373	In breast cancer patients harboring TP53 mutation, mutations in DNA contact regions such as R273 are prognostic for a worse relapse-free survival compared to other non-silent mutations in TP53.	11	228	122	2015-06-02 22:29:20.513872	2015-06-02 22:29:20.513872	3	accepted	\N	\N	17:7577120-7577120 (C->T)	\N	1	1	0	0	3	f	\N
374	Breast tumor with R175H mutation are more responsive to doxorubicin than breast tumors with wild type TP53.	11	228	123	2015-06-02 22:29:20.533667	2015-06-02 22:29:20.533667	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
375	A patient with metastatic bladder cancer that responded well to the mTOR inhibitor everolimus was shown to harbor a TSC1 frameshift truncation mutation (c.1907_1908del, p.Glu636fs) and a nonsense NF2 mutation. 2/3 additional patients with TSC1 mutations also had mild responses to everolimus.	44	229	124	2015-06-02 22:29:20.554112	2015-06-02 22:29:20.554112	3	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
376	Following rapamycin treatment of mice with KrasG12D-induced lung tumors, mice with Tsc1 deletion (exon17/18 deletion resulting in frameshift) in the lung exhibit increased overall survival, increased apoptosis, reduced proliferation and reduced tumor burden compared to Tsc1 wildtype mice.	3	230	124	2015-06-02 22:29:20.584061	2015-06-02 22:29:20.584061	3	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
377	Tumors expressing TSC1 or TSC2 mutations show notably more sensitivity to everolimus than their wild-type counterparts.	24	231	125	2015-06-02 22:29:20.606105	2015-06-02 22:29:20.606105	3	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
378	Tumors expressing TSC1 or TSC2 mutations show notably more sensitivity to everolimus than their wild-type counterparts.	24	229	126	2015-06-02 22:29:20.627233	2015-06-02 22:29:20.627233	3	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
379	Age, sex, FAB subtype and karyotypes were not statistically significant between AML patients with U2AF Q157P/R mutations and those who harbor wild type U2AF.	19	232	127	2015-06-02 22:29:20.649608	2015-06-02 22:29:20.649608	3	accepted	\N	\N	N/A	\N	3	0	0	1	4	f	\N
380	In patients with AML, those who harbor Q157P/R mutation of U2AF do not show statistical significance in complete remission rate compared to those who harbor wild type U2AF.	19	232	127	2015-06-02 22:29:20.667865	2015-06-02 22:29:20.667865	2	accepted	\N	\N	N/A	\N	3	1	0	1	6	f	\N
381	In patients with MDS, those who harbor Q157P/R mutation of U2AF do not show statistical significance in complete remission rate compared to those who harbor wild type U2AF.	29	232	127	2015-06-02 22:29:20.687461	2015-06-02 22:29:20.687461	2	accepted	\N	\N	N/A	\N	3	1	0	1	6	f	\N
382	After adjust for age and cancer stage, presence of U2AF mutation such as Q157P/R is prognostic for poorer survival outcomes in patients with MDS.	29	233	127	2015-06-02 22:29:20.706903	2015-06-02 22:29:20.706903	3	accepted	\N	\N	N/A	\N	3	1	0	0	3	f	\N
383	Age, sex, FAB subtype and karyotypes were not statistically significant between AML patients with U2AF S34Y/F mutations and those who harbor wild type U2AF.	19	232	128	2015-06-02 22:29:20.724297	2015-06-02 22:29:20.724297	3	accepted	\N	\N	N/A	\N	3	0	0	1	4	f	\N
384	In patients with AML, complete remission rates are not different between patients who harbor the U2AF1 S34Y/F mutation and those with wild type U2AF1.	19	232	128	2015-06-02 22:29:20.741542	2015-06-02 22:29:20.741542	2	accepted	\N	\N	N/A	\N	3	1	0	1	6	f	\N
385	In patients with AML, complete remission rates are not different between patients who harbor the U2AF1 S34Y/F mutation and those with wild type U2AF1.	29	232	128	2015-06-02 22:29:20.758559	2015-06-02 22:29:20.758559	2	accepted	\N	\N	N/A	\N	3	1	0	1	6	f	\N
386	After adjust for age and cancer stage, the presence of U2AF mutations such as S34Y/F are prognostic for poorer survival outcomes in patients with MDS.	29	233	128	2015-06-02 22:29:20.776097	2015-06-02 22:29:20.776097	3	accepted	\N	\N	N/A	\N	3	1	0	0	3	f	\N
387	WT1 mutations were associated with an inferior response to induction chemotherapy with a higher rate of resistant disease in young (15-60+, median 45) patients with cytogenetically normal AML	19	234	129	2015-06-02 22:29:20.795802	2015-06-02 22:29:20.795802	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
388	No differences in relapse-free or overall survival were identified between young (16-60) patients with or without WT1 mutations (69% exon 7, 15% exon 9) in cytogenetically normal AML	19	235	129	2015-06-02 22:29:20.814967	2015-06-02 22:29:20.814967	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
389	Rates of complete remission and refractory disease are not different in patients with WT1 mutations (69% exon 7, 15% exon 9) than those without in young (16-60) patients with cytogenetically normal AML	19	235	129	2015-06-02 22:29:20.833011	2015-06-02 22:29:20.833011	4	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
390	Mutations  in WT1 were associated with increased risk of recurrence in young patients (15-50) with cytogenetically normal AML	19	236	129	2015-06-02 22:29:20.852068	2015-06-02 22:29:20.852068	2	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
391	Mutations in WT1 were associated with a worse overall prognosis than patients wildtype for WT1 in young patients (15-50), primarily because of increased risk of disease recurrence	19	236	129	2015-06-02 22:29:20.869754	2015-06-02 22:29:20.869754	2	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
392	Patients with WT1 (69% exon 7, 15% exon 9) and FLT3-ITD mutations had significantly lower complete remission and higher refractory disease rates than those with wildtype WT1 and without FLT3-ITD following induction therapy in young (16-60) patients with cytogenetically normal AML	19	235	129	2015-06-02 22:29:20.88744	2015-06-02 22:29:20.88744	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
393	WT mutations were associated with shorter overall and disease free survival in a cohort of cytogenetically normal, young (<60) AML patients	19	237	129	2015-06-02 22:29:20.905941	2015-06-02 22:29:20.905941	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
394	WT1 mutations were a negative prognostic factor for overall survival in young (15-60+, median 45) patients with cytogenetically normal AML	19	234	129	2015-06-02 22:29:20.923504	2015-06-02 22:29:20.923504	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
395	WT1 mutations were associated with a higher cumulative incidence of relapse and shorter relapse free survival in young (15-60+, median 45) patients with cytogenetically normal AML	19	234	129	2015-06-02 22:29:20.940892	2015-06-02 22:29:20.940892	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
396	WT1 mutations were associated with an inferior response to induction chemotherapy with a higher rate of resistant disease in young (15-60+, median 45) patients with cytogenetically normal AML	19	234	130	2015-06-02 22:29:20.958872	2015-06-02 22:29:20.958872	3	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
397	No differences in relapse-free or overall survival were identified between young (16-60) patients with or without WT1 mutations (69% exon 7, 15% exon 9) in cytogenetically normal AML	19	235	130	2015-06-02 22:29:20.977149	2015-06-02 22:29:20.977149	3	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
398	Rates of complete remission and refractory disease are not different in patients with WT1 mutations (69% exon 7, 15% exon 9) than those without in young (16-60) patients with cytogenetically normal AML.	19	235	130	2015-06-02 22:29:21.022631	2015-06-02 22:29:21.022631	4	accepted	\N	\N	N/A	\N	1	1	0	1	6	f	\N
399	Patients with WT1 (69% exon 7, 15% exon 9) and FLT3-ITD mutations had significantly lower complete remission and higher refractory disease rates than those with wildtype WT1 and without FLT3-ITD following induction therapy in young (16-60) patients with cytogenetically normal AML	19	235	130	2015-06-02 22:29:21.040351	2015-06-02 22:29:21.040351	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
400	WT1 mutations were a negative prognostic factor for overall survival in young (15-60+, median 45) patients with cytogenetically normal AML	19	234	130	2015-06-02 22:29:21.058184	2015-06-02 22:29:21.058184	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
401	WT1 mutations were associated with a higher cumulative incidence of relapse and shorter relapse free survival in young (15-60+, median 45) patients with cytogenetically normal AML	19	234	130	2015-06-02 22:29:21.0763	2015-06-02 22:29:21.0763	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
402	WT1 mutations were associated with shorter overall and disease free survival in a cohort of cytogenetically normal, young (<60) AML patients	19	237	130	2015-06-02 22:29:21.094803	2015-06-02 22:29:21.094803	3	accepted	\N	\N	N/A	\N	1	1	0	0	3	f	\N
403	Two metastatic melanoma patients with the L576P KIT mutation were treated with dasatinib, including one patient previously treated with imatinib. Both patients had marked reduction (>50%) and elimination of tumor F18-fluorodeoxyglucose (FDG)-avidity by positron emission tomography (PET) imaging after dasatinib treatment. These data support the selective inhibitory effect of dasatinib against cells harboring the most common KIT mutation in melanoma, and thus has therapeutic implications for acrallentiginous, chronic sun-damaged, and mucosal melanomas.	45	163	72	2015-06-02 22:29:21.116196	2015-06-02 22:29:21.116196	5	accepted	\N	\N	N/A	\N	1	2	0	0	0	f	\N
404	To formally test this hypothesis, we took advantage of HCT116 cells in which the KRAS D13 mutant allele had been genetically deleted by homologous recombination (15). Strikingly, we found that HCT116-derivative cells retaining only the KRAS WT allele (named HKh-2 and HKe-3; Supplemental Table 3) were sensitive to everolimus, while the parental and the isogenic cells carrying mutated KRAS were equally resistant to this compound (Figure 2A).	46	238	81	2015-06-02 22:29:21.137933	2015-06-02 22:29:21.137933	4	accepted	\N	\N	N/A	\N	2	2	0	0	1	f	\N
405	Figure 1 of paper shows that V654A was associated with progression of disease in one case of a mucosal melanoma. Results were from a Phase II clinical trial.	45	239	73	2015-06-02 22:29:21.157209	2015-06-02 22:29:21.157209	5	accepted	\N	\N	N/A	\N	1	2	0	0	1	f	\N
406	From the screen, we discovered that proteasome inhibitors show selectivity toward BRAF V600Emutant cells, irrespective of PTEN or RB1 expression. Preferential targeting of BRAF-mutant cells by proteasome inhibitors was corroborated in a second BRAF V600E isogenic model, as well as in a panel of colorectal cancer cell lines by the use of the proteasome inhibitor carfilzomib. Notably, carfilzomib also showed striking in vivo activity in a BRAF-mutant human colorectal cancer xenograft model. Vulnerability to proteasome inhibitors is dependent on persistent BRAF signaling, because BRAF V600E blockade by PLX4720 reversed sensitivity to carfilzomib in BRAF-mutant colorectal cancer cells. Our findings indicated that proteasome inhibition might represent a valuable targeting strategy in BRAF V600Emutant colorectal tumors.	47	240	12	2015-06-02 22:29:21.181089	2015-06-02 22:29:21.181089	3	accepted	\N	\N	N/A	\N	2	2	0	0	0	f	\N
\.


--
-- Data for Name: drugs_evidence_items; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY drugs_evidence_items (drug_id, evidence_item_id) FROM stdin;
1	1
1	2
2	3
3	3
4	4
4	5
4	6
5	7
6	8
6	9
7	10
6	11
6	12
7	13
6	14
6	15
8	16
6	17
6	18
8	19
8	20
9	21
9	22
10	23
11	24
12	25
10	25
1	26
12	27
13	28
11	28
9	28
14	29
15	29
15	30
16	30
17	31
18	31
19	31
13	32
1	33
18	34
20	35
21	35
12	36
10	36
1	37
1	38
1	39
12	40
1	41
1	42
1	43
1	44
1	45
1	46
1	47
22	48
12	49
12	50
12	51
23	52
23	53
1	54
1	55
1	56
1	57
1	58
1	59
1	60
1	61
1	62
1	63
1	64
1	65
24	66
1	67
1	68
1	69
1	70
25	71
26	72
25	73
26	74
1	75
1	76
1	77
1	78
1	79
1	80
1	81
1	82
4	83
27	83
3	84
3	85
3	86
3	87
3	88
3	89
3	90
28	90
1	91
29	92
30	93
1	94
1	95
1	96
1	97
1	98
1	99
1	100
1	101
1	102
1	103
1	104
1	105
1	106
1	107
1	108
1	109
1	110
1	111
1	112
1	113
1	114
1	115
1	116
1	117
1	118
1	119
1	120
31	121
31	122
31	123
28	123
31	124
28	124
1	125
1	126
31	127
28	128
28	129
32	129
31	130
1	131
1	132
33	133
34	134
35	135
35	136
35	137
35	138
36	139
35	140
35	141
35	142
35	143
36	143
35	144
35	145
35	146
37	147
38	148
39	148
37	149
38	150
39	150
37	151
38	152
39	152
37	153
38	154
39	154
37	155
38	156
39	156
40	157
41	158
42	159
40	159
43	160
44	161
45	162
29	163
1	164
1	165
1	166
1	167
1	168
1	169
1	170
1	171
1	172
1	173
1	174
1	175
1	176
9	177
46	178
45	179
29	180
1	181
1	182
1	183
1	184
9	185
9	186
46	187
47	188
48	188
1	189
1	190
1	191
1	192
1	193
1	194
1	195
1	196
1	197
1	198
1	199
1	200
1	201
1	202
1	203
1	204
1	205
1	206
1	207
1	208
1	209
1	210
49	211
50	212
1	213
1	214
1	215
1	216
1	217
1	218
4	219
4	220
1	221
1	222
4	223
1	224
1	225
4	226
3	227
4	228
2	228
9	228
3	229
4	229
2	229
4	230
51	231
13	232
52	233
31	234
28	234
1	235
1	236
1	237
1	238
1	239
1	240
13	241
13	242
1	243
31	244
28	244
1	245
31	246
28	246
1	247
12	248
53	249
54	249
31	250
28	250
31	251
28	251
1	252
1	253
1	254
13	255
13	256
13	257
13	258
22	259
22	260
4	261
27	261
34	262
55	263
1	264
56	265
21	266
1	267
1	268
1	269
1	270
44	271
44	272
29	273
1	274
1	275
1	276
1	277
1	278
1	279
1	280
1	281
1	282
1	283
1	284
1	285
1	286
1	287
1	288
1	289
1	290
1	291
1	292
1	293
1	294
1	295
1	296
1	297
1	298
1	299
1	300
1	301
1	302
1	303
57	304
44	304
58	305
1	306
1	307
1	308
57	309
1	310
1	311
1	312
1	313
1	314
1	315
1	316
59	317
13	318
13	319
1	320
18	321
21	322
21	323
60	324
60	325
4	326
4	327
1	328
60	329
60	330
60	331
61	332
62	333
13	334
11	334
1	335
1	336
52	337
61	338
62	339
13	340
11	340
1	341
1	342
52	343
13	344
13	345
61	346
62	347
13	348
11	348
1	349
52	350
44	351
1	352
1	353
1	354
44	355
63	356
64	357
63	358
1	359
1	360
1	361
1	362
65	363
1	364
1	365
1	366
1	367
1	368
1	369
1	370
1	371
1	372
1	373
1	374
66	375
62	376
66	377
66	378
1	379
1	380
1	381
1	382
1	383
1	384
1	385
1	386
1	387
1	388
1	389
1	390
1	391
1	392
1	393
1	394
1	395
1	396
1	397
1	398
1	399
1	400
1	401
1	402
3	403
66	404
4	405
67	406
\.


--
-- Name: drugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('drugs_id_seq', 67, true);


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY events (id, created_at, updated_at, action, description, originating_user_id, subject_id, subject_type) FROM stdin;
\.


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('events_id_seq', 1, false);


--
-- Name: evidence_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('evidence_items_id_seq', 406, true);


--
-- Data for Name: feeds; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY feeds (id, created_at, updated_at, owner_id, event_id, acknowledged) FROM stdin;
\.


--
-- Name: feeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('feeds_id_seq', 1, false);


--
-- Data for Name: gene_aliases; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY gene_aliases (id, name) FROM stdin;
1	CD246
2	NBLST3
3	AKT
4	CWS6
5	PKB
6	PKB-ALPHA
7	PRKBA
8	RAC
9	RAC-ALPHA
10	A-RAF
11	ARAF1
12	PKS2
13	RAFA1
14	ABL
15	JTK7
16	bcr/abl
17	c-ABL
18	c-ABL1
19	p150
20	v-abl
21	B-RAF1
22	BRAF1
23	NS7
24	RAFB1
25	BRCAI
26	BRCC1
27	BROVCA1
28	FANCS
29	IRIS
30	PNCA4
31	PPP1R53
32	PSCP
33	RNF53
34	BRCC2
35	BROVCA2
36	FACD
37	FAD
38	FAD1
39	FANCD
40	FANCD1
41	GLM3
42	PNCA2
43	XRCC11
44	BCL1
45	D11S287E
46	PRAD1
47	U21B31
48	KIAK0002
49	MPPH3
50	CCNE
51	MCPH12
52	PLSTIRE
53	CMM3
54	PSK-J3
55	ARF
56	CDK4I
57	CDKN2
58	CMM2
59	INK4
60	INK4A
61	MLM
62	MTS-1
63	MTS1
64	P14
65	P14ARF
66	P16
67	P16-INK4A
68	P16INK4
69	P16INK4A
70	P19
71	P19ARF
72	TP16
73	C/EBP-alpha
74	CEBP
75	HSPF1
76	Hdj1
77	Hsp40
78	RSPH16B
79	Sis1
80	PKACA
81	PPNAD4
82	DNMT3A2
83	M.HsaIIIA
84	TBRS
85	ERBB
86	ERBB1
87	HER1
88	NISBD2
89	PIG61
90	mENA
91	CD340
92	HER-2
93	HER-2/neu
94	HER2
95	MLN 19
96	NEU
97	NGL
98	TKR1
99	ER
100	ESR
101	ESRA
102	ESTRR
103	Era
104	NR3A1
105	BBDS
106	BEK
107	BFR-1
108	CD332
109	CEK3
110	CFD1
111	ECT1
112	JWS
113	K-SAM
114	KGFR
115	TK14
116	TK25
117	ACH
118	CD333
119	CEK2
120	HSFGFR3EX
121	JTK4
122	CD135
123	FLK-2
124	FLK2
125	STK1
126	DCML
127	IMD21
128	MONOMAC
129	NFE1B
130	HEL-216
131	HEL-S-26
132	IDCD
133	IDH
134	IDP
135	IDPC
136	PICD
137	D2HGA2
138	ICD-M
139	IDHM
140	IDPM
141	mNADP-IDH
142	JTK10
143	THCYT3
144	C-Kit
145	CD117
146	PBT
147	SCFR
148	C-K-RAS
149	CFC2
150	K-RAS2A
151	K-RAS2B
152	K-RAS4A
153	K-RAS4B
154	KI-RAS
155	KRAS1
156	KRAS2
157	NS
158	NS3
159	RASK2
160	CFC3
161	MAPKK1
162	MEK1
163	MKK1
164	PRKMK1
165	C-FMS
166	CD115
167	CSF-1R
168	CSFR
169	FIM2
170	FMS
171	HDLS
172	M-CSF-R
173	B23
174	NPM
175	ALPS4
176	CMNS
177	N-ras
178	NCMS
179	NRAS1
180	NS6
181	CLOVE
182	CWS5
183	MCAP
184	MCM
185	MCMTC
186	PI3K
187	p110-alpha
188	CD140A
189	PDGFR-2
190	PDGFR2
191	RHEPDGFRA
192	MYL
193	PP8675
194	RNF71
195	TRIM19
196	NR1B1
197	RAR
198	10q23del
199	BZS
200	CWS1
201	DEC
202	GLM2
203	MHAM
204	MMAC1
205	PTEN1
206	TEP1
207	CDHF12
208	CDHR16
209	HSCR1
210	MEN2A
211	MEN2B
212	MTC1
213	PTC
214	RET-ELE1
215	RET51
216	AML1
217	AML1-EVI-1
218	AMLCR1
219	CBFA2
220	EVI-1
221	PEBP2aB
222	Hsh155
223	MDS
224	PRP10
225	PRPF10
226	SAP155
227	SF3b155
228	BCC7
229	LFS1
230	P53
231	TRP53
232	LAM
233	TSC
234	PPP1R160
235	TSC4
236	FP793
237	RN
238	RNU2AF1
239	U2AF35
240	U2AFBP
241	AWT1
242	EWS-WT1
243	GUD
244	NPHS4
245	WAGR
246	WIT-2
247	WT33
248	FRAP
249	FRAP1
250	FRAP2
251	RAFT1
252	RAPT1
253	AOS5
254	AOVD1
255	TAN1
256	hN1
257	MIG20a
258	NTRKR3
259	TKT
260	TYRO10
261	AUTS9
262	DFNB97
263	HGFR
264	RCCP2
265	c-Met
266	JTK8
267	p53Lyn
268	p56Lyn
269	SDR38C1
\.


--
-- Data for Name: gene_aliases_genes; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY gene_aliases_genes (gene_alias_id, gene_id) FROM stdin;
1	1
2	1
3	2
4	2
5	2
6	2
7	2
8	2
9	2
10	3
11	3
12	3
13	3
14	4
15	4
16	4
17	4
18	4
19	4
20	4
21	5
22	5
23	5
24	5
25	6
26	6
27	6
28	6
29	6
30	6
31	6
32	6
33	6
34	7
35	7
36	7
37	7
38	7
39	7
40	7
41	7
42	7
43	7
44	8
45	8
46	8
47	8
48	9
49	9
50	11
51	12
52	12
53	13
54	13
55	14
56	14
57	14
58	14
59	14
60	14
61	14
62	14
63	14
64	14
65	14
66	14
67	14
68	14
69	14
70	14
71	14
72	14
73	15
74	15
75	16
76	16
77	16
78	16
79	16
80	17
81	17
82	18
83	18
84	18
85	19
86	19
87	19
88	19
89	19
90	19
91	20
92	20
93	20
94	20
95	20
96	20
97	20
98	20
99	21
100	21
101	21
102	21
103	21
104	21
105	22
106	22
107	22
108	22
109	22
110	22
111	22
112	22
113	22
114	22
115	22
116	22
117	23
118	23
119	23
120	23
121	23
122	24
123	24
124	24
125	24
126	25
127	25
128	25
129	25
130	26
131	26
132	26
133	26
134	26
135	26
136	26
137	27
138	27
133	27
139	27
134	27
140	27
141	27
142	28
143	28
144	29
145	29
146	29
147	29
148	30
149	30
150	30
151	30
152	30
153	30
154	30
155	30
156	30
157	30
158	30
159	30
160	31
161	31
162	31
163	31
164	31
165	33
166	33
167	33
168	33
169	33
170	33
171	33
172	33
173	35
174	35
175	36
176	36
177	36
178	36
179	36
180	36
181	37
182	37
183	37
184	37
185	37
186	37
187	37
188	38
189	38
190	38
191	38
192	39
193	39
194	39
195	39
196	40
197	40
198	41
199	41
200	41
201	41
202	41
203	41
204	41
205	41
206	41
207	42
208	42
209	42
210	42
211	42
212	42
213	42
214	42
215	42
216	43
217	43
218	43
219	43
220	43
221	43
222	44
223	44
224	44
225	44
226	44
227	44
228	45
229	45
230	45
231	45
232	46
233	46
232	47
234	47
235	47
236	48
237	48
238	48
239	48
240	48
241	49
242	49
243	49
244	49
245	49
246	49
247	49
248	50
249	50
250	50
251	50
252	50
253	51
254	51
255	51
256	51
257	52
258	52
259	52
260	52
261	53
262	53
263	53
264	53
265	53
266	54
267	54
268	54
269	55
\.


--
-- Name: gene_aliases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('gene_aliases_id_seq', 269, true);


--
-- Name: genes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('genes_id_seq', 55, true);


--
-- Data for Name: genes_sources; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY genes_sources (gene_id, source_id, created_at, updated_at) FROM stdin;
1	1	2015-06-02 22:28:53.001541	2015-06-02 22:28:53.001541
1	2	2015-06-02 22:28:53.004646	2015-06-02 22:28:53.004646
2	3	2015-06-02 22:28:53.401036	2015-06-02 22:28:53.401036
2	4	2015-06-02 22:28:53.404891	2015-06-02 22:28:53.404891
3	5	2015-06-02 22:28:53.720984	2015-06-02 22:28:53.720984
3	6	2015-06-02 22:28:53.724043	2015-06-02 22:28:53.724043
4	7	2015-06-02 22:28:53.977525	2015-06-02 22:28:53.977525
4	8	2015-06-02 22:28:53.979873	2015-06-02 22:28:53.979873
5	9	2015-06-02 22:28:54.321336	2015-06-02 22:28:54.321336
5	10	2015-06-02 22:28:54.326058	2015-06-02 22:28:54.326058
6	11	2015-06-02 22:28:54.69904	2015-06-02 22:28:54.69904
7	11	2015-06-02 22:28:55.006472	2015-06-02 22:28:55.006472
8	12	2015-06-02 22:28:55.377498	2015-06-02 22:28:55.377498
8	13	2015-06-02 22:28:55.382721	2015-06-02 22:28:55.382721
9	12	2015-06-02 22:28:55.780318	2015-06-02 22:28:55.780318
9	13	2015-06-02 22:28:55.783986	2015-06-02 22:28:55.783986
10	12	2015-06-02 22:28:56.186968	2015-06-02 22:28:56.186968
10	13	2015-06-02 22:28:56.19062	2015-06-02 22:28:56.19062
11	14	2015-06-02 22:28:56.885352	2015-06-02 22:28:56.885352
12	15	2015-06-02 22:28:57.142136	2015-06-02 22:28:57.142136
12	16	2015-06-02 22:28:57.147389	2015-06-02 22:28:57.147389
13	15	2015-06-02 22:28:57.471242	2015-06-02 22:28:57.471242
13	16	2015-06-02 22:28:57.474836	2015-06-02 22:28:57.474836
14	17	2015-06-02 22:28:57.802486	2015-06-02 22:28:57.802486
14	18	2015-06-02 22:28:57.805172	2015-06-02 22:28:57.805172
15	19	2015-06-02 22:28:58.097021	2015-06-02 22:28:58.097021
15	20	2015-06-02 22:28:58.101094	2015-06-02 22:28:58.101094
15	21	2015-06-02 22:28:58.105594	2015-06-02 22:28:58.105594
16	22	2015-06-02 22:28:58.462966	2015-06-02 22:28:58.462966
17	22	2015-06-02 22:28:58.728505	2015-06-02 22:28:58.728505
17	23	2015-06-02 22:28:58.734057	2015-06-02 22:28:58.734057
18	24	2015-06-02 22:28:58.978848	2015-06-02 22:28:58.978848
18	25	2015-06-02 22:28:58.981776	2015-06-02 22:28:58.981776
19	26	2015-06-02 22:28:59.382026	2015-06-02 22:28:59.382026
19	27	2015-06-02 22:28:59.385856	2015-06-02 22:28:59.385856
20	28	2015-06-02 22:28:59.657201	2015-06-02 22:28:59.657201
20	29	2015-06-02 22:28:59.660149	2015-06-02 22:28:59.660149
21	30	2015-06-02 22:28:59.978715	2015-06-02 22:28:59.978715
21	31	2015-06-02 22:28:59.981565	2015-06-02 22:28:59.981565
22	32	2015-06-02 22:29:00.313095	2015-06-02 22:29:00.313095
22	33	2015-06-02 22:29:00.316061	2015-06-02 22:29:00.316061
23	32	2015-06-02 22:29:00.785153	2015-06-02 22:29:00.785153
23	33	2015-06-02 22:29:00.786867	2015-06-02 22:29:00.786867
24	34	2015-06-02 22:29:01.049065	2015-06-02 22:29:01.049065
24	19	2015-06-02 22:29:01.05191	2015-06-02 22:29:01.05191
25	35	2015-06-02 22:29:01.505005	2015-06-02 22:29:01.505005
25	36	2015-06-02 22:29:01.509068	2015-06-02 22:29:01.509068
26	37	2015-06-02 22:29:02.056964	2015-06-02 22:29:02.056964
26	38	2015-06-02 22:29:02.060055	2015-06-02 22:29:02.060055
27	37	2015-06-02 22:29:02.694403	2015-06-02 22:29:02.694403
27	38	2015-06-02 22:29:02.701679	2015-06-02 22:29:02.701679
27	39	2015-06-02 22:29:02.709185	2015-06-02 22:29:02.709185
28	40	2015-06-02 22:29:02.980157	2015-06-02 22:29:02.980157
29	41	2015-06-02 22:29:03.472422	2015-06-02 22:29:03.472422
30	42	2015-06-02 22:29:03.922334	2015-06-02 22:29:03.922334
35	43	2015-06-02 22:29:05.184682	2015-06-02 22:29:05.184682
35	19	2015-06-02 22:29:05.18779	2015-06-02 22:29:05.18779
42	44	2015-06-02 22:29:07.404877	2015-06-02 22:29:07.404877
42	45	2015-06-02 22:29:07.407642	2015-06-02 22:29:07.407642
44	46	2015-06-02 22:29:07.997139	2015-06-02 22:29:07.997139
44	47	2015-06-02 22:29:08.001301	2015-06-02 22:29:08.001301
45	48	2015-06-02 22:29:08.332234	2015-06-02 22:29:08.332234
48	49	2015-06-02 22:29:09.031995	2015-06-02 22:29:09.031995
48	50	2015-06-02 22:29:09.036179	2015-06-02 22:29:09.036179
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY ratings (id, value, evidence_item_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('ratings_id_seq', 1, false);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY roles (id, name, description, created_at, updated_at) FROM stdin;
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('roles_id_seq', 1, false);


--
-- Data for Name: roles_users; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY roles_users (role_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY schema_migrations (version) FROM stdin;
20140805184308
20141021192035
20141022180523
20141022195329
20141108234203
20141108234935
20141109000136
20141114222425
20150107205621
20150115231117
20150116220720
20150116230539
20150116230632
20150204192653
20150205000010
20150205205734
20150205210725
20150210191015
20150210204445
20150219202227
20150220160805
20150220182109
20150223170106
20150227204142
20150227212146
20150303202505
20150305200429
20150319181853
20150416182633
20150501151624
20150511191452
20150512184905
20150528170506
20150528211748
20150602202928
\.


--
-- Name: sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('sources_id_seq', 240, true);


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY subscriptions (id, user_id, subscribable_id, subscribable_type, type, created_at, updated_at, action_type, action_class) FROM stdin;
\.


--
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('subscriptions_id_seq', 1, false);


--
-- Data for Name: suggested_changes; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY suggested_changes (id, suggested_changes, moderated_id, moderated_type, user_id, status, created_at, updated_at) FROM stdin;
\.


--
-- Name: suggested_changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('suggested_changes_id_seq', 1, false);


--
-- Data for Name: tsv_releases; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY tsv_releases (id, path, created_at, updated_at) FROM stdin;
\.


--
-- Name: tsv_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('tsv_releases_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Data for Name: variant_groups; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY variant_groups (id, name, description, created_at, updated_at, deleted, deleted_at) FROM stdin;
10	KIT Exon 17	\N	2015-06-02 22:29:17.287331	2015-06-02 22:29:17.287331	f	\N
11	KIT Exon 11	\N	2015-06-02 22:29:17.317652	2015-06-02 22:29:17.317652	f	\N
1	Imatinib Resistance	While imatinib has shown to be incredibly successful in treating philadelphia chromosome positive CML, patients that have shown primary or secondary resistance to the drug have been observed to harbor T315I and E255K ABL kinase domain mutations. These mutations, among others, have been observed both in primary refractory disease and acquired resistance. In gastrointestinal stromal tumors (GIST), PDGFRA 842 mutations have also been shown to confer resistance to imatinib. 	2015-06-02 22:29:12.727718	2015-06-02 22:29:21.248748	f	\N
2	ALK Fusions	ALK fusion positive non-small cell lung cancer (NSCLC) is treated as its own subset of NSCLC. Many ALK fusions that have been seen as recurrent in cancer serve to increase the activity of the ALK oncogene relative to normal cells. While EML4 is the most common fusion partner, other 5' partners have been observed. The EML4-ALK fusion has shown sensitivity to targeted tyrosine kinase inhibitors such as crizotinib. 	2015-06-02 22:29:12.851884	2015-06-02 22:29:21.25921	f	\N
6	TKI Resistance	EGFR pathway activation is a nearly ubiquitous hallmark of cancer. Many tyrosine kinase inhibitors have been developed to target EGFR pathway activity. One such inhibitor, erlotinib, has demonstrated efficacy in an EGFR over-active setting. However, the T790M missense mutation has shown to confer resistance to this inhibitor in cell lines and case studies.  	2015-06-02 22:29:15.465671	2015-06-02 22:29:21.267746	f	\N
3	Crizotinib Resistance	The ALK oncogene has long been considered a driving factor in non-small cell lung cancer (NSCLC). The targeted tyrosine kinase inhibitor criztonib has shown to be effective in ALK-mutant NSCLC. However, in patients that have shown acquired resistance to crizotinib, missense mutations in the tyrosine kinase domain have shown to drive this resistance. 	2015-06-02 22:29:12.88379	2015-06-02 22:29:21.274575	f	\N
4	Other V600's	While BRAF V600E is nearly ubiquitous in many cancer types, other V600 variants have also been observed and studied to a lesser degree. At first approximation, many of these variants seem to behave similarly to V600E, and treatment with dabrafenib has been shown to be effective. 	2015-06-02 22:29:13.352828	2015-06-02 22:29:21.281776	f	\N
7	HER2 Activating	HER2-positive breast cancer is widely recognized as a molecular subtype of breast cancer. While amplification of ERBB2 is a common mechanism for activation of the pathway, missense mutations have also demonstrated activation potential. These activating missense mutations also confer senstivity to the targeted therapeutic neratinib. 	2015-06-02 22:29:15.633133	2015-06-02 22:29:21.288901	f	\N
8	ESR1 Ligand-Binding Domain	ER-positive breast cancer is the most common of the breast cancer subtypes. Hormone therapy has been widely effective in treating the disease, however sequencing of resistant patients has uncovered a number of missense mutations in mediating this resistance. Many of these mutations lie within the ligand-binding domain, and contribute to constitutive activity of the receptor. This has lead to the development of estrogen receptor degrading agents such as fulvestrant, which have shown early efficacy in clinical trials.  	2015-06-02 22:29:15.89898	2015-06-02 22:29:21.295747	f	\N
9	FGFR fusions	FGFR fusions have been demonstrated across many cancer types to have oncogenic potential. FGFR2 and FGFR3 have been shown to be fused to many 3' partners, which may act as a vehicle for pathway activation. Treatment of cell lines harboring FGFR2 fusions with pazopanib has shown mild "anti-tumor" activities, and both ponatinib and pazopanib have shown efficacy in case studies.  	2015-06-02 22:29:16.150906	2015-06-02 22:29:21.302642	f	\N
12	NPM1 Exon 12	NPM1 exon 12 mutations are frequently identified in patients with cytogenetically normal acute myeloid leukemia (AML) and often co-occur with FLT3-ITD. FLT3 status should also be evaluated as co-occurence with FLT3-ITD may impact prognosis. Exon 12 mutations have been identified as a predictor of good prognostic outcomes in the absence of FLT3-ITD. Due to their high frequency, NPM1 mutations have been retrospectively analyzed in the context of a number of therapies including variable results following ATRA treatment as well as improved response to high-dose daunorubicin or valproic acid. Additionally, multiple groups have shown increased surface expression of CD33 associated with NPM1 mutation, suggesting these patients may respond to anti-CD33 therapy. Cytoplasmic sequestration of NPM1 (NPM1c) is associated with a good response to induction therapy.	2015-06-02 22:29:19.161801	2015-06-02 22:29:21.309504	f	\N
13	PTEN Loss-of-Function	PTEN loss is a common event in breast cancer, as well as others. The most common single nucleotide variant resulting in PTEN loss is a R233 nonsense mutation. Cell lines harboring this mutation behave similarly to cell lines harboring larger insertion or deletion events, in that they both respond to PI3K-mTOR inhibitors with impeded growth. 	2015-06-02 22:29:20.124841	2015-06-02 22:29:21.316522	f	\N
14	Motesanib Resistance	RET activation is a common oncogenic marker of medullary thyroid carcinoma. Treatment of these patients with the targeted therapeutic motesanib has shown to be effective. However, the missense mutations C634W and M918T have shown to confer motesanib resistance in cell lines. 	2015-06-02 22:29:20.20071	2015-06-02 22:29:21.323497	f	\N
15	TSC Loss	Inactivating events in TSC1 and TSC2 have been observed in a number of cancer types. Cell lines and case studies have shown that in the loss of TSC, the mTOR inhibitor everolimus has seen significant anti-tumorigenic activity. 	2015-06-02 22:29:20.568273	2015-06-02 22:29:21.330243	f	\N
5	BRCA Germline Variants	BRCA germline variants have long been recognized as important potential predictors of breast and ovarian cancer risk. 	2015-06-02 22:29:13.971579	2015-06-02 22:29:21.336896	f	\N
\.


--
-- Data for Name: variant_group_variants; Type: TABLE DATA; Schema: public; Owner: adam
--

COPY variant_group_variants (variant_id, variant_group_id, created_at, updated_at) FROM stdin;
3	1	2015-06-02 22:29:12.740567	2015-06-02 22:29:12.740567
2	1	2015-06-02 22:29:12.76449	2015-06-02 22:29:12.76449
2	1	2015-06-02 22:29:12.803752	2015-06-02 22:29:12.803752
5	2	2015-06-02 22:29:12.858963	2015-06-02 22:29:12.858963
6	2	2015-06-02 22:29:12.882032	2015-06-02 22:29:12.882032
6	3	2015-06-02 22:29:12.890758	2015-06-02 22:29:12.890758
7	2	2015-06-02 22:29:12.933796	2015-06-02 22:29:12.933796
7	3	2015-06-02 22:29:12.936413	2015-06-02 22:29:12.936413
8	3	2015-06-02 22:29:13.063833	2015-06-02 22:29:13.063833
11	4	2015-06-02 22:29:13.361096	2015-06-02 22:29:13.361096
13	4	2015-06-02 22:29:13.886933	2015-06-02 22:29:13.886933
15	4	2015-06-02 22:29:13.911913	2015-06-02 22:29:13.911913
16	4	2015-06-02 22:29:13.94638	2015-06-02 22:29:13.94638
131	5	2015-06-02 22:29:13.978474	2015-06-02 22:29:13.978474
132	5	2015-06-02 22:29:14.000507	2015-06-02 22:29:14.000507
34	6	2015-06-02 22:29:15.472692	2015-06-02 22:29:15.472692
34	6	2015-06-02 22:29:15.608828	2015-06-02 22:29:15.608828
35	7	2015-06-02 22:29:15.640194	2015-06-02 22:29:15.640194
36	7	2015-06-02 22:29:15.661926	2015-06-02 22:29:15.661926
38	7	2015-06-02 22:29:15.701876	2015-06-02 22:29:15.701876
41	7	2015-06-02 22:29:15.777705	2015-06-02 22:29:15.777705
43	7	2015-06-02 22:29:15.819184	2015-06-02 22:29:15.819184
44	7	2015-06-02 22:29:15.840242	2015-06-02 22:29:15.840242
45	7	2015-06-02 22:29:15.86162	2015-06-02 22:29:15.86162
46	8	2015-06-02 22:29:15.906286	2015-06-02 22:29:15.906286
46	8	2015-06-02 22:29:15.933485	2015-06-02 22:29:15.933485
47	8	2015-06-02 22:29:15.955961	2015-06-02 22:29:15.955961
47	8	2015-06-02 22:29:15.981801	2015-06-02 22:29:15.981801
48	8	2015-06-02 22:29:16.005023	2015-06-02 22:29:16.005023
48	8	2015-06-02 22:29:16.030234	2015-06-02 22:29:16.030234
49	8	2015-06-02 22:29:16.05267	2015-06-02 22:29:16.05267
49	8	2015-06-02 22:29:16.077726	2015-06-02 22:29:16.077726
50	8	2015-06-02 22:29:16.100375	2015-06-02 22:29:16.100375
50	8	2015-06-02 22:29:16.12509	2015-06-02 22:29:16.12509
52	9	2015-06-02 22:29:16.15819	2015-06-02 22:29:16.15819
53	9	2015-06-02 22:29:16.186357	2015-06-02 22:29:16.186357
54	9	2015-06-02 22:29:16.271777	2015-06-02 22:29:16.271777
65	10	2015-06-02 22:29:17.294195	2015-06-02 22:29:17.294195
66	11	2015-06-02 22:29:17.324602	2015-06-02 22:29:17.324602
66	11	2015-06-02 22:29:17.347368	2015-06-02 22:29:17.347368
66	11	2015-06-02 22:29:17.370547	2015-06-02 22:29:17.370547
66	11	2015-06-02 22:29:17.393733	2015-06-02 22:29:17.393733
66	11	2015-06-02 22:29:17.416626	2015-06-02 22:29:17.416626
66	11	2015-06-02 22:29:17.439348	2015-06-02 22:29:17.439348
70	10	2015-06-02 22:29:17.496029	2015-06-02 22:29:17.496029
70	10	2015-06-02 22:29:17.517127	2015-06-02 22:29:17.517127
67	11	2015-06-02 22:29:17.575548	2015-06-02 22:29:17.575548
72	11	2015-06-02 22:29:17.597897	2015-06-02 22:29:17.597897
72	11	2015-06-02 22:29:17.623541	2015-06-02 22:29:17.623541
72	11	2015-06-02 22:29:17.649896	2015-06-02 22:29:17.649896
73	11	2015-06-02 22:29:17.672636	2015-06-02 22:29:17.672636
73	11	2015-06-02 22:29:17.696011	2015-06-02 22:29:17.696011
148	6	2015-06-02 22:29:17.954667	2015-06-02 22:29:17.954667
78	6	2015-06-02 22:29:18.000506	2015-06-02 22:29:18.000506
79	6	2015-06-02 22:29:18.088994	2015-06-02 22:29:18.088994
147	6	2015-06-02 22:29:18.112368	2015-06-02 22:29:18.112368
146	6	2015-06-02 22:29:18.344537	2015-06-02 22:29:18.344537
87	12	2015-06-02 22:29:19.169273	2015-06-02 22:29:19.169273
87	12	2015-06-02 22:29:19.21463	2015-06-02 22:29:19.21463
87	12	2015-06-02 22:29:19.236367	2015-06-02 22:29:19.236367
87	12	2015-06-02 22:29:19.257657	2015-06-02 22:29:19.257657
98	1	2015-06-02 22:29:19.536854	2015-06-02 22:29:19.536854
99	1	2015-06-02 22:29:19.557914	2015-06-02 22:29:19.557914
99	1	2015-06-02 22:29:19.580055	2015-06-02 22:29:19.580055
99	1	2015-06-02 22:29:19.601282	2015-06-02 22:29:19.601282
99	1	2015-06-02 22:29:19.623269	2015-06-02 22:29:19.623269
100	1	2015-06-02 22:29:19.644326	2015-06-02 22:29:19.644326
101	1	2015-06-02 22:29:19.665242	2015-06-02 22:29:19.665242
102	1	2015-06-02 22:29:19.686027	2015-06-02 22:29:19.686027
110	13	2015-06-02 22:29:20.131831	2015-06-02 22:29:20.131831
110	13	2015-06-02 22:29:20.155258	2015-06-02 22:29:20.155258
112	14	2015-06-02 22:29:20.207821	2015-06-02 22:29:20.207821
113	14	2015-06-02 22:29:20.250424	2015-06-02 22:29:20.250424
124	15	2015-06-02 22:29:20.575061	2015-06-02 22:29:20.575061
124	15	2015-06-02 22:29:20.597304	2015-06-02 22:29:20.597304
125	15	2015-06-02 22:29:20.61922	2015-06-02 22:29:20.61922
126	15	2015-06-02 22:29:20.640431	2015-06-02 22:29:20.640431
\.


--
-- Name: variant_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('variant_groups_id_seq', 15, true);


--
-- Name: variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adam
--

SELECT pg_catalog.setval('variants_id_seq', 148, true);


--
-- PostgreSQL database dump complete
--


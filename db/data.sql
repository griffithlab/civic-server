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
-- Data for Name: organizations; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY organizations (id, name, url, description) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY users (id, email, name, url, username, created_at, updated_at, orcid, area_of_expertise, deleted, deleted_at, role, organization_id) FROM stdin;
\.


--
-- Data for Name: audits; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY audits (id, auditable_id, auditable_type, associated_id, associated_type, user_id, user_type, username, action, audited_changes, version, comment, remote_address, request_uuid, created_at) FROM stdin;
373	374	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 238\nname: ALK\ndescription: ALK amplifications, fusions and mutations have been shown to be driving\n  events in non-small cell lung cancer. While crizontinib has demonstrated efficacy\n  in treating the amplification, mutations in ALK have been shown to confer resistance\n  to current tyrosine kinase inhibitors. Second-generation TKI's have seen varied\n  success in treating these resistant cases, and the HSP90 inhibitor 17-AAG has been\n  shown to be cytostatic in ALK-altered cell lines.\nofficial_name: anaplastic lymphoma receptor tyrosine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	0967a94b-4e50-4bba-bee0-c07c36bcb092	2015-07-31 15:54:51.828259
374	375	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 207\nname: AKT1\ndescription: AKT1, also referred to as protein kinase B, is a known oncogene. AKT\n  activation relies on the PI3K pathway, and is recognized as a critical node in the\n  pathway. The E17 hotspot is the most characterized of AKT1 mutations, and has been\n  shown to result in activation of the protein. Mutations in AKT1 have also been shown\n  to confer resistance to allosteric kinase inhibitors in vitro.\nofficial_name: v-akt murine thymoma viral oncogene homolog 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	be02bcd8-c399-4ef3-b764-1f1924b1e227	2015-07-31 15:54:52.138286
375	376	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 369\nname: ARAF\ndescription: ARAF has recently become increasingly considered for its oncogenic potential.\n  Its potential as a target for informing clinical action was demonstrated by a single\n  case of advanced lung adenocarcinoma harboring an S214C mutation that, when treated\n  with sorafenib, acheived near-complete clinical remission. This finding has brought\n  new focus on ARAF as a marker that should be assayed for in cancer treatment.\nofficial_name: A-Raf proto-oncogene, serine/threonine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	df582d38-0b62-4f72-9ae0-e08455622d2b	2015-07-31 15:54:52.414638
376	377	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 25\nname: ABL1\ndescription: ABL1 is most relevant to cancer in its role in the BCR-ABL fusion protein\n  that has become a signature of chronic myeloid leukemia (CML). Cells harboring this\n  fusion have shown sensitivity to imatinib, greatly improving the prognostic outlook\n  of the disease. However, additional mutations in ABL1 have been shown to confer\n  resistance to imatinib. In these resistance cases, second-generation tyrosine kinase\n  inhibitors such as dasatinib and nilotinib have exhibited some efficacy and are\n  currently undergoing clinical trials for treating acquired resistance in CML.\nofficial_name: ABL proto-oncogene 1, non-receptor tyrosine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	2c286dfc-8e8a-435e-bb6e-e514efd468ac	2015-07-31 15:54:52.666216
377	378	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 673\nname: BRAF\ndescription: BRAF mutations are found to be recurrent in many cancer types. Of these,\n  the mutation of valine 600 to glutamic acid (V600E) is the most prevalent. V600E\n  has been determined to be an activating mutation, and cells that harbor it, along\n  with other V600 mutations are sensitive to the BRAF inhibitor dabrafenib. It is\n  also common to use MEK inhibition as a substitute for BRAF inhibitors, and the MEK\n  inhibitor trametinib has seen some success in BRAF mutant melanomas. BRAF mutations\n  have also been correlated with poor prognosis in many cancer types, although there\n  is at least one study that questions this conclusion in papillary thyroid cancer.\nofficial_name: B-Raf proto-oncogene, serine/threonine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	ca81b6fb-105e-4efd-98a6-98408d2d0be6	2015-07-31 15:54:52.904704
378	379	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 672\nname: BRCA1\ndescription: BRCA1 mutations in the germline have become a hallmark for hereditary\n  breast and ovarian cancers. Variants that have been demonstrated to reduce the function\n  of the protein have been shown to increase risk for these cancers, as well as prostate\n  and pancreatic cancer. These findings have been the impetus for the increased popularity\n  of genetic testing of healthy indivudals to assess risk.\nofficial_name: breast cancer 1, early onset\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	37503493-8ad8-47de-9ba7-beb8badf7389	2015-07-31 15:54:53.164375
379	380	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 675\nname: BRCA2\ndescription: BRCA2 mutations in the germline have become a hallmark for hereditary\n  breast and ovarian cancers. Variants that have been demonstrated to reduce the function\n  of the protein have been shown to increase risk for these cancers, as well as prostate\n  and pancreatic cancer. These findings have been the impetus for the increased popularity\n  of genetic testing of healthy indivudals to assess risk.\nofficial_name: breast cancer 2, early onset\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	fdaff148-0dff-4e23-8517-b62a32822f86	2015-07-31 15:54:53.43235
380	381	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 595\nname: CCND1\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, ranging from genomic amplification to changes in promoter methylation.\n  While Cyclin D2 has only been found to be significantly deregulated in glioma, Cyclin\n  D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been\n  shown to lead to poorer outcomes in a number of studies, and currently there are\n  no FDA-approved targeted therapies.\nofficial_name: cyclin D1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	9b0ffbe3-9723-4576-90f8-7ec605c6faa9	2015-07-31 15:54:53.665947
381	382	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 894\nname: CCND2\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, ranging from genomic amplification to changes in promoter methylation.\n  While Cyclin D2 has only been found to be significantly deregulated in glioma, Cyclin\n  D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been\n  shown to lead to poorer outcomes in a number of studies, and currently there are\n  no FDA-approved targeted therapies.\nofficial_name: cyclin D2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	dcef6158-f3dd-49a1-b8b4-1a06eab03df3	2015-07-31 15:54:53.892197
382	383	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 896\nname: CCND3\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, ranging from genomic amplification to changes in promoter methylation.\n  Cyclin D3 loss has been reported in T-ALL, a seemingly unique trend when compared\n  to the amplifcations and overexpressions of the other cyclin D's. In a mouse study,\n  the targeted therapeutic palbociclib significantly increased the median survival\n  of the cyclin D3 knockouts.\nofficial_name: cyclin D3\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	861d54e5-cef7-45e8-85b9-6687723ed2b2	2015-07-31 15:54:54.152369
383	384	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 898\nname: CCNE1\ndescription: Cyclin E, while currenly not as widely implicated as its cyclin D counterparts,\n  has been implicated in various carcinomas, including breast, gastric, stomach and\n  colorectal. High levels of cyclin E, either by gene amplification or overexpression,\n  have been shown to lead to poorer prognosis in gastic carcinoma, and these measurements\n  are correlated with later stage disease. In lung cancer, neoplastic cells with higher\n  levels of the cyclin E/CDK2 complex are more radiosensitive than their more lowly\n  expressed counterparts.\nofficial_name: cyclin E1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	ce69e5e8-da84-471e-9b44-bab5fadb23d3	2015-07-31 15:54:54.355712
384	385	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1021\nname: CDK6\ndescription: CDK6, along with its partner CDK4, are key players in cell cycle progression.\n  The complex has been implicated in a number of cancer types, and is the focus of\n  therapeutic research and development. One targeted therapy for CDK inhibition is\n  palbociclib, which may slow the growth of advanced stage breast cancers. It has\n  also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors\n  to PI3K inhibitors.\nofficial_name: cyclin-dependent kinase 6\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	61871235-a70b-4342-98b5-f2735e9b72db	2015-07-31 15:54:54.568104
385	386	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1019\nname: CDK4\ndescription: CDK4, along with its partner CDK6, are key players in cell cycle progression.\n  The complex has been implicated in a number of cancer types, and is the focus of\n  therapeutic research and development. One targeted therapy for CDK inhibition is\n  palbociclib, which may slow the growth of advanced stage breast cancers. It has\n  also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors\n  to PI3K inhibitors.\nofficial_name: cyclin-dependent kinase 4\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	20b8085e-cb47-4fd0-b735-4c68da28f664	2015-07-31 15:54:54.796888
386	387	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1029\nname: CDKN2A\ndescription: CDKN2A loss has been shown to be a significant event in a number of cancer\n  types. While no targeted therapeutic has been engaged in clinical trials, the prognostic\n  impact has been studied by a number of meta-analyses. One mechanism by which loss\n  of CDKN2A can occur is by hypermethylation of the promoter region for the gene.\n  However, the prognostic impact of promoter hypermethylation has been relatively\n  ambiguous. Many studies have suggesting poorer prognostic outcome for patients with\n  hypermethylation in colorectal, liver, and younger lung cancer patients. This being\n  said, there is still research to be done before this becomes a widely-accepted prognostic\n  indicator.\nofficial_name: cyclin-dependent kinase inhibitor 2A\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	005be9c3-f345-48d4-bb1a-af1bf2f4fffb	2015-07-31 15:54:55.085859
387	388	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1050\nname: CEBPA\ndescription: AML with mutated CEBPA' is a provisional entity in the WHO classification\n  of acute myeloid leukemia (AML) and is recommended to be tested for in patients\n  with AML. CEBPA mutations are particularly associated with cytogenetically normal\n  AML (CN-AML). CEBPA is an intronless gene that is required for granulocyte formation\n  in mice. N-terminal nonsense mutations result in a dominant negative C/EBP-alpha\n  protein while C-terminal mutations reduce the DNA-binding potential of this transcription\n  factor. CEBPA mutations are associated with a favorable prognosis, however, NPM1\n  and FLT3 mutations should also be assessed in CN-AML patients as concurrent mutations\n  may have prognostic implications.\nofficial_name: CCAAT/enhancer binding protein (C/EBP), alpha\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	5384acde-968e-4149-87a6-089406297998	2015-07-31 15:54:55.351082
388	389	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3337\nname: DNAJB1\ndescription: DNAJB1 works upstream of MDM2, stabilizing the complex and facilitating\n  p53 turnover. In hepatocellular fibrolamellar carcinoma (FL-HCC), the fusion DNAJB1\n  to PRKACA is suggested to be a diagnostic marker for this rare subtype of HCC. In\n  one study, this fusion was observed in 15/15 FL-HCC cases examined and functional\n  studies found that the fusion retained kinase activity.\nofficial_name: DnaJ (Hsp40) homolog, subfamily B, member 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	d27b2a04-3cc7-43f6-b5e7-404ab23fa9da	2015-07-31 15:54:55.600956
389	390	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5566\nname: PRKACA\ndescription: PRKACA has been studied in breast cancer and has been found to mediate\n  resistance to HER2 targeted therapies. It has also been found to contain a mutation\n  hotspot that contributes to neoplastic behavior in neuroendocrine cancers. In hepatocellular\n  fibrolamellar carcinoma (FL-HCC), the fusion DNAJB1 to PRKACA is suggested to be\n  a diagnostic marker for this rare subtype of HCC. In one study, this fusion was\n  observed in 15/15 FL-HCC cases examined and functional studies found that the fusion\n  retained kinase activity.\nofficial_name: protein kinase, cAMP-dependent, catalytic, alpha\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	d6013cb4-fa03-44b7-8634-59b7c0f550b9	2015-07-31 15:54:55.8142
390	391	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1788\nname: DNMT3A\ndescription: DNMT3A is one of several epigenetic modifiers identified as recurrently\n  mutated in acute myeloid leukemia (AML). DNMT3A mutations are associated with cytogenetically\n  normal AML. In vitro experiments indicate that the R882H mutation acts in a dominant\n  negative manner to disrupt the de novo methyltransferase activity of wildtype homotetramers.\n  AML patient bone marrow harboring R882 mutations were similarly demonstrated to\n  be hypomethylated compared to patients with wildtype DNMT3A. These studies also\n  indicated that non-R882 DNMT3A mutations may act in a functionally distinct manner\n  from R882 mutations. Alternative mechanisms indicate independent prognostic outcomes\n  and treatment protocols may need to be considered for these two classes of DNMT3A\n  mutations.\nofficial_name: DNA (cytosine-5-)-methyltransferase 3 alpha\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	96c56086-31e2-4d00-a3d1-d3024d557349	2015-07-31 15:54:56.036713
391	392	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1956\nname: EGFR\ndescription: EGFR is widely recognized for its importance in cancer. Amplification\n  and mutations have been shown to be driving events in many cancer types. Its role\n  in non-small cell lung cancer has spurred many research and drug development efforts.\n  Tyrosine kinase inhibitors have shown efficacy in EGFR amplfied tumors, most notably\n  gefitinib and erlotinib. Mutations in EGFR have been shown to confer resistance\n  to these drugs, particularly the variant T790M, which has been functionally characterized\n  as a resistance marker for both of these drugs. The later generation TKI's have\n  seen some success in treating these resistant cases, and targeted sequencing of\n  the EGFR locus has become a common practice in non-small cell lung cancer.\nofficial_name: epidermal growth factor receptor\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	714e6805-0100-4820-b507-4b106ee0d263	2015-07-31 15:54:56.297275
518	92	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 409\nname: G12\ndescription: While the NRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	d7cf0e6c-247a-4b02-8e0e-d4d5e008b018	2015-07-31 15:55:06.785827
392	393	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2064\nname: ERBB2\ndescription: ERBB2, commonly referred to as HER2, is amplified in HER2-positive breast\n  cancer, and is treated in a separate manner than the other subtypes of breast cancer.\n  Apart from being amplified, ERBB2 activating mutations have been shown to have clinical\n  importance in HER2-negative breast cancer. These mutations have shown sensitivity\n  to the tyrosine kinase inhibitor neratinib, and highlight the importance of clinical\n  sequencing efforts in treating breast cancer.\nofficial_name: erb-b2 receptor tyrosine kinase 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	ab3cd910-a84a-4bdf-86bf-3a274f46a26b	2015-07-31 15:54:56.565433
393	394	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2099\nname: ESR1\ndescription: ESR1 has been a focus in breast cancer for quite some time, but has also\n  shown significance in endometrial, ovarian and other cancer types. ER-positive breast\n  cancer that is resistant to hormone therapy has instigated clinical sequencing efforts\n  to shed light on the mechanisms of this resistance. A number of mutations in the\n  ligand binding domain of the protein have been implicated in hormone resistance\n  and anti-estrogen therapies. This has spurred efforts to develop therapeutics that\n  act to degrade the protein, rather than act as an antagonist. These agents are currently\n  in clinical trials and have seen some success, highlighting the importance of sequencing\n  efforts in treating breast cancer.\nofficial_name: estrogen receptor 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	5e8ae4fc-db19-42cd-9db9-c99b57563b07	2015-07-31 15:54:56.874063
394	395	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2263\nname: FGFR2\ndescription: The FGFR proteins are involved in a wide array of pathways known to play\n  a signficant role in cancer. Activation of these receptors can lead to activation\n  of the RAS-MAPK pathway and the PI3K-AKT pathway, among others. The mechanisms by\n  which FGFR can be misregulated vary between cancers. Amplification of the receptors\n  has been observed in lung and breast cancers, coding mutations and deletions have\n  been seen in many cancers, and more recently, FGFR fusions that lead to pathway\n  actiation have been demonstrated to have oncogenic potential across multiple cancer\n  types. The targeted therapeutics ponatinib, dovitinib and pazopanib have seen success\n  in treating over-active FGFR signalling, prompting use of diagnostic sequencing\n  targeting the FGFR genes, especially in lung cancer patients.\nofficial_name: fibroblast growth factor receptor 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	48874157-e674-408c-864b-68cf0d0566d0	2015-07-31 15:54:57.186991
395	396	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2261\nname: FGFR3\ndescription: The FGFR proteins are involved in a wide array of pathways known to play\n  a signficant role in cancer. Activation of these receptors can lead to activation\n  of the RAS-MAPK pathway and the PI3K-AKT pathway, among others. The mechanisms by\n  which FGFR can be misregulated vary between cancers. Amplification of the receptors\n  has been observed in lung and breast cancers, coding mutations and deletions have\n  been seen in many cancers, and more recently, FGFR fusions that lead to pathway\n  actiation have been demonstrated to have oncogenic potential across multiple cancer\n  types. The targeted therapeutics ponatinib, dovitinib and pazopanib have seen success\n  in treating over-active FGFR signalling, prompting use of diagnostic sequencing\n  targeting the FGFR genes, especially in lung cancer patients.\nofficial_name: fibroblast growth factor receptor 3\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	1a7deb3c-7d87-4675-bc4a-562fd08d778d	2015-07-31 15:54:57.458198
396	397	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2322\nname: FLT3\ndescription: FLT3 is an important cytokine receptor involved in normal hematopoiesis.\n  Mutations in this gene are common in acute myeloid leukemia (AML) and screening\n  for mutations in this gene has been recommended by the World Health Organization\n  in patients with AML, particularly in cases of cytogenetically normal AML (CN-AML).\n  FLT3 mutations commonly co-occur with mutations such as NPM1 that are associated\n  with CN-AML and likely modulate prognostic impact. While FLT3-ITD mutations have\n  been associated with poorer prognosis in AML, the prognostic impact of FLT3-TKD\n  mutations are still up for debate.\nofficial_name: fms-related tyrosine kinase 3\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	ea441254-0d69-4465-8322-0c37bb581eee	2015-07-31 15:54:57.688672
397	398	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2624\nname: GATA2\ndescription: GATA2 is a transcription factor involved in stem cell maintenance with\n  key roles in hematopoietic development. GATA2 mutations are associated with a variety\n  of inherited and acquired immune disorders including myelodysplastic syndrome and\n  acute myeloid leukemia. In addition to a role in hematopoiesis, the maintenance\n  GATA2 expression has been implicated as a requirement in KRAS-driven non-small cell\n  lung cancer. Preclinical models have indicated therapeutic benefit from targeting\n  GATA2-mediated pathways in the context of KRAS-driven NSCLC.\nofficial_name: GATA binding protein 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	2494bba9-8bde-4374-9f6d-66765ab422e2	2015-07-31 15:54:57.929306
398	399	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3417\nname: IDH1\ndescription: IDH1 mutations have been observed in a number of cancer types, including\n  sarcomas, hematologic malignancies, colon cancer and brain cancer. Mutations in\n  the two isocitrate dehydrogenase enzymes involved in cytoplasmic (IDH1) and mitochondrial\n  (IDH2) conversion of alpha-ketoglutarate to D-2-hydroxyglutarate have been described\n  as mutually exclusive in many of these cancer types. The most frequent mutations\n  involve R132 (IDH1) and R172 (IDH2) involve the active site and result in neomorphic\n  enzyme activity. The implications of mutations in this gene vary greatly by cancer\n  type. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 mutations\n  have been associated with worse outcome, shorter overall survival, and normal karyotype.\n  However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown\n  better overall survival than patients with wild-type IDH1. Unlike the association\n  with cytogenetically normal AML, in glioblastoma, IDH1 mutations have been associated\n  with specific cytogenetic abnormalities, 1p and 19q deletions.\nofficial_name: isocitrate dehydrogenase 1 (NADP+), soluble\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	e2374d78-89fb-4e61-926f-9aafaa0a218a	2015-07-31 15:54:58.182416
399	400	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3418\nname: IDH2\ndescription: IDH2 mutations have been observed in a number of cancer types, including\n  sarcomas, hematologic malignancies, colon cancer and brain cancer. Mutations in\n  the two isocitrate dehydrogenase enzymes involved in cytoplasmic (IDH1) and mitochondrial\n  (IDH2) conversion of alpha-ketoglutarate to D-2-hydroxyglutarate have been described\n  as mutually exclusive in many of these cancer types. The most frequent mutations\n  involve R132 (IDH1) and R172 (IDH2) involve the active site and result in neomorphic\n  enzyme activity. Although IDH2 (R172) mutations are associated with poorer overall\n  prognosis in AML patients, its utility as a prognostic marker in MDS is still under\n  debate. Additionally, IDH2 (R140) has been associated with improved overall survival\n  in AML. IDH2 mutations have been associated with improved prognosis in gliomas.\nofficial_name: isocitrate dehydrogenase 2 (NADP+), mitochondrial\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	0b37d4d8-fa43-42af-ab5c-0489027e6b53	2015-07-31 15:54:58.438066
400	401	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3717\nname: JAK2\ndescription: JAK2 is a kinase that is misregulated or mutated in a number of myeloproliferative\n  diseases and cancers. The mutation V617F is the most clinically relevant variant,\n  and is seen in around half of myeloproliferative disorders. The variant is a known\n  activating mutation, and activated JAK2 is sufficient to drive myeloproliferative\n  disorders in mouse models. V617F, while most recurrent, is not the only mechanism\n  by which JAK2 can be activated in patients. JAK2 is now one of the first diagnostic\n  markers tested upon diagnosis with a myeloproliferative disorder.\nofficial_name: Janus kinase 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	564127b5-17cd-4f6e-a634-050209d4446c	2015-07-31 15:54:58.658445
401	402	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3815\nname: KIT\ndescription: c-KIT activation has been shown to have oncogenic activity in gastrointestinal\n  stromal tumors (GISTs), melanomas, lung cancer, and other tumor types. The targeted\n  therapeutics nilotinib and sunitinib have shown efficacy in treating KIT overactive\n  patients, and are in late-stage trials in melanoma and GIST. KIT overactivity can\n  be the result of many genomic events from genomic amplification to overexpression\n  to missense mutations. Missense mutations have been shown to be key players in mediating\n  clinical response and acquired resistance in patients being treated with these targeted\n  therapeutics.\nofficial_name: v-kit Hardy-Zuckerman 4 feline sarcoma viral oncogene homolog\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	951264ab-c141-41ac-a1f7-2099b6c6a615	2015-07-31 15:54:58.882769
402	403	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 3845\nname: KRAS\ndescription: Mutations in the RAS family of proteins have frequently observed across\n  cancer types. The amino acid positions account for the overwhelming majority of\n  these mutations, G12, G13 and Q61. The isoforms, despite their raw similarity, also\n  behave very differently when expressed in non-native tissue types, likely due to\n  differences in the C-terminal hyper-variable regions. Mis-regulation of isoform\n  expression has been shown to be a driving event in cancer, as well as missense mutations\n  at the three hotspots previously mentioned. While highly recurrent in cancer, targeted\n  these RAS mutants has also been very elusive, and has not yet become common practice\n  in the clinic.\nofficial_name: Kirsten rat sarcoma viral oncogene homolog\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	7c24598b-6c7e-4430-bf82-1fdc711185ab	2015-07-31 15:54:59.150009
403	404	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5604\nname: MAP2K1\ndescription: ''\nofficial_name: mitogen-activated protein kinase kinase 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	7f2c2dc4-8e2a-40ea-96c7-fe23290db2bf	2015-07-31 15:54:59.388179
404	405	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4209\nname: MEF2D\ndescription: ''\nofficial_name: myocyte enhancer factor 2D\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	2984cc96-beec-4c84-b443-01fb939563c6	2015-07-31 15:54:59.576898
405	406	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 1436\nname: CSF1R\ndescription: ''\nofficial_name: colony stimulating factor 1 receptor\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	bb767bbf-61fe-4d91-a25c-5f7c2cebbd76	2015-07-31 15:54:59.801517
406	407	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4255\nname: MGMT\ndescription: ''\nofficial_name: O-6-methylguanine-DNA methyltransferase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	12fbe0f3-6108-4a43-a272-5c569f3cd6eb	2015-07-31 15:55:00.000497
407	408	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4869\nname: NPM1\ndescription: AML with mutated NPM1 is provisional entity in the WHO classification\n  of AML and is recommended to be tested for in patients with cytogenetically normal\n  AML (CN-AML). Evaluation of FLT3 mutations should be evaluated concurrently as they\n  have prognostic consequences. NPM1 mutations are concentrated in exon 12, most frequently\n  W288fs which results in cytoplasmic sequestration of the protein. Exon 12 NPM1 mutations\n  in the absence of FLT3-ITD are associated with good prognostic outcomes. Mice expressing\n  the Npm1-W288fs mutation develop myeloproliferative neoplasms but not overt leukemia,\n  indicating it may require additional mutations to promote leukemic development.\nofficial_name: nucleophosmin (nucleolar phosphoprotein B23, numatrin)\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	9aad508e-1269-4af7-8efc-22f2abd823d8	2015-07-31 15:55:00.197016
408	409	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4893\nname: NRAS\ndescription: Mutations in the RAS family of proteins have frequently observed across\n  cancer types. The amino acid positions account for the overwhelming majority of\n  these mutations, G12, G13 and Q61. The isoforms, despite their raw similarity, also\n  behave very differently when expressed in non-native tissue types, likely due to\n  differences in the C-terminal hyper-variable regions. Mis-regulation of isoform\n  expression has been shown to be a driving event in cancer, as well as missense mutations\n  at the three hotspots previously mentioned. While highly recurrent in cancer, targeted\n  these RAS mutants has also been very elusive, and has not yet become common practice\n  in the clinic.\nofficial_name: neuroblastoma RAS viral (v-ras) oncogene homolog\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	de4908f5-0cb9-4ef4-af53-c5eb23661ee9	2015-07-31 15:55:00.42916
409	410	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5290\nname: PIK3CA\ndescription: PIK3CA is the most recurrently mutated gene in breast cancer, and has\n  been found to important in a number of cancer types. An integral part of the PI3K\n  pathway, PIK3CA has long been described as an oncogene, with two main hotspots for\n  activating mutations, the 542/545 region of the helical domain, and the 1047 region\n  of the kinase domain. PIK3CA, and its interaction with the AKT and mTOR pathways,\n  is the subject of an immense amount of research and development, and PI3K inhibition\n  has seen some limited success in recent clinical trials. While monotherapies seem\n  to be limited in their potential, there is a recent interest in pursuing PI3K inhibition\n  as part of a combination therapy regiment with inhibition partners including TKI's,\n  MEK inhibitors, PARP inhibitors, and in breast cancer, aromatase inhibitors.\nofficial_name: phosphatidylinositol-4,5-bisphosphate 3-kinase, catalytic subunit alpha\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	7f36af60-fd5d-486e-a3a0-654d04832813	2015-07-31 15:55:00.654823
410	411	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5156\nname: PDGFRA\ndescription: ''\nofficial_name: platelet-derived growth factor receptor, alpha polypeptide\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	e5decc90-1c05-4edc-9b8d-add5021061f4	2015-07-31 15:55:00.879775
411	412	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5371\nname: PML\ndescription: The PML-RARA fusion is the result of a recurrent, balanced translocation\n  between chromosomes 15 and 17, denoted as t(15;17)(q22;q12), and a diagnostic event\n  in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown\n  sensitivity to ATRA (all-trans retinoic acid) in APL patients harboring the PML-RARA\n  fusion. Recent interest has been shown in combining ATRA and arsenic trioxide for\n  treating these patients, and early results seem promising.\nofficial_name: promyelocytic leukemia\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	d7c3f6c6-aa46-4b0a-af33-edf7a88277fd	2015-07-31 15:55:01.084247
412	413	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5914\nname: RARA\ndescription: The PML-RARA fusion is the result of a recurrent, balanced translocation\n  between chromosomes 15 and 17, denoted as t(15;17)(q22;q12), and a diagnostic event\n  in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown\n  sensitivity to ATRA (all-trans retinoic acid) in APL patients harboring the PML-RARA\n  fusion. Recent interest has been shown in combining ATRA and arsenic trioxide for\n  treating these patients, and early results seem promising.\nofficial_name: retinoic acid receptor, alpha\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	fd25800d-21e8-48ba-8c82-37458370ae5e	2015-07-31 15:55:01.285807
413	414	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5728\nname: PTEN\ndescription: ''\nofficial_name: phosphatase and tensin homolog\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	2ef675b5-42f8-436c-9774-9c5171958038	2015-07-31 15:55:01.558611
414	415	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 5979\nname: RET\ndescription: RET mutations and the RET fusion RET-PTC lead to activation of this tyrosine\n  kinase receptor and are associated with thyroid cancers. RET point mutations are\n  the most common mutations identified in medullary thyroid cancer (MTC) with germline\n  and somatic mutations in RET associated with hereditary and sporadic forms, respectively.\n  The most common somatic form mutation is M918T (exon 16) and a variety of other\n  mutations effecting exons 10, 11 and 15 have been described. The prognostic significance\n  of these mutations have been hotly debated in the field, however, data suggests\n  that some RET mutation may confer drug resistence. No RET-specific agents are currently\n  clinically available but several promiscuous kinase inhibitors that target RET,\n  among others, have been approved for MTC treatment.\nofficial_name: ret proto-oncogene\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	457d9ebd-2f93-4ad4-a681-ecfac8fbeb74	2015-07-31 15:55:01.81461
415	416	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 861\nname: RUNX1\ndescription: ''\nofficial_name: runt-related transcription factor 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	698f4547-0dc1-4c30-b653-125590c70b6d	2015-07-31 15:55:02.108732
416	417	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 23451\nname: SF3B1\ndescription: SF3B1 mutations have been described in several myeloid malignancies,\n  predominantly myelodysplastic syndromes (MDS), as well as other hematologic malignancies\n  and breast cancer. SF3B1 is one of several genes involved in RNA splicing that has\n  been identified as recurrently mutated in MDS and other malignanices. The mutations\n  affecting SF3B1 are typically heterozygous, point mutations suspected to be functionally\n  deleterious with K700E described as a major hotspot mutation. MDS patients with\n  SF3B1 mutations have been reported to have better overall and event-free survival\n  than their wildtype counterparts. Additionally, these mutations are highly associated\n  with subtypes of MDS characterized by ringed sideroblasts (refractory anemia with\n  ringed sideroblasts and refractory cytopenia with multilineage dysplasia and ring\n  sideroblasts).\nofficial_name: splicing factor 3b, subunit 1, 155kDa\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	de5feb96-77db-4b0e-9b0d-0654174264dd	2015-07-31 15:55:02.363362
417	418	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 7157\nname: TP53\ndescription: TP53 mutations are universal across cancer types. Loss of tumor suppressors\n  is most recognized by large deleterious events, such as frameshift mutations, or\n  premature stop codons. In TP53 however, many of the observed mutations in cancer\n  are found to be single nucleotide variants, or missense mutations. These variants\n  are also very broadly distributed throughout the gene, not localizing in any particular\n  hotspot. While a large proportion of cancer genomics research is focused on somatic\n  variants, TP53 is also of note in the germline. Germline TP53 mutations are the\n  hallmark of Li-Fraumeni syndrome, and many (both germline and somatic) have been\n  found to have prognostic impact on patient outcomes.\nofficial_name: tumor protein p53\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	f9969c77-86b4-44b8-88a3-c2c6c07c0c1f	2015-07-31 15:55:02.742022
418	419	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 7248\nname: TSC1\ndescription: ''\nofficial_name: tuberous sclerosis 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	3803fe53-84f9-4171-93ae-3be01dac59d3	2015-07-31 15:55:02.966579
419	420	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 7249\nname: TSC2\ndescription: ''\nofficial_name: tuberous sclerosis 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	2cdca58e-4087-48f5-bd86-85d2ed1c5f3b	2015-07-31 15:55:03.179986
420	421	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 7307\nname: U2AF1\ndescription: U2AF1 is one of several spliceosome complex genes frequently mutated\n  in a variety of hematologic malignancies, particularly de novo myelodysplastic syndromes\n  (MDS), as well as solid tumors such as lung and pancreatic cancers. Two hotspot\n  mutations (S34 and Q157) occur within the two zinc-finger domains of the U2AF1 protein.\n  These mutations have been associated with altered splicing patterns in vitro and\n  in vivo. U2AF1 mutations in MDS have been associated with an increased risk of transformation\n  to secondary acute myeloid leukemia, however, the impact of these mutations on overall\n  survival has been an area of debate.\nofficial_name: U2 small nuclear RNA auxiliary factor 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	b8fca53e-bbb9-46b5-af5f-d268603f2151	2015-07-31 15:55:03.411783
421	422	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 7490\nname: WT1\ndescription: WT1 is a tumor suppressor gene associated with the development of Wilms'\n  Tumor, from which it was named. Mutations in exon 7 and 9 of WT1 have been recurrently\n  identified in acute myeloid leukemia and associated with poorer prognosis and chemotherapy\n  resistance.\nofficial_name: Wilms tumor 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	a38b65af-52f3-4456-9d8a-5da0c8514c32	2015-07-31 15:55:03.675677
422	423	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4851\nname: NOTCH1\ndescription: ''\nofficial_name: notch 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	7145f952-aa8a-41e6-95b3-cf144f7ede03	2015-07-31 15:55:03.893392
423	424	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4921\nname: DDR2\ndescription: ''\nofficial_name: discoidin domain receptor tyrosine kinase 2\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	ce447606-6d09-40db-a828-1ab89c44fac6	2015-07-31 15:55:04.106043
424	425	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 4233\nname: MET\ndescription: ''\nofficial_name: MET proto-oncogene, receptor tyrosine kinase\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	100ea4e2-7c14-4eb8-8007-a964a3e20ea8	2015-07-31 15:55:04.328574
425	426	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2313\nname: FLI1\ndescription: ''\nofficial_name: Fli-1 proto-oncogene, ETS transcription factor\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	33059f4b-c8cd-4f2d-9fb2-544d7383c1e1	2015-07-31 15:55:04.528782
426	427	Gene	\N	\N	\N	\N	\N	create	---\nentrez_id: 2130\nname: EWSR1\ndescription: ''\nofficial_name: EWS RNA-binding protein 1\nclinical_description: \ndeleted: false\ndeleted_at: \n	1	\N	\N	eeac75f5-a232-4f82-84bd-4ce6e38d15e6	2015-07-31 15:55:04.73556
519	93	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 409\nname: G13D\ndescription: While the NRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	f4b6e02e-8cc5-47d0-ab0d-8cfb591ba2cc	2015-07-31 15:55:06.803317
427	1	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 377\nname: BCR-ABL\ndescription: The BCR-ABL fusion protein, commonly referred to as the philadelphia\n  chromosome, is the most well-studied fusion gene in cancer. It has widely been considered\n  the initiating event in chronic myelogenous leukemia (CML), but despite its ability\n  initiate disease in mice, its status an initiating mutation is in dispute. In what\n  is commonly used as the poster-child for targeted therapeutics, the development\n  and use of imatinib in the clinic has led to profound improvements in the prognosis\n  of the disease. However, imatinib resistance is still seen in patients with mutations\n  in the ABL kinase domain of the fusion, most notably the T315I variant. In patients\n  resistant to imatinib, either acquired or otherwise, second generation BCR-ABL TKI's\n  (dasatinib and nilotinib) have seen some success in delivering a tumor response.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	e5208965-96ce-4019-8ce9-2c28f267fe17	2015-07-31 15:55:04.802886
428	2	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 377\nname: BCR-ABL T315I\ndescription: While the efficacy of imatinib has revolutionized chronic myelogenous\n  leukemia (CML) treatment, it is still not a cure-all. Both initial resistance and\n  acquired resistance as a result of seleciton have been seen in a small subset of\n  CML patients. The ABL kinase domain mutation T315I has been shown to be one such\n  mutation that confers resistance to imatinib. Second generation TKI's (dasatinib\n  and nilotinib) specific to BCR-ABL have shown efficacy in treating resistant cases.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	45d97781-686e-4836-977a-ae768aa7490e	2015-07-31 15:55:04.823929
429	3	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 377\nname: BCR-ABL E255K\ndescription: While the efficacy of imatinib has revolutionized chronic myelogenous\n  leukemia (CML) treatment, it is still not a cure-all. Both initial resistance and\n  acquired resistance as a result of seleciton have been seen in a small subset of\n  CML patients. The ABL kinase domain mutation E255K has been shown to be one such\n  mutation that confers resistance to imatinib. Second generation TKI's (dasatinib\n  and nilotinib) specific to BCR-ABL have shown efficacy in treating resistant cases.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	7f138c90-72c5-4220-840f-421c76dab16c	2015-07-31 15:55:04.8503
430	4	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 375\nname: E17K\ndescription: AKT1 E17K is a recurrent mutation that has been observed in breast, colorectal,\n  lung, and ovarian cancer. It has been convincingly shown to be an activating mutation\n  resulting in PI3K/AKT/mTOR pathway activity. It has been suggested that this mutation\n  decreases the cell's sensitivity to AKT1 allosteric kinase ihibitors. This, and\n  other AKT1 mutations, are the subject of much research and development for therapeutics.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	ca49de10-0716-4d07-90c2-2c56813213ab	2015-07-31 15:55:04.869313
431	5	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 374\nname: EML4-ALK\ndescription: The EML4-ALK fusion has been seen in non-small cell lung cancer, and\n  appears to be an alternative mechanism for ALK activation. Cells with this fusion\n  have been shown to be sensitive to the ALK inhibitor crizotinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	09b34181-a9c6-4ec7-ab73-6a4f0f2ec4e7	2015-07-31 15:55:04.893062
432	6	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 374\nname: EML4-ALK C1156Y\ndescription: In patients with non-small cell lung cancer exhibiting EML4-ALK fusion,\n  this variant has been shown to confer resistance to crizotinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	a816e7c5-5a1f-4118-9b86-23ebeda0e1c4	2015-07-31 15:55:04.91623
433	7	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 374\nname: EML4-ALK L1196M\ndescription: In patients with non-small cell lung cancer exhibiting EML4-ALK fusion,\n  this variant has been shown to confer resistance to crizotinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	9e9dbbd6-3e3a-489a-8440-893cf847522b	2015-07-31 15:55:04.934752
434	8	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 374\nname: F1174L\ndescription: ALK F1174L has been observed as recurrent in neuroblastoma, non-small\n  cell lung cancer (NSCLC), and other cancer types. Neuroblastoma cells containing\n  this mutation have shown resistance to low doses of criztonib. However, increased\n  dosage can overcome this resistance in cell lines studies. TAE684 has also proven\n  effective in both NSCLC and neuroblastoma F1174L containing cells.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	532cdec4-771b-402b-80bf-ae30b943f01c	2015-07-31 15:55:04.953985
435	9	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 374\nname: R1275Q\ndescription: ALK R1275Q has been observed as a recurrent mutation in  neuroblastoma,\n  non-small cell lung cancer (NSCLC), as well as other cancer types. Neuroblastoma\n  cells with this mutation have shown sensitivity to the ALK-inhibitor TAE684. This,\n  and the geldanamycin deriviative 17-DMAG, has been shown to be effective in NSCLC\n  cell lines.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	4bc6c32d-dec9-4721-b457-6c1ac4494851	2015-07-31 15:55:04.972025
436	10	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 376\nname: S214C\ndescription: ARAF S214C has been found to be a recurrent oncogenic mutation in non-small\n  cell lung cancer. It has been shown to confer sensitivity to sorafenib and trametenib\n  in cell lines. In a case study of advanced stage lung adenocarcinoma harboring this\n  mutation, sorafenib also acheived near-complete clinical remission. This case has\n  brought more interest to the variant from a research and clinical perspective.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	98b16534-cc7a-4aa4-9bac-eb562515f2f8	2015-07-31 15:55:04.991808
437	11	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 378\nname: V600D\ndescription: Patients harboring mutations in valine 600 residue of BRAF have been\n  shown to be sensitive to dabrafenib. For more information on the V600 locus, see\n  the V600E entry.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	25f4e930-72d6-4785-9c74-650af7abdf42	2015-07-31 15:55:05.01514
438	12	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 378\nname: V600E\ndescription: BRAF V600E has been shown to be recurrent in many cancer types. It is\n  one of the most widely studied variants in cancer. This variant is correlated with\n  poor prognosis in certain cancer types, including colorectal cancer and papillary\n  thyroid cancer. The targeted therapeutic dabrafenib has been shown to be effective\n  in clinical trials with an array of BRAF mutations and cancer types. Dabrafenib\n  has also shown to be effective when combined with the MEK inhibitor trametinib in\n  colorectal cancer and melanoma. However, in patients with TP53, KRAS, and CDK2NA\n  mutations, dabrafenib resistance has been reported. Ipilimumab, regorafenib, vemurafenib,\n  and a number of combination therapies have been successful in treating V600E mutations.\n  While the drugs cetuximab and panitumumab have been largely shown to be ineffective\n  without supplementary treatment.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	c22ff178-2ffd-492b-a126-ae01260dc316	2015-07-31 15:55:05.039663
439	13	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 378\nname: V600E/V600M\ndescription: A case study of a single patient harboring both a V600E and a V600M mutation,\n  dabrafenib was shown to acheive clinical response.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	adbe2bd0-860b-4664-99d9-ba10ec75b500	2015-07-31 15:55:05.05817
440	14	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 378\nname: V600E AMPLIFICATION\ndescription: Amplification of BRAF V600E has been shown to confer resistance to MEK\n  inhibitors. For more information on the V600 locus, see the V600E entry.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	9b40eb36-aa09-49a9-a887-3e0a16f6945f	2015-07-31 15:55:05.078594
441	15	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 378\nname: V600M\ndescription: Patients harboring mutations in valine 600 residue of BRAF have been\n  shown to be sensitive to dabrafenib. For more information on the V600 locus, see\n  the V600E entry.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	c0553050-70e0-466f-b3c5-b428f5ba78ef	2015-07-31 15:55:05.101831
442	16	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 378\nname: V600R\ndescription: Patients harboring mutations in valine 600 residue of BRAF have been\n  shown to be sensitive to dabrafenib. For more information on the V600 locus, see\n  the V600E entry.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	4c1fd3cf-9f27-4ff3-9fbb-820dff435f2d	2015-07-31 15:55:05.122006
443	17	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 378\nname: V600\ndescription: BRAF mutations of the valine 600 residue have been shown to be recurrent\n  in many cancer types. Of the V600 mutations, V600E is the most widely researched.\n  V600 mutations as a whole have been correlated to poorer prognosis in colorectal\n  and papilarry thyroid cancers. V600 mutations have also been shown to confer sensitivity\n  to the BRAF inhibitor dabrafenib. For a more detailed summary, click the individual\n  mutation pages on the left sidebar.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	e3415bc2-1035-49a7-8541-85f78a62dc02	2015-07-31 15:55:05.140899
444	18	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 381\nname: AMPLIFICATION\ndescription: CCND1 amplification has been implicated in poorer prognosis in non-small\n  cell lung cancer.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	06177fa2-5429-4cf3-b344-eef5d5cc911f	2015-07-31 15:55:05.161817
445	19	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 381\nname: EXPRESSION\ndescription: CCND1 expression, and its prognositc impact, is still in dispute. Three\n  experiments in non-small cell lung cancer have shown it to have no impact on survival,\n  but three additional studies have shown it results in poorer prognosis. There is\n  also some ambiguity in how the boundaries between expression and overexpression\n  are defined.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	69b5c4e0-4caa-4f87-99fc-002e8c136590	2015-07-31 15:55:05.180895
446	20	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 381\nname: OVEREXPRESSION\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, and range from genomic amplification to promoter methylation\n  changes. While Cyclin D2 has only been found to be significantly misregulated in\n  glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation\n  has been shown to lead to poorer outcomes in a number of studies, and currently\n  there are no FDA-approved targeted therapies.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	2d580789-7dc0-41b7-b597-2bb3da9f573a	2015-07-31 15:55:05.200226
447	21	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 382\nname: OVEREXPRESSION\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, and range from genomic amplification to promoter methylation\n  changes. While Cyclin D2 has only been found to be significantly misregulated in\n  glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation\n  has been shown to lead to poorer outcomes in a number of studies, and currently\n  there are no FDA-approved targeted therapies.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	6dd388bc-a511-40f6-bcf9-432963b0f473	2015-07-31 15:55:05.220378
457	31	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 389\nname: DNAJB1-PRKACA\ndescription: This fusion has been found to be very recurrent in the rare form of adolescent\n  liver cancer, fibrolamellar hepatocellular carcinoma. In one study, this fusion\n  was observed in 15/15 FL-HCC cases examined and functional studies found that the\n  fusion retained kinase activity. The presence of this fusion may be used as a diagnostic\n  marker for this rare tumor type.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	263fdec8-fffa-4760-8e25-38eb4df35a90	2015-07-31 15:55:05.444735
448	22	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 382\nname: PROMOTER DEMETHYLATION\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are misregulated\n  are widely variable, and range from genomic amplification to promoter methylation\n  changes. While Cyclin D2 has only been found to be significantly misregulated in\n  glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation\n  has been shown to lead to poorer outcomes in a number of studies, and currently\n  there are no FDA-approved targeted therapies.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	2bc74565-85fe-4963-8848-27d5c7fac64f	2015-07-31 15:55:05.241249
449	23	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 383\nname: LOSS\ndescription: Cyclin D has been shown in many cancer types to be misregulated. Well\n  established for their oncogenic properties, the cyclins and the cyclin-dependent\n  kinases (CDK's) they activate have been the focus of major research and development\n  efforts over the past decade. The methods by which the cyclins are deregulated are\n  widely variable, and range from genomic amplification to promoter methylation changes.\n  Cyclin D3 loss has been reported in T-cell acute lymphoblastic leukemia (T-ALL),\n  a seemingly unique trend when compared to the amplifcations and overexpressions\n  of the other cyclin D's. Treating cyclin D3 knockout mice with the targeted therapeutic\n  palbociclib significantly increased the median survival of a Notch-driven model\n  of T-ALL.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	a709b785-ab78-4c9a-a4fc-4b21fa89c76b	2015-07-31 15:55:05.262298
450	24	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 384\nname: OVEREXPRESSION\ndescription: Cyclin E, while currenly not as widely implicated as its counterpart,\n  cyclin D, has been implicated in various carcinomas, including breast, gastric,\n  stomach and colorectal. High levels of cyclin E, either by gene amplification or\n  overexpression, are correlated with later stage disease and have been shown to lead\n  to poorer prognosis in gastic carcinoma. It has also been shown, in lung cancer\n  specifically, that neoplastic cells with higher levels of the cyclin E/CDK2 complex\n  are more radiosensitive than their lowly expressed counterparts.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	d83dc4e0-c8b4-4c42-8e5e-3d73c3fec2c4	2015-07-31 15:55:05.294726
451	25	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 386\nname: EXPRESSION\ndescription: CDK4, along with its partner CDK6, are key players in cell cycle progression.\n  The complex has been implicated in a number of cancer types, and is the focus of\n  therapeutic research and development. One targeted therapy for CDK inhibition is\n  palbociclib, which may slow the growth of advanced stage breast cancers. It has\n  also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors\n  to PI3K inhibitors.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	f24078ba-6b4d-4e9c-922f-84044de5cb4d	2015-07-31 15:55:05.313795
452	26	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 385\nname: EXPRESSION\ndescription: CDK6, along with its partner CDK4, are key players in cell cycle progression.\n  The complex has been implicated in a number of cancer types, and is the focus of\n  therapeutic research and development. One targeted therapy for CDK inhibition is\n  palbociclib, which may slow the growth of advanced stage breast cancers. It has\n  also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors\n  to PI3K inhibitors.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	dc574f62-b2d0-46f2-823d-8f83a9734c0b	2015-07-31 15:55:05.3334
453	27	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 387\nname: PROMOTER HYPERMETHYLATION\ndescription: CDKN2A loss has been shown to be a significant event in a number of cancer\n  types. One mechanism by which this can occur is by hypermethylation of the CDKN2A\n  promoter region. While no targeted therapeutic has been engaged in clinical trials,\n  the prognostic impact has been studied by a number of meta-analyses. The prognostic\n  impact of promoter hypermethylation has been relatively ambiguous. Many studies\n  have shown significant p-values suggesting poorer prognostic outcomes for patients\n  with hypermethylation in colorectal, liver, and younger lung cancer patients. This\n  being said, there is still research to be done before this becomes a widely-accepted\n  prognostic indicator.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	025f169d-d52c-46a5-bed3-53b82eaeb2d2	2015-07-31 15:55:05.361252
454	28	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 388\nname: N-TERMINAL FRAME SHIFT\ndescription: CEBPA N-terminal frame shift mutations that result in a premature stop\n  codon are associated with cytogenetically normal acute myeloid leukemia (CN-AML).\n  CEBPA mutations are associated with a favorable prognosis, however, NPM1 and FLT3\n  mutations should also be assessed in CN-AML patients as concurrent mutations may\n  have prognostic implications.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	b22652d1-24ae-4bec-ae8e-97a68e7fadb1	2015-07-31 15:55:05.380868
455	29	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 388\nname: MUTATION\ndescription: CEBPA mutations are associated with cytogenetically normal acute myeloid\n  leukemia (CN-AML) and a favorable prognosis. However, NPM1 and FLT3 mutations should\n  also be assessed in CN-AML patients as concurrent mutations may have prognostic\n  implications.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	afc6184b-e5ce-4909-ae8c-b224cc1f0e36	2015-07-31 15:55:05.400938
456	30	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 406\nname: MEF2D-CSF1R\ndescription: MEF2D-CSF1R is a fusion that has been observed in acute lymphocytic leukemia.\n  In cell lines harboring this event, treatment with imatinib has shown notable sensitivity.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	4159df5e-8ac3-4aff-b324-594a66c59c41	2015-07-31 15:55:05.424508
540	114	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 417\nname: K666N\ndescription: SF3B1 K666N is a variant found in myelodysplastic syndromes, chronic\n  leukemias, and more recently, breast cancer. This somatic mutation has been linked\n  to better overall outcome and event-free survival in MDS patients.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	a6786aa6-c0a7-457d-a179-6da19ff2609c	2015-07-31 15:55:07.280643
458	32	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 391\nname: R882\ndescription: DNMT3A R882 mutations are associated with cytogenetically normal acute\n  myeloid leukemia (CN-AML) with R882H as the most common form. Mutations in DNMT3A\n  have largely been associated with poorer prognosis, however this is not consistent\n  across all studies. This may be a result of patient age or combining R882 and non-R882\n  mutations during analysis as studies have indicated independent mechanisms of action\n  and differential prognostic implications for these mutation types. One study that\n  independently analyzed R882 and non-R882 mutations showed R882 mutations were associated\n  with poorer prognosis than patients with wildtype and non-R882 mutations, but only\n  in older patients with AML.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	1c5859d1-c7a6-4da5-a7e9-3e17856c38f7	2015-07-31 15:55:05.472359
459	33	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 392\nname: L858R\ndescription: EGFR L858R has long been recognized as a functionally significant mutation\n  in cancer, and is one of the most prevalent single mutations in lung cancer. Best\n  described in non-small cell lung cancer (NSCLC), the mutation seems to confer sensitivity\n  to first and second generation TKI's like gefitinib and neratinib. NSCLC patients\n  with this mutation treated with TKI's show increased overall and progression-free\n  survival, as compared to chemotherapy alone. Third generation TKI's are currently\n  in clinical trials that specifically focus on mutant forms of EGFR, a few of which\n  have shown efficacy in treating patients that failed to respond to earlier generation\n  TKI therapies.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	9034916c-ecdf-41e5-a97d-b76ab567e4a8	2015-07-31 15:55:05.491893
460	34	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 392\nname: T790M\ndescription: EGFR T790M was one of the very first mutations recognized to confer resistance\n  to targeted therapies in non-small cell lung cancer. While successful in amplified\n  EGFR, the efficacy of the first and second generation TKI's (erlotinib, gefitinib,\n  neratinib) in treating patients harboring this mutation before treatment is notably\n  lower. This lack of efficacy can likely be to blame for the poorer prognosis for\n  patients with this mutation as compared to patients with wildtype EGFR or other\n  types of EGFR mutations. Approximately half of EGFR mutant tumors with acquired\n  resistance to TKI inhibition have been shown to harbor this mutation, implicating\n  it as a mechanism of acquired therapy resistence. The third generation TKI's are\n  being developed with this resistance problem in mind, and early stage experiments\n  have shown some efficacy of these drugs in previously resistant tumors with mutant\n  EGFR.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	3bce82c3-991b-48c8-88ee-0422968bb260	2015-07-31 15:55:05.51115
461	35	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: D769H\ndescription: ERBB2 D769H was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	ea4e9249-5967-4f5b-8008-b686c45c8cc5	2015-07-31 15:55:05.534407
462	36	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: D769Y\ndescription: ERBB2 D769Y was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	2a63c88d-cef1-4121-a7c7-12a800cf2c9e	2015-07-31 15:55:05.553339
463	37	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: DEL 755-759\ndescription: ERBB2 in-frame deletion of 755-759 was one of the first ERBB2 variants\n  to be functionally classified (Bose et al. 2012). This mutation was shown to be\n  an activating mutation in an in vitro assay. In the same paper, this mutation (along\n  with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been\n  shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may\n  show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase\n  inhibitors, which is the topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	490eac95-be52-47d6-a6a7-fe062e97ded6	2015-07-31 15:55:05.574302
464	38	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: G309A\ndescription: ERBB2 G309A was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	230a9683-dc7e-4b80-9be4-27d4336cab5e	2015-07-31 15:55:05.593681
465	39	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: L755S\ndescription: ERBB2 L755S was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was not shown to be an activating mutation, unlike\n  many of the other variants queried. This mutation was also shown to confer resistance\n  to the tyrosine kinase inhibitor lapatinib in MCF10A cell lines.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	a815ee09-4a09-4ad7-a66a-fb69f8a73ad2	2015-07-31 15:55:05.615071
564	138	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 423\nname: S2275FS\ndescription: Activating mutations in NOTCH1, including a frameshift insertion at S2275,\n  have been shown to be poor prognostic markers in lung cancer.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	bf6c11cc-94c1-452c-a645-953d344b2a20	2015-07-31 15:55:07.81341
466	40	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: L755W\ndescription: ERBB2 L755W was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	47a6ab5e-d7be-43aa-b38a-af4f7c46306e	2015-07-31 15:55:05.638656
467	41	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: P780INS\ndescription: ERBB2 P780 insertion was one of the first ERBB2 variants to be functionally\n  classified (Bose et al. 2012). This mutation was shown to be an activating mutation\n  in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	4fcb4778-effd-4a39-9996-71ac9009a7cd	2015-07-31 15:55:05.659769
468	42	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: R678Q\ndescription: ERBB2 R678Q was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	165f5be7-0200-44bb-b79d-456c2795d190	2015-07-31 15:55:05.68221
469	43	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: R896C\ndescription: ERBB2 R896C was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	47333f2a-c890-44d4-a201-9b39fad12c0a	2015-07-31 15:55:05.702206
470	44	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: V777L\ndescription: ERBB2 V777L was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	2a44c532-2312-4c42-9d0f-fb1de68af250	2015-07-31 15:55:05.727199
471	45	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 393\nname: V842I\ndescription: ERBB2 V842I was one of the first ERBB2 variants to be functionally classified\n  (Bose et al. 2012). This mutation was shown to be an activating mutation in an in\n  vitro assay. In the same paper, this mutation (along with other ERBB2 activating\n  mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to\n  the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating\n  mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the\n  topic of current clinical trials and research.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	a03751c8-44d3-4daf-91cb-6c853ff985ef	2015-07-31 15:55:05.751543
472	46	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 394\nname: L536Q\ndescription: ESR1 biology has become a central focus in breast cancer therapy. In\n  ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer\n  resistance to hormone therapy. This evidence has led to an increased use of targeted\n  sequencing of the estrogen receptor in breast and ovarian cancer. Y536Q is one of\n  these ligand binding domain mutations, and is commonly implicated in this hormone\n  resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant,\n  may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	8f90d7c8-a3c0-404c-902b-6607bb5900ea	2015-07-31 15:55:05.772964
473	47	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 394\nname: N538G\ndescription: ESR1 biology has become a central focus in breast cancer therapy. In\n  ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer\n  resistance to hormone therapy. This evidence has led to an increased use of targeted\n  sequencing of the estrogen receptor in breast and ovarian cancer. N538G is one of\n  these ligand binding domain  , and is commonly implicated in this hormone resistance.\n  Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial\n  in treating ESR1 mutant, hormone resistant breast cancers.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	af07237d-f55c-4cc2-9495-87a953f5b8a6	2015-07-31 15:55:05.796999
474	48	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 394\nname: Y537C\ndescription: ESR1 biology has become a central focus in breast cancer therapy. In\n  ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer\n  resistance to hormone therapy. This evidence has led to an increased use of targeted\n  sequencing of the estrogen receptor in breast and ovarian cancer. Y537C is one of\n  these ligand binding domain  , and is commonly implicated in this hormone resistance.\n  Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial\n  in treating ESR1 mutant, hormone resistant breast cancers.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	bc9c41de-0b47-4b44-b74a-f22f409fb66a	2015-07-31 15:55:05.817229
475	49	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 394\nname: Y537N\ndescription: ESR1 biology has become a central focus in breast cancer therapy. In\n  ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer\n  resistance to hormone therapy. This evidence has led to an increased use of targeted\n  sequencing of the estrogen receptor in breast and ovarian cancer. Y537N is one of\n  these ligand binding domain  , and is commonly implicated in this hormone resistance.\n  Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial\n  in treating ESR1 mutant, hormone resistant breast cancers.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	35993c5e-0e71-4414-bcfb-43839d428d0b	2015-07-31 15:55:05.839387
476	50	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 394\nname: Y537S\ndescription: ESR1 biology has become a central focus in breast cancer therapy. In\n  ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer\n  resistance to hormone therapy. This evidence has led to an increased use of targeted\n  sequencing of the estrogen receptor in breast and ovarian cancer. Y537S is one of\n  these ligand binding domain  , and is commonly implicated in this hormone resistance.\n  Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial\n  in treating ESR1 mutant, hormone resistant breast cancers.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	68053def-ab77-4cf2-9997-3f0c2ffa944e	2015-07-31 15:55:05.87719
477	51	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 395\nname: P235R\ndescription: ''\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	6594ba04-41d0-4466-9d9b-da4d4cff342c	2015-07-31 15:55:05.895594
478	52	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 395\nname: FGFR2-MGEA5\ndescription: In a clinical sequencing program for advanced stage cancers, Wu et al\n  (2013, Cancer Discovery) has idenified a number of FGFR fusions in patients with\n  many different cancer types. These fusions were also found to retain oligomerization\n  capability, and result in enhanced cell proliferation. Cell lines harboring these\n  fusions were shown to respond to pazopanib. Additionally, tumor size reduction was\n  achieved by both ponatinib and pazopanib treatments administered separately in a\n  single patient with intrahepatic cholangiocarcinoma and this fusion. The authors\n  use these cases to highlight the need for enhanced clinical sequencing efforts.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	9e0b5471-33e8-4dca-9f54-eee622382dc9	2015-07-31 15:55:05.915148
479	53	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 396\nname: FGFR3-BAIAP2L1\ndescription: In a clinical sequencing program for advanced stage cancers, Wu et al\n  (2013, Cancer Discovery) has identified a number of FGFR fusions in patients with\n  many different cancer types. These fusions were also found to retain oligomerization\n  capability, and result in enhanced cell proliferation. These fusions were shown\n  to respond to pazopanib. The authors use these cases to highlight the need for enhanced\n  clinical sequencing efforts.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	e93d47a1-7284-4eec-b9c2-f3199a745cc7	2015-07-31 15:55:05.938441
480	54	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 396\nname: FGFR3-TACC3\ndescription: In a clinical sequencing program for advanced stage cancers, Wu et al\n  (2013, Cancer Discovery) has identified a number of FGFR fusions in patients with\n  many different cancer types. These fusions were also found to retain oligomerization\n  capability, and result in enhanced cell proliferation. These fusions were shown\n  to respond to pazopanib. The authors use these cases to highlight the need for enhanced\n  clinical sequencing efforts.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	848c64f0-ccdc-433b-8fed-193d7f082b34	2015-07-31 15:55:05.96135
481	55	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 397\nname: ITD MUTATIONS\ndescription: FLT3-ITD (internal tandem duplications) frequently occur in patients\n  with hematologic malignancies such as chronic myelogenous leukemia, acute myeloid\n  leukemia (AML) and myelodysplastic syndrome, but particularly in cytogenetically\n  normal AML (CN-AML). These duplication events disrupt the juxtamembrane domain of\n  FLT3 and can be the result of a duplication of internal FLT3 sequence or other unrelated\n  sequence resulting in an in-frame duplication event. The length of these duplications\n  can vary widely which may have prognostic consequences, but this has not been conclusively\n  determined. FLT3-ITD mutations overall have generally been associated with poor\n  prognosis. Additional genes associated with CN-AML such as NPM1 may modulate the\n  prognosis associated with this variant.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	132f2ae0-3b75-47ce-99a4-92c1145fa5fe	2015-07-31 15:55:05.983664
482	56	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 397\nname: TKD MUTATIONS\ndescription: FLT3 tyrosine kinase domain mutations (FLT3-TKD) are much less common\n  than FLT3-ITD (internal tandem duplication) mutations and may not confer the same\n  prognostic impact. Although the majority of mutations are point mutations effecting\n  D835 (most frequently D835Y), a small proportion involve an in-frame deletion of\n  I836. These mutations are within the activation loop of the second tyrosine kinase\n  domain of FLT3 and thought to result in constitutive activation of the receptor.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	8d9d7bdc-2406-4c2a-8636-5f23d642c845	2015-07-31 15:55:06.004285
483	57	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 398\nname: EXPRESSION\ndescription: GATA2 misregulation has been observed in a number of hematologic malignancies,\n  as well as non-small cell lung cancer. Treatment of over-active GATA2 pathways using\n  the proteasome inhibitor bortezomib has shown dramatic tumor regression in lung\n  cancer.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	5612fd88-80c5-4230-b7bd-209487acaf21	2015-07-31 15:55:06.024787
493	67	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 402\nname: INTERNAL DUPLICATION\ndescription: c-KIT internal duplications have been observed in exon 11, within the\n  juxtamembrane domain. In a case study of an anal melanoma patient harboring this\n  event, imatinib confered marked response. Also, cells harboring exon 11 mutations\n  have shown sensitivity to the tyrosine kinase inhibitor imatinib, offering a better\n  prognosis to patients treated with the drug in the first year.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	6cbec106-42a1-4caa-96e2-66acc49499d3	2015-07-31 15:55:06.238833
484	58	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 399\nname: R132\ndescription: IDH1 R132 mutations have been observed in a number of cancer types, and\n  appear to behave quite differently in different environments. In myelodysplastic\n  syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown\n  to be associated with worse outcome and shorter overall survival. They have also\n  been linked to cytogenetically normal AML, an intermediate risk subtype of the disease.\n  However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown\n  better overall survival than patients with wild-type IDH1. Also in contrast to AML,\n  in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic\n  abnormalities, 1p and 19q deletions.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	db17fff0-c3cb-4200-8026-393f8982b4d6	2015-07-31 15:55:06.047153
485	59	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 399\nname: R132C\ndescription: IDH1 R132 mutations have been observed in a number of cancer types, and\n  appear to behave quite differently in different environments. In myelodysplastic\n  syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown\n  to be associated with worse outcome and shorter overall survival. They have also\n  been linked to cytogenetically normal AML, an intermediate risk subtype of the disease.\n  However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown\n  better overall survival than patients with wild-type IDH1. Also in contrast to AML,\n  in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic\n  abnormalities, 1p and 19q deletions.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	16fe7bd9-004a-4319-bc21-c3151a87b1f2	2015-07-31 15:55:06.071513
486	60	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 399\nname: R132H\ndescription: IDH1 R132 mutations have been observed in a number of cancer types, and\n  appear to behave quite differently in different environments. In myelodysplastic\n  syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown\n  to be associated with worse outcome and shorter overall survival. They have also\n  been linked to cytogenetically normal AML, an intermediate risk subtype of the disease.\n  However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown\n  better overall survival than patients with wild-type IDH1. Also in contrast to AML,\n  in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic\n  abnormalities, 1p and 19q deletions.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	cf90d349-2cef-47ef-ad48-229ff2556294	2015-07-31 15:55:06.092753
487	61	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 399\nname: R132L\ndescription: IDH1 R132 mutations have been observed in a number of cancer types, and\n  appear to behave quite differently in different environments. In myelodysplastic\n  syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown\n  to be associated with worse outcome and shorter overall survival. They have also\n  been linked to cytogenetically normal AML, an intermediate risk subtype of the disease.\n  However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown\n  better overall survival than patients with wild-type IDH1. Also in contrast to AML,\n  in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic\n  abnormalities, 1p and 19q deletions.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	51f96559-62bd-4917-9e41-51089535d468	2015-07-31 15:55:06.112142
488	62	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 400\nname: R140Q/L\ndescription: IDH2 mutations have been observed in a number of hematologic malignancies.\n  In acute myeloid leukemia, the R140Q/L mutants have shown improved overall survival\n  as compared to their wild-type counterparts. In myelodysplastic syndromes, however,\n  no prognostic link was discovered between IDH2 mutation status and overall survival.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	b580cf11-802f-42c4-899f-0680bced8b9f	2015-07-31 15:55:06.138443
489	63	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 400\nname: R172K\ndescription: IDH2 mutations have been observed in a number of hematologic malignancies.\n  In acute myeloid leukemia, the R172K mutation has been linked with poorer prognosis\n  and worse overall survival than IDH2 wild-type patients. However, in myelodisplastic\n  syndromes, studies did not find a prognostic association between this variant and\n  patient outcomes.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	506211b8-ab37-4ba6-8887-ad44c0b83780	2015-07-31 15:55:06.159807
490	64	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 401\nname: V617F\ndescription: JAK2 V617F is a highly recurrent mutation in myeloproliferative diseases,\n  occuring in around half of all MPD's. While less associated with cancer, when it\n  is seen, it is more likely to be in myeloid leukemias than lymphoid leukemias. The\n  V617F mutation is an activating mutation, resulting in increased kinase activity.\n  The mutation seems to be restricted to hematologic malignancies. Treatment of JAK\n  mutant diseases with ruxolitinib has seen some clinical success.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	9d98f37c-112e-4d79-bc91-2580100da336	2015-07-31 15:55:06.18215
491	65	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 402\nname: D816V\ndescription: KIT D816V is a mutation observed in acute myeloid leukemia (AML). This\n  variant has been linked to poorer prognosis and worse outcome in AML patients.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	8367e0f7-b874-49f5-a082-21f6a56d726f	2015-07-31 15:55:06.200062
492	66	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 402\nname: EXON 11 MUTATIONS\ndescription: c-KIT mutations in exon 11 lie within the juxtamembrane domain, and are\n  very recurrent in gastrointestinal stromal tumors, often bearing a poorer prognosis\n  than other KIT mutations. Cells harboring exon 11 mutations have shown sensitivity\n  to the tyrosine kinase inhibitor imatinib, offering a better prognosis to patients\n  treated with the drug in the first year.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	a3eb12d4-d149-45ae-a180-8bf92d1d9c9d	2015-07-31 15:55:06.219456
515	89	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 409\nname: EXON 2 MUTATIONS\ndescription: NRAS exon 2 mutations have been shown to be correlated with poorer overall\n  survival in melanoma patients and colorectal cancer patients, however no prognostic\n  impact was seen in acute myeloid leukemia patients.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	62e4e32c-50d5-466f-acf7-859641057081	2015-07-31 15:55:06.726592
494	68	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 402\nname: EXON 13 MUTATIONS\ndescription: c-KIT exon 13 mutations are relatively rare compared to other c-KIT mutations.\n  These mutations lie within the tyrosine kinase 1 domain, and are found primarily\n  in melanoma and gastrointestinal stromal tumors. Cell lines harboring these mutations\n  show sensitivity to imatinib and sunitinib treatment. However, only imatinib has\n  seen use in clinical settings to date, with sunitinib entering trials in imatinib-resistant\n  cases.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	995974e5-15f4-45fb-9eef-d4337cf976e5	2015-07-31 15:55:06.257683
495	69	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 402\nname: EXON 14 MUTATIONS\ndescription: c-KIT exon 14 mutations lie within the tyrosine kinase domain of the\n  protein. While relatively rare in primary gastrointestinal tumors, they are notably\n  more prevalent in refractory disease, suggesting a role in imatinib resistance.\n  Unlike mutations in other KIT exons, exon 14 mutations seem relatively rare in melanoma.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	ce062969-b2ed-4f6a-bffa-2ed81c56405f	2015-07-31 15:55:06.280821
496	70	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 402\nname: EXON 17 MUTATIONS\ndescription: c-KIT exon 17 mutations lie within the TK2 domain, containing the activation\n  loop of the protein. In cell lines, mutations within this domain have been shown\n  to be sensitive to imatinib. However, in double KIT mutants in which the exon 17\n  mutation is a secondary mutation, cell lines have shown resistance to both imatinib\n  and sunitinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	d8d07e84-3a57-4085-902d-d0ab96004047	2015-07-31 15:55:06.29957
497	71	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 402\nname: EXON 9 MUTATIONS\ndescription: c-KIT exon 9 mutations lie within the dimerization motif of the protein.\n  Relative to other KIT mutations, exon 9 mutations have been associated with better\n  overall survival. In exon 9 mutants, imatinib has shown efficacy both in vitro and\n  in vivo.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	b55882fc-3603-4091-9703-c6df017004a8	2015-07-31 15:55:06.318491
498	72	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 402\nname: L576P\ndescription: KIT L576P is an exon 11 mutation that lies within the juxtamembrane domain.\n  It is one of the most recurrent KIT mutations in melanoma, and both in vitro and\n  in vivo studies have shown sensitivity to imatinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	fa0df9f8-5dbd-4702-abfb-76f1f2b921f4	2015-07-31 15:55:06.341612
499	73	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 402\nname: V654A\ndescription: KIT V654A is an exon 13 mutation that lies within the tyrosine kinase\n  1 domain of the protein. It has been shown to be an activating mutation by in vitro\n  studies. This mutation is associated with imatinib resistance in melanoma patients.\n  However, second generation TKI's such as sunitinib and midostaurin (PKC 412) have\n  seen success in acheiving tumor response.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	0e96eadb-ec6b-4ac5-8790-927f820613f7	2015-07-31 15:55:06.359135
500	74	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 403\nname: EXON 1 MUTATIONS\ndescription: A study by Lièvre et al in 2006 showed that colorectal cancer patients\n  with KRAS exon 1 mutations had low cetuximab response rates.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	7174f267-9fcf-4c6e-b77a-e81b38ae3c6a	2015-07-31 15:55:06.388391
501	75	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 403\nname: EXON 2 MUTATIONS\ndescription: In a study by Pao et al in 2005, non-small cell lung cancer patients\n  harboring KRAS exon 2 mutations were associated with resistance to the EGFR inhibitors\n  gefinitib and erlotinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	fe017f1a-929b-4e35-b328-7ea4d1ce7a2c	2015-07-31 15:55:06.410162
502	76	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 403\nname: G12\ndescription: While the KRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation,\n  along with the mutations affecting the neighboring G13 position, may result in a\n  less responsive tumor when treated with first-generation TKI's like gefitinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	880b714e-ba32-43e8-8997-ca8f7ba320a4	2015-07-31 15:55:06.448153
503	77	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 403\nname: G12/G13\ndescription: While the KRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation\n  may result in a less responsive tumor when treated with first-generation TKI's like\n  gefitinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	c02d4cb9-44b0-4c92-97fa-b0356c3e3e8e	2015-07-31 15:55:06.468526
504	78	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 403\nname: G12C\ndescription: While the KRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation,\n  along with the mutations affecting the neighboring G13 position, may result in a\n  less responsive tumor when treated with first-generation TKI's like gefitinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	abc80f76-2dc2-45e6-a641-c6761b6d50ea	2015-07-31 15:55:06.489324
516	90	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 409\nname: EXON 3 MUTATIONS\ndescription: In a multi-gene prognostic survey, Therkildsen et al 2014 found NRAS\n  exon 3 and 4 mutations were correlated with poorer overall survival.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	52e379d2-a591-45d4-8222-8d101a8d2b74	2015-07-31 15:55:06.745433
505	79	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 403\nname: G12D\ndescription: While the KRAS G12 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation,\n  along with the mutations affecting the neighboring G13 position, may result in a\n  less responsive tumor when treated with first-generation TKI's like gefitinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	4a13ed1f-ffe2-40ab-8e85-ce4a990c25cf	2015-07-31 15:55:06.513261
506	80	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 403\nname: G13\ndescription: While the KRAS G13 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation,\n  along with the mutations affecting the neighboring G12 position, may result in a\n  less responsive tumor when treated with first-generation TKI's like gefitinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	67254eaf-7787-4454-99f8-1477d127b34f	2015-07-31 15:55:06.531486
507	81	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 403\nname: G13D\ndescription: While the KRAS G13 region is a widely studied recurrent region in cancer,\n  its impact on clinical action is still debated. Often associated with tumors that\n  are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients\n  with this mutation seems to be worse than the KRAS wild-type cohort. This mutation,\n  along with the mutations affecting the neighboring G12 position, may result in a\n  less responsive tumor when treated with first-generation TKI's like gefitinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	2aa9c903-6d5b-480e-9443-15b931e3b956	2015-07-31 15:55:06.549343
508	82	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 404\nname: P124S\ndescription: MAP2K1 P124S is a recurrent mutation in melanoma, and is seen in bladder\n  and colon cancer to a lesser degree. The P124S mutation has been shown to contribute\n  to AZD6244 resistance in melanoma cell lines, but considerably less so than its\n  Q56P counterpart.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	d414663d-2735-48dc-9855-9ddae1fb6d9b	2015-07-31 15:55:06.574787
509	83	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 404\nname: Q56P\ndescription: MAP2K1 Q56P is a recurrent mutation in melanoma and gastric cancer. This\n  mutation has been shown to confer considerable resistance to AZD6244 treatment of\n  melanoma cell lines.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	bf8a4b43-1344-4d49-b054-99e3e1a9b768	2015-07-31 15:55:06.594688
510	84	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 405\nname: MEF2D-CSF1R\ndescription: MEF2D-CSF1R is a fusion that has been observed in acute lymphocytic leukemia.\n  In cell lines harboring this event, treatment with imatinib has shown notable sensitivity.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	1c8b1a2c-293a-49c3-b1c6-0d2b8dcb1f22	2015-07-31 15:55:06.616884
511	85	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 407\nname: PROMOTER METHYLATION\ndescription: MGMT promoter methylation has been observed to impact tumor progression\n  in glioblastoma multiforme. In patients exhibiting promoter methylation, the akylating\n  agent carmustine has shown efficacy. In patients lacking methylation, combining\n  carmustine with the MGMT inhibitor O(6)-benzylguanine may be effective, but more\n  experiments are required. Clinical trials have also shown selective sensitivity\n  of promoter methylation-positive patients to temozolomide, making a case for wider\n  methylation screening in GBM patients.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	cbbcb6d2-af3c-4b60-aca8-64cbac9c2dbf	2015-07-31 15:55:06.635668
512	86	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 408\nname: EXON 12 MUTATIONS\ndescription: NPM1 exon 12 mutations are frequently identified in patients with cytogenetically\n  normal acute myeloid leukemia (AML) and often co-occur with FLT3-ITD. FLT3 status\n  should also be evaluated as co-occurence with FLT3-ITD may impact prognosis. Exon\n  12 mutations have been identified as a predictor of good prognostic outcomes in\n  the absence of FLT3-ITD. Due to their high frequency, NPM1 mutations have been retrospectively\n  analyzed in the context of a number of therapies including variable results following\n  ATRA treatment as well as improved response to high-dose daunorubicin or valproic\n  acid. Additionally, multiple groups have shown increased surface expression of CD33\n  associated with NPM1 mutation, suggesting these patients may respond to anti-CD33\n  therapy. Cytoplasmic sequestration of NPM1 (NPM1c) is associated with a good response\n  to induction therapy.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	98e38195-d246-4ec7-a6fb-7e3a810d5332	2015-07-31 15:55:06.657899
513	87	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 408\nname: W288FS\ndescription: NPM1 W288fs (aka NPM1-A) is located in exon 12 of NPM1 and is the most\n  common NPM1 mutation identified in acute myeloid leukemia. This mutation results\n  in cytoplasmic localization of NPM1 (NPM1c) which is associated with a good response\n  to induction therapy. Although it is the most extensively studied NPM1 exon 12 mutation,\n  it is generally grouped with other exon 12 mutations for patient analysis (see NPM1\n  Exon 12 variants for more information).\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	4ad548a0-7edd-4a36-987b-0ea8cd542feb	2015-07-31 15:55:06.67968
514	88	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 409\nname: EXON 1 MUTATIONS\ndescription: NRAS exon 1 mutations were studied by Jakob et al in 2012 and were shown\n  to be correlated with poorer overall survival relative to wild-type NRAS in melanoma\n  patients.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	61b18262-a163-4935-b2e8-4c0f60e70ddd	2015-07-31 15:55:06.702406
517	91	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 409\nname: EXON 4 MUTATIONS\ndescription: In a multi-gene prognostic survey, Therkildsen et al 2014 found NRAS\n  exon 3 and 4 mutations were correlated with poorer overall survival.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	545d274c-0735-4e10-b0fb-6e757e692d83	2015-07-31 15:55:06.767863
520	94	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 409\nname: Q61\ndescription: NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal\n  stromal tumors, melanoma, and others. Two melanoma patients, each harboring mutations\n  at this locus (Q61L and Q61R), responded to treatment with the akylating agent temozolomide.\n  However, in colorectal cancer patients, mutations at this locus have been shown\n  to confer resistance to cetuximab. The prognostic impact of mutations at this locus\n  is currently under study.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	44a2bcbe-7af5-4933-9b40-bf69e7510200	2015-07-31 15:55:06.825194
521	95	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 409\nname: Q61L\ndescription: NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal\n  stromal tumors, melanoma, and others. A melanoma patient harboring a mutation at\n  this locus responded to treatment with the akylating agent temozolomide. However,\n  in colorectal cancer patients, mutations at this locus have been shown to confer\n  resistance to cetuximab. The prognostic impact of mutations at this locus is currently\n  under study.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	984e327b-3409-4227-be0f-4a554e738c8d	2015-07-31 15:55:06.848796
522	96	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 409\nname: Q61R\ndescription: NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal\n  stromal tumors, melanoma, and others. A melanoma patient harboring a mutation at\n  this locus responded to treatment with the akylating agent temozolomide. However,\n  in colorectal cancer patients, mutations at this locus have been shown to confer\n  resistance to cetuximab. The prognostic impact of mutations at this locus is currently\n  under study.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	cb276ca2-746a-47eb-899c-14b615521782	2015-07-31 15:55:06.873203
523	97	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 411\nname: V536E\ndescription: ''\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	22eb45a9-e6d2-4395-b788-96cbe2ecd902	2015-07-31 15:55:06.892679
524	98	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 411\nname: D842I\ndescription: PDGFRA D842 mutations are characterized broadly as imatinib resistance\n  mutations. This is most well characterized in gastrointestinal stromal tumors, but\n  other cell lines containing these mutations have been shown to be resistant as well.\n  In imatinib resistant cell lines, a number of other therapeutics have demonstrated\n  efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	f4e4d658-b8cd-427e-b5f8-ae10ab7f4a3e	2015-07-31 15:55:06.910312
525	99	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 411\nname: D842V\ndescription: PDGFRA D842 mutations are characterized broadly as imatinib resistance\n  mutations. This is most well characterized in gastrointestinal stromal tumors, but\n  other cell lines containing these mutations have been shown to be resistant as well.\n  In imatinib resistant cell lines, a number of other therapeutics have demonstrated\n  efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	f9029545-813c-405d-b7ca-2d64c3bffe46	2015-07-31 15:55:06.930251
526	100	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 411\nname: D842Y\ndescription: PDGFRA D842 mutations are characterized broadly as imatinib resistance\n  mutations. This is most well characterized in gastrointestinal stromal tumors, but\n  other cell lines containing these mutations have been shown to be resistant as well.\n  In imatinib resistant cell lines, a number of other therapeutics have demonstrated\n  efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	5e31b676-f5be-4904-8121-8c92b0ce2fa1	2015-07-31 15:55:06.948565
527	101	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 411\nname: DEL I843\ndescription: PDGFRA D842 mutations are characterized broadly as imatinib resistance\n  mutations. This is most well characterized in gastrointestinal stromal tumors, but\n  other cell lines containing these mutations have been shown to be resistant as well.\n  In imatinib resistant cell lines, a number of other therapeutics have demonstrated\n  efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	1846c741-89cd-46e9-ae08-0a9e503bc315	2015-07-31 15:55:06.968672
528	102	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 411\nname: DI842-843IM\ndescription: PDGFRA D842 mutations are characterized broadly as imatinib resistance\n  mutations. This is most well characterized in gastrointestinal stromal tumors, but\n  other cell lines containing these mutations have been shown to be resistant as well.\n  In imatinib resistant cell lines, a number of other therapeutics have demonstrated\n  efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	2b056cae-69c1-4f94-a9b3-ba563e34d855	2015-07-31 15:55:07.00939
529	103	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 410\nname: E542K\ndescription: PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in\n  breast cancer, and are highly recurrent mutations in many other cancer types. E545K,\n  and possibly the other mutations in the E545 region, may present patients with a\n  poorer prognosis than patients with either patients with other PIK3CA variant or\n  wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer\n  resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies\n  for variants in PIK3CA are still in early clinical trial phases.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	990132c9-7f0f-4665-85d0-41e2e219e4fb	2015-07-31 15:55:07.035688
541	115	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 417\nname: K700E\ndescription: SF3B1 K700E is a variant found in myelodysplastic syndromes, chronic\n  leukemias, and more recently, breast cancer. This somatic mutation has been linked\n  to better overall outcome and event-free survival in MDS patients. Additionally,\n  these mutations are the most common SF3B1 mutation observed in MDS and highly associated\n  with subtypes of MDS that are defined by ringed sideroblasts.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	02324ca2-5b13-4500-a41d-0597d4cda396	2015-07-31 15:55:07.301933
530	104	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 410\nname: E545K\ndescription: PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in\n  breast cancer, and are highly recurrent mutations in many other cancer types. E545K,\n  and possibly the other mutations in the E545 region, may present patients with a\n  poorer prognosis than patients with either patients with other PIK3CA variant or\n  wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer\n  resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies\n  for variants in PIK3CA are still in early clinical trial phases.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	d8625872-6a82-4554-9056-a721a65f4eec	2015-07-31 15:55:07.054986
531	105	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 410\nname: EXON 20 MUTATIONS\ndescription: PIK3CA H1047R is one of the most recurrent mutations in cancer, especially\n  breast cancer. Of PIK3CA mutant breast cancers, over half harbor this mutation.\n  Meta-analyses have shown that patients harboring this mutation may have worse overall\n  survival, but other studies have shown no difference between H1047R and other PIK3CA\n  mutants from a prognostic standpoint. While very prevalent, targeted therapies for\n  this particular mutation are still in early clinical trial phases.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	6bc43c39-b0a2-484c-870b-7dfb868c0e95	2015-07-31 15:55:07.076993
532	106	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 410\nname: EXON 9 MUTATIONS\ndescription: PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in\n  breast cancer, and are highly recurrent mutations in many other cancer types. E545K,\n  and possibly the other mutations in the E545 region, may present patients with a\n  poorer prognosis than patients with either patients with other PIK3CA variant or\n  wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer\n  resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies\n  for variants in PIK3CA are still in early clinical trial phases.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	03b9befa-007e-4c27-bc66-589fe070b374	2015-07-31 15:55:07.098697
533	107	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 410\nname: H1047R\ndescription: PIK3CA H1047R is one of the most recurrent mutations in cancer, especially\n  breast cancer. Of PIK3CA mutant breast cancers, over half harbor this mutation.\n  Meta-analyses have shown that patients harboring this mutation may have worse overall\n  survival, but other studies have shown no difference between H1047R and other PIK3CA\n  mutants from a prognostic standpoint. While very prevalent, targeted therapies for\n  this particular mutation are still in early clinical trial phases.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	38b5e66e-f3bf-4fa7-a274-7ed958dcfe83	2015-07-31 15:55:07.121369
534	108	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 412\nname: PML-RARA\ndescription: The PML-RARa fusion is seen as a diagnostic event in acute promyelocytic\n  leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA\n  in APL patients harboring the PML-RARa fusion. Recent interest has been shown in\n  combining ATRA and arsenic trioxide for treating these patients, and early results\n  seem promising.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	352fafc5-fa22-49a1-8dcc-db53fcaad493	2015-07-31 15:55:07.145919
535	109	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 390\nname: DNAJB1-PRKACA\ndescription: This fusion has been found to be very recurrent in a rare form of adolescent\n  liver cancer, hepatocellular fibrolamellar carcinoma. In a 2014 study, authors found\n  Honeyman et al observed this fusion in all 15 of the FL-HCC cases they examined,\n  and functional studies found that the fusion retained kinase activity. The presence\n  of this fusion may be used as a diagnostic marker for this rare tumor type.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	c95fc2f4-68b7-4229-9e2b-679d4f3c5244	2015-07-31 15:55:07.171665
536	110	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 414\nname: R233*\ndescription: PTEN R233* has been shown to be a loss of function mutation, and PTEN\n  loss has been the subject of considerable research in breast cancer. PTEN loss may\n  sensitize cells to PI3K-mTOR inhibition. While still being debated, there is data\n  to support that PTEN loss is both associated with poorer prognosis, and no change\n  in prognosis.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	b4096a67-7cf4-43b3-b171-3166d2e16c1d	2015-07-31 15:55:07.190864
537	111	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 413\nname: PML-RARA\ndescription: The PML-RARa fusion is seen as a diagnostic event in acute promyelocytic\n  leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA\n  in APL patients harboring the PML-RARa fusion. Recent interest has been shown in\n  combining ATRA and Arsenic Trioxide for treating these patients, and early results\n  seem promising.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	94ece4cd-f104-4806-839e-986070e3118a	2015-07-31 15:55:07.21103
538	112	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 415\nname: C634W\ndescription: RET C639W has been implicated as an alternate mechanism of activating\n  RET in medullary thyroid cancer. While there currently are no RET-specific inhibiting\n  agents, promiscuous kinase inhibitors have seen some success in treating RET overactivity.\n  Data suggests however, that the C639W mutation may lead to drug resistance, especially\n  against the VEGFR-inhibitor motesanib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	cae24609-b4f1-446c-b9f8-e4f29f836c64	2015-07-31 15:55:07.233482
539	113	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 415\nname: M918T\ndescription: RET M819T is the most common somatically acquired mutation in medullary\n  thyroid cancer (MTC). While there currently are no RET-specific inhibiting agents,\n  promiscuous kinase inhibitors have seen some success in treating RET overactivity.\n  Data suggests however, that the M918T mutation may lead to drug resistance, especially\n  against the VEGFR-inhibitor motesanib. It has also been suggested that RET M819T\n  leads to more aggressive MTC with a poorer prognosis.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	9a16eb25-367c-4188-b294-f590044086a5	2015-07-31 15:55:07.255388
542	116	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 418\nname: R175H\ndescription: While loss-of-function events in TP53 are very common in cancer, the\n  R175H variant seems not only to result in loss of tumor-suppression, but also acts\n  as a gain-of-function mutation that promotes tumorigenesis in mouse models. Cell\n  lines harboring this mutant is also more responsive to treatment with doxorubicin\n  than its wild-type counterparts. While the prognostic impact of individual TP53\n  mutations is influenced by the cohort being studied, it has been shown that the\n  R175H mutation is correlated with worse overall survival than wild-type TP53, but\n  is not as detrimental as the R248W variant.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	ca9bfddc-d49a-4f69-9209-a1a8b6978000	2015-07-31 15:55:07.324255
543	117	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 418\nname: R248Q\ndescription: While loss-of-function events in TP53 are very common in cancer, the\n  R248 variants seem not only to result in loss of tumor-suppression, but also act\n  as a gain-of-function mutation that can promote tumorigenesis in mouse models. This\n  mutant is also more responsive to treatment with doxorubicin than its wild-type\n  counterparts. While the prognostic impact of individual TP53 mutations is influenced\n  by the cohort being studied, R248 mutations have been shown to confer worse overall\n  survival. The R248Q mutation has also shown an increased invasive behavior in cell\n  lines. This is specific to the 248Q variant.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	27fe3d58-942a-4fa0-af4e-c8d46b2db834	2015-07-31 15:55:07.347877
544	118	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 418\nname: R248W\ndescription: While loss-of-function events in TP53 are very common in cancer, the\n  R248 variants seem not only to result in loss of tumor-suppression, but also act\n  as a gain-of-function mutation that can promote tumorigenesis in mouse models. This\n  mutant is also more responsive to treatment with doxorubicin than its wild-type\n  counterparts. While the prognostic impact of individual TP53 mutations is influenced\n  by the cohort being studied, R248 mutations have been shown to confer worse overall\n  survival.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	93248ddf-7d7d-4286-8dc0-01eacc332d20	2015-07-31 15:55:07.371593
545	119	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 418\nname: R249T\ndescription: This mutant is also more responsive to treatment with doxorubicin than\n  its wild-type counterparts. While the prognostic impact of individual TP53 mutations\n  is influenced by the cohort being studied, it has been suggested that the R249 mutants\n  have been correlated with worse overall survival in breast cancer patients when\n  compared to wild-type.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	a070b854-9ef3-4525-9239-2f60483198f4	2015-07-31 15:55:07.390086
546	120	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 418\nname: R249W\ndescription: This mutant is also more responsive to treatment with doxorubicin than\n  its wild-type counterparts. While the prognostic impact of individual TP53 mutations\n  is influenced by the cohort being studied, it has been suggested that the R249 mutants\n  have been correlated with worse overall survival in breast cancer patients when\n  compared to wild-type.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	e43cfa53-f2f9-4b38-880c-bdbb5535ab14	2015-07-31 15:55:07.409818
547	121	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 418\nname: R273C\ndescription: While loss-of-function events in TP53 are very common in cancer, the\n  R273 variants seem not only to result in loss of tumor-suppression, but also act\n  as a gain-of-function mutation that can promote tumorigenesis in mouse models. This\n  mutant is also more responsive to treatment with doxorubicin than its wild-type\n  counterparts. While the prognostic impact of individual TP53 mutations is influenced\n  by the cohort being studied, it has been suggested that the R273 mutants have been\n  correlated with worse overall survival in breast cancer patients when compared to\n  wild-type.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	8641c595-4cf4-432c-aea1-47c252287416	2015-07-31 15:55:07.435072
548	122	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 418\nname: R273H\ndescription: While loss-of-function events in TP53 are very common in cancer, the\n  R273 variants seem not only to result in loss of tumor-suppression, but also act\n  as a gain-of-function mutation that can promote tumorigenesis in mouse models. This\n  mutant is also more responsive to treatment with doxorubicin than its wild-type\n  counterparts. While the prognostic impact of individual TP53 mutations is influenced\n  by the cohort being studied, it has been suggested that the R273 mutants have been\n  correlated with worse overall survival in breast cancer patients when compared to\n  wild-type.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	51c774a8-80f2-4c0a-b88c-7cac6b695aed	2015-07-31 15:55:07.466283
549	123	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 418\nname: V173G/A\ndescription: While the prognostic impact of individual TP53 mutations is influenced\n  by the cohort being studied, it has been suggested that the R249 mutants have been\n  correlated with worse overall survival in breast cancer patients when compared to\n  wild-type.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	8fec341a-f87f-40c2-91bb-49723c9b631e	2015-07-31 15:55:07.485677
550	124	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 419\nname: FRAMESHIFT TRUNCATION\ndescription: In a small cohort study of bladder cancer, patients with TSC1 mutations\n  showed better responses to and increased treatment duration tolerance with the mTOR\n  inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with\n  TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2\n  wildtype cells.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	6283389b-1e65-4034-b929-bf24cb92b795	2015-07-31 15:55:07.505548
551	125	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 419\nname: LOSS-OF-FUNCTION\ndescription: In a small cohort study of bladder cancer, patients with TSC1 mutations\n  showed better responses to and increased treatment duration tolerance with the mTOR\n  inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with\n  TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2\n  wildtype cells.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	ea9a193e-6399-4fe9-a198-d185335faea9	2015-07-31 15:55:07.523305
552	126	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 420\nname: LOSS-OF-FUNCTION\ndescription: In a small cohort study of bladder cancer, patients with TSC1 mutations\n  showed better responses to and increased treatment duration tolerance with the mTOR\n  inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with\n  TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2\n  wildtype cells.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	7bef8bac-2b3c-4893-9413-ebe5f5b2fdcd	2015-07-31 15:55:07.547882
553	127	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 421\nname: Q157P/R\ndescription: U2AF1 Q157P/R has been shown to be a recurrent mutation in acute myeloid\n  leukemia (AML), myelodysplastic syndromes (MDS) and lung adenocarcinomas. This mutation\n  is less common than the S34F mutation, occurs in the second zinc finger domain of\n  U2AF1 and has been demonstrated to alter splicing. The impact of U2AF1 mutations\n  on overall survival in MDS has been debated, however, patients with U2AF1 mutations\n  were shown to be at an increased risk of transformation to secondary AML. The presence\n  of this mutation was not associated with a specific prognostic outcome in AML when\n  compared to U2AF1 wildtype patients.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	ee21607a-7d12-489a-96ed-3b7af9036334	2015-07-31 15:55:07.582672
554	128	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 421\nname: S34Y/F\ndescription: U2AF1 S34Y/F has been shown to be a recurrent mutation in acute myeloid\n  leukemia (AML), myelodysplastic syndromes (MDS) and lung adenocarcinomas. This mutation\n  is the most commonly identified variant in MDS, occurs in the first zinc finger\n  domain of U2AF1 and has been demonstrated to alter splicing. The impact of U2AF1\n  mutations on overall survival in MDS has been debated, however, patients with U2AF1\n  mutations were shown to be at an increased risk of transformation to secondary AML.\n  The presence of this mutation was not associated with a specific prognostic outcome\n  in AML when compared to U2AF1 wildtype patients.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	f0aaa2b4-2ecc-48ea-9204-b97a5bd8dabd	2015-07-31 15:55:07.602679
555	129	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 422\nname: EXON 7 MUTATIONS\ndescription: WT1 exon 7 mutations have been shown to be recurrent in acute myeloid\n  leukemia. Many sources have examined the prognostic impact of these, agreeing that\n  the mutant exon 7 cohort is correlated with worse overall survival and a number\n  of poor prognistic outcomes. This may be the result of an overall poor response\n  to chemotherapy from WT1 mutant tumors.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	292c6850-d5b7-43ef-a0a7-c993311d85d1	2015-07-31 15:55:07.622106
556	130	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 422\nname: EXON 9 MUTATIONS\ndescription: WT1 exon 9 mutations have been shown to be recurrent in acute myeloid\n  leukemia, although at a less frequent rate than their exon 7 counterparts. Many\n  sources have examined the prognostic impact of these, agreeing that the mutant exon\n  9 cohort is correlated with worse overall survival and a number of poor prognistic\n  outcomes. This may be the result of an overall poor response to chemotherapy from\n  WT1 mutant tumors.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	b3ce69dc-89de-4ca1-997a-558eea7d6fcd	2015-07-31 15:55:07.645355
557	131	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 379\nname: LOSS-OF-FUNCTION\ndescription: BRCA1 loss of function mutations have been shown to increase risk of\n  breast and ovarian cancer in those carrying the allele in their germline. Treating\n  BRCA mutant patients with PARP inhibitors such as Olaparib has led to significant\n  response.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	f48294af-bfc3-4551-9f12-7a958ec7603b	2015-07-31 15:55:07.668718
558	132	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 380\nname: LOSS-OF-FUNCTION\ndescription: BRCA2 loss of function mutations have been shown to increase risk of\n  breast and ovarian cancer in those carrying the allele in their germline. Treating\n  BRCA mutant patients with PARP inhibitors such as Olaparib has led to significant\n  response.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	b44ef817-2291-46c2-adf0-9652fbe48162	2015-07-31 15:55:07.689893
559	133	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 392\nname: EXON 19 DELETION\ndescription: Deletions within exon 19 of EGFR are most common in lung cancer. These\n  deletions, in non-small cell lung cancer, have been shown to be sensitive to the\n  EGFR tyrosine kinase inhibitors gefitinib and erlotinib. There is also data to suggest\n  that this event is a good prognostic marker in lung adenocarcinoma.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	8a6a478a-efe6-4baf-846d-50e53469c6c8	2015-07-31 15:55:07.711004
560	134	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 392\nname: G719S\ndescription: While not as recurrent as the L858R mutation, EGFR G719S has also been\n  shown to be an activating mutation. In lung cancer cell lines, it also confers sensitivity\n  to the tyrosine kinase inhibitors gefitinib and erlotinib.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	33830d6b-0376-40be-82e9-b670bceda561	2015-07-31 15:55:07.73245
561	135	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 423\nname: D1643H\ndescription: Activating mutations in NOTCH1, including D1643H, have been shown to\n  be poor prognostic markers in lung cancer.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	b465f23b-0ce0-4dcb-a1d1-91ab173415ce	2015-07-31 15:55:07.754379
562	136	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 423\nname: R2328W\ndescription: Activating mutations in NOTCH1, including R2328W, have been shown to\n  be poor prognostic markers in lung cancer.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	5910d0cd-b55f-4aa8-b151-7ac7265f06c5	2015-07-31 15:55:07.773594
563	137	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 423\nname: V2444FS\ndescription: Activating mutations in NOTCH1, including a frameshift insertion at V2444,\n  have been shown to be poor prognostic markers in lung cancer.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	807f4c33-bff7-4ba9-bd68-bc8d7d653623	2015-07-31 15:55:07.794386
565	139	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 424\nname: L63V\ndescription: Activating mutations in DDR2, including L63V, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	48198327-820c-43ed-b29b-679b5556ab48	2015-07-31 15:55:07.84042
566	140	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 424\nname: L239R\ndescription: Activating mutations in DDR2, including L239R, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	6c0e54c2-db25-4cb4-adc3-8f3a55667089	2015-07-31 15:55:07.866423
567	141	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 424\nname: G253C\ndescription: Activating mutations in DDR2, including G253C, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	e149a941-66bd-4487-89a3-037e648b525f	2015-07-31 15:55:07.885018
568	142	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 424\nname: G505S\ndescription: Activating mutations in DDR2, including G505S, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	87afbde6-eb5f-4f80-a4c7-6f4f637ac725	2015-07-31 15:55:07.902778
569	143	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 424\nname: I638F\ndescription: DDR2 I638F has been shown to be a loss of function mutation, but also\n  confers sensitivity to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	a7714898-d406-4181-af2f-2d01785f0326	2015-07-31 15:55:07.92132
570	144	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 424\nname: G774V\ndescription: Activating mutations in DDR2, including G774V, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	a732fcbe-bddd-4985-9265-976be101f3e5	2015-07-31 15:55:07.938903
571	145	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 424\nname: S768R\ndescription: Activating mutations in DDR2, including S768R, has been shown to be sensitive\n  to dasatinib in cell lines.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	681d1d0e-2f48-44a4-a6e6-36e210cb9d6f	2015-07-31 15:55:07.956749
572	146	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 425\nname: AMPLIFICATION\ndescription: MET amplification, like EGFR T790M, has been shown to be capable of driving\n  acquired resistance to dacomitinib in patients with lung adenocarcinoma.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	c3512b9a-46f4-477c-ac44-528014b7f3d3	2015-07-31 15:55:07.976065
573	147	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 403\nname: G12V\ndescription: KRAS G12V, like EGFR T790M, has been shown to be capable of driving acquired\n  resistance to tyrosine kinase inhibitors in lung adenocarcinoma.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	f9d2905e-9594-48fc-b2c0-5cbe34281459	2015-07-31 15:55:07.994761
574	148	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 403\nname: G12A\ndescription: KRAS G12A, like EGFR T790M, has been shown to be capable of driving acquired\n  resistance to tyrosine kinase inhibitors in lung adenocarcinoma.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	ee1e38bf-1d17-42f6-b6e2-55cbcc8aa08d	2015-07-31 15:55:08.01898
575	149	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 427\nname: EWS-FLI1\ndescription: EWS-FLI1 fusions have been found to be extremely common in Ewing's sarcomas.\n  The presence of the fusion is also thought to be a positive prognostic marker of\n  survival.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	70a7f34a-d40a-40a1-99e0-a03b23630cba	2015-07-31 15:55:08.037946
576	150	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 426\nname: EWS-FLI1\ndescription: EWS-FLI1 fusions have been found to be extremely common in Ewing's sarcomas.\n  The presence of the fusion is also thought to be a positive prognostic marker of\n  survival.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	76f45ca5-6c4e-47bc-a556-4dbb9500418f	2015-07-31 15:55:08.062112
577	151	Variant	\N	\N	\N	\N	\N	create	---\ngene_id: 426\nname: TYPE 1 EWS-FLI1\ndescription: The most common EWS-FLI1 fusion (type 1) links EWS exon 7 to FLI1 exon\n  6. This fusion product is found to be associated with better outcome than other\n  EWS-FLI1 fusions in Ewing's Sarcoma.\ndeleted: false\ndeleted_at: \ngenome_build: \nchromosome: \nstart: \nstop: \nreference_bases: \nvariant_bases: \nrepresentative_transcript: \nchromosome2: \nstart2: \nstop2: \nreference_build: \n	1	\N	\N	4cd6610f-4f5d-41c6-8c54-3bf28f121aba	2015-07-31 15:55:08.081726
\.


--
-- Name: audits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('audits_id_seq', 577, true);


--
-- Data for Name: authorizations; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY authorizations (id, user_id, provider, uid, created_at, updated_at) FROM stdin;
\.


--
-- Name: authorizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('authorizations_id_seq', 1, false);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY comments (id, title, comment, commentable_id, commentable_type, user_id, role, created_at, updated_at) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Data for Name: data_versions; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY data_versions (id, version) FROM stdin;
\.


--
-- Name: data_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('data_versions_id_seq', 1, false);


--
-- Data for Name: definitions; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY definitions (id, term, text, created_at, updated_at) FROM stdin;
\.


--
-- Name: definitions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('definitions_id_seq', 1, false);


--
-- Data for Name: delayed_jobs; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY delayed_jobs (id, priority, attempts, handler, last_error, run_at, locked_at, failed_at, locked_by, queue, created_at, updated_at) FROM stdin;
351	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 16e23f07-8fcc-4b53-a2bb-d625ad7e3ac9\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/352\n	\N	2015-07-31 15:54:51.889278	\N	\N	\N	default	2015-07-31 15:54:51.889433	2015-07-31 15:54:51.889433
352	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: e9a75bca-9939-413b-89fa-c617777a00f0\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/353\n	\N	2015-07-31 15:54:51.905039	\N	\N	\N	default	2015-07-31 15:54:51.905167	2015-07-31 15:54:51.905167
353	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 792337c9-207a-4b13-b7ab-fb7497158baa\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/354\n	\N	2015-07-31 15:54:52.149606	\N	\N	\N	default	2015-07-31 15:54:52.149955	2015-07-31 15:54:52.149955
354	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 55ac765f-2d35-47da-bd49-7eb98cbff84b\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/355\n	\N	2015-07-31 15:54:52.164151	\N	\N	\N	default	2015-07-31 15:54:52.164294	2015-07-31 15:54:52.164294
355	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 5db84e93-e4c8-435d-a08f-5fba23567f56\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/356\n	\N	2015-07-31 15:54:52.429455	\N	\N	\N	default	2015-07-31 15:54:52.429571	2015-07-31 15:54:52.429571
356	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 661ead1c-16f8-48a7-9b6b-901060b036ed\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/357\n	\N	2015-07-31 15:54:52.441368	\N	\N	\N	default	2015-07-31 15:54:52.441561	2015-07-31 15:54:52.441561
357	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 5c1959be-efbd-4181-a539-feed9187b873\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/358\n	\N	2015-07-31 15:54:52.677117	\N	\N	\N	default	2015-07-31 15:54:52.677251	2015-07-31 15:54:52.677251
358	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 98aad47d-4b10-4b7b-9ba3-f4268cab8d2e\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/359\n	\N	2015-07-31 15:54:52.686408	\N	\N	\N	default	2015-07-31 15:54:52.686554	2015-07-31 15:54:52.686554
359	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 56c78200-399d-45e5-b699-c34b27d06692\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/360\n	\N	2015-07-31 15:54:52.918025	\N	\N	\N	default	2015-07-31 15:54:52.918216	2015-07-31 15:54:52.918216
360	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: c22d692e-adbf-4251-9cb9-510b6fc88fbe\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/361\n	\N	2015-07-31 15:54:52.928541	\N	\N	\N	default	2015-07-31 15:54:52.928652	2015-07-31 15:54:52.928652
361	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: a59e70ff-da70-46af-8b84-1fbce4722683\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/362\n	\N	2015-07-31 15:54:53.178747	\N	\N	\N	default	2015-07-31 15:54:53.178893	2015-07-31 15:54:53.178893
362	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 8c32f551-a5c8-4637-be90-ed16c23d7b8a\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/363\n	\N	2015-07-31 15:54:53.677939	\N	\N	\N	default	2015-07-31 15:54:53.67806	2015-07-31 15:54:53.67806
363	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 6179f931-1051-4b49-9145-441dfd26e6fd\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/364\n	\N	2015-07-31 15:54:53.687377	\N	\N	\N	default	2015-07-31 15:54:53.687637	2015-07-31 15:54:53.687637
364	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 406cd6e5-dc07-478f-bb52-84f883b23ad3\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/365\n	\N	2015-07-31 15:54:54.368059	\N	\N	\N	default	2015-07-31 15:54:54.368174	2015-07-31 15:54:54.368174
365	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 80936d76-0169-4976-aee1-9688f36d5d11\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/366\n	\N	2015-07-31 15:54:54.582455	\N	\N	\N	default	2015-07-31 15:54:54.582695	2015-07-31 15:54:54.582695
366	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 7b20ecc4-6656-4f07-a974-d0c61525412b\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/367\n	\N	2015-07-31 15:54:54.593896	\N	\N	\N	default	2015-07-31 15:54:54.594047	2015-07-31 15:54:54.594047
367	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 5ace9529-f27c-439a-834e-11bb1242d3ed\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/368\n	\N	2015-07-31 15:54:55.097243	\N	\N	\N	default	2015-07-31 15:54:55.097376	2015-07-31 15:54:55.097376
368	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: f0b498d8-b6ae-491f-a8fc-e083f6d5a288\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/369\n	\N	2015-07-31 15:54:55.107279	\N	\N	\N	default	2015-07-31 15:54:55.107394	2015-07-31 15:54:55.107394
369	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 96090ce4-bfd9-414d-91c3-1fa653a37720\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/370\n	\N	2015-07-31 15:54:55.365571	\N	\N	\N	default	2015-07-31 15:54:55.365725	2015-07-31 15:54:55.365725
370	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 8c6e66fa-7d1c-43f7-bf53-80274924671e\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/371\n	\N	2015-07-31 15:54:55.378618	\N	\N	\N	default	2015-07-31 15:54:55.378752	2015-07-31 15:54:55.378752
371	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: df7d0468-d67f-4dc1-b87c-3a7b4dab1be0\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/372\n	\N	2015-07-31 15:54:55.390479	\N	\N	\N	default	2015-07-31 15:54:55.390596	2015-07-31 15:54:55.390596
372	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: d915f78b-ae0a-4764-a3a7-f1e1d704a506\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/373\n	\N	2015-07-31 15:54:55.611904	\N	\N	\N	default	2015-07-31 15:54:55.61202	2015-07-31 15:54:55.61202
373	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 6280975b-2708-4909-95aa-30e154c53326\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/374\n	\N	2015-07-31 15:54:55.833855	\N	\N	\N	default	2015-07-31 15:54:55.833994	2015-07-31 15:54:55.833994
374	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 8abf2c77-b0ae-4d43-af01-62a1d5836024\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/375\n	\N	2015-07-31 15:54:56.057263	\N	\N	\N	default	2015-07-31 15:54:56.057382	2015-07-31 15:54:56.057382
375	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 1378807a-4f27-439e-a7fc-26c1012a2b9a\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/376\n	\N	2015-07-31 15:54:56.070375	\N	\N	\N	default	2015-07-31 15:54:56.070536	2015-07-31 15:54:56.070536
376	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 25d718af-618f-4ebd-973f-b1b2ebe21254\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/377\n	\N	2015-07-31 15:54:56.310112	\N	\N	\N	default	2015-07-31 15:54:56.310231	2015-07-31 15:54:56.310231
377	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 1149dce7-05e5-49d0-b7cc-798a19b1536e\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/378\n	\N	2015-07-31 15:54:56.32037	\N	\N	\N	default	2015-07-31 15:54:56.320485	2015-07-31 15:54:56.320485
378	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: b0112f6c-eedb-49f1-b223-3df0a9b07ec9\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/379\n	\N	2015-07-31 15:54:56.576227	\N	\N	\N	default	2015-07-31 15:54:56.576338	2015-07-31 15:54:56.576338
379	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 9c9759ff-b2a4-4504-ab88-34ce187a8ce3\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/380\n	\N	2015-07-31 15:54:56.587769	\N	\N	\N	default	2015-07-31 15:54:56.587901	2015-07-31 15:54:56.587901
380	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: e1fb1975-ce13-4fef-8a66-e09a88f4089e\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/381\n	\N	2015-07-31 15:54:56.893655	\N	\N	\N	default	2015-07-31 15:54:56.893788	2015-07-31 15:54:56.893788
381	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 482795fb-04cc-418e-9c2e-3b2e97d737d1\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/382\n	\N	2015-07-31 15:54:56.905413	\N	\N	\N	default	2015-07-31 15:54:56.905541	2015-07-31 15:54:56.905541
382	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: bfdfcb02-9b32-4e92-9c0e-c6dbb00e4626\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/383\n	\N	2015-07-31 15:54:57.200738	\N	\N	\N	default	2015-07-31 15:54:57.200872	2015-07-31 15:54:57.200872
383	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: a48628e3-fbc5-4728-a29a-c949b1b5121f\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/384\n	\N	2015-07-31 15:54:57.214784	\N	\N	\N	default	2015-07-31 15:54:57.215012	2015-07-31 15:54:57.215012
384	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 7a1da485-fab4-4a21-9019-cd473ae0198c\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/385\n	\N	2015-07-31 15:54:57.700447	\N	\N	\N	default	2015-07-31 15:54:57.700596	2015-07-31 15:54:57.700596
385	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: bc194024-7a3a-40f7-9fd8-613f66b36b29\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/386\n	\N	2015-07-31 15:54:57.941736	\N	\N	\N	default	2015-07-31 15:54:57.941849	2015-07-31 15:54:57.941849
386	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: bf39c1d0-bdb6-4545-95d1-3971d0571b77\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/387\n	\N	2015-07-31 15:54:57.950676	\N	\N	\N	default	2015-07-31 15:54:57.950786	2015-07-31 15:54:57.950786
387	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: b60a5aef-b15d-4e9c-a4d1-16cc189f8721\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/388\n	\N	2015-07-31 15:54:58.193027	\N	\N	\N	default	2015-07-31 15:54:58.193139	2015-07-31 15:54:58.193139
388	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: dbf23f84-065a-4795-b0fb-9b87231e075b\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/389\n	\N	2015-07-31 15:54:58.20467	\N	\N	\N	default	2015-07-31 15:54:58.204837	2015-07-31 15:54:58.204837
389	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 2513de33-5e7a-469f-9550-b79d5e10c0a4\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/390\n	\N	2015-07-31 15:54:58.454431	\N	\N	\N	default	2015-07-31 15:54:58.454548	2015-07-31 15:54:58.454548
390	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 392c8587-1728-4ff7-94af-6fda321b1046\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/391\n	\N	2015-07-31 15:54:58.671959	\N	\N	\N	default	2015-07-31 15:54:58.672072	2015-07-31 15:54:58.672072
391	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: b93ea2c3-64dd-494f-8ce3-451fc5245b6a\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/392\n	\N	2015-07-31 15:54:58.892987	\N	\N	\N	default	2015-07-31 15:54:58.893101	2015-07-31 15:54:58.893101
392	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: caa79917-e7c7-48a0-8621-80f6cfffe531\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/393\n	\N	2015-07-31 15:54:59.161802	\N	\N	\N	default	2015-07-31 15:54:59.161935	2015-07-31 15:54:59.161935
393	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 5dad1f1a-b883-432a-bc73-c89251761a07\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/394\n	\N	2015-07-31 15:55:00.210967	\N	\N	\N	default	2015-07-31 15:55:00.211138	2015-07-31 15:55:00.211138
394	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: e663a4bb-fe25-4f2e-ba47-ee2c440b29f2\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/395\n	\N	2015-07-31 15:55:01.826701	\N	\N	\N	default	2015-07-31 15:55:01.826815	2015-07-31 15:55:01.826815
395	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: b5ac6b99-e808-46b8-ad32-295d008cf55b\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/396\n	\N	2015-07-31 15:55:01.837517	\N	\N	\N	default	2015-07-31 15:55:01.83771	2015-07-31 15:55:01.83771
396	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 63538af6-30d1-479a-a33d-728f9419dff2\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/397\n	\N	2015-07-31 15:55:02.375199	\N	\N	\N	default	2015-07-31 15:55:02.37543	2015-07-31 15:55:02.37543
397	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 49406206-1e60-46c3-b820-ca3b1442d4d9\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/398\n	\N	2015-07-31 15:55:02.388681	\N	\N	\N	default	2015-07-31 15:55:02.388812	2015-07-31 15:55:02.388812
398	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: cf69b211-7e31-4164-8843-5710e9d162c7\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/399\n	\N	2015-07-31 15:55:02.754855	\N	\N	\N	default	2015-07-31 15:55:02.75498	2015-07-31 15:55:02.75498
399	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: 590b8237-e5a0-442d-a1a9-4253103a2f2d\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/400\n	\N	2015-07-31 15:55:03.429119	\N	\N	\N	default	2015-07-31 15:55:03.429327	2015-07-31 15:55:03.429327
400	0	0	--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: FetchSourceCitation\n  job_id: b0851b5f-8918-4002-ac35-a52ada4ce94e\n  queue_name: default\n  arguments:\n  - _aj_globalid: gid://civic-server/Source/401\n	\N	2015-07-31 15:55:03.441414	\N	\N	\N	default	2015-07-31 15:55:03.441598	2015-07-31 15:55:03.441598
\.


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('delayed_jobs_id_seq', 400, true);


--
-- Data for Name: disease_ontology_mirrors; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY disease_ontology_mirrors (id, doid, name) FROM stdin;
\.


--
-- Name: disease_ontology_mirrors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('disease_ontology_mirrors_id_seq', 1, false);


--
-- Data for Name: diseases; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY diseases (id, doid, name, created_at, updated_at) FROM stdin;
\.


--
-- Name: diseases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('diseases_id_seq', 1, false);


--
-- Data for Name: drugs; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY drugs (id, name, pubchem_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: genes; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY genes (id, entrez_id, name, description, official_name, created_at, updated_at, clinical_description, deleted, deleted_at) FROM stdin;
374	238	ALK	ALK amplifications, fusions and mutations have been shown to be driving events in non-small cell lung cancer. While crizontinib has demonstrated efficacy in treating the amplification, mutations in ALK have been shown to confer resistance to current tyrosine kinase inhibitors. Second-generation TKI's have seen varied success in treating these resistant cases, and the HSP90 inhibitor 17-AAG has been shown to be cytostatic in ALK-altered cell lines.	anaplastic lymphoma receptor tyrosine kinase	2015-07-31 15:54:51.798754	2015-07-31 15:54:51.798754	\N	f	\N
375	207	AKT1	AKT1, also referred to as protein kinase B, is a known oncogene. AKT activation relies on the PI3K pathway, and is recognized as a critical node in the pathway. The E17 hotspot is the most characterized of AKT1 mutations, and has been shown to result in activation of the protein. Mutations in AKT1 have also been shown to confer resistance to allosteric kinase inhibitors in vitro.	v-akt murine thymoma viral oncogene homolog 1	2015-07-31 15:54:52.131982	2015-07-31 15:54:52.131982	\N	f	\N
376	369	ARAF	ARAF has recently become increasingly considered for its oncogenic potential. Its potential as a target for informing clinical action was demonstrated by a single case of advanced lung adenocarcinoma harboring an S214C mutation that, when treated with sorafenib, acheived near-complete clinical remission. This finding has brought new focus on ARAF as a marker that should be assayed for in cancer treatment.	A-Raf proto-oncogene, serine/threonine kinase	2015-07-31 15:54:52.408665	2015-07-31 15:54:52.408665	\N	f	\N
377	25	ABL1	ABL1 is most relevant to cancer in its role in the BCR-ABL fusion protein that has become a signature of chronic myeloid leukemia (CML). Cells harboring this fusion have shown sensitivity to imatinib, greatly improving the prognostic outlook of the disease. However, additional mutations in ABL1 have been shown to confer resistance to imatinib. In these resistance cases, second-generation tyrosine kinase inhibitors such as dasatinib and nilotinib have exhibited some efficacy and are currently undergoing clinical trials for treating acquired resistance in CML.	ABL proto-oncogene 1, non-receptor tyrosine kinase	2015-07-31 15:54:52.660142	2015-07-31 15:54:52.660142	\N	f	\N
378	673	BRAF	BRAF mutations are found to be recurrent in many cancer types. Of these, the mutation of valine 600 to glutamic acid (V600E) is the most prevalent. V600E has been determined to be an activating mutation, and cells that harbor it, along with other V600 mutations are sensitive to the BRAF inhibitor dabrafenib. It is also common to use MEK inhibition as a substitute for BRAF inhibitors, and the MEK inhibitor trametinib has seen some success in BRAF mutant melanomas. BRAF mutations have also been correlated with poor prognosis in many cancer types, although there is at least one study that questions this conclusion in papillary thyroid cancer.	B-Raf proto-oncogene, serine/threonine kinase	2015-07-31 15:54:52.896781	2015-07-31 15:54:52.896781	\N	f	\N
379	672	BRCA1	BRCA1 mutations in the germline have become a hallmark for hereditary breast and ovarian cancers. Variants that have been demonstrated to reduce the function of the protein have been shown to increase risk for these cancers, as well as prostate and pancreatic cancer. These findings have been the impetus for the increased popularity of genetic testing of healthy indivudals to assess risk.	breast cancer 1, early onset	2015-07-31 15:54:53.157913	2015-07-31 15:54:53.157913	\N	f	\N
380	675	BRCA2	BRCA2 mutations in the germline have become a hallmark for hereditary breast and ovarian cancers. Variants that have been demonstrated to reduce the function of the protein have been shown to increase risk for these cancers, as well as prostate and pancreatic cancer. These findings have been the impetus for the increased popularity of genetic testing of healthy indivudals to assess risk.	breast cancer 2, early onset	2015-07-31 15:54:53.425372	2015-07-31 15:54:53.425372	\N	f	\N
381	595	CCND1	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, ranging from genomic amplification to changes in promoter methylation. While Cyclin D2 has only been found to be significantly deregulated in glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been shown to lead to poorer outcomes in a number of studies, and currently there are no FDA-approved targeted therapies.	cyclin D1	2015-07-31 15:54:53.659688	2015-07-31 15:54:53.659688	\N	f	\N
382	894	CCND2	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, ranging from genomic amplification to changes in promoter methylation. While Cyclin D2 has only been found to be significantly deregulated in glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been shown to lead to poorer outcomes in a number of studies, and currently there are no FDA-approved targeted therapies.	cyclin D2	2015-07-31 15:54:53.884723	2015-07-31 15:54:53.884723	\N	f	\N
383	896	CCND3	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, ranging from genomic amplification to changes in promoter methylation. Cyclin D3 loss has been reported in T-ALL, a seemingly unique trend when compared to the amplifcations and overexpressions of the other cyclin D's. In a mouse study, the targeted therapeutic palbociclib significantly increased the median survival of the cyclin D3 knockouts.	cyclin D3	2015-07-31 15:54:54.141286	2015-07-31 15:54:54.141286	\N	f	\N
384	898	CCNE1	Cyclin E, while currenly not as widely implicated as its cyclin D counterparts, has been implicated in various carcinomas, including breast, gastric, stomach and colorectal. High levels of cyclin E, either by gene amplification or overexpression, have been shown to lead to poorer prognosis in gastic carcinoma, and these measurements are correlated with later stage disease. In lung cancer, neoplastic cells with higher levels of the cyclin E/CDK2 complex are more radiosensitive than their more lowly expressed counterparts.	cyclin E1	2015-07-31 15:54:54.349064	2015-07-31 15:54:54.349064	\N	f	\N
385	1021	CDK6	CDK6, along with its partner CDK4, are key players in cell cycle progression. The complex has been implicated in a number of cancer types, and is the focus of therapeutic research and development. One targeted therapy for CDK inhibition is palbociclib, which may slow the growth of advanced stage breast cancers. It has also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors to PI3K inhibitors.	cyclin-dependent kinase 6	2015-07-31 15:54:54.55843	2015-07-31 15:54:54.55843	\N	f	\N
386	1019	CDK4	CDK4, along with its partner CDK6, are key players in cell cycle progression. The complex has been implicated in a number of cancer types, and is the focus of therapeutic research and development. One targeted therapy for CDK inhibition is palbociclib, which may slow the growth of advanced stage breast cancers. It has also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors to PI3K inhibitors.	cyclin-dependent kinase 4	2015-07-31 15:54:54.789496	2015-07-31 15:54:54.789496	\N	f	\N
387	1029	CDKN2A	CDKN2A loss has been shown to be a significant event in a number of cancer types. While no targeted therapeutic has been engaged in clinical trials, the prognostic impact has been studied by a number of meta-analyses. One mechanism by which loss of CDKN2A can occur is by hypermethylation of the promoter region for the gene. However, the prognostic impact of promoter hypermethylation has been relatively ambiguous. Many studies have suggesting poorer prognostic outcome for patients with hypermethylation in colorectal, liver, and younger lung cancer patients. This being said, there is still research to be done before this becomes a widely-accepted prognostic indicator.	cyclin-dependent kinase inhibitor 2A	2015-07-31 15:54:55.079442	2015-07-31 15:54:55.079442	\N	f	\N
388	1050	CEBPA	AML with mutated CEBPA' is a provisional entity in the WHO classification of acute myeloid leukemia (AML) and is recommended to be tested for in patients with AML. CEBPA mutations are particularly associated with cytogenetically normal AML (CN-AML). CEBPA is an intronless gene that is required for granulocyte formation in mice. N-terminal nonsense mutations result in a dominant negative C/EBP-alpha protein while C-terminal mutations reduce the DNA-binding potential of this transcription factor. CEBPA mutations are associated with a favorable prognosis, however, NPM1 and FLT3 mutations should also be assessed in CN-AML patients as concurrent mutations may have prognostic implications.	CCAAT/enhancer binding protein (C/EBP), alpha	2015-07-31 15:54:55.343424	2015-07-31 15:54:55.343424	\N	f	\N
389	3337	DNAJB1	DNAJB1 works upstream of MDM2, stabilizing the complex and facilitating p53 turnover. In hepatocellular fibrolamellar carcinoma (FL-HCC), the fusion DNAJB1 to PRKACA is suggested to be a diagnostic marker for this rare subtype of HCC. In one study, this fusion was observed in 15/15 FL-HCC cases examined and functional studies found that the fusion retained kinase activity.	DnaJ (Hsp40) homolog, subfamily B, member 1	2015-07-31 15:54:55.594425	2015-07-31 15:54:55.594425	\N	f	\N
390	5566	PRKACA	PRKACA has been studied in breast cancer and has been found to mediate resistance to HER2 targeted therapies. It has also been found to contain a mutation hotspot that contributes to neoplastic behavior in neuroendocrine cancers. In hepatocellular fibrolamellar carcinoma (FL-HCC), the fusion DNAJB1 to PRKACA is suggested to be a diagnostic marker for this rare subtype of HCC. In one study, this fusion was observed in 15/15 FL-HCC cases examined and functional studies found that the fusion retained kinase activity.	protein kinase, cAMP-dependent, catalytic, alpha	2015-07-31 15:54:55.805646	2015-07-31 15:54:55.805646	\N	f	\N
391	1788	DNMT3A	DNMT3A is one of several epigenetic modifiers identified as recurrently mutated in acute myeloid leukemia (AML). DNMT3A mutations are associated with cytogenetically normal AML. In vitro experiments indicate that the R882H mutation acts in a dominant negative manner to disrupt the de novo methyltransferase activity of wildtype homotetramers. AML patient bone marrow harboring R882 mutations were similarly demonstrated to be hypomethylated compared to patients with wildtype DNMT3A. These studies also indicated that non-R882 DNMT3A mutations may act in a functionally distinct manner from R882 mutations. Alternative mechanisms indicate independent prognostic outcomes and treatment protocols may need to be considered for these two classes of DNMT3A mutations.	DNA (cytosine-5-)-methyltransferase 3 alpha	2015-07-31 15:54:56.028409	2015-07-31 15:54:56.028409	\N	f	\N
392	1956	EGFR	EGFR is widely recognized for its importance in cancer. Amplification and mutations have been shown to be driving events in many cancer types. Its role in non-small cell lung cancer has spurred many research and drug development efforts. Tyrosine kinase inhibitors have shown efficacy in EGFR amplfied tumors, most notably gefitinib and erlotinib. Mutations in EGFR have been shown to confer resistance to these drugs, particularly the variant T790M, which has been functionally characterized as a resistance marker for both of these drugs. The later generation TKI's have seen some success in treating these resistant cases, and targeted sequencing of the EGFR locus has become a common practice in non-small cell lung cancer.	epidermal growth factor receptor	2015-07-31 15:54:56.290277	2015-07-31 15:54:56.290277	\N	f	\N
393	2064	ERBB2	ERBB2, commonly referred to as HER2, is amplified in HER2-positive breast cancer, and is treated in a separate manner than the other subtypes of breast cancer. Apart from being amplified, ERBB2 activating mutations have been shown to have clinical importance in HER2-negative breast cancer. These mutations have shown sensitivity to the tyrosine kinase inhibitor neratinib, and highlight the importance of clinical sequencing efforts in treating breast cancer.	erb-b2 receptor tyrosine kinase 2	2015-07-31 15:54:56.557816	2015-07-31 15:54:56.557816	\N	f	\N
394	2099	ESR1	ESR1 has been a focus in breast cancer for quite some time, but has also shown significance in endometrial, ovarian and other cancer types. ER-positive breast cancer that is resistant to hormone therapy has instigated clinical sequencing efforts to shed light on the mechanisms of this resistance. A number of mutations in the ligand binding domain of the protein have been implicated in hormone resistance and anti-estrogen therapies. This has spurred efforts to develop therapeutics that act to degrade the protein, rather than act as an antagonist. These agents are currently in clinical trials and have seen some success, highlighting the importance of sequencing efforts in treating breast cancer.	estrogen receptor 1	2015-07-31 15:54:56.8613	2015-07-31 15:54:56.8613	\N	f	\N
395	2263	FGFR2	The FGFR proteins are involved in a wide array of pathways known to play a signficant role in cancer. Activation of these receptors can lead to activation of the RAS-MAPK pathway and the PI3K-AKT pathway, among others. The mechanisms by which FGFR can be misregulated vary between cancers. Amplification of the receptors has been observed in lung and breast cancers, coding mutations and deletions have been seen in many cancers, and more recently, FGFR fusions that lead to pathway actiation have been demonstrated to have oncogenic potential across multiple cancer types. The targeted therapeutics ponatinib, dovitinib and pazopanib have seen success in treating over-active FGFR signalling, prompting use of diagnostic sequencing targeting the FGFR genes, especially in lung cancer patients.	fibroblast growth factor receptor 2	2015-07-31 15:54:57.179112	2015-07-31 15:54:57.179112	\N	f	\N
396	2261	FGFR3	The FGFR proteins are involved in a wide array of pathways known to play a signficant role in cancer. Activation of these receptors can lead to activation of the RAS-MAPK pathway and the PI3K-AKT pathway, among others. The mechanisms by which FGFR can be misregulated vary between cancers. Amplification of the receptors has been observed in lung and breast cancers, coding mutations and deletions have been seen in many cancers, and more recently, FGFR fusions that lead to pathway actiation have been demonstrated to have oncogenic potential across multiple cancer types. The targeted therapeutics ponatinib, dovitinib and pazopanib have seen success in treating over-active FGFR signalling, prompting use of diagnostic sequencing targeting the FGFR genes, especially in lung cancer patients.	fibroblast growth factor receptor 3	2015-07-31 15:54:57.451309	2015-07-31 15:54:57.451309	\N	f	\N
397	2322	FLT3	FLT3 is an important cytokine receptor involved in normal hematopoiesis. Mutations in this gene are common in acute myeloid leukemia (AML) and screening for mutations in this gene has been recommended by the World Health Organization in patients with AML, particularly in cases of cytogenetically normal AML (CN-AML). FLT3 mutations commonly co-occur with mutations such as NPM1 that are associated with CN-AML and likely modulate prognostic impact. While FLT3-ITD mutations have been associated with poorer prognosis in AML, the prognostic impact of FLT3-TKD mutations are still up for debate.	fms-related tyrosine kinase 3	2015-07-31 15:54:57.682551	2015-07-31 15:54:57.682551	\N	f	\N
398	2624	GATA2	GATA2 is a transcription factor involved in stem cell maintenance with key roles in hematopoietic development. GATA2 mutations are associated with a variety of inherited and acquired immune disorders including myelodysplastic syndrome and acute myeloid leukemia. In addition to a role in hematopoiesis, the maintenance GATA2 expression has been implicated as a requirement in KRAS-driven non-small cell lung cancer. Preclinical models have indicated therapeutic benefit from targeting GATA2-mediated pathways in the context of KRAS-driven NSCLC.	GATA binding protein 2	2015-07-31 15:54:57.921857	2015-07-31 15:54:57.921857	\N	f	\N
399	3417	IDH1	IDH1 mutations have been observed in a number of cancer types, including sarcomas, hematologic malignancies, colon cancer and brain cancer. Mutations in the two isocitrate dehydrogenase enzymes involved in cytoplasmic (IDH1) and mitochondrial (IDH2) conversion of alpha-ketoglutarate to D-2-hydroxyglutarate have been described as mutually exclusive in many of these cancer types. The most frequent mutations involve R132 (IDH1) and R172 (IDH2) involve the active site and result in neomorphic enzyme activity. The implications of mutations in this gene vary greatly by cancer type. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 mutations have been associated with worse outcome, shorter overall survival, and normal karyotype. However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown better overall survival than patients with wild-type IDH1. Unlike the association with cytogenetically normal AML, in glioblastoma, IDH1 mutations have been associated with specific cytogenetic abnormalities, 1p and 19q deletions.	isocitrate dehydrogenase 1 (NADP+), soluble	2015-07-31 15:54:58.176357	2015-07-31 15:54:58.176357	\N	f	\N
400	3418	IDH2	IDH2 mutations have been observed in a number of cancer types, including sarcomas, hematologic malignancies, colon cancer and brain cancer. Mutations in the two isocitrate dehydrogenase enzymes involved in cytoplasmic (IDH1) and mitochondrial (IDH2) conversion of alpha-ketoglutarate to D-2-hydroxyglutarate have been described as mutually exclusive in many of these cancer types. The most frequent mutations involve R132 (IDH1) and R172 (IDH2) involve the active site and result in neomorphic enzyme activity. Although IDH2 (R172) mutations are associated with poorer overall prognosis in AML patients, its utility as a prognostic marker in MDS is still under debate. Additionally, IDH2 (R140) has been associated with improved overall survival in AML. IDH2 mutations have been associated with improved prognosis in gliomas.	isocitrate dehydrogenase 2 (NADP+), mitochondrial	2015-07-31 15:54:58.431499	2015-07-31 15:54:58.431499	\N	f	\N
401	3717	JAK2	JAK2 is a kinase that is misregulated or mutated in a number of myeloproliferative diseases and cancers. The mutation V617F is the most clinically relevant variant, and is seen in around half of myeloproliferative disorders. The variant is a known activating mutation, and activated JAK2 is sufficient to drive myeloproliferative disorders in mouse models. V617F, while most recurrent, is not the only mechanism by which JAK2 can be activated in patients. JAK2 is now one of the first diagnostic markers tested upon diagnosis with a myeloproliferative disorder.	Janus kinase 2	2015-07-31 15:54:58.652184	2015-07-31 15:54:58.652184	\N	f	\N
402	3815	KIT	c-KIT activation has been shown to have oncogenic activity in gastrointestinal stromal tumors (GISTs), melanomas, lung cancer, and other tumor types. The targeted therapeutics nilotinib and sunitinib have shown efficacy in treating KIT overactive patients, and are in late-stage trials in melanoma and GIST. KIT overactivity can be the result of many genomic events from genomic amplification to overexpression to missense mutations. Missense mutations have been shown to be key players in mediating clinical response and acquired resistance in patients being treated with these targeted therapeutics.	v-kit Hardy-Zuckerman 4 feline sarcoma viral oncogene homolog	2015-07-31 15:54:58.876187	2015-07-31 15:54:58.876187	\N	f	\N
403	3845	KRAS	Mutations in the RAS family of proteins have frequently observed across cancer types. The amino acid positions account for the overwhelming majority of these mutations, G12, G13 and Q61. The isoforms, despite their raw similarity, also behave very differently when expressed in non-native tissue types, likely due to differences in the C-terminal hyper-variable regions. Mis-regulation of isoform expression has been shown to be a driving event in cancer, as well as missense mutations at the three hotspots previously mentioned. While highly recurrent in cancer, targeted these RAS mutants has also been very elusive, and has not yet become common practice in the clinic.	Kirsten rat sarcoma viral oncogene homolog	2015-07-31 15:54:59.144089	2015-07-31 15:54:59.144089	\N	f	\N
404	5604	MAP2K1		mitogen-activated protein kinase kinase 1	2015-07-31 15:54:59.382633	2015-07-31 15:54:59.382633	\N	f	\N
405	4209	MEF2D		myocyte enhancer factor 2D	2015-07-31 15:54:59.567942	2015-07-31 15:54:59.567942	\N	f	\N
406	1436	CSF1R		colony stimulating factor 1 receptor	2015-07-31 15:54:59.79506	2015-07-31 15:54:59.79506	\N	f	\N
407	4255	MGMT		O-6-methylguanine-DNA methyltransferase	2015-07-31 15:54:59.990726	2015-07-31 15:54:59.990726	\N	f	\N
408	4869	NPM1	AML with mutated NPM1 is provisional entity in the WHO classification of AML and is recommended to be tested for in patients with cytogenetically normal AML (CN-AML). Evaluation of FLT3 mutations should be evaluated concurrently as they have prognostic consequences. NPM1 mutations are concentrated in exon 12, most frequently W288fs which results in cytoplasmic sequestration of the protein. Exon 12 NPM1 mutations in the absence of FLT3-ITD are associated with good prognostic outcomes. Mice expressing the Npm1-W288fs mutation develop myeloproliferative neoplasms but not overt leukemia, indicating it may require additional mutations to promote leukemic development.	nucleophosmin (nucleolar phosphoprotein B23, numatrin)	2015-07-31 15:55:00.191035	2015-07-31 15:55:00.191035	\N	f	\N
409	4893	NRAS	Mutations in the RAS family of proteins have frequently observed across cancer types. The amino acid positions account for the overwhelming majority of these mutations, G12, G13 and Q61. The isoforms, despite their raw similarity, also behave very differently when expressed in non-native tissue types, likely due to differences in the C-terminal hyper-variable regions. Mis-regulation of isoform expression has been shown to be a driving event in cancer, as well as missense mutations at the three hotspots previously mentioned. While highly recurrent in cancer, targeted these RAS mutants has also been very elusive, and has not yet become common practice in the clinic.	neuroblastoma RAS viral (v-ras) oncogene homolog	2015-07-31 15:55:00.421937	2015-07-31 15:55:00.421937	\N	f	\N
410	5290	PIK3CA	PIK3CA is the most recurrently mutated gene in breast cancer, and has been found to important in a number of cancer types. An integral part of the PI3K pathway, PIK3CA has long been described as an oncogene, with two main hotspots for activating mutations, the 542/545 region of the helical domain, and the 1047 region of the kinase domain. PIK3CA, and its interaction with the AKT and mTOR pathways, is the subject of an immense amount of research and development, and PI3K inhibition has seen some limited success in recent clinical trials. While monotherapies seem to be limited in their potential, there is a recent interest in pursuing PI3K inhibition as part of a combination therapy regiment with inhibition partners including TKI's, MEK inhibitors, PARP inhibitors, and in breast cancer, aromatase inhibitors.	phosphatidylinositol-4,5-bisphosphate 3-kinase, catalytic subunit alpha	2015-07-31 15:55:00.648584	2015-07-31 15:55:00.648584	\N	f	\N
411	5156	PDGFRA		platelet-derived growth factor receptor, alpha polypeptide	2015-07-31 15:55:00.872773	2015-07-31 15:55:00.872773	\N	f	\N
412	5371	PML	The PML-RARA fusion is the result of a recurrent, balanced translocation between chromosomes 15 and 17, denoted as t(15;17)(q22;q12), and a diagnostic event in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA (all-trans retinoic acid) in APL patients harboring the PML-RARA fusion. Recent interest has been shown in combining ATRA and arsenic trioxide for treating these patients, and early results seem promising.	promyelocytic leukemia	2015-07-31 15:55:01.078339	2015-07-31 15:55:01.078339	\N	f	\N
413	5914	RARA	The PML-RARA fusion is the result of a recurrent, balanced translocation between chromosomes 15 and 17, denoted as t(15;17)(q22;q12), and a diagnostic event in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA (all-trans retinoic acid) in APL patients harboring the PML-RARA fusion. Recent interest has been shown in combining ATRA and arsenic trioxide for treating these patients, and early results seem promising.	retinoic acid receptor, alpha	2015-07-31 15:55:01.279824	2015-07-31 15:55:01.279824	\N	f	\N
414	5728	PTEN		phosphatase and tensin homolog	2015-07-31 15:55:01.552953	2015-07-31 15:55:01.552953	\N	f	\N
415	5979	RET	RET mutations and the RET fusion RET-PTC lead to activation of this tyrosine kinase receptor and are associated with thyroid cancers. RET point mutations are the most common mutations identified in medullary thyroid cancer (MTC) with germline and somatic mutations in RET associated with hereditary and sporadic forms, respectively. The most common somatic form mutation is M918T (exon 16) and a variety of other mutations effecting exons 10, 11 and 15 have been described. The prognostic significance of these mutations have been hotly debated in the field, however, data suggests that some RET mutation may confer drug resistence. No RET-specific agents are currently clinically available but several promiscuous kinase inhibitors that target RET, among others, have been approved for MTC treatment.	ret proto-oncogene	2015-07-31 15:55:01.808632	2015-07-31 15:55:01.808632	\N	f	\N
416	861	RUNX1		runt-related transcription factor 1	2015-07-31 15:55:02.10232	2015-07-31 15:55:02.10232	\N	f	\N
417	23451	SF3B1	SF3B1 mutations have been described in several myeloid malignancies, predominantly myelodysplastic syndromes (MDS), as well as other hematologic malignancies and breast cancer. SF3B1 is one of several genes involved in RNA splicing that has been identified as recurrently mutated in MDS and other malignanices. The mutations affecting SF3B1 are typically heterozygous, point mutations suspected to be functionally deleterious with K700E described as a major hotspot mutation. MDS patients with SF3B1 mutations have been reported to have better overall and event-free survival than their wildtype counterparts. Additionally, these mutations are highly associated with subtypes of MDS characterized by ringed sideroblasts (refractory anemia with ringed sideroblasts and refractory cytopenia with multilineage dysplasia and ring sideroblasts).	splicing factor 3b, subunit 1, 155kDa	2015-07-31 15:55:02.35725	2015-07-31 15:55:02.35725	\N	f	\N
418	7157	TP53	TP53 mutations are universal across cancer types. Loss of tumor suppressors is most recognized by large deleterious events, such as frameshift mutations, or premature stop codons. In TP53 however, many of the observed mutations in cancer are found to be single nucleotide variants, or missense mutations. These variants are also very broadly distributed throughout the gene, not localizing in any particular hotspot. While a large proportion of cancer genomics research is focused on somatic variants, TP53 is also of note in the germline. Germline TP53 mutations are the hallmark of Li-Fraumeni syndrome, and many (both germline and somatic) have been found to have prognostic impact on patient outcomes.	tumor protein p53	2015-07-31 15:55:02.734321	2015-07-31 15:55:02.734321	\N	f	\N
419	7248	TSC1		tuberous sclerosis 1	2015-07-31 15:55:02.959698	2015-07-31 15:55:02.959698	\N	f	\N
420	7249	TSC2		tuberous sclerosis 2	2015-07-31 15:55:03.171235	2015-07-31 15:55:03.171235	\N	f	\N
421	7307	U2AF1	U2AF1 is one of several spliceosome complex genes frequently mutated in a variety of hematologic malignancies, particularly de novo myelodysplastic syndromes (MDS), as well as solid tumors such as lung and pancreatic cancers. Two hotspot mutations (S34 and Q157) occur within the two zinc-finger domains of the U2AF1 protein. These mutations have been associated with altered splicing patterns in vitro and in vivo. U2AF1 mutations in MDS have been associated with an increased risk of transformation to secondary acute myeloid leukemia, however, the impact of these mutations on overall survival has been an area of debate.	U2 small nuclear RNA auxiliary factor 1	2015-07-31 15:55:03.399806	2015-07-31 15:55:03.399806	\N	f	\N
422	7490	WT1	WT1 is a tumor suppressor gene associated with the development of Wilms' Tumor, from which it was named. Mutations in exon 7 and 9 of WT1 have been recurrently identified in acute myeloid leukemia and associated with poorer prognosis and chemotherapy resistance.	Wilms tumor 1	2015-07-31 15:55:03.669518	2015-07-31 15:55:03.669518	\N	f	\N
423	4851	NOTCH1		notch 1	2015-07-31 15:55:03.887802	2015-07-31 15:55:03.887802	\N	f	\N
424	4921	DDR2		discoidin domain receptor tyrosine kinase 2	2015-07-31 15:55:04.100444	2015-07-31 15:55:04.100444	\N	f	\N
425	4233	MET		MET proto-oncogene, receptor tyrosine kinase	2015-07-31 15:55:04.319862	2015-07-31 15:55:04.319862	\N	f	\N
426	2313	FLI1		Fli-1 proto-oncogene, ETS transcription factor	2015-07-31 15:55:04.52153	2015-07-31 15:55:04.52153	\N	f	\N
427	2130	EWSR1		EWS RNA-binding protein 1	2015-07-31 15:55:04.729847	2015-07-31 15:55:04.729847	\N	f	\N
\.


--
-- Data for Name: sources; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY sources (id, pubmed_id, study_type, description, created_at, updated_at) FROM stdin;
352	24889366	\N	Rossi et al., 2014, Int. J. Oncol.	2015-07-31 15:54:51.839458	2015-07-31 15:55:08.677653
353	23401436	\N	Shaw et al., 2013, J. Clin. Oncol.	2015-07-31 15:54:51.896348	2015-07-31 15:55:09.140258
354	16095999	\N	Bellacosa et al., 2005, Adv. Cancer Res.	2015-07-31 15:54:52.144271	2015-07-31 15:55:09.554506
355	15023437	\N	Fresno Vara et al., 2004, Cancer Treat. Rev.	2015-07-31 15:54:52.156804	2015-07-31 15:55:09.924897
356	15676015	\N	Lee et al., 2005, APMIS	2015-07-31 15:54:52.423128	2015-07-31 15:55:10.389962
357	24569458	\N	Imielinski et al., 2014, J. Clin. Invest.	2015-07-31 15:54:52.434586	2015-07-31 15:55:10.807837
358	15719031	\N	Ren, 2005, Nat. Rev. Cancer	2015-07-31 15:54:52.67216	2015-07-31 15:55:11.227285
359	17457302	\N	Weisberg et al., 2007, Nat. Rev. Cancer	2015-07-31 15:54:52.681786	2015-07-31 15:55:11.646183
360	19724843	\N	Li et al., 2009, Oncol. Rep.	2015-07-31 15:54:52.912432	2015-07-31 15:55:12.06232
361	23594689	\N	Pakneshan et al., 2013, Pathology	2015-07-31 15:54:52.923773	2015-07-31 15:55:12.483342
362	24366442	\N	Nelson et al., 2014, Ann. Intern. Med.	2015-07-31 15:54:53.172687	2015-07-31 15:55:12.898628
363	12432268	\N	Diehl, Cancer Biol. Ther.	2015-07-31 15:54:53.672391	2015-07-31 15:55:13.315399
364	24387133	\N	Casimiro et al., 2014, Expert Opin Investig Drugs	2015-07-31 15:54:53.682328	2015-07-31 15:55:13.734209
365	14965268	\N	Mazumder et al., 2004, Curr Cancer Drug Targets	2015-07-31 15:54:54.362545	2015-07-31 15:55:14.155937
366	20370706	\N	Graf et al., 2010, Mini Rev Med Chem	2015-07-31 15:54:54.574464	2015-07-31 15:55:14.569516
367	24089445	\N	Sheppard et al., 2013, Clin. Cancer Res.	2015-07-31 15:54:54.588601	2015-07-31 15:55:14.987383
368	20473920	\N	Shima et al., 2011, Int. J. Cancer	2015-07-31 15:54:55.091567	2015-07-31 15:55:15.405483
369	23111194	\N	Bradly et al., 2012, Diagn. Mol. Pathol.	2015-07-31 15:54:55.102106	2015-07-31 15:55:15.823207
370	19357394	\N	Vardiman et al., 2009, Blood	2015-07-31 15:54:55.358661	2015-07-31 15:55:16.241448
371	11242107	\N	Pabst et al., 2001, Nat. Genet.	2015-07-31 15:54:55.37284	2015-07-31 15:55:16.763705
372	9012825	\N	Zhang et al., 1997, Proc. Natl. Acad. Sci. U.S.A.	2015-07-31 15:54:55.384057	2015-07-31 15:55:17.182617
373	24578576	\N	Honeyman et al., 2014, Science	2015-07-31 15:54:55.606761	2015-07-31 15:55:17.600819
374	24909179	\N	Moody et al., 2015, Oncogene	2015-07-31 15:54:55.82682	2015-07-31 15:55:18.01563
375	24167195	\N	Kim et al., 2013, Blood	2015-07-31 15:54:56.043567	2015-07-31 15:55:18.363108
376	24656771	\N	Russler-Germain et al., 2014, Cancer Cell	2015-07-31 15:54:56.063115	2015-07-31 15:55:18.729241
377	23953842	\N	Yewale et al., 2013, Biomaterials	2015-07-31 15:54:56.303398	2015-07-31 15:55:19.07702
378	18712184	\N	Charpidou et al., In Vivo	2015-07-31 15:54:56.315165	2015-07-31 15:55:19.68759
379	16947083	\N	Badache et al., 2006, J Mammary Gland Biol Neoplasia	2015-07-31 15:54:56.571323	2015-07-31 15:55:20.105276
380	10878580	\N	Yu et al., 2000, Bioessays	2015-07-31 15:54:56.581591	2015-07-31 15:55:20.522801
381	24185510	\N	Robinson et al., 2013, Nat. Genet.	2015-07-31 15:54:56.885022	2015-07-31 15:55:20.90555
382	22279420	\N	Mohibi et al., 2011, J Carcinog	2015-07-31 15:54:56.899023	2015-07-31 15:55:21.269098
383	18636142	\N	Katoh, 2008, Int. J. Oncol.	2015-07-31 15:54:57.19476	2015-07-31 15:55:21.634155
384	23558953	\N	Wu et al., 2013, Cancer Discov	2015-07-31 15:54:57.205666	2015-07-31 15:55:22.092804
385	12951584	\N	Stirewalt et al., 2003, Nat. Rev. Cancer	2015-07-31 15:54:57.69474	2015-07-31 15:55:22.598591
386	22541434	\N	Kumar et al., 2012, Cell	2015-07-31 15:54:57.936521	2015-07-31 15:55:22.927229
387	25619630	\N	Mir et al., 2015, Cancer Med	2015-07-31 15:54:57.946088	2015-07-31 15:55:23.345652
388	24065766	\N	Lu et al., 2013, Genes Dev.	2015-07-31 15:54:58.188255	2015-07-31 15:55:23.761098
389	19228619	\N	Yan et al., 2009, N. Engl. J. Med.	2015-07-31 15:54:58.199383	2015-07-31 15:55:24.096612
390	22417203	\N	Patel et al., 2012, N. Engl. J. Med.	2015-07-31 15:54:58.449197	2015-07-31 15:55:24.493565
391	17133099	\N	Levine et al., 2007, Curr. Opin. Hematol.	2015-07-31 15:54:58.666464	2015-07-31 15:55:24.909975
392	23944364	\N	Stankov et al., 2014, Curr. Pharm. Des.	2015-07-31 15:54:58.888145	2015-07-31 15:55:25.326876
393	22589270	\N	Prior et al., 2012, Cancer Res.	2015-07-31 15:54:59.156273	2015-07-31 15:55:25.867711
394	23226219	\N	Chou et al., 2012, PLoS ONE	2015-07-31 15:55:00.202763	2015-07-31 15:55:26.269118
395	18073307	\N	Elisei et al., 2008, J. Clin. Endocrinol. Metab.	2015-07-31 15:55:01.821718	2015-07-31 15:55:26.691839
396	25465739	\N	Perri et al., 2015, Crit. Rev. Oncol. Hematol.	2015-07-31 15:55:01.832204	2015-07-31 15:55:27.103358
397	21995386	\N	Papaemmanuil et al., 2011, N. Engl. J. Med.	2015-07-31 15:55:02.369162	2015-07-31 15:55:27.4988
398	24136165	\N	Cazzola et al., 2013, Blood	2015-07-31 15:55:02.382485	2015-07-31 15:55:27.941088
399	20182602	\N	Olivier et al., 2010, Cold Spring Harb Perspect Biol	2015-07-31 15:55:02.749215	2015-07-31 15:55:28.350946
400	25311244	\N	Okeyo-Owuor et al., 2015, Leukemia	2015-07-31 15:55:03.422233	2015-07-31 15:55:28.787413
401	22158538	\N	Graubert et al., 2012, Nat. Genet.	2015-07-31 15:55:03.435341	2015-07-31 15:55:29.195948
\.


--
-- Data for Name: variants; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY variants (id, gene_id, name, description, created_at, updated_at, deleted, deleted_at, genome_build, chromosome, start, stop, reference_bases, variant_bases, representative_transcript, chromosome2, start2, stop2, reference_build) FROM stdin;
1	377	BCR-ABL	The BCR-ABL fusion protein, commonly referred to as the philadelphia chromosome, is the most well-studied fusion gene in cancer. It has widely been considered the initiating event in chronic myelogenous leukemia (CML), but despite its ability initiate disease in mice, its status an initiating mutation is in dispute. In what is commonly used as the poster-child for targeted therapeutics, the development and use of imatinib in the clinic has led to profound improvements in the prognosis of the disease. However, imatinib resistance is still seen in patients with mutations in the ABL kinase domain of the fusion, most notably the T315I variant. In patients resistant to imatinib, either acquired or otherwise, second generation BCR-ABL TKI's (dasatinib and nilotinib) have seen some success in delivering a tumor response.	2015-07-31 15:55:04.792158	2015-07-31 15:55:04.792158	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	377	BCR-ABL T315I	While the efficacy of imatinib has revolutionized chronic myelogenous leukemia (CML) treatment, it is still not a cure-all. Both initial resistance and acquired resistance as a result of seleciton have been seen in a small subset of CML patients. The ABL kinase domain mutation T315I has been shown to be one such mutation that confers resistance to imatinib. Second generation TKI's (dasatinib and nilotinib) specific to BCR-ABL have shown efficacy in treating resistant cases.	2015-07-31 15:55:04.81552	2015-07-31 15:55:04.81552	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	377	BCR-ABL E255K	While the efficacy of imatinib has revolutionized chronic myelogenous leukemia (CML) treatment, it is still not a cure-all. Both initial resistance and acquired resistance as a result of seleciton have been seen in a small subset of CML patients. The ABL kinase domain mutation E255K has been shown to be one such mutation that confers resistance to imatinib. Second generation TKI's (dasatinib and nilotinib) specific to BCR-ABL have shown efficacy in treating resistant cases.	2015-07-31 15:55:04.839584	2015-07-31 15:55:04.839584	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	375	E17K	AKT1 E17K is a recurrent mutation that has been observed in breast, colorectal, lung, and ovarian cancer. It has been convincingly shown to be an activating mutation resulting in PI3K/AKT/mTOR pathway activity. It has been suggested that this mutation decreases the cell's sensitivity to AKT1 allosteric kinase ihibitors. This, and other AKT1 mutations, are the subject of much research and development for therapeutics.	2015-07-31 15:55:04.862076	2015-07-31 15:55:04.862076	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	374	EML4-ALK	The EML4-ALK fusion has been seen in non-small cell lung cancer, and appears to be an alternative mechanism for ALK activation. Cells with this fusion have been shown to be sensitive to the ALK inhibitor crizotinib.	2015-07-31 15:55:04.885104	2015-07-31 15:55:04.885104	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	374	EML4-ALK C1156Y	In patients with non-small cell lung cancer exhibiting EML4-ALK fusion, this variant has been shown to confer resistance to crizotinib.	2015-07-31 15:55:04.908208	2015-07-31 15:55:04.908208	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	374	EML4-ALK L1196M	In patients with non-small cell lung cancer exhibiting EML4-ALK fusion, this variant has been shown to confer resistance to crizotinib.	2015-07-31 15:55:04.927775	2015-07-31 15:55:04.927775	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	374	F1174L	ALK F1174L has been observed as recurrent in neuroblastoma, non-small cell lung cancer (NSCLC), and other cancer types. Neuroblastoma cells containing this mutation have shown resistance to low doses of criztonib. However, increased dosage can overcome this resistance in cell lines studies. TAE684 has also proven effective in both NSCLC and neuroblastoma F1174L containing cells.	2015-07-31 15:55:04.946512	2015-07-31 15:55:04.946512	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	374	R1275Q	ALK R1275Q has been observed as a recurrent mutation in  neuroblastoma, non-small cell lung cancer (NSCLC), as well as other cancer types. Neuroblastoma cells with this mutation have shown sensitivity to the ALK-inhibitor TAE684. This, and the geldanamycin deriviative 17-DMAG, has been shown to be effective in NSCLC cell lines.	2015-07-31 15:55:04.964983	2015-07-31 15:55:04.964983	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
10	376	S214C	ARAF S214C has been found to be a recurrent oncogenic mutation in non-small cell lung cancer. It has been shown to confer sensitivity to sorafenib and trametenib in cell lines. In a case study of advanced stage lung adenocarcinoma harboring this mutation, sorafenib also acheived near-complete clinical remission. This case has brought more interest to the variant from a research and clinical perspective.	2015-07-31 15:55:04.984427	2015-07-31 15:55:04.984427	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	378	V600D	Patients harboring mutations in valine 600 residue of BRAF have been shown to be sensitive to dabrafenib. For more information on the V600 locus, see the V600E entry.	2015-07-31 15:55:05.003643	2015-07-31 15:55:05.003643	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12	378	V600E	BRAF V600E has been shown to be recurrent in many cancer types. It is one of the most widely studied variants in cancer. This variant is correlated with poor prognosis in certain cancer types, including colorectal cancer and papillary thyroid cancer. The targeted therapeutic dabrafenib has been shown to be effective in clinical trials with an array of BRAF mutations and cancer types. Dabrafenib has also shown to be effective when combined with the MEK inhibitor trametinib in colorectal cancer and melanoma. However, in patients with TP53, KRAS, and CDK2NA mutations, dabrafenib resistance has been reported. Ipilimumab, regorafenib, vemurafenib, and a number of combination therapies have been successful in treating V600E mutations. While the drugs cetuximab and panitumumab have been largely shown to be ineffective without supplementary treatment.	2015-07-31 15:55:05.031226	2015-07-31 15:55:05.031226	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13	378	V600E/V600M	A case study of a single patient harboring both a V600E and a V600M mutation, dabrafenib was shown to acheive clinical response.	2015-07-31 15:55:05.051246	2015-07-31 15:55:05.051246	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14	378	V600E AMPLIFICATION	Amplification of BRAF V600E has been shown to confer resistance to MEK inhibitors. For more information on the V600 locus, see the V600E entry.	2015-07-31 15:55:05.0698	2015-07-31 15:55:05.0698	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
15	378	V600M	Patients harboring mutations in valine 600 residue of BRAF have been shown to be sensitive to dabrafenib. For more information on the V600 locus, see the V600E entry.	2015-07-31 15:55:05.094199	2015-07-31 15:55:05.094199	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16	378	V600R	Patients harboring mutations in valine 600 residue of BRAF have been shown to be sensitive to dabrafenib. For more information on the V600 locus, see the V600E entry.	2015-07-31 15:55:05.112774	2015-07-31 15:55:05.112774	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
17	378	V600	BRAF mutations of the valine 600 residue have been shown to be recurrent in many cancer types. Of the V600 mutations, V600E is the most widely researched. V600 mutations as a whole have been correlated to poorer prognosis in colorectal and papilarry thyroid cancers. V600 mutations have also been shown to confer sensitivity to the BRAF inhibitor dabrafenib. For a more detailed summary, click the individual mutation pages on the left sidebar.	2015-07-31 15:55:05.133045	2015-07-31 15:55:05.133045	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18	381	AMPLIFICATION	CCND1 amplification has been implicated in poorer prognosis in non-small cell lung cancer.	2015-07-31 15:55:05.154234	2015-07-31 15:55:05.154234	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19	381	EXPRESSION	CCND1 expression, and its prognositc impact, is still in dispute. Three experiments in non-small cell lung cancer have shown it to have no impact on survival, but three additional studies have shown it results in poorer prognosis. There is also some ambiguity in how the boundaries between expression and overexpression are defined.	2015-07-31 15:55:05.173452	2015-07-31 15:55:05.173452	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
20	381	OVEREXPRESSION	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, and range from genomic amplification to promoter methylation changes. While Cyclin D2 has only been found to be significantly misregulated in glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been shown to lead to poorer outcomes in a number of studies, and currently there are no FDA-approved targeted therapies.	2015-07-31 15:55:05.192053	2015-07-31 15:55:05.192053	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
21	382	OVEREXPRESSION	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, and range from genomic amplification to promoter methylation changes. While Cyclin D2 has only been found to be significantly misregulated in glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been shown to lead to poorer outcomes in a number of studies, and currently there are no FDA-approved targeted therapies.	2015-07-31 15:55:05.213105	2015-07-31 15:55:05.213105	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
22	382	PROMOTER DEMETHYLATION	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are misregulated are widely variable, and range from genomic amplification to promoter methylation changes. While Cyclin D2 has only been found to be significantly misregulated in glioma, Cyclin D1 in particular seems to be a pan-cancer actor. Cyclin D misregulation has been shown to lead to poorer outcomes in a number of studies, and currently there are no FDA-approved targeted therapies.	2015-07-31 15:55:05.232946	2015-07-31 15:55:05.232946	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
23	383	LOSS	Cyclin D has been shown in many cancer types to be misregulated. Well established for their oncogenic properties, the cyclins and the cyclin-dependent kinases (CDK's) they activate have been the focus of major research and development efforts over the past decade. The methods by which the cyclins are deregulated are widely variable, and range from genomic amplification to promoter methylation changes. Cyclin D3 loss has been reported in T-cell acute lymphoblastic leukemia (T-ALL), a seemingly unique trend when compared to the amplifcations and overexpressions of the other cyclin D's. Treating cyclin D3 knockout mice with the targeted therapeutic palbociclib significantly increased the median survival of a Notch-driven model of T-ALL.	2015-07-31 15:55:05.253159	2015-07-31 15:55:05.253159	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24	384	OVEREXPRESSION	Cyclin E, while currenly not as widely implicated as its counterpart, cyclin D, has been implicated in various carcinomas, including breast, gastric, stomach and colorectal. High levels of cyclin E, either by gene amplification or overexpression, are correlated with later stage disease and have been shown to lead to poorer prognosis in gastic carcinoma. It has also been shown, in lung cancer specifically, that neoplastic cells with higher levels of the cyclin E/CDK2 complex are more radiosensitive than their lowly expressed counterparts.	2015-07-31 15:55:05.286171	2015-07-31 15:55:05.286171	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25	386	EXPRESSION	CDK4, along with its partner CDK6, are key players in cell cycle progression. The complex has been implicated in a number of cancer types, and is the focus of therapeutic research and development. One targeted therapy for CDK inhibition is palbociclib, which may slow the growth of advanced stage breast cancers. It has also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors to PI3K inhibitors.	2015-07-31 15:55:05.306192	2015-07-31 15:55:05.306192	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26	385	EXPRESSION	CDK6, along with its partner CDK4, are key players in cell cycle progression. The complex has been implicated in a number of cancer types, and is the focus of therapeutic research and development. One targeted therapy for CDK inhibition is palbociclib, which may slow the growth of advanced stage breast cancers. It has also been shown, in mouse, that CDK inhibition may sensitize mutant PIK3CA tumors to PI3K inhibitors.	2015-07-31 15:55:05.3254	2015-07-31 15:55:05.3254	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27	387	PROMOTER HYPERMETHYLATION	CDKN2A loss has been shown to be a significant event in a number of cancer types. One mechanism by which this can occur is by hypermethylation of the CDKN2A promoter region. While no targeted therapeutic has been engaged in clinical trials, the prognostic impact has been studied by a number of meta-analyses. The prognostic impact of promoter hypermethylation has been relatively ambiguous. Many studies have shown significant p-values suggesting poorer prognostic outcomes for patients with hypermethylation in colorectal, liver, and younger lung cancer patients. This being said, there is still research to be done before this becomes a widely-accepted prognostic indicator.	2015-07-31 15:55:05.350961	2015-07-31 15:55:05.350961	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28	388	N-TERMINAL FRAME SHIFT	CEBPA N-terminal frame shift mutations that result in a premature stop codon are associated with cytogenetically normal acute myeloid leukemia (CN-AML). CEBPA mutations are associated with a favorable prognosis, however, NPM1 and FLT3 mutations should also be assessed in CN-AML patients as concurrent mutations may have prognostic implications.	2015-07-31 15:55:05.372736	2015-07-31 15:55:05.372736	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29	388	MUTATION	CEBPA mutations are associated with cytogenetically normal acute myeloid leukemia (CN-AML) and a favorable prognosis. However, NPM1 and FLT3 mutations should also be assessed in CN-AML patients as concurrent mutations may have prognostic implications.	2015-07-31 15:55:05.39197	2015-07-31 15:55:05.39197	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
30	406	MEF2D-CSF1R	MEF2D-CSF1R is a fusion that has been observed in acute lymphocytic leukemia. In cell lines harboring this event, treatment with imatinib has shown notable sensitivity.	2015-07-31 15:55:05.415856	2015-07-31 15:55:05.415856	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
31	389	DNAJB1-PRKACA	This fusion has been found to be very recurrent in the rare form of adolescent liver cancer, fibrolamellar hepatocellular carcinoma. In one study, this fusion was observed in 15/15 FL-HCC cases examined and functional studies found that the fusion retained kinase activity. The presence of this fusion may be used as a diagnostic marker for this rare tumor type.	2015-07-31 15:55:05.437279	2015-07-31 15:55:05.437279	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
32	391	R882	DNMT3A R882 mutations are associated with cytogenetically normal acute myeloid leukemia (CN-AML) with R882H as the most common form. Mutations in DNMT3A have largely been associated with poorer prognosis, however this is not consistent across all studies. This may be a result of patient age or combining R882 and non-R882 mutations during analysis as studies have indicated independent mechanisms of action and differential prognostic implications for these mutation types. One study that independently analyzed R882 and non-R882 mutations showed R882 mutations were associated with poorer prognosis than patients with wildtype and non-R882 mutations, but only in older patients with AML.	2015-07-31 15:55:05.462568	2015-07-31 15:55:05.462568	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
74	403	EXON 1 MUTATIONS	A study by Lièvre et al in 2006 showed that colorectal cancer patients with KRAS exon 1 mutations had low cetuximab response rates.	2015-07-31 15:55:06.375319	2015-07-31 15:55:06.375319	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
33	392	L858R	EGFR L858R has long been recognized as a functionally significant mutation in cancer, and is one of the most prevalent single mutations in lung cancer. Best described in non-small cell lung cancer (NSCLC), the mutation seems to confer sensitivity to first and second generation TKI's like gefitinib and neratinib. NSCLC patients with this mutation treated with TKI's show increased overall and progression-free survival, as compared to chemotherapy alone. Third generation TKI's are currently in clinical trials that specifically focus on mutant forms of EGFR, a few of which have shown efficacy in treating patients that failed to respond to earlier generation TKI therapies.	2015-07-31 15:55:05.484436	2015-07-31 15:55:05.484436	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
34	392	T790M	EGFR T790M was one of the very first mutations recognized to confer resistance to targeted therapies in non-small cell lung cancer. While successful in amplified EGFR, the efficacy of the first and second generation TKI's (erlotinib, gefitinib, neratinib) in treating patients harboring this mutation before treatment is notably lower. This lack of efficacy can likely be to blame for the poorer prognosis for patients with this mutation as compared to patients with wildtype EGFR or other types of EGFR mutations. Approximately half of EGFR mutant tumors with acquired resistance to TKI inhibition have been shown to harbor this mutation, implicating it as a mechanism of acquired therapy resistence. The third generation TKI's are being developed with this resistance problem in mind, and early stage experiments have shown some efficacy of these drugs in previously resistant tumors with mutant EGFR.	2015-07-31 15:55:05.503537	2015-07-31 15:55:05.503537	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
35	393	D769H	ERBB2 D769H was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-07-31 15:55:05.524453	2015-07-31 15:55:05.524453	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
36	393	D769Y	ERBB2 D769Y was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-07-31 15:55:05.545161	2015-07-31 15:55:05.545161	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
37	393	DEL 755-759	ERBB2 in-frame deletion of 755-759 was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-07-31 15:55:05.566425	2015-07-31 15:55:05.566425	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
38	393	G309A	ERBB2 G309A was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-07-31 15:55:05.586297	2015-07-31 15:55:05.586297	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
39	393	L755S	ERBB2 L755S was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was not shown to be an activating mutation, unlike many of the other variants queried. This mutation was also shown to confer resistance to the tyrosine kinase inhibitor lapatinib in MCF10A cell lines.	2015-07-31 15:55:05.604881	2015-07-31 15:55:05.604881	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40	393	L755W	ERBB2 L755W was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-07-31 15:55:05.630873	2015-07-31 15:55:05.630873	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41	393	P780INS	ERBB2 P780 insertion was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-07-31 15:55:05.650694	2015-07-31 15:55:05.650694	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42	393	R678Q	ERBB2 R678Q was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-07-31 15:55:05.674382	2015-07-31 15:55:05.674382	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43	393	R896C	ERBB2 R896C was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-07-31 15:55:05.694448	2015-07-31 15:55:05.694448	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44	393	V777L	ERBB2 V777L was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-07-31 15:55:05.718991	2015-07-31 15:55:05.718991	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
75	403	EXON 2 MUTATIONS	In a study by Pao et al in 2005, non-small cell lung cancer patients harboring KRAS exon 2 mutations were associated with resistance to the EGFR inhibitors gefinitib and erlotinib.	2015-07-31 15:55:06.402466	2015-07-31 15:55:06.402466	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
45	393	V842I	ERBB2 V842I was one of the first ERBB2 variants to be functionally classified (Bose et al. 2012). This mutation was shown to be an activating mutation in an in vitro assay. In the same paper, this mutation (along with other ERBB2 activating mutations) in MCF10A breast cancer cell lines have been shown to be sensitive to the kinase inhibitor neratinib. More recent evidence may show that HER2 acitivating mutations confer sensitivity to a host of tyrosine kinase inhibitors, which is the topic of current clinical trials and research.	2015-07-31 15:55:05.739549	2015-07-31 15:55:05.739549	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
46	394	L536Q	ESR1 biology has become a central focus in breast cancer therapy. In ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer resistance to hormone therapy. This evidence has led to an increased use of targeted sequencing of the estrogen receptor in breast and ovarian cancer. Y536Q is one of these ligand binding domain mutations, and is commonly implicated in this hormone resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.	2015-07-31 15:55:05.764964	2015-07-31 15:55:05.764964	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
47	394	N538G	ESR1 biology has become a central focus in breast cancer therapy. In ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer resistance to hormone therapy. This evidence has led to an increased use of targeted sequencing of the estrogen receptor in breast and ovarian cancer. N538G is one of these ligand binding domain  , and is commonly implicated in this hormone resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.	2015-07-31 15:55:05.788502	2015-07-31 15:55:05.788502	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48	394	Y537C	ESR1 biology has become a central focus in breast cancer therapy. In ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer resistance to hormone therapy. This evidence has led to an increased use of targeted sequencing of the estrogen receptor in breast and ovarian cancer. Y537C is one of these ligand binding domain  , and is commonly implicated in this hormone resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.	2015-07-31 15:55:05.80931	2015-07-31 15:55:05.80931	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
49	394	Y537N	ESR1 biology has become a central focus in breast cancer therapy. In ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer resistance to hormone therapy. This evidence has led to an increased use of targeted sequencing of the estrogen receptor in breast and ovarian cancer. Y537N is one of these ligand binding domain  , and is commonly implicated in this hormone resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.	2015-07-31 15:55:05.829922	2015-07-31 15:55:05.829922	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
50	394	Y537S	ESR1 biology has become a central focus in breast cancer therapy. In ER+ tumors, mutations in the ESR1 ligand binding domain have been shown to confer resistance to hormone therapy. This evidence has led to an increased use of targeted sequencing of the estrogen receptor in breast and ovarian cancer. Y537S is one of these ligand binding domain  , and is commonly implicated in this hormone resistance. Preliminary data suggests ER-degrading agents, such as fulvestrant, may be beneficial in treating ESR1 mutant, hormone resistant breast cancers.	2015-07-31 15:55:05.869636	2015-07-31 15:55:05.869636	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
51	395	P235R		2015-07-31 15:55:05.88855	2015-07-31 15:55:05.88855	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
52	395	FGFR2-MGEA5	In a clinical sequencing program for advanced stage cancers, Wu et al (2013, Cancer Discovery) has idenified a number of FGFR fusions in patients with many different cancer types. These fusions were also found to retain oligomerization capability, and result in enhanced cell proliferation. Cell lines harboring these fusions were shown to respond to pazopanib. Additionally, tumor size reduction was achieved by both ponatinib and pazopanib treatments administered separately in a single patient with intrahepatic cholangiocarcinoma and this fusion. The authors use these cases to highlight the need for enhanced clinical sequencing efforts.	2015-07-31 15:55:05.907702	2015-07-31 15:55:05.907702	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
53	396	FGFR3-BAIAP2L1	In a clinical sequencing program for advanced stage cancers, Wu et al (2013, Cancer Discovery) has identified a number of FGFR fusions in patients with many different cancer types. These fusions were also found to retain oligomerization capability, and result in enhanced cell proliferation. These fusions were shown to respond to pazopanib. The authors use these cases to highlight the need for enhanced clinical sequencing efforts.	2015-07-31 15:55:05.930546	2015-07-31 15:55:05.930546	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
54	396	FGFR3-TACC3	In a clinical sequencing program for advanced stage cancers, Wu et al (2013, Cancer Discovery) has identified a number of FGFR fusions in patients with many different cancer types. These fusions were also found to retain oligomerization capability, and result in enhanced cell proliferation. These fusions were shown to respond to pazopanib. The authors use these cases to highlight the need for enhanced clinical sequencing efforts.	2015-07-31 15:55:05.951902	2015-07-31 15:55:05.951902	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
55	397	ITD MUTATIONS	FLT3-ITD (internal tandem duplications) frequently occur in patients with hematologic malignancies such as chronic myelogenous leukemia, acute myeloid leukemia (AML) and myelodysplastic syndrome, but particularly in cytogenetically normal AML (CN-AML). These duplication events disrupt the juxtamembrane domain of FLT3 and can be the result of a duplication of internal FLT3 sequence or other unrelated sequence resulting in an in-frame duplication event. The length of these duplications can vary widely which may have prognostic consequences, but this has not been conclusively determined. FLT3-ITD mutations overall have generally been associated with poor prognosis. Additional genes associated with CN-AML such as NPM1 may modulate the prognosis associated with this variant.	2015-07-31 15:55:05.974205	2015-07-31 15:55:05.974205	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
56	397	TKD MUTATIONS	FLT3 tyrosine kinase domain mutations (FLT3-TKD) are much less common than FLT3-ITD (internal tandem duplication) mutations and may not confer the same prognostic impact. Although the majority of mutations are point mutations effecting D835 (most frequently D835Y), a small proportion involve an in-frame deletion of I836. These mutations are within the activation loop of the second tyrosine kinase domain of FLT3 and thought to result in constitutive activation of the receptor.	2015-07-31 15:55:05.994549	2015-07-31 15:55:05.994549	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
57	398	EXPRESSION	GATA2 misregulation has been observed in a number of hematologic malignancies, as well as non-small cell lung cancer. Treatment of over-active GATA2 pathways using the proteasome inhibitor bortezomib has shown dramatic tumor regression in lung cancer.	2015-07-31 15:55:06.016901	2015-07-31 15:55:06.016901	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
76	403	G12	While the KRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation, along with the mutations affecting the neighboring G13 position, may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-07-31 15:55:06.439869	2015-07-31 15:55:06.439869	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
58	399	R132	IDH1 R132 mutations have been observed in a number of cancer types, and appear to behave quite differently in different environments. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown to be associated with worse outcome and shorter overall survival. They have also been linked to cytogenetically normal AML, an intermediate risk subtype of the disease. However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown better overall survival than patients with wild-type IDH1. Also in contrast to AML, in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic abnormalities, 1p and 19q deletions.	2015-07-31 15:55:06.039146	2015-07-31 15:55:06.039146	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
59	399	R132C	IDH1 R132 mutations have been observed in a number of cancer types, and appear to behave quite differently in different environments. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown to be associated with worse outcome and shorter overall survival. They have also been linked to cytogenetically normal AML, an intermediate risk subtype of the disease. However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown better overall survival than patients with wild-type IDH1. Also in contrast to AML, in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic abnormalities, 1p and 19q deletions.	2015-07-31 15:55:06.062293	2015-07-31 15:55:06.062293	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
60	399	R132H	IDH1 R132 mutations have been observed in a number of cancer types, and appear to behave quite differently in different environments. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown to be associated with worse outcome and shorter overall survival. They have also been linked to cytogenetically normal AML, an intermediate risk subtype of the disease. However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown better overall survival than patients with wild-type IDH1. Also in contrast to AML, in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic abnormalities, 1p and 19q deletions.	2015-07-31 15:55:06.083313	2015-07-31 15:55:06.083313	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
61	399	R132L	IDH1 R132 mutations have been observed in a number of cancer types, and appear to behave quite differently in different environments. In myelodysplastic syndromes and acute myeloid leukemia (AML), IDH1 R132 mutations have been shown to be associated with worse outcome and shorter overall survival. They have also been linked to cytogenetically normal AML, an intermediate risk subtype of the disease. However, in glioblastoma and astrocytoma, patients with IDH1 mutations have shown better overall survival than patients with wild-type IDH1. Also in contrast to AML, in glioblastoma, IDH1 mutations have been associated with the specific cytogenetic abnormalities, 1p and 19q deletions.	2015-07-31 15:55:06.104631	2015-07-31 15:55:06.104631	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
62	400	R140Q/L	IDH2 mutations have been observed in a number of hematologic malignancies. In acute myeloid leukemia, the R140Q/L mutants have shown improved overall survival as compared to their wild-type counterparts. In myelodysplastic syndromes, however, no prognostic link was discovered between IDH2 mutation status and overall survival.	2015-07-31 15:55:06.126672	2015-07-31 15:55:06.126672	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
63	400	R172K	IDH2 mutations have been observed in a number of hematologic malignancies. In acute myeloid leukemia, the R172K mutation has been linked with poorer prognosis and worse overall survival than IDH2 wild-type patients. However, in myelodisplastic syndromes, studies did not find a prognostic association between this variant and patient outcomes.	2015-07-31 15:55:06.14912	2015-07-31 15:55:06.14912	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
64	401	V617F	JAK2 V617F is a highly recurrent mutation in myeloproliferative diseases, occuring in around half of all MPD's. While less associated with cancer, when it is seen, it is more likely to be in myeloid leukemias than lymphoid leukemias. The V617F mutation is an activating mutation, resulting in increased kinase activity. The mutation seems to be restricted to hematologic malignancies. Treatment of JAK mutant diseases with ruxolitinib has seen some clinical success.	2015-07-31 15:55:06.174904	2015-07-31 15:55:06.174904	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
65	402	D816V	KIT D816V is a mutation observed in acute myeloid leukemia (AML). This variant has been linked to poorer prognosis and worse outcome in AML patients.	2015-07-31 15:55:06.193129	2015-07-31 15:55:06.193129	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
66	402	EXON 11 MUTATIONS	c-KIT mutations in exon 11 lie within the juxtamembrane domain, and are very recurrent in gastrointestinal stromal tumors, often bearing a poorer prognosis than other KIT mutations. Cells harboring exon 11 mutations have shown sensitivity to the tyrosine kinase inhibitor imatinib, offering a better prognosis to patients treated with the drug in the first year.	2015-07-31 15:55:06.212241	2015-07-31 15:55:06.212241	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
67	402	INTERNAL DUPLICATION	c-KIT internal duplications have been observed in exon 11, within the juxtamembrane domain. In a case study of an anal melanoma patient harboring this event, imatinib confered marked response. Also, cells harboring exon 11 mutations have shown sensitivity to the tyrosine kinase inhibitor imatinib, offering a better prognosis to patients treated with the drug in the first year.	2015-07-31 15:55:06.231609	2015-07-31 15:55:06.231609	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
68	402	EXON 13 MUTATIONS	c-KIT exon 13 mutations are relatively rare compared to other c-KIT mutations. These mutations lie within the tyrosine kinase 1 domain, and are found primarily in melanoma and gastrointestinal stromal tumors. Cell lines harboring these mutations show sensitivity to imatinib and sunitinib treatment. However, only imatinib has seen use in clinical settings to date, with sunitinib entering trials in imatinib-resistant cases.	2015-07-31 15:55:06.250196	2015-07-31 15:55:06.250196	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
69	402	EXON 14 MUTATIONS	c-KIT exon 14 mutations lie within the tyrosine kinase domain of the protein. While relatively rare in primary gastrointestinal tumors, they are notably more prevalent in refractory disease, suggesting a role in imatinib resistance. Unlike mutations in other KIT exons, exon 14 mutations seem relatively rare in melanoma.	2015-07-31 15:55:06.271504	2015-07-31 15:55:06.271504	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
70	402	EXON 17 MUTATIONS	c-KIT exon 17 mutations lie within the TK2 domain, containing the activation loop of the protein. In cell lines, mutations within this domain have been shown to be sensitive to imatinib. However, in double KIT mutants in which the exon 17 mutation is a secondary mutation, cell lines have shown resistance to both imatinib and sunitinib.	2015-07-31 15:55:06.292083	2015-07-31 15:55:06.292083	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
71	402	EXON 9 MUTATIONS	c-KIT exon 9 mutations lie within the dimerization motif of the protein. Relative to other KIT mutations, exon 9 mutations have been associated with better overall survival. In exon 9 mutants, imatinib has shown efficacy both in vitro and in vivo.	2015-07-31 15:55:06.310721	2015-07-31 15:55:06.310721	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
72	402	L576P	KIT L576P is an exon 11 mutation that lies within the juxtamembrane domain. It is one of the most recurrent KIT mutations in melanoma, and both in vitro and in vivo studies have shown sensitivity to imatinib.	2015-07-31 15:55:06.333304	2015-07-31 15:55:06.333304	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
73	402	V654A	KIT V654A is an exon 13 mutation that lies within the tyrosine kinase 1 domain of the protein. It has been shown to be an activating mutation by in vitro studies. This mutation is associated with imatinib resistance in melanoma patients. However, second generation TKI's such as sunitinib and midostaurin (PKC 412) have seen success in acheiving tumor response.	2015-07-31 15:55:06.351905	2015-07-31 15:55:06.351905	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
77	403	G12/G13	While the KRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-07-31 15:55:06.459655	2015-07-31 15:55:06.459655	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
78	403	G12C	While the KRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation, along with the mutations affecting the neighboring G13 position, may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-07-31 15:55:06.482194	2015-07-31 15:55:06.482194	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
79	403	G12D	While the KRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation, along with the mutations affecting the neighboring G13 position, may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-07-31 15:55:06.505362	2015-07-31 15:55:06.505362	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
80	403	G13	While the KRAS G13 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation, along with the mutations affecting the neighboring G12 position, may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-07-31 15:55:06.524021	2015-07-31 15:55:06.524021	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
81	403	G13D	While the KRAS G13 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated. Often associated with tumors that are wild-type for other drivers (EGFR and ALK specifically), the prognosis for patients with this mutation seems to be worse than the KRAS wild-type cohort. This mutation, along with the mutations affecting the neighboring G12 position, may result in a less responsive tumor when treated with first-generation TKI's like gefitinib.	2015-07-31 15:55:06.542095	2015-07-31 15:55:06.542095	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
82	404	P124S	MAP2K1 P124S is a recurrent mutation in melanoma, and is seen in bladder and colon cancer to a lesser degree. The P124S mutation has been shown to contribute to AZD6244 resistance in melanoma cell lines, but considerably less so than its Q56P counterpart.	2015-07-31 15:55:06.565076	2015-07-31 15:55:06.565076	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
83	404	Q56P	MAP2K1 Q56P is a recurrent mutation in melanoma and gastric cancer. This mutation has been shown to confer considerable resistance to AZD6244 treatment of melanoma cell lines.	2015-07-31 15:55:06.586415	2015-07-31 15:55:06.586415	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
84	405	MEF2D-CSF1R	MEF2D-CSF1R is a fusion that has been observed in acute lymphocytic leukemia. In cell lines harboring this event, treatment with imatinib has shown notable sensitivity.	2015-07-31 15:55:06.60965	2015-07-31 15:55:06.60965	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
85	407	PROMOTER METHYLATION	MGMT promoter methylation has been observed to impact tumor progression in glioblastoma multiforme. In patients exhibiting promoter methylation, the akylating agent carmustine has shown efficacy. In patients lacking methylation, combining carmustine with the MGMT inhibitor O(6)-benzylguanine may be effective, but more experiments are required. Clinical trials have also shown selective sensitivity of promoter methylation-positive patients to temozolomide, making a case for wider methylation screening in GBM patients.	2015-07-31 15:55:06.62848	2015-07-31 15:55:06.62848	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
86	408	EXON 12 MUTATIONS	NPM1 exon 12 mutations are frequently identified in patients with cytogenetically normal acute myeloid leukemia (AML) and often co-occur with FLT3-ITD. FLT3 status should also be evaluated as co-occurence with FLT3-ITD may impact prognosis. Exon 12 mutations have been identified as a predictor of good prognostic outcomes in the absence of FLT3-ITD. Due to their high frequency, NPM1 mutations have been retrospectively analyzed in the context of a number of therapies including variable results following ATRA treatment as well as improved response to high-dose daunorubicin or valproic acid. Additionally, multiple groups have shown increased surface expression of CD33 associated with NPM1 mutation, suggesting these patients may respond to anti-CD33 therapy. Cytoplasmic sequestration of NPM1 (NPM1c) is associated with a good response to induction therapy.	2015-07-31 15:55:06.650089	2015-07-31 15:55:06.650089	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
87	408	W288FS	NPM1 W288fs (aka NPM1-A) is located in exon 12 of NPM1 and is the most common NPM1 mutation identified in acute myeloid leukemia. This mutation results in cytoplasmic localization of NPM1 (NPM1c) which is associated with a good response to induction therapy. Although it is the most extensively studied NPM1 exon 12 mutation, it is generally grouped with other exon 12 mutations for patient analysis (see NPM1 Exon 12 variants for more information).	2015-07-31 15:55:06.671439	2015-07-31 15:55:06.671439	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
88	409	EXON 1 MUTATIONS	NRAS exon 1 mutations were studied by Jakob et al in 2012 and were shown to be correlated with poorer overall survival relative to wild-type NRAS in melanoma patients.	2015-07-31 15:55:06.69401	2015-07-31 15:55:06.69401	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
89	409	EXON 2 MUTATIONS	NRAS exon 2 mutations have been shown to be correlated with poorer overall survival in melanoma patients and colorectal cancer patients, however no prognostic impact was seen in acute myeloid leukemia patients.	2015-07-31 15:55:06.717802	2015-07-31 15:55:06.717802	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
90	409	EXON 3 MUTATIONS	In a multi-gene prognostic survey, Therkildsen et al 2014 found NRAS exon 3 and 4 mutations were correlated with poorer overall survival.	2015-07-31 15:55:06.738061	2015-07-31 15:55:06.738061	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
91	409	EXON 4 MUTATIONS	In a multi-gene prognostic survey, Therkildsen et al 2014 found NRAS exon 3 and 4 mutations were correlated with poorer overall survival.	2015-07-31 15:55:06.759656	2015-07-31 15:55:06.759656	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
92	409	G12	While the NRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated.	2015-07-31 15:55:06.778738	2015-07-31 15:55:06.778738	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
93	409	G13D	While the NRAS G12 region is a widely studied recurrent region in cancer, its impact on clinical action is still debated.	2015-07-31 15:55:06.796425	2015-07-31 15:55:06.796425	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
94	409	Q61	NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal stromal tumors, melanoma, and others. Two melanoma patients, each harboring mutations at this locus (Q61L and Q61R), responded to treatment with the akylating agent temozolomide. However, in colorectal cancer patients, mutations at this locus have been shown to confer resistance to cetuximab. The prognostic impact of mutations at this locus is currently under study.	2015-07-31 15:55:06.815874	2015-07-31 15:55:06.815874	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
111	413	PML-RARA	The PML-RARa fusion is seen as a diagnostic event in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA in APL patients harboring the PML-RARa fusion. Recent interest has been shown in combining ATRA and Arsenic Trioxide for treating these patients, and early results seem promising.	2015-07-31 15:55:07.203762	2015-07-31 15:55:07.203762	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
95	409	Q61L	NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal stromal tumors, melanoma, and others. A melanoma patient harboring a mutation at this locus responded to treatment with the akylating agent temozolomide. However, in colorectal cancer patients, mutations at this locus have been shown to confer resistance to cetuximab. The prognostic impact of mutations at this locus is currently under study.	2015-07-31 15:55:06.840599	2015-07-31 15:55:06.840599	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
96	409	Q61R	NRAS Q61 mutations have been found in multiple myeloma, gastrointestinal stromal tumors, melanoma, and others. A melanoma patient harboring a mutation at this locus responded to treatment with the akylating agent temozolomide. However, in colorectal cancer patients, mutations at this locus have been shown to confer resistance to cetuximab. The prognostic impact of mutations at this locus is currently under study.	2015-07-31 15:55:06.860996	2015-07-31 15:55:06.860996	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
97	411	V536E		2015-07-31 15:55:06.885573	2015-07-31 15:55:06.885573	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
98	411	D842I	PDGFRA D842 mutations are characterized broadly as imatinib resistance mutations. This is most well characterized in gastrointestinal stromal tumors, but other cell lines containing these mutations have been shown to be resistant as well. In imatinib resistant cell lines, a number of other therapeutics have demonstrated efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).	2015-07-31 15:55:06.903088	2015-07-31 15:55:06.903088	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
99	411	D842V	PDGFRA D842 mutations are characterized broadly as imatinib resistance mutations. This is most well characterized in gastrointestinal stromal tumors, but other cell lines containing these mutations have been shown to be resistant as well. In imatinib resistant cell lines, a number of other therapeutics have demonstrated efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).	2015-07-31 15:55:06.922825	2015-07-31 15:55:06.922825	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
100	411	D842Y	PDGFRA D842 mutations are characterized broadly as imatinib resistance mutations. This is most well characterized in gastrointestinal stromal tumors, but other cell lines containing these mutations have been shown to be resistant as well. In imatinib resistant cell lines, a number of other therapeutics have demonstrated efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).	2015-07-31 15:55:06.941342	2015-07-31 15:55:06.941342	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
101	411	DEL I843	PDGFRA D842 mutations are characterized broadly as imatinib resistance mutations. This is most well characterized in gastrointestinal stromal tumors, but other cell lines containing these mutations have been shown to be resistant as well. In imatinib resistant cell lines, a number of other therapeutics have demonstrated efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).	2015-07-31 15:55:06.960038	2015-07-31 15:55:06.960038	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
102	411	DI842-843IM	PDGFRA D842 mutations are characterized broadly as imatinib resistance mutations. This is most well characterized in gastrointestinal stromal tumors, but other cell lines containing these mutations have been shown to be resistant as well. In imatinib resistant cell lines, a number of other therapeutics have demonstrated efficacy. These include; crenolanib, sirolimus, and midostaurin (PKC412).	2015-07-31 15:55:07.000435	2015-07-31 15:55:07.000435	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
103	410	E542K	PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in breast cancer, and are highly recurrent mutations in many other cancer types. E545K, and possibly the other mutations in the E545 region, may present patients with a poorer prognosis than patients with either patients with other PIK3CA variant or wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies for variants in PIK3CA are still in early clinical trial phases.	2015-07-31 15:55:07.025944	2015-07-31 15:55:07.025944	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
104	410	E545K	PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in breast cancer, and are highly recurrent mutations in many other cancer types. E545K, and possibly the other mutations in the E545 region, may present patients with a poorer prognosis than patients with either patients with other PIK3CA variant or wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies for variants in PIK3CA are still in early clinical trial phases.	2015-07-31 15:55:07.047464	2015-07-31 15:55:07.047464	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
105	410	EXON 20 MUTATIONS	PIK3CA H1047R is one of the most recurrent mutations in cancer, especially breast cancer. Of PIK3CA mutant breast cancers, over half harbor this mutation. Meta-analyses have shown that patients harboring this mutation may have worse overall survival, but other studies have shown no difference between H1047R and other PIK3CA mutants from a prognostic standpoint. While very prevalent, targeted therapies for this particular mutation are still in early clinical trial phases.	2015-07-31 15:55:07.068065	2015-07-31 15:55:07.068065	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
106	410	EXON 9 MUTATIONS	PIK3CA E545K/E542K are the second most recurrent PIK3CA mutations in breast cancer, and are highly recurrent mutations in many other cancer types. E545K, and possibly the other mutations in the E545 region, may present patients with a poorer prognosis than patients with either patients with other PIK3CA variant or wild-type PIK3CA. There is also data to suggest that E545/542 mutations may confer resistance to EGFR inhibitors like cetuximab. While very prevalent, targeted therapies for variants in PIK3CA are still in early clinical trial phases.	2015-07-31 15:55:07.090092	2015-07-31 15:55:07.090092	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
107	410	H1047R	PIK3CA H1047R is one of the most recurrent mutations in cancer, especially breast cancer. Of PIK3CA mutant breast cancers, over half harbor this mutation. Meta-analyses have shown that patients harboring this mutation may have worse overall survival, but other studies have shown no difference between H1047R and other PIK3CA mutants from a prognostic standpoint. While very prevalent, targeted therapies for this particular mutation are still in early clinical trial phases.	2015-07-31 15:55:07.113289	2015-07-31 15:55:07.113289	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
108	412	PML-RARA	The PML-RARa fusion is seen as a diagnostic event in acute promyelocytic leukemia (APL). Both in vitro and in vivo studies have shown sensitivity to ATRA in APL patients harboring the PML-RARa fusion. Recent interest has been shown in combining ATRA and arsenic trioxide for treating these patients, and early results seem promising.	2015-07-31 15:55:07.13729	2015-07-31 15:55:07.13729	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
109	390	DNAJB1-PRKACA	This fusion has been found to be very recurrent in a rare form of adolescent liver cancer, hepatocellular fibrolamellar carcinoma. In a 2014 study, authors found Honeyman et al observed this fusion in all 15 of the FL-HCC cases they examined, and functional studies found that the fusion retained kinase activity. The presence of this fusion may be used as a diagnostic marker for this rare tumor type.	2015-07-31 15:55:07.162378	2015-07-31 15:55:07.162378	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
110	414	R233*	PTEN R233* has been shown to be a loss of function mutation, and PTEN loss has been the subject of considerable research in breast cancer. PTEN loss may sensitize cells to PI3K-mTOR inhibition. While still being debated, there is data to support that PTEN loss is both associated with poorer prognosis, and no change in prognosis.	2015-07-31 15:55:07.183646	2015-07-31 15:55:07.183646	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
112	415	C634W	RET C639W has been implicated as an alternate mechanism of activating RET in medullary thyroid cancer. While there currently are no RET-specific inhibiting agents, promiscuous kinase inhibitors have seen some success in treating RET overactivity. Data suggests however, that the C639W mutation may lead to drug resistance, especially against the VEGFR-inhibitor motesanib.	2015-07-31 15:55:07.225841	2015-07-31 15:55:07.225841	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
113	415	M918T	RET M819T is the most common somatically acquired mutation in medullary thyroid cancer (MTC). While there currently are no RET-specific inhibiting agents, promiscuous kinase inhibitors have seen some success in treating RET overactivity. Data suggests however, that the M918T mutation may lead to drug resistance, especially against the VEGFR-inhibitor motesanib. It has also been suggested that RET M819T leads to more aggressive MTC with a poorer prognosis.	2015-07-31 15:55:07.245923	2015-07-31 15:55:07.245923	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
114	417	K666N	SF3B1 K666N is a variant found in myelodysplastic syndromes, chronic leukemias, and more recently, breast cancer. This somatic mutation has been linked to better overall outcome and event-free survival in MDS patients.	2015-07-31 15:55:07.268194	2015-07-31 15:55:07.268194	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
115	417	K700E	SF3B1 K700E is a variant found in myelodysplastic syndromes, chronic leukemias, and more recently, breast cancer. This somatic mutation has been linked to better overall outcome and event-free survival in MDS patients. Additionally, these mutations are the most common SF3B1 mutation observed in MDS and highly associated with subtypes of MDS that are defined by ringed sideroblasts.	2015-07-31 15:55:07.292569	2015-07-31 15:55:07.292569	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
116	418	R175H	While loss-of-function events in TP53 are very common in cancer, the R175H variant seems not only to result in loss of tumor-suppression, but also acts as a gain-of-function mutation that promotes tumorigenesis in mouse models. Cell lines harboring this mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been shown that the R175H mutation is correlated with worse overall survival than wild-type TP53, but is not as detrimental as the R248W variant.	2015-07-31 15:55:07.316429	2015-07-31 15:55:07.316429	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
117	418	R248Q	While loss-of-function events in TP53 are very common in cancer, the R248 variants seem not only to result in loss of tumor-suppression, but also act as a gain-of-function mutation that can promote tumorigenesis in mouse models. This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, R248 mutations have been shown to confer worse overall survival. The R248Q mutation has also shown an increased invasive behavior in cell lines. This is specific to the 248Q variant.	2015-07-31 15:55:07.3391	2015-07-31 15:55:07.3391	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
118	418	R248W	While loss-of-function events in TP53 are very common in cancer, the R248 variants seem not only to result in loss of tumor-suppression, but also act as a gain-of-function mutation that can promote tumorigenesis in mouse models. This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, R248 mutations have been shown to confer worse overall survival.	2015-07-31 15:55:07.363683	2015-07-31 15:55:07.363683	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
119	418	R249T	This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been suggested that the R249 mutants have been correlated with worse overall survival in breast cancer patients when compared to wild-type.	2015-07-31 15:55:07.382376	2015-07-31 15:55:07.382376	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
120	418	R249W	This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been suggested that the R249 mutants have been correlated with worse overall survival in breast cancer patients when compared to wild-type.	2015-07-31 15:55:07.402253	2015-07-31 15:55:07.402253	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
121	418	R273C	While loss-of-function events in TP53 are very common in cancer, the R273 variants seem not only to result in loss of tumor-suppression, but also act as a gain-of-function mutation that can promote tumorigenesis in mouse models. This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been suggested that the R273 mutants have been correlated with worse overall survival in breast cancer patients when compared to wild-type.	2015-07-31 15:55:07.426657	2015-07-31 15:55:07.426657	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
122	418	R273H	While loss-of-function events in TP53 are very common in cancer, the R273 variants seem not only to result in loss of tumor-suppression, but also act as a gain-of-function mutation that can promote tumorigenesis in mouse models. This mutant is also more responsive to treatment with doxorubicin than its wild-type counterparts. While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been suggested that the R273 mutants have been correlated with worse overall survival in breast cancer patients when compared to wild-type.	2015-07-31 15:55:07.452988	2015-07-31 15:55:07.452988	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
123	418	V173G/A	While the prognostic impact of individual TP53 mutations is influenced by the cohort being studied, it has been suggested that the R249 mutants have been correlated with worse overall survival in breast cancer patients when compared to wild-type.	2015-07-31 15:55:07.478377	2015-07-31 15:55:07.478377	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
124	419	FRAMESHIFT TRUNCATION	In a small cohort study of bladder cancer, patients with TSC1 mutations showed better responses to and increased treatment duration tolerance with the mTOR inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2 wildtype cells.	2015-07-31 15:55:07.498305	2015-07-31 15:55:07.498305	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
125	419	LOSS-OF-FUNCTION	In a small cohort study of bladder cancer, patients with TSC1 mutations showed better responses to and increased treatment duration tolerance with the mTOR inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2 wildtype cells.	2015-07-31 15:55:07.516069	2015-07-31 15:55:07.516069	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
126	420	LOSS-OF-FUNCTION	In a small cohort study of bladder cancer, patients with TSC1 mutations showed better responses to and increased treatment duration tolerance with the mTOR inhibitor everolimus. Additionally, patient-derived bladder cancer cell lines with TSC1 or TSC2 mutations are much more sensitive to everolimus treatment than TSC1/TSC2 wildtype cells.	2015-07-31 15:55:07.539467	2015-07-31 15:55:07.539467	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
127	421	Q157P/R	U2AF1 Q157P/R has been shown to be a recurrent mutation in acute myeloid leukemia (AML), myelodysplastic syndromes (MDS) and lung adenocarcinomas. This mutation is less common than the S34F mutation, occurs in the second zinc finger domain of U2AF1 and has been demonstrated to alter splicing. The impact of U2AF1 mutations on overall survival in MDS has been debated, however, patients with U2AF1 mutations were shown to be at an increased risk of transformation to secondary AML. The presence of this mutation was not associated with a specific prognostic outcome in AML when compared to U2AF1 wildtype patients.	2015-07-31 15:55:07.559852	2015-07-31 15:55:07.559852	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
128	421	S34Y/F	U2AF1 S34Y/F has been shown to be a recurrent mutation in acute myeloid leukemia (AML), myelodysplastic syndromes (MDS) and lung adenocarcinomas. This mutation is the most commonly identified variant in MDS, occurs in the first zinc finger domain of U2AF1 and has been demonstrated to alter splicing. The impact of U2AF1 mutations on overall survival in MDS has been debated, however, patients with U2AF1 mutations were shown to be at an increased risk of transformation to secondary AML. The presence of this mutation was not associated with a specific prognostic outcome in AML when compared to U2AF1 wildtype patients.	2015-07-31 15:55:07.594319	2015-07-31 15:55:07.594319	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
129	422	EXON 7 MUTATIONS	WT1 exon 7 mutations have been shown to be recurrent in acute myeloid leukemia. Many sources have examined the prognostic impact of these, agreeing that the mutant exon 7 cohort is correlated with worse overall survival and a number of poor prognistic outcomes. This may be the result of an overall poor response to chemotherapy from WT1 mutant tumors.	2015-07-31 15:55:07.61484	2015-07-31 15:55:07.61484	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
130	422	EXON 9 MUTATIONS	WT1 exon 9 mutations have been shown to be recurrent in acute myeloid leukemia, although at a less frequent rate than their exon 7 counterparts. Many sources have examined the prognostic impact of these, agreeing that the mutant exon 9 cohort is correlated with worse overall survival and a number of poor prognistic outcomes. This may be the result of an overall poor response to chemotherapy from WT1 mutant tumors.	2015-07-31 15:55:07.633933	2015-07-31 15:55:07.633933	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
131	379	LOSS-OF-FUNCTION	BRCA1 loss of function mutations have been shown to increase risk of breast and ovarian cancer in those carrying the allele in their germline. Treating BRCA mutant patients with PARP inhibitors such as Olaparib has led to significant response.	2015-07-31 15:55:07.65939	2015-07-31 15:55:07.65939	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
132	380	LOSS-OF-FUNCTION	BRCA2 loss of function mutations have been shown to increase risk of breast and ovarian cancer in those carrying the allele in their germline. Treating BRCA mutant patients with PARP inhibitors such as Olaparib has led to significant response.	2015-07-31 15:55:07.682324	2015-07-31 15:55:07.682324	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
133	392	EXON 19 DELETION	Deletions within exon 19 of EGFR are most common in lung cancer. These deletions, in non-small cell lung cancer, have been shown to be sensitive to the EGFR tyrosine kinase inhibitors gefitinib and erlotinib. There is also data to suggest that this event is a good prognostic marker in lung adenocarcinoma.	2015-07-31 15:55:07.703593	2015-07-31 15:55:07.703593	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
134	392	G719S	While not as recurrent as the L858R mutation, EGFR G719S has also been shown to be an activating mutation. In lung cancer cell lines, it also confers sensitivity to the tyrosine kinase inhibitors gefitinib and erlotinib.	2015-07-31 15:55:07.723494	2015-07-31 15:55:07.723494	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
135	423	D1643H	Activating mutations in NOTCH1, including D1643H, have been shown to be poor prognostic markers in lung cancer.	2015-07-31 15:55:07.746427	2015-07-31 15:55:07.746427	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
136	423	R2328W	Activating mutations in NOTCH1, including R2328W, have been shown to be poor prognostic markers in lung cancer.	2015-07-31 15:55:07.766194	2015-07-31 15:55:07.766194	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
137	423	V2444FS	Activating mutations in NOTCH1, including a frameshift insertion at V2444, have been shown to be poor prognostic markers in lung cancer.	2015-07-31 15:55:07.785884	2015-07-31 15:55:07.785884	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
138	423	S2275FS	Activating mutations in NOTCH1, including a frameshift insertion at S2275, have been shown to be poor prognostic markers in lung cancer.	2015-07-31 15:55:07.805077	2015-07-31 15:55:07.805077	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
139	424	L63V	Activating mutations in DDR2, including L63V, has been shown to be sensitive to dasatinib in cell lines.	2015-07-31 15:55:07.83146	2015-07-31 15:55:07.83146	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
140	424	L239R	Activating mutations in DDR2, including L239R, has been shown to be sensitive to dasatinib in cell lines.	2015-07-31 15:55:07.857941	2015-07-31 15:55:07.857941	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
141	424	G253C	Activating mutations in DDR2, including G253C, has been shown to be sensitive to dasatinib in cell lines.	2015-07-31 15:55:07.877462	2015-07-31 15:55:07.877462	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
142	424	G505S	Activating mutations in DDR2, including G505S, has been shown to be sensitive to dasatinib in cell lines.	2015-07-31 15:55:07.895798	2015-07-31 15:55:07.895798	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
143	424	I638F	DDR2 I638F has been shown to be a loss of function mutation, but also confers sensitivity to dasatinib in cell lines.	2015-07-31 15:55:07.91417	2015-07-31 15:55:07.91417	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
144	424	G774V	Activating mutations in DDR2, including G774V, has been shown to be sensitive to dasatinib in cell lines.	2015-07-31 15:55:07.931861	2015-07-31 15:55:07.931861	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
145	424	S768R	Activating mutations in DDR2, including S768R, has been shown to be sensitive to dasatinib in cell lines.	2015-07-31 15:55:07.949278	2015-07-31 15:55:07.949278	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
146	425	AMPLIFICATION	MET amplification, like EGFR T790M, has been shown to be capable of driving acquired resistance to dacomitinib in patients with lung adenocarcinoma.	2015-07-31 15:55:07.96849	2015-07-31 15:55:07.96849	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
147	403	G12V	KRAS G12V, like EGFR T790M, has been shown to be capable of driving acquired resistance to tyrosine kinase inhibitors in lung adenocarcinoma.	2015-07-31 15:55:07.987145	2015-07-31 15:55:07.987145	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
148	403	G12A	KRAS G12A, like EGFR T790M, has been shown to be capable of driving acquired resistance to tyrosine kinase inhibitors in lung adenocarcinoma.	2015-07-31 15:55:08.010954	2015-07-31 15:55:08.010954	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
149	427	EWS-FLI1	EWS-FLI1 fusions have been found to be extremely common in Ewing's sarcomas. The presence of the fusion is also thought to be a positive prognostic marker of survival.	2015-07-31 15:55:08.030599	2015-07-31 15:55:08.030599	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
150	426	EWS-FLI1	EWS-FLI1 fusions have been found to be extremely common in Ewing's sarcomas. The presence of the fusion is also thought to be a positive prognostic marker of survival.	2015-07-31 15:55:08.053524	2015-07-31 15:55:08.053524	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
151	426	TYPE 1 EWS-FLI1	The most common EWS-FLI1 fusion (type 1) links EWS exon 7 to FLI1 exon 6. This fusion product is found to be associated with better outcome than other EWS-FLI1 fusions in Ewing's Sarcoma.	2015-07-31 15:55:08.074241	2015-07-31 15:55:08.074241	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: evidence_items; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY evidence_items (id, description, disease_id, source_id, variant_id, created_at, updated_at, rating, status, remote_errors, remote_ids, variant_hgvs, evidence_level, evidence_type, variant_origin, evidence_direction, clinical_significance, deleted, deleted_at, drug_interaction_type) FROM stdin;
\.


--
-- Data for Name: drugs_evidence_items; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY drugs_evidence_items (drug_id, evidence_item_id) FROM stdin;
\.


--
-- Name: drugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('drugs_id_seq', 1, false);


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY events (id, created_at, updated_at, action, description, originating_user_id, subject_id, subject_type, state_params) FROM stdin;
\.


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('events_id_seq', 1, false);


--
-- Name: evidence_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('evidence_items_id_seq', 1, false);


--
-- Data for Name: feeds; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY feeds (id, created_at, updated_at, owner_id, event_id, acknowledged) FROM stdin;
\.


--
-- Name: feeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('feeds_id_seq', 1, false);


--
-- Data for Name: gene_aliases; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY gene_aliases (id, name) FROM stdin;
1844	CD246
1845	NBLST3
1846	AKT
1847	CWS6
1848	PKB
1849	PKB-ALPHA
1850	PRKBA
1851	RAC
1852	RAC-ALPHA
1853	A-RAF
1854	ARAF1
1855	PKS2
1856	RAFA1
1857	ABL
1858	JTK7
1859	bcr/abl
1860	c-ABL
1861	c-ABL1
1862	p150
1863	v-abl
1864	B-RAF1
1865	BRAF1
1866	NS7
1867	RAFB1
1868	BRCAI
1869	BRCC1
1870	BROVCA1
1871	FANCS
1872	IRIS
1873	PNCA4
1874	PPP1R53
1875	PSCP
1876	RNF53
1877	BRCC2
1878	BROVCA2
1879	FACD
1880	FAD
1881	FAD1
1882	FANCD
1883	FANCD1
1884	GLM3
1885	PNCA2
1886	XRCC11
1887	BCL1
1888	D11S287E
1889	PRAD1
1890	U21B31
1891	KIAK0002
1892	MPPH3
1893	CCNE
1894	pCCNE1
1895	MCPH12
1896	PLSTIRE
1897	CMM3
1898	PSK-J3
1899	ARF
1900	CDK4I
1901	CDKN2
1902	CMM2
1903	INK4
1904	INK4A
1905	MLM
1906	MTS-1
1907	MTS1
1908	P14
1909	P14ARF
1910	P16
1911	P16-INK4A
1912	P16INK4
1913	P16INK4A
1914	P19
1915	P19ARF
1916	TP16
1917	C/EBP-alpha
1918	CEBP
1919	HSPF1
1920	Hdj1
1921	Hsp40
1922	RSPH16B
1923	Sis1
1924	PKACA
1925	PPNAD4
1926	DNMT3A2
1927	M.HsaIIIA
1928	TBRS
1929	ERBB
1930	ERBB1
1931	HER1
1932	NISBD2
1933	PIG61
1934	mENA
1935	CD340
1936	HER-2
1937	HER-2/neu
1938	HER2
1939	MLN 19
1940	NEU
1941	NGL
1942	TKR1
1943	ER
1944	ESR
1945	ESRA
1946	ESTRR
1947	Era
1948	NR3A1
1949	BBDS
1950	BEK
1951	BFR-1
1952	CD332
1953	CEK3
1954	CFD1
1955	ECT1
1956	JWS
1957	K-SAM
1958	KGFR
1959	TK14
1960	TK25
1961	ACH
1962	CD333
1963	CEK2
1964	HSFGFR3EX
1965	JTK4
1966	CD135
1967	FLK-2
1968	FLK2
1969	STK1
1970	DCML
1971	IMD21
1972	MONOMAC
1973	NFE1B
1974	HEL-216
1975	HEL-S-26
1976	IDCD
1977	IDH
1978	IDP
1979	IDPC
1980	PICD
1981	D2HGA2
1982	ICD-M
1983	IDHM
1984	IDPM
1985	mNADP-IDH
1986	JTK10
1987	THCYT3
1988	C-Kit
1989	CD117
1990	PBT
1991	SCFR
1992	C-K-RAS
1993	CFC2
1994	K-RAS2A
1995	K-RAS2B
1996	K-RAS4A
1997	K-RAS4B
1998	KI-RAS
1999	KRAS1
2000	KRAS2
2001	NS
2002	NS3
2003	RASK2
2004	CFC3
2005	MAPKK1
2006	MEK1
2007	MKK1
2008	PRKMK1
2009	C-FMS
2010	CD115
2011	CSF-1R
2012	CSFR
2013	FIM2
2014	FMS
2015	HDLS
2016	M-CSF-R
2017	B23
2018	NPM
2019	ALPS4
2020	CMNS
2021	N-ras
2022	NCMS
2023	NRAS1
2024	NS6
2025	CLOVE
2026	CWS5
2027	MCAP
2028	MCM
2029	MCMTC
2030	PI3K
2031	p110-alpha
2032	CD140A
2033	PDGFR-2
2034	PDGFR2
2035	RHEPDGFRA
2036	MYL
2037	PP8675
2038	RNF71
2039	TRIM19
2040	NR1B1
2041	RAR
2042	10q23del
2043	BZS
2044	CWS1
2045	DEC
2046	GLM2
2047	MHAM
2048	MMAC1
2049	PTEN1
2050	TEP1
2051	CDHF12
2052	CDHR16
2053	HSCR1
2054	MEN2A
2055	MEN2B
2056	MTC1
2057	PTC
2058	RET-ELE1
2059	RET51
2060	AML1
2061	AML1-EVI-1
2062	AMLCR1
2063	CBFA2
2064	EVI-1
2065	PEBP2aB
2066	Hsh155
2067	MDS
2068	PRP10
2069	PRPF10
2070	SAP155
2071	SF3b155
2072	BCC7
2073	LFS1
2074	P53
2075	TRP53
2076	LAM
2077	TSC
2078	PPP1R160
2079	TSC4
2080	FP793
2081	RN
2082	RNU2AF1
2083	U2AF35
2084	U2AFBP
2085	AWT1
2086	EWS-WT1
2087	GUD
2088	NPHS4
2089	WAGR
2090	WIT-2
2091	WT33
2092	AOS5
2093	AOVD1
2094	TAN1
2095	hN1
2096	MIG20a
2097	NTRKR3
2098	TKT
2099	TYRO10
2100	AUTS9
2101	DFNB97
2102	HGFR
2103	RCCP2
2104	c-Met
2105	EWSR2
2106	SIC-1
2107	EWS
2108	EWS-FLI1
2109	bK984G1.4
\.


--
-- Data for Name: gene_aliases_genes; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY gene_aliases_genes (gene_alias_id, gene_id) FROM stdin;
1844	374
1845	374
1846	375
1847	375
1848	375
1849	375
1850	375
1851	375
1852	375
1853	376
1854	376
1855	376
1856	376
1857	377
1858	377
1859	377
1860	377
1861	377
1862	377
1863	377
1864	378
1865	378
1866	378
1867	378
1868	379
1869	379
1870	379
1871	379
1872	379
1873	379
1874	379
1875	379
1876	379
1877	380
1878	380
1879	380
1880	380
1881	380
1882	380
1883	380
1884	380
1885	380
1886	380
1887	381
1888	381
1889	381
1890	381
1891	382
1892	382
1893	384
1894	384
1895	385
1896	385
1897	386
1898	386
1899	387
1900	387
1901	387
1902	387
1903	387
1904	387
1905	387
1906	387
1907	387
1908	387
1909	387
1910	387
1911	387
1912	387
1913	387
1914	387
1915	387
1916	387
1917	388
1918	388
1919	389
1920	389
1921	389
1922	389
1923	389
1924	390
1925	390
1926	391
1927	391
1928	391
1929	392
1930	392
1931	392
1932	392
1933	392
1934	392
1935	393
1936	393
1937	393
1938	393
1939	393
1940	393
1941	393
1942	393
1943	394
1944	394
1945	394
1946	394
1947	394
1948	394
1949	395
1950	395
1951	395
1952	395
1953	395
1954	395
1955	395
1956	395
1957	395
1958	395
1959	395
1960	395
1961	396
1962	396
1963	396
1964	396
1965	396
1966	397
1967	397
1968	397
1969	397
1970	398
1971	398
1972	398
1973	398
1974	399
1975	399
1976	399
1977	399
1978	399
1979	399
1980	399
1981	400
1982	400
1977	400
1983	400
1978	400
1984	400
1985	400
1986	401
1987	401
1988	402
1989	402
1990	402
1991	402
1992	403
1993	403
1994	403
1995	403
1996	403
1997	403
1998	403
1999	403
2000	403
2001	403
2002	403
2003	403
2004	404
2005	404
2006	404
2007	404
2008	404
2009	406
2010	406
2011	406
2012	406
2013	406
2014	406
2015	406
2016	406
2017	408
2018	408
2019	409
2020	409
2021	409
2022	409
2023	409
2024	409
2025	410
2026	410
2027	410
2028	410
2029	410
2030	410
2031	410
2032	411
2033	411
2034	411
2035	411
2036	412
2037	412
2038	412
2039	412
2040	413
2041	413
2042	414
2043	414
2044	414
2045	414
2046	414
2047	414
2048	414
2049	414
2050	414
2051	415
2052	415
2053	415
2054	415
2055	415
2056	415
2057	415
2058	415
2059	415
2060	416
2061	416
2062	416
2063	416
2064	416
2065	416
2066	417
2067	417
2068	417
2069	417
2070	417
2071	417
2072	418
2073	418
2074	418
2075	418
2076	419
2077	419
2076	420
2078	420
2079	420
2080	421
2081	421
2082	421
2083	421
2084	421
2085	422
2086	422
2087	422
2088	422
2089	422
2090	422
2091	422
2092	423
2093	423
2094	423
2095	423
2096	424
2097	424
2098	424
2099	424
2100	425
2101	425
2102	425
2103	425
2104	425
2105	426
2106	426
2107	427
2108	427
2109	427
\.


--
-- Name: gene_aliases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('gene_aliases_id_seq', 2109, true);


--
-- Name: genes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('genes_id_seq', 427, true);


--
-- Data for Name: genes_sources; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY genes_sources (gene_id, source_id, created_at, updated_at) FROM stdin;
374	352	2015-07-31 15:54:51.892451	2015-07-31 15:54:51.892451
374	353	2015-07-31 15:54:51.907449	2015-07-31 15:54:51.907449
375	354	2015-07-31 15:54:52.153365	2015-07-31 15:54:52.153365
375	355	2015-07-31 15:54:52.166633	2015-07-31 15:54:52.166633
376	356	2015-07-31 15:54:52.431497	2015-07-31 15:54:52.431497
376	357	2015-07-31 15:54:52.444289	2015-07-31 15:54:52.444289
377	358	2015-07-31 15:54:52.679215	2015-07-31 15:54:52.679215
377	359	2015-07-31 15:54:52.688366	2015-07-31 15:54:52.688366
378	360	2015-07-31 15:54:52.920507	2015-07-31 15:54:52.920507
378	361	2015-07-31 15:54:52.930572	2015-07-31 15:54:52.930572
379	362	2015-07-31 15:54:53.181065	2015-07-31 15:54:53.181065
380	362	2015-07-31 15:54:53.438552	2015-07-31 15:54:53.438552
381	363	2015-07-31 15:54:53.679938	2015-07-31 15:54:53.679938
381	364	2015-07-31 15:54:53.690106	2015-07-31 15:54:53.690106
382	363	2015-07-31 15:54:53.898512	2015-07-31 15:54:53.898512
382	364	2015-07-31 15:54:53.901121	2015-07-31 15:54:53.901121
383	363	2015-07-31 15:54:54.160393	2015-07-31 15:54:54.160393
383	364	2015-07-31 15:54:54.162823	2015-07-31 15:54:54.162823
384	365	2015-07-31 15:54:54.370497	2015-07-31 15:54:54.370497
385	366	2015-07-31 15:54:54.585633	2015-07-31 15:54:54.585633
385	367	2015-07-31 15:54:54.597146	2015-07-31 15:54:54.597146
386	366	2015-07-31 15:54:54.803336	2015-07-31 15:54:54.803336
386	367	2015-07-31 15:54:54.805865	2015-07-31 15:54:54.805865
387	368	2015-07-31 15:54:55.099779	2015-07-31 15:54:55.099779
387	369	2015-07-31 15:54:55.109234	2015-07-31 15:54:55.109234
388	370	2015-07-31 15:54:55.369932	2015-07-31 15:54:55.369932
388	371	2015-07-31 15:54:55.381054	2015-07-31 15:54:55.381054
388	372	2015-07-31 15:54:55.392617	2015-07-31 15:54:55.392617
389	373	2015-07-31 15:54:55.613971	2015-07-31 15:54:55.613971
390	373	2015-07-31 15:54:55.822612	2015-07-31 15:54:55.822612
390	374	2015-07-31 15:54:55.836365	2015-07-31 15:54:55.836365
391	375	2015-07-31 15:54:56.060154	2015-07-31 15:54:56.060154
391	376	2015-07-31 15:54:56.072913	2015-07-31 15:54:56.072913
392	377	2015-07-31 15:54:56.312339	2015-07-31 15:54:56.312339
392	378	2015-07-31 15:54:56.323009	2015-07-31 15:54:56.323009
393	379	2015-07-31 15:54:56.578315	2015-07-31 15:54:56.578315
393	380	2015-07-31 15:54:56.590152	2015-07-31 15:54:56.590152
394	381	2015-07-31 15:54:56.895937	2015-07-31 15:54:56.895937
394	382	2015-07-31 15:54:56.907733	2015-07-31 15:54:56.907733
395	383	2015-07-31 15:54:57.203021	2015-07-31 15:54:57.203021
395	384	2015-07-31 15:54:57.218428	2015-07-31 15:54:57.218428
396	383	2015-07-31 15:54:57.464645	2015-07-31 15:54:57.464645
396	384	2015-07-31 15:54:57.467296	2015-07-31 15:54:57.467296
397	385	2015-07-31 15:54:57.702856	2015-07-31 15:54:57.702856
397	370	2015-07-31 15:54:57.705511	2015-07-31 15:54:57.705511
398	386	2015-07-31 15:54:57.943673	2015-07-31 15:54:57.943673
398	387	2015-07-31 15:54:57.952857	2015-07-31 15:54:57.952857
399	388	2015-07-31 15:54:58.195887	2015-07-31 15:54:58.195887
399	389	2015-07-31 15:54:58.206638	2015-07-31 15:54:58.206638
400	388	2015-07-31 15:54:58.444569	2015-07-31 15:54:58.444569
400	389	2015-07-31 15:54:58.446899	2015-07-31 15:54:58.446899
400	390	2015-07-31 15:54:58.456533	2015-07-31 15:54:58.456533
401	391	2015-07-31 15:54:58.675095	2015-07-31 15:54:58.675095
402	392	2015-07-31 15:54:58.895231	2015-07-31 15:54:58.895231
403	393	2015-07-31 15:54:59.164032	2015-07-31 15:54:59.164032
408	394	2015-07-31 15:55:00.21386	2015-07-31 15:55:00.21386
408	370	2015-07-31 15:55:00.216914	2015-07-31 15:55:00.216914
415	395	2015-07-31 15:55:01.828892	2015-07-31 15:55:01.828892
415	396	2015-07-31 15:55:01.84037	2015-07-31 15:55:01.84037
417	397	2015-07-31 15:55:02.378861	2015-07-31 15:55:02.378861
417	398	2015-07-31 15:55:02.391578	2015-07-31 15:55:02.391578
418	399	2015-07-31 15:55:02.757025	2015-07-31 15:55:02.757025
421	400	2015-07-31 15:55:03.432189	2015-07-31 15:55:03.432189
421	401	2015-07-31 15:55:03.443616	2015-07-31 15:55:03.443616
\.


--
-- Name: organizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('organizations_id_seq', 1, false);


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY ratings (id, value, evidence_item_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('ratings_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: acoffman
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
20150609210448
20150611153328
20150611154621
20150611200713
20150709222321
20150709230109
20150722183121
20150722185207
20150722185935
20150728191648
\.


--
-- Name: sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('sources_id_seq', 401, true);


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY subscriptions (id, user_id, subscribable_id, subscribable_type, type, created_at, updated_at, action_type, action_class) FROM stdin;
\.


--
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('subscriptions_id_seq', 1, false);


--
-- Data for Name: suggested_changes; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY suggested_changes (id, suggested_changes, moderated_id, moderated_type, user_id, status, created_at, updated_at) FROM stdin;
\.


--
-- Name: suggested_changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('suggested_changes_id_seq', 1, false);


--
-- Data for Name: tsv_releases; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY tsv_releases (id, path, created_at, updated_at) FROM stdin;
\.


--
-- Name: tsv_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('tsv_releases_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Data for Name: variant_groups; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY variant_groups (id, name, description, created_at, updated_at, deleted, deleted_at) FROM stdin;
\.


--
-- Data for Name: variant_group_variants; Type: TABLE DATA; Schema: public; Owner: acoffman
--

COPY variant_group_variants (variant_id, variant_group_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: variant_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('variant_groups_id_seq', 1, false);


--
-- Name: variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: acoffman
--

SELECT pg_catalog.setval('variants_id_seq', 151, true);


--
-- PostgreSQL database dump complete
--


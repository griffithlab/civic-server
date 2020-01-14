import ndex2.client as nc2
import pandas as pd
import ndexutil.tsv.tsv2nicecx2 as t2n
import argparse
import jsonschema
import datetime
from os import path
import ndex2.client as nc

current_directory = path.dirname(path.abspath(__file__))

#============================
# GET THE SCRIPT PARAMETERS
#============================
parser = argparse.ArgumentParser(description='Civic Loader')

parser.add_argument('username', action='store', nargs='?', default=None)
parser.add_argument('password', action='store', nargs='?', default=None)
parser.add_argument('--server', dest='server', action='store', help='NDEx server')
parser.add_argument('--type', dest='network_type', action='store', help='Type of network to process (gene_disease, variant_drug, etc...)')
parser.add_argument('--file', dest='tsv_file', action='store', help='The name of the file to process')
parser.add_argument('--template', dest='template', action='store', help='The uuid of the style template to use')

args = parser.parse_args()

print(vars(args))

#==============================
# SET UP USERNAME AND PASSWORD
#==============================
if args.username is None:
    raise Exception('Please provide username')
if args.password is None:
    raise Exception('Please provide password')

class CivicUploader():
    def __init__(self, username, password, load_type=None, server=None, template_id=None, file=None):

        self.current_directory = path.dirname(path.abspath(__file__))

        self.params = {
            'username': username,
            'password': password,
            'server': None,
            'tsv_file': None,
            'load_plan': None,
            'delimiter': '\t',
            'update_uuid': None,
            'template_id': template_id,
            'net_name': None,
            'net_description': None,
            'header': None
        }

        self.network_name_mapping = {
            'variant_drug': 'Variant-Drug Associations',
            'gene_disease': 'Gene-Disease Associations',
            'gene_variant': 'Gene-Variant Associations',
            'variant_disease': 'Variant-Disease Associations',
            'all': 'all'
        }

        self.params['server'] = self._set_server(server)

        if file is not None:
            self.params['tsv_file'] = file
        else:
            self.params['tsv_file'] = 'nightly-civic.txt'

        self.update_mapping = self.get_update_mapping()

        self.set_load_plan(load_type)

        self.set_load_plan_mapping()

        if self.update_mapping.get(self.params.get('net_name_upper')) is not None:
            self.params['update_uuid'] = self.update_mapping.get(self.params.get('net_name_upper'))

    def _set_server(self, server):
        if server is not None:
            if 'http' in server:
                return server
            else:
                return 'http://' + server
        else:
            return 'http://public.ndexbio.org'

    def _get_network_type(self, network_type):
        if network_type is not None and not isinstance(network_type, str):
            network_type = str(network_type)

        return_type = None
        if network_type:
            if network_type == '1':
                return_type = 'variant_drug'
            elif network_type == '2':
                return_type = 'variant_disease'
            elif network_type == '3':
                return_type = 'gene_disease'
            elif network_type == '4':
                return_type = 'gene_variant'
            else:
                return_type = network_type
        else:
            return_type = 'all'

        return return_type

    def get_network_properties(self, network_id):
        net_prop_ndex = nc2.Ndex2(self.params.get('server'), self.params.get('username'), self.params.get('password'))

        network_properties_stream = net_prop_ndex.get_network_aspect_as_cx_stream(network_id, 'networkAttributes')

        network_properties = network_properties_stream.json()
        return_properties = {}
        for net_prop in network_properties:
            return_properties[net_prop.get('n')] = net_prop.get('v')

        return return_properties

    #======================
    # GET UPDATE MAPPING
    #======================
    def get_update_mapping(self):
        my_ndex = nc.Ndex2(self.params.get('server'), self.params.get('username'), self.params.get('password'))

        networks = my_ndex.get_network_summaries_for_user(self.params.get('username'))
        update_mapping = {}
        for nk in networks:
            if nk.get('name') is not None:
                update_mapping[nk.get('name').upper()] = nk.get('externalId')

        return update_mapping

    def set_load_plan_mapping(self):
        all_load_plans = {
          "variant_drug": {
                "context": {
                    "CIViC gene": "https://civic.genome.wustl.edu/links/genes/"
                    , "CIViC variant": "https://civic.genome.wustl.edu/links/variants/"
                    , "CIViC evidence": "https://civic.genome.wustl.edu/links/evidence_items/"
                    , "DOID": "https://identifiers.org/doid/DOID:"
                    , "PMID": "https://identifiers.org/pubmed/"
                    , "Ensembl Transcript": "https://identifiers.org/ensembl/"
                    , "Entrez Gene": "https://identifiers.org/ncbigene/"
                }
                , "source_plan": {
                    "rep_prefix": "CIViC variant"
                    , "rep_column": "variant_id"
                    , "node_name_column": "gene-variant"
                    , "property_columns": [{
                            "column_name": "variant_origin"
                            , "attribute_name": "Variant origin"
                            , "value_prefix": ""
                        }
                        , {
                            "column_name": "variant_summary"
                            , "attribute_name": "Variant summary"
                            , "value_prefix": ""
                        }
                        , {
                            "column_name": "entrez_id"
                            , "attribute_name": "Entrez Gene"
                            , "value_prefix": "Entrez Gene"
                        }
                        , {
                            "column_name": "gene_id"
                            , "attribute_name": "CIViC Gene"
                            , "value_prefix": "CIViC gene"
                        }
                        , {
                            "attribute_name": "type"
                            , "default_value": "variant"
                        }]
                }
                , "target_plan": {
                    "rep_prefix": ""
                    , "rep_column": "drugs"
                    , "node_name_column": "drugs"
                    , "property_columns": [{
                        "attribute_name": "type"
                        , "default_value": "drug"
                    }]
                }
                , "edge_plan": {
                    "default_predicate": "is affected by"
                    , "property_columns": [{
                            "column_name": "evidence_id"
                            , "attribute_name": "CIViC evidence ID"
                            , "value_prefix": "CIViC evidence"
                        }
                        , {
                            "column_name": "representative_transcript"
                            , "attribute_name": "Representative transcript"
                            , "value_prefix": "Ensembl Transcript"
                        }
                        , {
                            "column_name": "pubmed_id"
                            , "attribute_name": "Citation"
                            , "value_prefix": "PMID"
                        }
                                      , "evidence_type"
                                      , "evidence_direction"
                                      , "evidence_level"
                                      , "clinical_significance"
                                      , "evidence_statement"
                                      , "rating"
                                      , "evidence_status"
                                      , "last_review_date"
                        , {
                            "column_name": "doid"
                            , "attribute_name": "Disease ID"
                            , "value_prefix": "DOID"
                        }
                        , {
                            "column_name": "disease"
                            , "attribute_name": "Disease name"
                            , "value_prefix": ""
                        }
                        , {
                            "column_name": "phenotypes"
                            , "attribute_name": "Phenotypes"
                            , "value_prefix": ""
                        }]
                }
            },
          "variant_disease": {
                "context": {
                    "CIViC gene": "https://civic.genome.wustl.edu/links/genes/"
                    , "CIViC variant": "https://civic.genome.wustl.edu/links/variants/"
                    , "CIViC evidence": "https://civic.genome.wustl.edu/links/evidence_items/"
                    , "DOID": "https://identifiers.org/doid/DOID:"
                    , "PMID": "https://identifiers.org/pubmed/"
                    , "Ensembl Transcript": "https://identifiers.org/ensembl/"
                    , "Entrez Gene": "https://identifiers.org/ncbigene/"
                }
                , "source_plan": {
                    "rep_prefix": "CIViC variant"
                    , "rep_column": "variant_id"
                    , "node_name_column": "gene-variant"
                    , "property_columns": [{
                            "column_name": "variant_origin"
                            , "attribute_name": "Variant origin"
                            , "value_prefix": ""
                        }
                        , {
                            "column_name": "variant_summary"
                            , "attribute_name": "Variant summary"
                            , "value_prefix": ""
                        }
                        , {
                            "column_name": "entrez_id"
                            , "attribute_name": "Entrez Gene"
                            , "value_prefix": "Entrez Gene"
                        }
                        , {
                            "column_name": "gene_id"
                            , "attribute_name": "CIViC Gene"
                            , "value_prefix": "CIViC gene"
                        }
                        , {
                            "attribute_name": "type"
                            , "default_value": "variant"
                        }]
                }
                , "target_plan": {
                    "rep_prefix": "DOID"
                    , "rep_column": "doid"
                    , "node_name_column": "disease"
                    , "property_columns": [{
                            "column_name": "phenotypes"
                            , "attribute_name": "Phenotypes"
                            , "value_prefix": ""
                        }
                        , {
                            "attribute_name": "type"
                            , "default_value": "disease"
                        }]
                }
                , "edge_plan": {
                    "default_predicate": "is related to"
                    , "property_columns": [{
                            "column_name": "evidence_id"
                            , "attribute_name": "CIViC evidence ID"
                            , "value_prefix": "CIViC evidence"
                        }
                        , {
                            "column_name": "representative_transcript"
                            , "attribute_name": "Representative transcript"
                            , "value_prefix": "Ensembl Transcript"
                        }
                        , {
                            "column_name": "pubmed_id"
                            , "attribute_name": "Citation"
                            , "value_prefix": "PMID"
                        }
                                      , "evidence_type"
                                      , "evidence_direction"
                                      , "evidence_level"
                                      , "drugs"
                                      , "clinical_significance"
                                      , "evidence_statement"
                                      , "rating"
                                      , "evidence_status"
                                      , "last_review_date"]
                }
            },
          "gene_variant": {
                "context": {
                    "CIViC gene": "https://civic.genome.wustl.edu/links/genes/"
                    , "CIViC variant": "https://civic.genome.wustl.edu/links/variants/"
                    , "CIViC evidence": "https://civic.genome.wustl.edu/links/evidence_items/"
                    , "DOID": "https://identifiers.org/doid/DOID:"
                    , "PMID": "https://identifiers.org/pubmed/"
                    , "Ensembl Transcript": "https://identifiers.org/ensembl/"
                    , "Entrez Gene": "https://identifiers.org/ncbigene/"
                }
                , "source_plan": {
                    "rep_prefix": "CIViC gene"
                    , "rep_column": "gene_id"
                    , "node_name_column": "gene"
                    , "property_columns": [{
                            "column_name": "entrez_id"
                            , "attribute_name": "Alias"
                            , "value_prefix": "Entrez Gene"
                        }
                        , {
                            "attribute_name": "type"
                            , "default_value": "gene"
                        }]
                }
                , "target_plan": {
                    "rep_prefix": "CIViC variant"
                    , "rep_column": "variant_id"
                    , "node_name_column": "variant"
                    , "property_columns": [{
                            "attribute_name": "type"
                            , "default_value": "variant"
                        }
                        , {
                            "column_name": "variant_origin"
                            , "attribute_name": "Variant origin"
                            , "value_prefix": ""
                        }
                        , {
                            "column_name": "variant_summary"
                            , "attribute_name": "Variant summary"
                            , "value_prefix": ""
                        }
                        , {
                            "column_name": "phenotypes"
                            , "attribute_name": "Phenotypes"
                            , "value_prefix": ""
                        }]
                }
                , "edge_plan": {
                    "default_predicate": "is related to"
                    , "property_columns": [{
                            "column_name": "evidence_id"
                            , "attribute_name": "CIViC evidence ID"
                            , "value_prefix": "CIViC evidence"
                        }
                        , {
                            "column_name": "representative_transcript"
                            , "attribute_name": "Representative transcript"
                            , "value_prefix": "Ensembl Transcript"
                        }
                        , {
                            "column_name": "pubmed_id"
                            , "attribute_name": "Citation"
                            , "value_prefix": "PMID"
                        }
                                      , "evidence_type"
                                      , "evidence_direction"
                                      , "evidence_level"
                                      , "drugs"
                                      , "clinical_significance"
                                      , "evidence_statement"
                                      , "rating"
                                      , "evidence_status"
                                      , "last_review_date"
                        , {
                            "column_name": "doid"
                            , "attribute_name": "Disease ID"
                            , "value_prefix": "DOID"
                        }
                        , {
                            "column_name": "disease"
                            , "attribute_name": "Disease name"
                            , "value_prefix": ""
                        }]
                }
            },
          "gene_disease": {
                "context": {
                    "CIViC gene": "https://civic.genome.wustl.edu/links/genes/"
                    , "CIViC variant": "https://civic.genome.wustl.edu/links/variants/"
                    , "CIViC evidence": "https://civic.genome.wustl.edu/links/evidence_items/"
                    , "DOID": "https://identifiers.org/doid/DOID:"
                    , "PMID": "https://identifiers.org/pubmed/"
                    , "Ensembl Transcript": "https://identifiers.org/ensembl/"
                    , "Entrez Gene": "https://identifiers.org/ncbigene/"
                }
                , "source_plan": {
                    "rep_prefix": "CIViC gene"
                    , "rep_column": "gene_id"
                    , "node_name_column": "gene"
                    , "property_columns": [{
                            "column_name": "entrez_id"
                            , "attribute_name": "Alias"
                            , "value_prefix": "Entrez Gene"
                        }
                        , {
                            "attribute_name": "type"
                            , "default_value": "gene"
                        }]
                }
                , "target_plan": {
                    "rep_prefix": "DOID"
                    , "rep_column": "doid"
                    , "node_name_column": "disease"
                    , "property_columns": [{
                            "column_name": "phenotypes"
                            , "attribute_name": "Phenotypes"
                            , "value_prefix": ""
                        }
                        , {
                            "attribute_name": "type"
                            , "default_value": "disease"
                        }]
                }
                , "edge_plan": {
                    "default_predicate": "is related to"
                    , "property_columns": [{
                            "column_name": "variant"
                            , "attribute_name": "Variant"
                            , "value_prefix": ""
                        }
                        , {
                            "column_name": "variant_id"
                            , "attribute_name": "CIViC variant ID"
                            , "value_prefix": "CIViC variant"
                        }
                        , {
                            "column_name": "variant_origin"
                            , "attribute_name": "Variant origin"
                            , "value_prefix": ""
                        }
                        , {
                            "column_name": "variant_summary"
                            , "attribute_name": "Variant summary"
                            , "value_prefix": ""
                        }
                        , {
                            "column_name": "evidence_id"
                            , "attribute_name": "CIViC evidence ID"
                            , "value_prefix": "CIViC evidence"
                        }
                        , {
                            "column_name": "representative_transcript"
                            , "attribute_name": "Representative transcript"
                            , "value_prefix": "Ensembl Transcript"
                        }
                        , {
                            "column_name": "pubmed_id"
                            , "attribute_name": "Citation"
                            , "value_prefix": "PMID"
                        }
                                      , "evidence_type"
                                      , "evidence_direction"
                                      , "evidence_level"
                                      , "drugs"
                                      , "clinical_significance"
                                      , "evidence_statement"
                                      , "rating"
                                      , "evidence_status"
                                      , "last_review_date"]
                }
            }
        }

        self.params['all_load_plans'] = all_load_plans

    def get_params(self):
        return self.params

    def get_load_plan(self):
        return self.params.get('load_plan')

    def set_load_plan(self, load_plan):
        self.params['load_plan'] = self._get_network_type(load_plan)
        self.params['net_name'] = self.network_name_mapping.get(self.params.get('load_plan'))
        if self.params.get('net_name') is not None:
            self.params['net_name_upper'] = self.params.get('net_name').upper()

        if self.update_mapping.get(self.params.get('net_name_upper')) is not None:
            self.params['update_uuid'] = self.update_mapping.get(self.params.get('net_name_upper'))

def run_loading(params):
    #==============================
    # LOAD TSV FILE INTO DATAFRAME
    #==============================
    if params.get('tsv_file') is not None:
        with open(params.get('tsv_file'), 'r', encoding='utf-8', errors='ignore') as tsvfile:
            if params.get('header'):
                header = params.get('header').split(',')
            else:
                header = [h.strip() for h in tsvfile.readline().split(params.get('delimiter'))]

            df = pd.read_csv(tsvfile, delimiter=params.get('delimiter'), na_filter=False, engine='python', names=header,
                             dtype = str, error_bad_lines=False, comment='#')
            df['gene-variant'] = df['gene'] + '-' + df['variant']
    else:
        raise Exception('Please provide a tsv file name')


    #=====================
    # LOAD TSV LOAD PLAN
    #=====================
    if params.get('load_plan') is not None:
        try:
            load_plan_name = params.get('load_plan')
            load_plan = params.get('all_load_plans').get(load_plan_name)
        except jsonschema.ValidationError as e1:
            print("Failed to parse the loading plan: " + e1.message)
            print('at path: ' + str(e1.absolute_path))
            print("in block: ")
            print(e1.instance)
    else:
        raise Exception('Please provide a load plan')


    #====================
    # UPPERCASE COLUMNS
    #====================
    rename = {}
    for column_name in df.columns:
        rename[column_name] = column_name.upper()

    network = t2n.convert_pandas_to_nice_cx_with_load_plan(df, load_plan)

    if params.get('template_id') is not None:
        network.apply_template(username=params.get('username'), password=params.get('password'), server=params.get('server'), uuid=params.get('template_id'))
    elif params.get('update_uuid') is not None:
        network.apply_template(username=params.get('username'), password=params.get('password'), server=params.get('server'), uuid=params.get('update_uuid'))

    #===============================
    # UPDATE NETWORK OR CREATE NEW
    #===============================
    if params.get('update_uuid') is not None:
        network_properties = get_network_properties(params)

        for k, v in network_properties.items():
            if k.upper() == 'NAME':
                # ===================
                # SET NETWORK NAME
                # ===================
                if params.get('net_name') is not None:
                    network.set_name(params.get('net_name'))
                else:
                    network.set_name(v)
            elif k.upper() == 'DESCRIPTION':
                # ==========================
                # SET NETWORK DESCRIPTION
                # ==========================
                if params.get('net_description') is not None:
                    network.set_network_attribute('description', params.get('net_description'))
                else:
                    network.set_network_attribute(name='description', values=v)
            elif k.upper() == 'VERSION':
                network.set_network_attribute(name='version', values=datetime.datetime.now().strftime("%Y-%m-%d"))
            else:
                network.set_network_attribute(name=k, values=v)

        message = network.update_to(params.get('update_uuid'), params.get('server'), params.get('username'),
                                    params.get('password'))
    else:
        # ===================
        # SET NETWORK NAME
        # ===================
        if params.get('net_name') is not None:
            network.set_name(params.get('net_name'))
        else:
            network.set_name(path.splitext(path.basename(params.get('tsv_file')))[0])

        # ==========================
        # SET NETWORK DESCRIPTION
        # ==========================
        if params.get('net_description') is not None and len(params.get('net_description').replace('"', '')) < 1:
            network.set_network_attribute('description', params.get('net_description'))

        message = network.upload_to(params.get('server'), params.get('username'), params.get('password'))

    network.print_summary()


def get_network_properties(params):
    net_prop_ndex = nc2.Ndex2(params.get('server'), params.get('username'), params.get('password'))

    network_properties_stream = net_prop_ndex.get_network_aspect_as_cx_stream(params.get('update_uuid'), 'networkAttributes')

    network_properties = network_properties_stream.json()
    return_properties = {}
    for net_prop in network_properties:
        return_properties[net_prop.get('n')] = net_prop.get('v')

    return return_properties


process_civic = CivicUploader(args.username, args.password, load_type=args.network_type, server=args.server,
                              template_id=args.template, file=args.tsv_file)


#========================================
# PROCESS FILES (LOOP FOR ALL LOAD PLAN
#========================================
if process_civic.get_load_plan() == 'all':
    for i in range(1, 5):
        process_civic.set_load_plan(i)

        process_params = process_civic.get_params()

        run_loading(process_params)
else:
    run_loading(process_civic.get_params())
print('Done')


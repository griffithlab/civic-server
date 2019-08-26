SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: acmg_codes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.acmg_codes (
    id integer NOT NULL,
    code text,
    description text
);


--
-- Name: acmg_codes_assertions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.acmg_codes_assertions (
    acmg_code_id integer NOT NULL,
    assertion_id integer NOT NULL
);


--
-- Name: acmg_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.acmg_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: acmg_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.acmg_codes_id_seq OWNED BY public.acmg_codes.id;


--
-- Name: advanced_searches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.advanced_searches (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    params text,
    search_type text,
    token text
);


--
-- Name: advanced_searches_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.advanced_searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: advanced_searches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.advanced_searches_id_seq OWNED BY public.advanced_searches.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: assertions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assertions (
    id integer NOT NULL,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted boolean DEFAULT false,
    status text DEFAULT 'submitted'::text NOT NULL,
    nccn_guideline integer,
    nccn_guideline_version text,
    amp_level integer,
    clinical_significance integer,
    gene_id integer,
    variant_id integer,
    disease_id integer,
    evidence_type integer,
    fda_companion_test boolean,
    fda_regulatory_approval boolean,
    drug_interaction_type integer,
    evidence_direction integer,
    summary text,
    variant_origin integer
);


--
-- Name: assertions_drugs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assertions_drugs (
    assertion_id integer NOT NULL,
    drug_id integer NOT NULL
);


--
-- Name: assertions_evidence_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assertions_evidence_items (
    assertion_id integer NOT NULL,
    evidence_item_id integer NOT NULL
);


--
-- Name: assertions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.assertions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assertions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.assertions_id_seq OWNED BY public.assertions.id;


--
-- Name: assertions_phenotypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assertions_phenotypes (
    assertion_id integer NOT NULL,
    phenotype_id integer NOT NULL
);


--
-- Name: audits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.audits (
    id integer NOT NULL,
    auditable_id integer,
    auditable_type character varying,
    associated_id integer,
    associated_type character varying,
    user_id integer,
    user_type character varying,
    username character varying,
    action character varying,
    audited_changes text,
    version integer DEFAULT 0,
    comment character varying,
    remote_address character varying,
    request_uuid character varying,
    created_at timestamp without time zone
);


--
-- Name: audits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.audits_id_seq OWNED BY public.audits.id;


--
-- Name: authorizations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authorizations (
    id integer NOT NULL,
    user_id integer NOT NULL,
    provider character varying NOT NULL,
    uid character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: authorizations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.authorizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: authorizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.authorizations_id_seq OWNED BY public.authorizations.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    last_name text,
    fore_name text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: authors_sources; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authors_sources (
    source_id integer,
    author_id integer,
    author_position integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: badge_awards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.badge_awards (
    id integer NOT NULL,
    badge_id integer,
    user_id integer,
    tier text,
    message text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: badge_awards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.badge_awards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: badge_awards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.badge_awards_id_seq OWNED BY public.badge_awards.id;


--
-- Name: badge_claims; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.badge_claims (
    id integer NOT NULL,
    user_id integer,
    badge_id integer,
    redemption_code character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: badge_claims_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.badge_claims_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: badge_claims_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.badge_claims_id_seq OWNED BY public.badge_claims.id;


--
-- Name: badges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.badges (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    additional_fields text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    display_name text
);


--
-- Name: badges_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.badges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: badges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.badges_id_seq OWNED BY public.badges.id;


--
-- Name: clinical_trials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinical_trials (
    id integer NOT NULL,
    nct_id text,
    name text,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: clinical_trials_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinical_trials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clinical_trials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinical_trials_id_seq OWNED BY public.clinical_trials.id;


--
-- Name: clinical_trials_sources; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinical_trials_sources (
    clinical_trial_id integer NOT NULL,
    source_id integer NOT NULL,
    sources_id integer,
    clinical_trials_id integer
);


--
-- Name: clinvar_entries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinvar_entries (
    id integer NOT NULL,
    clinvar_id character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: clinvar_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clinvar_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clinvar_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clinvar_entries_id_seq OWNED BY public.clinvar_entries.id;


--
-- Name: clinvar_entries_variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinvar_entries_variants (
    clinvar_entry_id integer NOT NULL,
    variant_id integer NOT NULL,
    clinvar_entries_id integer,
    variants_id integer
);


--
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    title text DEFAULT ''::character varying,
    comment text,
    commentable_id integer,
    commentable_type character varying,
    user_id integer,
    role character varying DEFAULT 'comments'::character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    iso text NOT NULL,
    name text NOT NULL
);


--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: data_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.data_versions (
    id integer NOT NULL,
    version integer DEFAULT 0
);


--
-- Name: data_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.data_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.data_versions_id_seq OWNED BY public.data_versions.id;


--
-- Name: definitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.definitions (
    id integer NOT NULL,
    term character varying NOT NULL,
    text text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: definitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.definitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: definitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.definitions_id_seq OWNED BY public.definitions.id;


--
-- Name: delayed_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.delayed_jobs (
    id integer NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    attempts integer DEFAULT 0 NOT NULL,
    handler text NOT NULL,
    last_error text,
    run_at timestamp without time zone,
    locked_at timestamp without time zone,
    failed_at timestamp without time zone,
    locked_by character varying,
    queue character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.delayed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.delayed_jobs_id_seq OWNED BY public.delayed_jobs.id;


--
-- Name: disease_aliases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.disease_aliases (
    id integer NOT NULL,
    name character varying NOT NULL
);


--
-- Name: disease_aliases_diseases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.disease_aliases_diseases (
    disease_alias_id integer NOT NULL,
    disease_id integer NOT NULL
);


--
-- Name: disease_aliases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.disease_aliases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: disease_aliases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.disease_aliases_id_seq OWNED BY public.disease_aliases.id;


--
-- Name: diseases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.diseases (
    id integer NOT NULL,
    doid text,
    display_name character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying
);


--
-- Name: diseases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.diseases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: diseases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.diseases_id_seq OWNED BY public.diseases.id;


--
-- Name: domain_expert_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.domain_expert_tags (
    id integer NOT NULL,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    domain_of_expertise_id integer,
    domain_of_expertise_type character varying,
    user_id integer
);


--
-- Name: domain_expert_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.domain_expert_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: domain_expert_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.domain_expert_tags_id_seq OWNED BY public.domain_expert_tags.id;


--
-- Name: drugs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.drugs (
    id integer NOT NULL,
    name character varying NOT NULL,
    pubchem_id character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: drugs_evidence_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.drugs_evidence_items (
    drug_id integer NOT NULL,
    evidence_item_id integer NOT NULL
);


--
-- Name: drugs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.drugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: drugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.drugs_id_seq OWNED BY public.drugs.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.events (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    action text,
    description text,
    originating_user_id integer,
    subject_id integer,
    subject_type character varying,
    state_params text,
    unlinkable boolean DEFAULT false,
    organization_id integer,
    user_role text
);


--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: evidence_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.evidence_items (
    id integer NOT NULL,
    description text NOT NULL,
    disease_id integer,
    source_id integer,
    variant_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    rating integer,
    status character varying,
    variant_hgvs character varying,
    evidence_level integer,
    evidence_type integer,
    variant_origin integer,
    evidence_direction integer,
    clinical_significance integer,
    deleted boolean DEFAULT false,
    deleted_at timestamp without time zone,
    drug_interaction_type integer
);


--
-- Name: variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variants (
    id integer NOT NULL,
    gene_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted boolean DEFAULT false,
    deleted_at timestamp without time zone,
    genome_build text,
    chromosome text,
    start integer,
    stop integer,
    reference_bases text,
    variant_bases text,
    representative_transcript text,
    chromosome2 text,
    start2 integer,
    stop2 integer,
    reference_build integer,
    representative_transcript2 text,
    ensembl_version integer,
    secondary_gene_id integer,
    civic_actionability_score double precision,
    allele_registry_id text
);


--
-- Name: evidence_items_by_statuses; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.evidence_items_by_statuses AS
 SELECT v.id AS variant_id,
    sum(
        CASE
            WHEN ((ei.status)::text = 'accepted'::text) THEN 1
            ELSE 0
        END) AS accepted_count,
    sum(
        CASE
            WHEN ((ei.status)::text = 'rejected'::text) THEN 1
            ELSE 0
        END) AS rejected_count,
    sum(
        CASE
            WHEN ((ei.status)::text = 'submitted'::text) THEN 1
            ELSE 0
        END) AS submitted_count
   FROM (public.variants v
     JOIN public.evidence_items ei ON ((v.id = ei.variant_id)))
  GROUP BY v.id;


--
-- Name: evidence_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.evidence_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: evidence_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.evidence_items_id_seq OWNED BY public.evidence_items.id;


--
-- Name: evidence_items_phenotypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.evidence_items_phenotypes (
    evidence_item_id integer NOT NULL,
    phenotype_id integer NOT NULL
);


--
-- Name: flags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.flags (
    id integer NOT NULL,
    flagging_user_id integer,
    resolving_user_id integer,
    flaggable_id integer,
    flaggable_type character varying,
    state text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: flags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.flags_id_seq OWNED BY public.flags.id;


--
-- Name: gene_aliases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gene_aliases (
    id integer NOT NULL,
    name character varying
);


--
-- Name: gene_aliases_genes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gene_aliases_genes (
    gene_alias_id integer NOT NULL,
    gene_id integer NOT NULL
);


--
-- Name: gene_aliases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.gene_aliases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gene_aliases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.gene_aliases_id_seq OWNED BY public.gene_aliases.id;


--
-- Name: genes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genes (
    id integer NOT NULL,
    entrez_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    official_name text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    clinical_description text,
    deleted boolean DEFAULT false,
    deleted_at timestamp without time zone
);


--
-- Name: genes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: genes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genes_id_seq OWNED BY public.genes.id;


--
-- Name: genes_sources; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genes_sources (
    gene_id integer NOT NULL,
    source_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: hgvs_expressions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hgvs_expressions (
    id integer NOT NULL,
    expression text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: hgvs_expressions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.hgvs_expressions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hgvs_expressions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.hgvs_expressions_id_seq OWNED BY public.hgvs_expressions.id;


--
-- Name: hgvs_expressions_variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hgvs_expressions_variants (
    hgvs_expression_id integer NOT NULL,
    variant_id integer NOT NULL,
    variants_id integer,
    hgvs_expressions_id integer
);


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notifications (
    id integer NOT NULL,
    notified_user_id integer,
    originating_user_id integer,
    event_id integer,
    subscription_id integer,
    seen boolean DEFAULT false,
    type integer,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: ontologies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ontologies (
    id integer NOT NULL,
    name character varying,
    version character varying,
    import_date timestamp without time zone,
    permalink_format character varying,
    civic_class character varying,
    id_name character varying
);


--
-- Name: ontologies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ontologies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ontologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ontologies_id_seq OWNED BY public.ontologies.id;


--
-- Name: organizations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.organizations (
    id integer NOT NULL,
    name text,
    url text,
    description text,
    profile_image_file_name character varying,
    profile_image_content_type character varying,
    profile_image_file_size integer,
    profile_image_updated_at timestamp without time zone,
    parent_id integer
);


--
-- Name: organizations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.organizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: organizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.organizations_id_seq OWNED BY public.organizations.id;


--
-- Name: phenotypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.phenotypes (
    id integer NOT NULL,
    hpo_id text,
    hpo_class text
);


--
-- Name: phenotypes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.phenotypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: phenotypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.phenotypes_id_seq OWNED BY public.phenotypes.id;


--
-- Name: pipeline_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pipeline_types (
    id integer NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: pipeline_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pipeline_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pipeline_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pipeline_types_id_seq OWNED BY public.pipeline_types.id;


--
-- Name: pipeline_types_variant_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pipeline_types_variant_types (
    pipeline_type_id integer NOT NULL,
    variant_type_id integer NOT NULL,
    variant_types_id integer,
    pipeline_types_id integer
);


--
-- Name: regulatory_agencies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.regulatory_agencies (
    id integer NOT NULL,
    abbreviation text,
    name text,
    country_id integer
);


--
-- Name: regulatory_agencies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.regulatory_agencies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: regulatory_agencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.regulatory_agencies_id_seq OWNED BY public.regulatory_agencies.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: source_suggestions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.source_suggestions (
    id integer NOT NULL,
    source_id integer,
    user_id integer,
    gene_name text,
    disease_name text,
    variant_name text,
    initial_comment text,
    status text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    reason text
);


--
-- Name: source_suggestions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.source_suggestions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: source_suggestions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.source_suggestions_id_seq OWNED BY public.source_suggestions.id;


--
-- Name: sources; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sources (
    id integer NOT NULL,
    citation_id character varying NOT NULL,
    study_type character varying,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    abstract text,
    open_access boolean,
    pmc_id text,
    publication_year integer,
    publication_month integer,
    publication_day integer,
    journal text,
    full_journal_title character varying,
    name text,
    status text DEFAULT 'fully curated'::text NOT NULL,
    is_review boolean,
    source_type integer NOT NULL,
    asco_abstract_id integer,
    asco_presenter text
);


--
-- Name: sources_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sources_id_seq OWNED BY public.sources.id;


--
-- Name: sources_variant_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sources_variant_groups (
    variant_group_id integer NOT NULL,
    source_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: sources_variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sources_variants (
    variant_id integer NOT NULL,
    source_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subscriptions (
    id integer NOT NULL,
    user_id integer,
    subscribable_id integer,
    subscribable_type character varying,
    type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    action_type text,
    action_class text
);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- Name: suggested_changes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.suggested_changes (
    id integer NOT NULL,
    suggested_changes text NOT NULL,
    moderated_id integer,
    moderated_type character varying,
    user_id integer NOT NULL,
    status character varying DEFAULT 'new'::character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: suggested_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.suggested_changes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: suggested_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.suggested_changes_id_seq OWNED BY public.suggested_changes.id;


--
-- Name: tsv_releases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tsv_releases (
    id integer NOT NULL,
    path text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: tsv_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tsv_releases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tsv_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tsv_releases_id_seq OWNED BY public.tsv_releases.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying,
    name character varying,
    url character varying,
    username character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    orcid character varying,
    area_of_expertise integer,
    deleted boolean DEFAULT false,
    deleted_at timestamp without time zone,
    role integer DEFAULT 0,
    last_seen_at timestamp without time zone,
    twitter_handle text,
    facebook_profile text,
    linkedin_profile text,
    accepted_license boolean,
    featured_expert boolean DEFAULT false,
    bio text,
    signup_complete boolean,
    organization_id integer,
    affiliation text,
    profile_image_file_name character varying,
    profile_image_content_type character varying,
    profile_image_file_size integer,
    profile_image_updated_at timestamp without time zone,
    country_id integer
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: variant_aliases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variant_aliases (
    id integer NOT NULL,
    name character varying
);


--
-- Name: variant_aliases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.variant_aliases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variant_aliases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.variant_aliases_id_seq OWNED BY public.variant_aliases.id;


--
-- Name: variant_aliases_variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variant_aliases_variants (
    variant_alias_id integer NOT NULL,
    variant_id integer NOT NULL
);


--
-- Name: variant_group_variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variant_group_variants (
    variant_id integer NOT NULL,
    variant_group_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: variant_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variant_groups (
    id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted boolean DEFAULT false,
    deleted_at timestamp without time zone
);


--
-- Name: variant_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.variant_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variant_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.variant_groups_id_seq OWNED BY public.variant_groups.id;


--
-- Name: variant_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variant_types (
    id integer NOT NULL,
    name text NOT NULL,
    display_name text NOT NULL,
    description text NOT NULL,
    soid text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    parent_id integer,
    lft integer,
    rgt integer
);


--
-- Name: variant_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.variant_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variant_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.variant_types_id_seq OWNED BY public.variant_types.id;


--
-- Name: variant_types_variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variant_types_variants (
    variant_id integer NOT NULL,
    variant_type_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: variants_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.variants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.variants_id_seq OWNED BY public.variants.id;


--
-- Name: acmg_codes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acmg_codes ALTER COLUMN id SET DEFAULT nextval('public.acmg_codes_id_seq'::regclass);


--
-- Name: advanced_searches id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.advanced_searches ALTER COLUMN id SET DEFAULT nextval('public.advanced_searches_id_seq'::regclass);


--
-- Name: assertions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assertions ALTER COLUMN id SET DEFAULT nextval('public.assertions_id_seq'::regclass);


--
-- Name: audits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audits ALTER COLUMN id SET DEFAULT nextval('public.audits_id_seq'::regclass);


--
-- Name: authorizations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authorizations ALTER COLUMN id SET DEFAULT nextval('public.authorizations_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: badge_awards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badge_awards ALTER COLUMN id SET DEFAULT nextval('public.badge_awards_id_seq'::regclass);


--
-- Name: badge_claims id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badge_claims ALTER COLUMN id SET DEFAULT nextval('public.badge_claims_id_seq'::regclass);


--
-- Name: badges id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badges ALTER COLUMN id SET DEFAULT nextval('public.badges_id_seq'::regclass);


--
-- Name: clinical_trials id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinical_trials ALTER COLUMN id SET DEFAULT nextval('public.clinical_trials_id_seq'::regclass);


--
-- Name: clinvar_entries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinvar_entries ALTER COLUMN id SET DEFAULT nextval('public.clinvar_entries_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: data_versions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.data_versions ALTER COLUMN id SET DEFAULT nextval('public.data_versions_id_seq'::regclass);


--
-- Name: definitions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.definitions ALTER COLUMN id SET DEFAULT nextval('public.definitions_id_seq'::regclass);


--
-- Name: delayed_jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delayed_jobs ALTER COLUMN id SET DEFAULT nextval('public.delayed_jobs_id_seq'::regclass);


--
-- Name: disease_aliases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.disease_aliases ALTER COLUMN id SET DEFAULT nextval('public.disease_aliases_id_seq'::regclass);


--
-- Name: diseases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.diseases ALTER COLUMN id SET DEFAULT nextval('public.diseases_id_seq'::regclass);


--
-- Name: domain_expert_tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.domain_expert_tags ALTER COLUMN id SET DEFAULT nextval('public.domain_expert_tags_id_seq'::regclass);


--
-- Name: drugs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drugs ALTER COLUMN id SET DEFAULT nextval('public.drugs_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: evidence_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.evidence_items ALTER COLUMN id SET DEFAULT nextval('public.evidence_items_id_seq'::regclass);


--
-- Name: flags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.flags ALTER COLUMN id SET DEFAULT nextval('public.flags_id_seq'::regclass);


--
-- Name: gene_aliases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gene_aliases ALTER COLUMN id SET DEFAULT nextval('public.gene_aliases_id_seq'::regclass);


--
-- Name: genes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genes ALTER COLUMN id SET DEFAULT nextval('public.genes_id_seq'::regclass);


--
-- Name: hgvs_expressions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hgvs_expressions ALTER COLUMN id SET DEFAULT nextval('public.hgvs_expressions_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: ontologies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ontologies ALTER COLUMN id SET DEFAULT nextval('public.ontologies_id_seq'::regclass);


--
-- Name: organizations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.organizations ALTER COLUMN id SET DEFAULT nextval('public.organizations_id_seq'::regclass);


--
-- Name: phenotypes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phenotypes ALTER COLUMN id SET DEFAULT nextval('public.phenotypes_id_seq'::regclass);


--
-- Name: pipeline_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pipeline_types ALTER COLUMN id SET DEFAULT nextval('public.pipeline_types_id_seq'::regclass);


--
-- Name: regulatory_agencies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regulatory_agencies ALTER COLUMN id SET DEFAULT nextval('public.regulatory_agencies_id_seq'::regclass);


--
-- Name: source_suggestions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.source_suggestions ALTER COLUMN id SET DEFAULT nextval('public.source_suggestions_id_seq'::regclass);


--
-- Name: sources id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sources ALTER COLUMN id SET DEFAULT nextval('public.sources_id_seq'::regclass);


--
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- Name: suggested_changes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suggested_changes ALTER COLUMN id SET DEFAULT nextval('public.suggested_changes_id_seq'::regclass);


--
-- Name: tsv_releases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tsv_releases ALTER COLUMN id SET DEFAULT nextval('public.tsv_releases_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: variant_aliases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_aliases ALTER COLUMN id SET DEFAULT nextval('public.variant_aliases_id_seq'::regclass);


--
-- Name: variant_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_groups ALTER COLUMN id SET DEFAULT nextval('public.variant_groups_id_seq'::regclass);


--
-- Name: variant_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_types ALTER COLUMN id SET DEFAULT nextval('public.variant_types_id_seq'::regclass);


--
-- Name: variants id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants ALTER COLUMN id SET DEFAULT nextval('public.variants_id_seq'::regclass);


--
-- Name: acmg_codes acmg_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acmg_codes
    ADD CONSTRAINT acmg_codes_pkey PRIMARY KEY (id);


--
-- Name: advanced_searches advanced_searches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.advanced_searches
    ADD CONSTRAINT advanced_searches_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: assertions assertions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assertions
    ADD CONSTRAINT assertions_pkey PRIMARY KEY (id);


--
-- Name: audits audits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audits
    ADD CONSTRAINT audits_pkey PRIMARY KEY (id);


--
-- Name: authorizations authorizations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authorizations
    ADD CONSTRAINT authorizations_pkey PRIMARY KEY (id);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: badge_awards badge_awards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badge_awards
    ADD CONSTRAINT badge_awards_pkey PRIMARY KEY (id);


--
-- Name: badge_claims badge_claims_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badge_claims
    ADD CONSTRAINT badge_claims_pkey PRIMARY KEY (id);


--
-- Name: badges badges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badges
    ADD CONSTRAINT badges_pkey PRIMARY KEY (id);


--
-- Name: clinical_trials clinical_trials_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinical_trials
    ADD CONSTRAINT clinical_trials_pkey PRIMARY KEY (id);


--
-- Name: clinvar_entries clinvar_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinvar_entries
    ADD CONSTRAINT clinvar_entries_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: data_versions data_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.data_versions
    ADD CONSTRAINT data_versions_pkey PRIMARY KEY (id);


--
-- Name: definitions definitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.definitions
    ADD CONSTRAINT definitions_pkey PRIMARY KEY (id);


--
-- Name: delayed_jobs delayed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.delayed_jobs
    ADD CONSTRAINT delayed_jobs_pkey PRIMARY KEY (id);


--
-- Name: disease_aliases disease_aliases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.disease_aliases
    ADD CONSTRAINT disease_aliases_pkey PRIMARY KEY (id);


--
-- Name: diseases diseases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.diseases
    ADD CONSTRAINT diseases_pkey PRIMARY KEY (id);


--
-- Name: domain_expert_tags domain_expert_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.domain_expert_tags
    ADD CONSTRAINT domain_expert_tags_pkey PRIMARY KEY (id);


--
-- Name: drugs drugs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drugs
    ADD CONSTRAINT drugs_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: evidence_items evidence_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.evidence_items
    ADD CONSTRAINT evidence_items_pkey PRIMARY KEY (id);


--
-- Name: flags flags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.flags
    ADD CONSTRAINT flags_pkey PRIMARY KEY (id);


--
-- Name: gene_aliases gene_aliases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gene_aliases
    ADD CONSTRAINT gene_aliases_pkey PRIMARY KEY (id);


--
-- Name: genes genes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genes
    ADD CONSTRAINT genes_pkey PRIMARY KEY (id);


--
-- Name: hgvs_expressions hgvs_expressions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hgvs_expressions
    ADD CONSTRAINT hgvs_expressions_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: ontologies ontologies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ontologies
    ADD CONSTRAINT ontologies_pkey PRIMARY KEY (id);


--
-- Name: organizations organizations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT organizations_pkey PRIMARY KEY (id);


--
-- Name: phenotypes phenotypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.phenotypes
    ADD CONSTRAINT phenotypes_pkey PRIMARY KEY (id);


--
-- Name: pipeline_types pipeline_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pipeline_types
    ADD CONSTRAINT pipeline_types_pkey PRIMARY KEY (id);


--
-- Name: regulatory_agencies regulatory_agencies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regulatory_agencies
    ADD CONSTRAINT regulatory_agencies_pkey PRIMARY KEY (id);


--
-- Name: source_suggestions source_suggestions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.source_suggestions
    ADD CONSTRAINT source_suggestions_pkey PRIMARY KEY (id);


--
-- Name: sources sources_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sources
    ADD CONSTRAINT sources_pkey PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: suggested_changes suggested_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suggested_changes
    ADD CONSTRAINT suggested_changes_pkey PRIMARY KEY (id);


--
-- Name: tsv_releases tsv_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tsv_releases
    ADD CONSTRAINT tsv_releases_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: variant_aliases variant_aliases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_aliases
    ADD CONSTRAINT variant_aliases_pkey PRIMARY KEY (id);


--
-- Name: variant_groups variant_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_groups
    ADD CONSTRAINT variant_groups_pkey PRIMARY KEY (id);


--
-- Name: variant_types variant_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_types
    ADD CONSTRAINT variant_types_pkey PRIMARY KEY (id);


--
-- Name: variants variants_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants
    ADD CONSTRAINT variants_pkey PRIMARY KEY (id);


--
-- Name: associated_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX associated_index ON public.audits USING btree (associated_id, associated_type);


--
-- Name: auditable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auditable_index ON public.audits USING btree (auditable_id, auditable_type);


--
-- Name: delayed_jobs_priority; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX delayed_jobs_priority ON public.delayed_jobs USING btree (priority, run_at);


--
-- Name: disease_alias_diseases_composite; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX disease_alias_diseases_composite ON public.disease_aliases_diseases USING btree (disease_alias_id, disease_id);


--
-- Name: gene_name_size_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX gene_name_size_idx ON public.genes USING btree (char_length((name)::text));


--
-- Name: idx_author_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_author_source_id ON public.authors_sources USING btree (source_id, author_id);


--
-- Name: idx_clinical_trials_sources; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_clinical_trials_sources ON public.clinical_trials_sources USING btree (clinical_trial_id, source_id);


--
-- Name: idx_clinvar_variants; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_clinvar_variants ON public.clinvar_entries_variants USING btree (clinvar_entry_id, variant_id);


--
-- Name: idx_domain_of_expertise; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_domain_of_expertise ON public.domain_expert_tags USING btree (domain_of_expertise_id, domain_of_expertise_type);


--
-- Name: idx_variant_alias_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_variant_alias_variant_id ON public.variant_aliases_variants USING btree (variant_alias_id, variant_id);


--
-- Name: idx_variant_id_hgvs_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_variant_id_hgvs_id ON public.hgvs_expressions_variants USING btree (variant_id, hgvs_expression_id);


--
-- Name: idx_variant_type_pipeline_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_variant_type_pipeline_type ON public.pipeline_types_variant_types USING btree (variant_type_id, pipeline_type_id);


--
-- Name: index_acmg_codes_assertions_on_acmg_code_id_and_assertion_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_acmg_codes_assertions_on_acmg_code_id_and_assertion_id ON public.acmg_codes_assertions USING btree (acmg_code_id, assertion_id);


--
-- Name: index_acmg_codes_assertions_on_assertion_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_acmg_codes_assertions_on_assertion_id ON public.acmg_codes_assertions USING btree (assertion_id);


--
-- Name: index_acmg_codes_on_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_acmg_codes_on_code ON public.acmg_codes USING btree (code);


--
-- Name: index_advanced_searches_on_token_and_search_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_advanced_searches_on_token_and_search_type ON public.advanced_searches USING btree (token, search_type);


--
-- Name: index_assertion_id_evidence_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertion_id_evidence_item_id ON public.assertions_evidence_items USING btree (assertion_id, evidence_item_id);


--
-- Name: index_assertions_drugs_on_assertion_id_and_drug_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_drugs_on_assertion_id_and_drug_id ON public.assertions_drugs USING btree (assertion_id, drug_id);


--
-- Name: index_assertions_drugs_on_drug_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_drugs_on_drug_id ON public.assertions_drugs USING btree (drug_id);


--
-- Name: index_assertions_evidence_items_on_evidence_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_evidence_items_on_evidence_item_id ON public.assertions_evidence_items USING btree (evidence_item_id);


--
-- Name: index_assertions_on_description; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_on_description ON public.assertions USING btree (description);


--
-- Name: index_assertions_on_disease_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_on_disease_id ON public.assertions USING btree (disease_id);


--
-- Name: index_assertions_on_drug_interaction_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_on_drug_interaction_type ON public.assertions USING btree (drug_interaction_type);


--
-- Name: index_assertions_on_gene_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_on_gene_id ON public.assertions USING btree (gene_id);


--
-- Name: index_assertions_on_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_on_variant_id ON public.assertions USING btree (variant_id);


--
-- Name: index_assertions_on_variant_origin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_on_variant_origin ON public.assertions USING btree (variant_origin);


--
-- Name: index_assertions_phenotypes_on_assertion_id_and_phenotype_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_phenotypes_on_assertion_id_and_phenotype_id ON public.assertions_phenotypes USING btree (assertion_id, phenotype_id);


--
-- Name: index_assertions_phenotypes_on_phenotype_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_assertions_phenotypes_on_phenotype_id ON public.assertions_phenotypes USING btree (phenotype_id);


--
-- Name: index_audits_on_action; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audits_on_action ON public.audits USING btree (action);


--
-- Name: index_audits_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audits_on_created_at ON public.audits USING btree (created_at);


--
-- Name: index_audits_on_request_uuid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audits_on_request_uuid ON public.audits USING btree (request_uuid);


--
-- Name: index_authorizations_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_authorizations_on_user_id ON public.authorizations USING btree (user_id);


--
-- Name: index_authors_sources_on_author_id_and_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_authors_sources_on_author_id_and_source_id ON public.authors_sources USING btree (author_id, source_id);


--
-- Name: index_authors_sources_on_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_authors_sources_on_source_id ON public.authors_sources USING btree (source_id);


--
-- Name: index_badge_awards_on_badge_id_and_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_badge_awards_on_badge_id_and_user_id ON public.badge_awards USING btree (badge_id, user_id);


--
-- Name: index_badge_awards_on_user_id_and_badge_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_badge_awards_on_user_id_and_badge_id ON public.badge_awards USING btree (user_id, badge_id);


--
-- Name: index_badge_claims_on_badge_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_badge_claims_on_badge_id ON public.badge_claims USING btree (badge_id);


--
-- Name: index_badge_claims_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_badge_claims_on_user_id ON public.badge_claims USING btree (user_id);


--
-- Name: index_badges_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_badges_on_name ON public.badges USING btree (name);


--
-- Name: index_clinical_trials_on_nct_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clinical_trials_on_nct_id ON public.clinical_trials USING btree (nct_id);


--
-- Name: index_clinical_trials_sources_on_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clinical_trials_sources_on_source_id ON public.clinical_trials_sources USING btree (source_id);


--
-- Name: index_clinvar_entries_on_clinvar_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clinvar_entries_on_clinvar_id ON public.clinvar_entries USING btree (clinvar_id);


--
-- Name: index_clinvar_entries_variants_on_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clinvar_entries_variants_on_variant_id ON public.clinvar_entries_variants USING btree (variant_id);


--
-- Name: index_comments_on_commentable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_comments_on_commentable_id ON public.comments USING btree (commentable_id);


--
-- Name: index_comments_on_commentable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_comments_on_commentable_type ON public.comments USING btree (commentable_type);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_definitions_on_term; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_definitions_on_term ON public.definitions USING btree (term);


--
-- Name: index_disease_aliases_diseases_on_disease_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_disease_aliases_diseases_on_disease_id ON public.disease_aliases_diseases USING btree (disease_id);


--
-- Name: index_disease_aliases_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_disease_aliases_on_name ON public.disease_aliases USING btree (name);


--
-- Name: index_domain_expert_tags_on_description; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_domain_expert_tags_on_description ON public.domain_expert_tags USING btree (description);


--
-- Name: index_domain_expert_tags_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_domain_expert_tags_on_user_id ON public.domain_expert_tags USING btree (user_id);


--
-- Name: index_drugs_evidence_items_on_drug_id_and_evidence_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_drugs_evidence_items_on_drug_id_and_evidence_item_id ON public.drugs_evidence_items USING btree (drug_id, evidence_item_id);


--
-- Name: index_drugs_evidence_items_on_evidence_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_drugs_evidence_items_on_evidence_item_id ON public.drugs_evidence_items USING btree (evidence_item_id);


--
-- Name: index_events_on_organization_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_organization_id ON public.events USING btree (organization_id);


--
-- Name: index_events_on_originating_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_originating_user_id ON public.events USING btree (originating_user_id);


--
-- Name: index_events_on_subject_id_and_subject_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_subject_id_and_subject_type ON public.events USING btree (subject_id, subject_type);


--
-- Name: index_events_on_user_role; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_user_role ON public.events USING btree (user_role);


--
-- Name: index_evidence_item_id_phenotype_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_item_id_phenotype_id ON public.evidence_items_phenotypes USING btree (evidence_item_id, phenotype_id);


--
-- Name: index_evidence_items_on_clinical_significance; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_clinical_significance ON public.evidence_items USING btree (clinical_significance);


--
-- Name: index_evidence_items_on_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_deleted ON public.evidence_items USING btree (deleted);


--
-- Name: index_evidence_items_on_disease_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_disease_id ON public.evidence_items USING btree (disease_id);


--
-- Name: index_evidence_items_on_drug_interaction_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_drug_interaction_type ON public.evidence_items USING btree (drug_interaction_type);


--
-- Name: index_evidence_items_on_evidence_direction; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_evidence_direction ON public.evidence_items USING btree (evidence_direction);


--
-- Name: index_evidence_items_on_evidence_level; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_evidence_level ON public.evidence_items USING btree (evidence_level);


--
-- Name: index_evidence_items_on_evidence_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_evidence_type ON public.evidence_items USING btree (evidence_type);


--
-- Name: index_evidence_items_on_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_source_id ON public.evidence_items USING btree (source_id);


--
-- Name: index_evidence_items_on_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_status ON public.evidence_items USING btree (status);


--
-- Name: index_evidence_items_on_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_variant_id ON public.evidence_items USING btree (variant_id);


--
-- Name: index_evidence_items_on_variant_origin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_variant_origin ON public.evidence_items USING btree (variant_origin);


--
-- Name: index_evidence_items_phenotypes_on_phenotype_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_phenotypes_on_phenotype_id ON public.evidence_items_phenotypes USING btree (phenotype_id);


--
-- Name: index_flags_on_flaggable_type_and_flaggable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_flags_on_flaggable_type_and_flaggable_id ON public.flags USING btree (flaggable_type, flaggable_id);


--
-- Name: index_flags_on_flagging_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_flags_on_flagging_user_id ON public.flags USING btree (flagging_user_id);


--
-- Name: index_flags_on_resolving_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_flags_on_resolving_user_id ON public.flags USING btree (resolving_user_id);


--
-- Name: index_flags_on_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_flags_on_state ON public.flags USING btree (state);


--
-- Name: index_gene_aliases_genes_on_gene_alias_id_and_gene_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gene_aliases_genes_on_gene_alias_id_and_gene_id ON public.gene_aliases_genes USING btree (gene_alias_id, gene_id);


--
-- Name: index_gene_aliases_genes_on_gene_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gene_aliases_genes_on_gene_id ON public.gene_aliases_genes USING btree (gene_id);


--
-- Name: index_gene_aliases_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gene_aliases_on_name ON public.gene_aliases USING btree (name);


--
-- Name: index_genes_on_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_genes_on_deleted ON public.genes USING btree (deleted);


--
-- Name: index_genes_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_genes_on_name ON public.genes USING btree (name);


--
-- Name: index_genes_sources_on_gene_id_and_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_genes_sources_on_gene_id_and_source_id ON public.genes_sources USING btree (gene_id, source_id);


--
-- Name: index_hgvs_expressions_on_expression; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_hgvs_expressions_on_expression ON public.hgvs_expressions USING btree (expression);


--
-- Name: index_hgvs_expressions_variants_on_hgvs_expression_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_hgvs_expressions_variants_on_hgvs_expression_id ON public.hgvs_expressions_variants USING btree (hgvs_expression_id);


--
-- Name: index_notifications_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notifications_on_created_at ON public.notifications USING btree (created_at);


--
-- Name: index_notifications_on_notified_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notifications_on_notified_user_id ON public.notifications USING btree (notified_user_id);


--
-- Name: index_phenotypes_on_hpo_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_phenotypes_on_hpo_id ON public.phenotypes USING btree (hpo_id);


--
-- Name: index_pipeline_types_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pipeline_types_on_name ON public.pipeline_types USING btree (name);


--
-- Name: index_pipeline_types_variant_types_on_pipeline_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pipeline_types_variant_types_on_pipeline_type_id ON public.pipeline_types_variant_types USING btree (pipeline_type_id);


--
-- Name: index_regulatory_agencies_on_abbreviation; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_regulatory_agencies_on_abbreviation ON public.regulatory_agencies USING btree (abbreviation);


--
-- Name: index_sources_on_asco_abstract_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_sources_on_asco_abstract_id ON public.sources USING btree (asco_abstract_id);


--
-- Name: index_sources_on_asco_presenter; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_sources_on_asco_presenter ON public.sources USING btree (asco_presenter);


--
-- Name: index_subscriptions_on_action_type_and_action_class; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_subscriptions_on_action_type_and_action_class ON public.subscriptions USING btree (action_type, action_class);


--
-- Name: index_subscriptions_on_subscribable_id_and_subscribable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_subscriptions_on_subscribable_id_and_subscribable_type ON public.subscriptions USING btree (subscribable_id, subscribable_type);


--
-- Name: index_subscriptions_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_subscriptions_on_user_id ON public.subscriptions USING btree (user_id);


--
-- Name: index_suggested_changes_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_suggested_changes_on_created_at ON public.suggested_changes USING btree (created_at);


--
-- Name: index_suggested_changes_on_moderated_id_and_moderated_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_suggested_changes_on_moderated_id_and_moderated_type ON public.suggested_changes USING btree (moderated_id, moderated_type);


--
-- Name: index_suggested_changes_on_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_suggested_changes_on_status ON public.suggested_changes USING btree (status);


--
-- Name: index_suggested_changes_on_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_suggested_changes_on_updated_at ON public.suggested_changes USING btree (updated_at);


--
-- Name: index_users_on_country_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_country_id ON public.users USING btree (country_id);


--
-- Name: index_users_on_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_deleted ON public.users USING btree (deleted);


--
-- Name: index_users_on_last_seen_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_last_seen_at ON public.users USING btree (last_seen_at);


--
-- Name: index_users_on_organization_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_organization_id ON public.users USING btree (organization_id);


--
-- Name: index_users_on_role; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_role ON public.users USING btree (role);


--
-- Name: index_variant_aliases_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_aliases_on_name ON public.variant_aliases USING btree (name);


--
-- Name: index_variant_aliases_variants_on_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_aliases_variants_on_variant_id ON public.variant_aliases_variants USING btree (variant_id);


--
-- Name: index_variant_group_variants_on_variant_id_and_variant_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_group_variants_on_variant_id_and_variant_group_id ON public.variant_group_variants USING btree (variant_id, variant_group_id);


--
-- Name: index_variant_groups_on_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_groups_on_deleted ON public.variant_groups USING btree (deleted);


--
-- Name: index_variant_types_on_display_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_types_on_display_name ON public.variant_types USING btree (display_name);


--
-- Name: index_variant_types_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_types_on_name ON public.variant_types USING btree (name);


--
-- Name: index_variant_types_on_soid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_types_on_soid ON public.variant_types USING btree (soid);


--
-- Name: index_variant_types_variants_on_variant_id_and_variant_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_types_variants_on_variant_id_and_variant_type_id ON public.variant_types_variants USING btree (variant_id, variant_type_id);


--
-- Name: index_variants_on_chromosome; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_chromosome ON public.variants USING btree (chromosome);


--
-- Name: index_variants_on_chromosome2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_chromosome2 ON public.variants USING btree (chromosome2);


--
-- Name: index_variants_on_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_deleted ON public.variants USING btree (deleted);


--
-- Name: index_variants_on_gene_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_gene_id ON public.variants USING btree (gene_id);


--
-- Name: index_variants_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_name ON public.variants USING btree (name);


--
-- Name: index_variants_on_reference_bases; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_reference_bases ON public.variants USING btree (reference_bases);


--
-- Name: index_variants_on_secondary_gene_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_secondary_gene_id ON public.variants USING btree (secondary_gene_id);


--
-- Name: index_variants_on_start; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_start ON public.variants USING btree (start);


--
-- Name: index_variants_on_start2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_start2 ON public.variants USING btree (start2);


--
-- Name: index_variants_on_stop; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_stop ON public.variants USING btree (stop);


--
-- Name: index_variants_on_stop2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_stop2 ON public.variants USING btree (stop2);


--
-- Name: index_variants_on_variant_bases; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_variant_bases ON public.variants USING btree (variant_bases);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX unique_schema_migrations ON public.schema_migrations USING btree (version);


--
-- Name: user_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX user_index ON public.audits USING btree (user_id, user_type);


--
-- Name: variant_lower_name_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX variant_lower_name_idx ON public.variants USING btree (lower((name)::text));


--
-- Name: suggested_changes fk_rails_025e926e34; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suggested_changes
    ADD CONSTRAINT fk_rails_025e926e34 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: assertions_drugs fk_rails_0745fbe03f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assertions_drugs
    ADD CONSTRAINT fk_rails_0745fbe03f FOREIGN KEY (assertion_id) REFERENCES public.assertions(id);


--
-- Name: evidence_items_phenotypes fk_rails_0ee26b7016; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.evidence_items_phenotypes
    ADD CONSTRAINT fk_rails_0ee26b7016 FOREIGN KEY (evidence_item_id) REFERENCES public.evidence_items(id);


--
-- Name: variant_group_variants fk_rails_13965cbccb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_group_variants
    ADD CONSTRAINT fk_rails_13965cbccb FOREIGN KEY (variant_group_id) REFERENCES public.variant_groups(id);


--
-- Name: disease_aliases_diseases fk_rails_1419565e48; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.disease_aliases_diseases
    ADD CONSTRAINT fk_rails_1419565e48 FOREIGN KEY (disease_id) REFERENCES public.diseases(id);


--
-- Name: events fk_rails_163b5130b5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_rails_163b5130b5 FOREIGN KEY (organization_id) REFERENCES public.organizations(id);


--
-- Name: evidence_items fk_rails_1790fdfc77; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.evidence_items
    ADD CONSTRAINT fk_rails_1790fdfc77 FOREIGN KEY (disease_id) REFERENCES public.diseases(id);


--
-- Name: assertions_evidence_items fk_rails_1a71ec8134; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assertions_evidence_items
    ADD CONSTRAINT fk_rails_1a71ec8134 FOREIGN KEY (assertion_id) REFERENCES public.assertions(id);


--
-- Name: domain_expert_tags fk_rails_26f2de6432; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.domain_expert_tags
    ADD CONSTRAINT fk_rails_26f2de6432 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: drugs_evidence_items fk_rails_2a4e21edef; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drugs_evidence_items
    ADD CONSTRAINT fk_rails_2a4e21edef FOREIGN KEY (drug_id) REFERENCES public.drugs(id);


--
-- Name: notifications fk_rails_2c2bc6d901; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_rails_2c2bc6d901 FOREIGN KEY (originating_user_id) REFERENCES public.users(id);


--
-- Name: events fk_rails_316901e628; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_rails_316901e628 FOREIGN KEY (originating_user_id) REFERENCES public.users(id);


--
-- Name: genes_sources fk_rails_34c6787887; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genes_sources
    ADD CONSTRAINT fk_rails_34c6787887 FOREIGN KEY (gene_id) REFERENCES public.genes(id);


--
-- Name: evidence_items fk_rails_493e210046; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.evidence_items
    ADD CONSTRAINT fk_rails_493e210046 FOREIGN KEY (variant_id) REFERENCES public.variants(id);


--
-- Name: authorizations fk_rails_4ecef5b8c5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authorizations
    ADD CONSTRAINT fk_rails_4ecef5b8c5 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: assertions_phenotypes fk_rails_5e93dee7e8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assertions_phenotypes
    ADD CONSTRAINT fk_rails_5e93dee7e8 FOREIGN KEY (assertion_id) REFERENCES public.assertions(id);


--
-- Name: organizations fk_rails_6551137b98; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT fk_rails_6551137b98 FOREIGN KEY (parent_id) REFERENCES public.organizations(id);


--
-- Name: authors_sources fk_rails_6b13cd95ea; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors_sources
    ADD CONSTRAINT fk_rails_6b13cd95ea FOREIGN KEY (author_id) REFERENCES public.authors(id);


--
-- Name: gene_aliases_genes fk_rails_6be3f8a4b2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gene_aliases_genes
    ADD CONSTRAINT fk_rails_6be3f8a4b2 FOREIGN KEY (gene_id) REFERENCES public.genes(id);


--
-- Name: variant_aliases_variants fk_rails_766d3c3835; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_aliases_variants
    ADD CONSTRAINT fk_rails_766d3c3835 FOREIGN KEY (variant_id) REFERENCES public.variants(id);


--
-- Name: acmg_codes_assertions fk_rails_76cf70418c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acmg_codes_assertions
    ADD CONSTRAINT fk_rails_76cf70418c FOREIGN KEY (acmg_code_id) REFERENCES public.acmg_codes(id);


--
-- Name: notifications fk_rails_78f4b5a537; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_rails_78f4b5a537 FOREIGN KEY (event_id) REFERENCES public.events(id);


--
-- Name: gene_aliases_genes fk_rails_7be626955a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gene_aliases_genes
    ADD CONSTRAINT fk_rails_7be626955a FOREIGN KEY (gene_alias_id) REFERENCES public.gene_aliases(id);


--
-- Name: notifications fk_rails_886d275cf4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_rails_886d275cf4 FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(id);


--
-- Name: assertions_phenotypes fk_rails_8b7dbaea19; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assertions_phenotypes
    ADD CONSTRAINT fk_rails_8b7dbaea19 FOREIGN KEY (phenotype_id) REFERENCES public.phenotypes(id);


--
-- Name: evidence_items_phenotypes fk_rails_8ccec49f60; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.evidence_items_phenotypes
    ADD CONSTRAINT fk_rails_8ccec49f60 FOREIGN KEY (phenotype_id) REFERENCES public.phenotypes(id);


--
-- Name: assertions_drugs fk_rails_8d8eb9cd68; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assertions_drugs
    ADD CONSTRAINT fk_rails_8d8eb9cd68 FOREIGN KEY (drug_id) REFERENCES public.drugs(id);


--
-- Name: subscriptions fk_rails_933bdff476; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT fk_rails_933bdff476 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: variants fk_rails_af50702d97; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants
    ADD CONSTRAINT fk_rails_af50702d97 FOREIGN KEY (gene_id) REFERENCES public.genes(id);


--
-- Name: assertions_evidence_items fk_rails_b169b222a2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assertions_evidence_items
    ADD CONSTRAINT fk_rails_b169b222a2 FOREIGN KEY (evidence_item_id) REFERENCES public.evidence_items(id);


--
-- Name: genes_sources fk_rails_b177d24d60; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genes_sources
    ADD CONSTRAINT fk_rails_b177d24d60 FOREIGN KEY (source_id) REFERENCES public.sources(id);


--
-- Name: variant_aliases_variants fk_rails_b2e941bea8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_aliases_variants
    ADD CONSTRAINT fk_rails_b2e941bea8 FOREIGN KEY (variant_alias_id) REFERENCES public.variant_aliases(id);


--
-- Name: variant_group_variants fk_rails_b32bd6c5c8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variant_group_variants
    ADD CONSTRAINT fk_rails_b32bd6c5c8 FOREIGN KEY (variant_id) REFERENCES public.variants(id);


--
-- Name: badge_claims fk_rails_ba12d9ed25; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badge_claims
    ADD CONSTRAINT fk_rails_ba12d9ed25 FOREIGN KEY (badge_id) REFERENCES public.badges(id);


--
-- Name: notifications fk_rails_c609e7bccc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_rails_c609e7bccc FOREIGN KEY (notified_user_id) REFERENCES public.users(id);


--
-- Name: authors_sources fk_rails_caf1a85d4c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors_sources
    ADD CONSTRAINT fk_rails_caf1a85d4c FOREIGN KEY (source_id) REFERENCES public.sources(id);


--
-- Name: evidence_items fk_rails_d22bcc06f7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.evidence_items
    ADD CONSTRAINT fk_rails_d22bcc06f7 FOREIGN KEY (source_id) REFERENCES public.sources(id);


--
-- Name: badge_claims fk_rails_d69abb1ae6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badge_claims
    ADD CONSTRAINT fk_rails_d69abb1ae6 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: users fk_rails_d7b9ff90af; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_d7b9ff90af FOREIGN KEY (organization_id) REFERENCES public.organizations(id);


--
-- Name: drugs_evidence_items fk_rails_d8bb1296af; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drugs_evidence_items
    ADD CONSTRAINT fk_rails_d8bb1296af FOREIGN KEY (evidence_item_id) REFERENCES public.evidence_items(id);


--
-- Name: disease_aliases_diseases fk_rails_dc2cb419d8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.disease_aliases_diseases
    ADD CONSTRAINT fk_rails_dc2cb419d8 FOREIGN KEY (disease_alias_id) REFERENCES public.disease_aliases(id);


--
-- Name: regulatory_agencies fk_rails_de36297b3f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regulatory_agencies
    ADD CONSTRAINT fk_rails_de36297b3f FOREIGN KEY (country_id) REFERENCES public.countries(id);


--
-- Name: audits fk_rails_e6d7b3fb68; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audits
    ADD CONSTRAINT fk_rails_e6d7b3fb68 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: acmg_codes_assertions fk_rails_e858656643; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acmg_codes_assertions
    ADD CONSTRAINT fk_rails_e858656643 FOREIGN KEY (assertion_id) REFERENCES public.assertions(id);


--
-- Name: variants fk_rails_ef61bc90f9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variants
    ADD CONSTRAINT fk_rails_ef61bc90f9 FOREIGN KEY (secondary_gene_id) REFERENCES public.genes(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20140805184308'),
('20141021192035'),
('20141022180523'),
('20141022195329'),
('20141108234203'),
('20141108234935'),
('20141109000136'),
('20141114222425'),
('20150107205621'),
('20150115231117'),
('20150116220720'),
('20150116230539'),
('20150116230632'),
('20150204192653'),
('20150205000010'),
('20150205205734'),
('20150205210725'),
('20150210191015'),
('20150210204445'),
('20150219202227'),
('20150220160805'),
('20150220182109'),
('20150223170106'),
('20150227204142'),
('20150227212146'),
('20150303202505'),
('20150305200429'),
('20150319181853'),
('20150416182633'),
('20150501151624'),
('20150511191452'),
('20150512184905'),
('20150528170506'),
('20150528211748'),
('20150602202928'),
('20150609210448'),
('20150611153328'),
('20150611154621'),
('20150611200713'),
('20150709222321'),
('20150709230109'),
('20150722183121'),
('20150722185207'),
('20150728191648'),
('20150805161648'),
('20151028175026'),
('20151028181107'),
('20151028181641'),
('20151029221126'),
('20151029221742'),
('20151030154300'),
('20151030165159'),
('20151112020541'),
('20151221205318'),
('20160219230229'),
('20160314194531'),
('20160314194931'),
('20160322193758'),
('20160519204758'),
('20160525151415'),
('20160601155409'),
('20160601171231'),
('20160610144412'),
('20160629180940'),
('20160629185103'),
('20160720175535'),
('20160725152423'),
('20160817152610'),
('20160817200100'),
('20160819162235'),
('20160822203054'),
('20160823211859'),
('20160824184419'),
('20160919193822'),
('20160920163506'),
('20160921183613'),
('20160922155200'),
('20161006145204'),
('20161012182149'),
('20161118222551'),
('20161212192914'),
('20161212235713'),
('20161215053509'),
('20170124204224'),
('20170125220156'),
('20170127221811'),
('20170202162311'),
('20170210214101'),
('20170223201852'),
('20170314172116'),
('20170320213357'),
('20170510220454'),
('20170512201022'),
('20170512211026'),
('20170531193921'),
('20170609200608'),
('20170622160223'),
('20170804155536'),
('20170807194638'),
('20170807195040'),
('20170811181537'),
('20170922151641'),
('20170922164545'),
('20170922184521'),
('20170922205509'),
('20170925160105'),
('20171003170926'),
('20171006191423'),
('20171009141845'),
('20171102025428'),
('20171113162115'),
('20171117183344'),
('20180207144612'),
('20180216183259'),
('20180221154308'),
('20181018132316'),
('20181029172630'),
('20181114141145'),
('20181116152712'),
('20190822211502');



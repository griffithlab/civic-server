--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: advanced_searches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE advanced_searches (
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

CREATE SEQUENCE advanced_searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: advanced_searches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE advanced_searches_id_seq OWNED BY advanced_searches.id;


--
-- Name: audits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE audits (
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

CREATE SEQUENCE audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE audits_id_seq OWNED BY audits.id;


--
-- Name: authorizations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE authorizations (
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

CREATE SEQUENCE authorizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: authorizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE authorizations_id_seq OWNED BY authorizations.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE authors (
    id integer NOT NULL,
    last_name text,
    fore_name text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE authors_id_seq OWNED BY authors.id;


--
-- Name: authors_sources; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE authors_sources (
    source_id integer,
    author_id integer,
    author_position integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE comments (
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

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: data_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE data_versions (
    id integer NOT NULL,
    version integer DEFAULT 0
);


--
-- Name: data_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE data_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE data_versions_id_seq OWNED BY data_versions.id;


--
-- Name: definitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE definitions (
    id integer NOT NULL,
    term character varying NOT NULL,
    text text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: definitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE definitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: definitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE definitions_id_seq OWNED BY definitions.id;


--
-- Name: delayed_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE delayed_jobs (
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

CREATE SEQUENCE delayed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE delayed_jobs_id_seq OWNED BY delayed_jobs.id;


--
-- Name: disease_aliases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE disease_aliases (
    id integer NOT NULL,
    name character varying NOT NULL
);


--
-- Name: disease_aliases_diseases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE disease_aliases_diseases (
    disease_alias_id integer NOT NULL,
    disease_id integer NOT NULL
);


--
-- Name: disease_aliases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE disease_aliases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: disease_aliases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE disease_aliases_id_seq OWNED BY disease_aliases.id;


--
-- Name: diseases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE diseases (
    id integer NOT NULL,
    doid text,
    name character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: diseases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE diseases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: diseases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE diseases_id_seq OWNED BY diseases.id;


--
-- Name: domain_expert_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE domain_expert_tags (
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

CREATE SEQUENCE domain_expert_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: domain_expert_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE domain_expert_tags_id_seq OWNED BY domain_expert_tags.id;


--
-- Name: drugs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE drugs (
    id integer NOT NULL,
    name character varying NOT NULL,
    pubchem_id character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: drugs_evidence_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE drugs_evidence_items (
    drug_id integer NOT NULL,
    evidence_item_id integer NOT NULL
);


--
-- Name: drugs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE drugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: drugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE drugs_id_seq OWNED BY drugs.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE events (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    action text,
    description text,
    originating_user_id integer,
    subject_id integer,
    subject_type character varying,
    state_params text,
    unlinkable boolean DEFAULT false
);


--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE events_id_seq OWNED BY events.id;


--
-- Name: evidence_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE evidence_items (
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

CREATE TABLE variants (
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
    start text,
    stop text,
    reference_bases text,
    variant_bases text,
    representative_transcript text,
    chromosome2 text,
    start2 text,
    stop2 text,
    reference_build integer,
    representative_transcript2 text,
    ensembl_version integer
);


--
-- Name: evidence_items_by_statuses; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW evidence_items_by_statuses AS
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
   FROM (variants v
     JOIN evidence_items ei ON ((v.id = ei.variant_id)))
  GROUP BY v.id;


--
-- Name: evidence_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE evidence_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: evidence_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE evidence_items_id_seq OWNED BY evidence_items.id;


--
-- Name: gene_aliases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE gene_aliases (
    id integer NOT NULL,
    name character varying
);


--
-- Name: gene_aliases_genes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE gene_aliases_genes (
    gene_alias_id integer NOT NULL,
    gene_id integer NOT NULL
);


--
-- Name: gene_aliases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE gene_aliases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gene_aliases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE gene_aliases_id_seq OWNED BY gene_aliases.id;


--
-- Name: genes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE genes (
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

CREATE SEQUENCE genes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: genes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE genes_id_seq OWNED BY genes.id;


--
-- Name: genes_sources; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE genes_sources (
    gene_id integer NOT NULL,
    source_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE notifications (
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

CREATE SEQUENCE notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE notifications_id_seq OWNED BY notifications.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: sources; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sources (
    id integer NOT NULL,
    pubmed_id character varying NOT NULL,
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
    name text
);


--
-- Name: sources_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sources_id_seq OWNED BY sources.id;


--
-- Name: sources_variant_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sources_variant_groups (
    variant_group_id integer NOT NULL,
    source_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: sources_variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sources_variants (
    variant_id integer NOT NULL,
    source_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE subscriptions (
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

CREATE SEQUENCE subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE subscriptions_id_seq OWNED BY subscriptions.id;


--
-- Name: suggested_changes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE suggested_changes (
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

CREATE SEQUENCE suggested_changes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: suggested_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE suggested_changes_id_seq OWNED BY suggested_changes.id;


--
-- Name: tsv_releases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tsv_releases (
    id integer NOT NULL,
    path text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: tsv_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tsv_releases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tsv_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tsv_releases_id_seq OWNED BY tsv_releases.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users (
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
    signup_complete boolean
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: variant_aliases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE variant_aliases (
    id integer NOT NULL,
    name character varying
);


--
-- Name: variant_aliases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE variant_aliases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variant_aliases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE variant_aliases_id_seq OWNED BY variant_aliases.id;


--
-- Name: variant_aliases_variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE variant_aliases_variants (
    variant_alias_id integer NOT NULL,
    variant_id integer NOT NULL
);


--
-- Name: variant_group_variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE variant_group_variants (
    variant_id integer NOT NULL,
    variant_group_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: variant_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE variant_groups (
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

CREATE SEQUENCE variant_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variant_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE variant_groups_id_seq OWNED BY variant_groups.id;


--
-- Name: variant_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE variant_types (
    id integer NOT NULL,
    name text NOT NULL,
    display_name text NOT NULL,
    description text NOT NULL,
    so_id text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    parent_id integer,
    lft integer,
    rgt integer
);


--
-- Name: variant_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE variant_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variant_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE variant_types_id_seq OWNED BY variant_types.id;


--
-- Name: variant_types_variants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE variant_types_variants (
    variant_id integer NOT NULL,
    variant_type_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: variants_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE variants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE variants_id_seq OWNED BY variants.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY advanced_searches ALTER COLUMN id SET DEFAULT nextval('advanced_searches_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY audits ALTER COLUMN id SET DEFAULT nextval('audits_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY authorizations ALTER COLUMN id SET DEFAULT nextval('authorizations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY authors ALTER COLUMN id SET DEFAULT nextval('authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY data_versions ALTER COLUMN id SET DEFAULT nextval('data_versions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY definitions ALTER COLUMN id SET DEFAULT nextval('definitions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY delayed_jobs ALTER COLUMN id SET DEFAULT nextval('delayed_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY disease_aliases ALTER COLUMN id SET DEFAULT nextval('disease_aliases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY diseases ALTER COLUMN id SET DEFAULT nextval('diseases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY domain_expert_tags ALTER COLUMN id SET DEFAULT nextval('domain_expert_tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY drugs ALTER COLUMN id SET DEFAULT nextval('drugs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY events ALTER COLUMN id SET DEFAULT nextval('events_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY evidence_items ALTER COLUMN id SET DEFAULT nextval('evidence_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY gene_aliases ALTER COLUMN id SET DEFAULT nextval('gene_aliases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY genes ALTER COLUMN id SET DEFAULT nextval('genes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY notifications ALTER COLUMN id SET DEFAULT nextval('notifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sources ALTER COLUMN id SET DEFAULT nextval('sources_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY subscriptions ALTER COLUMN id SET DEFAULT nextval('subscriptions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggested_changes ALTER COLUMN id SET DEFAULT nextval('suggested_changes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tsv_releases ALTER COLUMN id SET DEFAULT nextval('tsv_releases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY variant_aliases ALTER COLUMN id SET DEFAULT nextval('variant_aliases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY variant_groups ALTER COLUMN id SET DEFAULT nextval('variant_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY variant_types ALTER COLUMN id SET DEFAULT nextval('variant_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY variants ALTER COLUMN id SET DEFAULT nextval('variants_id_seq'::regclass);


--
-- Name: advanced_searches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY advanced_searches
    ADD CONSTRAINT advanced_searches_pkey PRIMARY KEY (id);


--
-- Name: audits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audits
    ADD CONSTRAINT audits_pkey PRIMARY KEY (id);


--
-- Name: authorizations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authorizations
    ADD CONSTRAINT authorizations_pkey PRIMARY KEY (id);


--
-- Name: authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: data_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY data_versions
    ADD CONSTRAINT data_versions_pkey PRIMARY KEY (id);


--
-- Name: definitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY definitions
    ADD CONSTRAINT definitions_pkey PRIMARY KEY (id);


--
-- Name: delayed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY delayed_jobs
    ADD CONSTRAINT delayed_jobs_pkey PRIMARY KEY (id);


--
-- Name: disease_aliases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY disease_aliases
    ADD CONSTRAINT disease_aliases_pkey PRIMARY KEY (id);


--
-- Name: diseases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY diseases
    ADD CONSTRAINT diseases_pkey PRIMARY KEY (id);


--
-- Name: domain_expert_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY domain_expert_tags
    ADD CONSTRAINT domain_expert_tags_pkey PRIMARY KEY (id);


--
-- Name: drugs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY drugs
    ADD CONSTRAINT drugs_pkey PRIMARY KEY (id);


--
-- Name: events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: evidence_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY evidence_items
    ADD CONSTRAINT evidence_items_pkey PRIMARY KEY (id);


--
-- Name: gene_aliases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY gene_aliases
    ADD CONSTRAINT gene_aliases_pkey PRIMARY KEY (id);


--
-- Name: genes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY genes
    ADD CONSTRAINT genes_pkey PRIMARY KEY (id);


--
-- Name: notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: sources_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sources
    ADD CONSTRAINT sources_pkey PRIMARY KEY (id);


--
-- Name: subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: suggested_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggested_changes
    ADD CONSTRAINT suggested_changes_pkey PRIMARY KEY (id);


--
-- Name: tsv_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tsv_releases
    ADD CONSTRAINT tsv_releases_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: variant_aliases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY variant_aliases
    ADD CONSTRAINT variant_aliases_pkey PRIMARY KEY (id);


--
-- Name: variant_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY variant_groups
    ADD CONSTRAINT variant_groups_pkey PRIMARY KEY (id);


--
-- Name: variant_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY variant_types
    ADD CONSTRAINT variant_types_pkey PRIMARY KEY (id);


--
-- Name: variants_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY variants
    ADD CONSTRAINT variants_pkey PRIMARY KEY (id);


--
-- Name: associated_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX associated_index ON audits USING btree (associated_id, associated_type);


--
-- Name: auditable_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auditable_index ON audits USING btree (auditable_id, auditable_type);


--
-- Name: delayed_jobs_priority; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX delayed_jobs_priority ON delayed_jobs USING btree (priority, run_at);


--
-- Name: disease_alias_diseases_composite; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX disease_alias_diseases_composite ON disease_aliases_diseases USING btree (disease_alias_id, disease_id);


--
-- Name: gene_name_size_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX gene_name_size_idx ON genes USING btree (char_length((name)::text));


--
-- Name: idx_author_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_author_source_id ON authors_sources USING btree (source_id, author_id);


--
-- Name: idx_domain_of_expertise; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_domain_of_expertise ON domain_expert_tags USING btree (domain_of_expertise_id, domain_of_expertise_type);


--
-- Name: idx_variant_alias_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_variant_alias_variant_id ON variant_aliases_variants USING btree (variant_alias_id, variant_id);


--
-- Name: index_advanced_searches_on_token_and_search_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_advanced_searches_on_token_and_search_type ON advanced_searches USING btree (token, search_type);


--
-- Name: index_audits_on_action; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audits_on_action ON audits USING btree (action);


--
-- Name: index_audits_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audits_on_created_at ON audits USING btree (created_at);


--
-- Name: index_audits_on_request_uuid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audits_on_request_uuid ON audits USING btree (request_uuid);


--
-- Name: index_authorizations_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_authorizations_on_user_id ON authorizations USING btree (user_id);


--
-- Name: index_authors_sources_on_author_id_and_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_authors_sources_on_author_id_and_source_id ON authors_sources USING btree (author_id, source_id);


--
-- Name: index_authors_sources_on_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_authors_sources_on_source_id ON authors_sources USING btree (source_id);


--
-- Name: index_comments_on_commentable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_comments_on_commentable_id ON comments USING btree (commentable_id);


--
-- Name: index_comments_on_commentable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_comments_on_commentable_type ON comments USING btree (commentable_type);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_comments_on_user_id ON comments USING btree (user_id);


--
-- Name: index_definitions_on_term; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_definitions_on_term ON definitions USING btree (term);


--
-- Name: index_disease_aliases_diseases_on_disease_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_disease_aliases_diseases_on_disease_id ON disease_aliases_diseases USING btree (disease_id);


--
-- Name: index_disease_aliases_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_disease_aliases_on_name ON disease_aliases USING btree (name);


--
-- Name: index_domain_expert_tags_on_description; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_domain_expert_tags_on_description ON domain_expert_tags USING btree (description);


--
-- Name: index_domain_expert_tags_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_domain_expert_tags_on_user_id ON domain_expert_tags USING btree (user_id);


--
-- Name: index_drugs_evidence_items_on_drug_id_and_evidence_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_drugs_evidence_items_on_drug_id_and_evidence_item_id ON drugs_evidence_items USING btree (drug_id, evidence_item_id);


--
-- Name: index_drugs_evidence_items_on_evidence_item_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_drugs_evidence_items_on_evidence_item_id ON drugs_evidence_items USING btree (evidence_item_id);


--
-- Name: index_events_on_originating_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_originating_user_id ON events USING btree (originating_user_id);


--
-- Name: index_events_on_subject_id_and_subject_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_subject_id_and_subject_type ON events USING btree (subject_id, subject_type);


--
-- Name: index_evidence_items_on_clinical_significance; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_clinical_significance ON evidence_items USING btree (clinical_significance);


--
-- Name: index_evidence_items_on_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_deleted ON evidence_items USING btree (deleted);


--
-- Name: index_evidence_items_on_disease_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_disease_id ON evidence_items USING btree (disease_id);


--
-- Name: index_evidence_items_on_drug_interaction_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_drug_interaction_type ON evidence_items USING btree (drug_interaction_type);


--
-- Name: index_evidence_items_on_evidence_direction; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_evidence_direction ON evidence_items USING btree (evidence_direction);


--
-- Name: index_evidence_items_on_evidence_level; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_evidence_level ON evidence_items USING btree (evidence_level);


--
-- Name: index_evidence_items_on_evidence_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_evidence_type ON evidence_items USING btree (evidence_type);


--
-- Name: index_evidence_items_on_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_source_id ON evidence_items USING btree (source_id);


--
-- Name: index_evidence_items_on_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_status ON evidence_items USING btree (status);


--
-- Name: index_evidence_items_on_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_variant_id ON evidence_items USING btree (variant_id);


--
-- Name: index_evidence_items_on_variant_origin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_evidence_items_on_variant_origin ON evidence_items USING btree (variant_origin);


--
-- Name: index_gene_aliases_genes_on_gene_alias_id_and_gene_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gene_aliases_genes_on_gene_alias_id_and_gene_id ON gene_aliases_genes USING btree (gene_alias_id, gene_id);


--
-- Name: index_gene_aliases_genes_on_gene_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gene_aliases_genes_on_gene_id ON gene_aliases_genes USING btree (gene_id);


--
-- Name: index_gene_aliases_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gene_aliases_on_name ON gene_aliases USING btree (name);


--
-- Name: index_genes_on_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_genes_on_deleted ON genes USING btree (deleted);


--
-- Name: index_genes_sources_on_gene_id_and_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_genes_sources_on_gene_id_and_source_id ON genes_sources USING btree (gene_id, source_id);


--
-- Name: index_notifications_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notifications_on_created_at ON notifications USING btree (created_at);


--
-- Name: index_notifications_on_notified_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notifications_on_notified_user_id ON notifications USING btree (notified_user_id);


--
-- Name: index_subscriptions_on_action_type_and_action_class; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_subscriptions_on_action_type_and_action_class ON subscriptions USING btree (action_type, action_class);


--
-- Name: index_subscriptions_on_subscribable_id_and_subscribable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_subscriptions_on_subscribable_id_and_subscribable_type ON subscriptions USING btree (subscribable_id, subscribable_type);


--
-- Name: index_subscriptions_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_subscriptions_on_user_id ON subscriptions USING btree (user_id);


--
-- Name: index_suggested_changes_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_suggested_changes_on_created_at ON suggested_changes USING btree (created_at);


--
-- Name: index_suggested_changes_on_moderated_id_and_moderated_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_suggested_changes_on_moderated_id_and_moderated_type ON suggested_changes USING btree (moderated_id, moderated_type);


--
-- Name: index_suggested_changes_on_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_suggested_changes_on_status ON suggested_changes USING btree (status);


--
-- Name: index_suggested_changes_on_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_suggested_changes_on_updated_at ON suggested_changes USING btree (updated_at);


--
-- Name: index_users_on_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_deleted ON users USING btree (deleted);


--
-- Name: index_users_on_last_seen_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_last_seen_at ON users USING btree (last_seen_at);


--
-- Name: index_users_on_role; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_role ON users USING btree (role);


--
-- Name: index_variant_aliases_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_aliases_on_name ON variant_aliases USING btree (name);


--
-- Name: index_variant_aliases_variants_on_variant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_aliases_variants_on_variant_id ON variant_aliases_variants USING btree (variant_id);


--
-- Name: index_variant_group_variants_on_variant_id_and_variant_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_group_variants_on_variant_id_and_variant_group_id ON variant_group_variants USING btree (variant_id, variant_group_id);


--
-- Name: index_variant_groups_on_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_groups_on_deleted ON variant_groups USING btree (deleted);


--
-- Name: index_variant_types_on_display_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_types_on_display_name ON variant_types USING btree (display_name);


--
-- Name: index_variant_types_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_types_on_name ON variant_types USING btree (name);


--
-- Name: index_variant_types_on_so_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_types_on_so_id ON variant_types USING btree (so_id);


--
-- Name: index_variant_types_variants_on_variant_id_and_variant_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variant_types_variants_on_variant_id_and_variant_type_id ON variant_types_variants USING btree (variant_id, variant_type_id);


--
-- Name: index_variants_on_deleted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_deleted ON variants USING btree (deleted);


--
-- Name: index_variants_on_gene_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_variants_on_gene_id ON variants USING btree (gene_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: user_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX user_index ON audits USING btree (user_id, user_type);


--
-- Name: fk_rails_025e926e34; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggested_changes
    ADD CONSTRAINT fk_rails_025e926e34 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_13965cbccb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY variant_group_variants
    ADD CONSTRAINT fk_rails_13965cbccb FOREIGN KEY (variant_group_id) REFERENCES variant_groups(id);


--
-- Name: fk_rails_1419565e48; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY disease_aliases_diseases
    ADD CONSTRAINT fk_rails_1419565e48 FOREIGN KEY (disease_id) REFERENCES diseases(id);


--
-- Name: fk_rails_1790fdfc77; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY evidence_items
    ADD CONSTRAINT fk_rails_1790fdfc77 FOREIGN KEY (disease_id) REFERENCES diseases(id);


--
-- Name: fk_rails_26f2de6432; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY domain_expert_tags
    ADD CONSTRAINT fk_rails_26f2de6432 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_2a4e21edef; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY drugs_evidence_items
    ADD CONSTRAINT fk_rails_2a4e21edef FOREIGN KEY (drug_id) REFERENCES drugs(id);


--
-- Name: fk_rails_2c2bc6d901; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_2c2bc6d901 FOREIGN KEY (originating_user_id) REFERENCES users(id);


--
-- Name: fk_rails_316901e628; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY events
    ADD CONSTRAINT fk_rails_316901e628 FOREIGN KEY (originating_user_id) REFERENCES users(id);


--
-- Name: fk_rails_34c6787887; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY genes_sources
    ADD CONSTRAINT fk_rails_34c6787887 FOREIGN KEY (gene_id) REFERENCES genes(id);


--
-- Name: fk_rails_493e210046; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY evidence_items
    ADD CONSTRAINT fk_rails_493e210046 FOREIGN KEY (variant_id) REFERENCES variants(id);


--
-- Name: fk_rails_4ecef5b8c5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authorizations
    ADD CONSTRAINT fk_rails_4ecef5b8c5 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_6b13cd95ea; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authors_sources
    ADD CONSTRAINT fk_rails_6b13cd95ea FOREIGN KEY (author_id) REFERENCES authors(id);


--
-- Name: fk_rails_6be3f8a4b2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY gene_aliases_genes
    ADD CONSTRAINT fk_rails_6be3f8a4b2 FOREIGN KEY (gene_id) REFERENCES genes(id);


--
-- Name: fk_rails_766d3c3835; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY variant_aliases_variants
    ADD CONSTRAINT fk_rails_766d3c3835 FOREIGN KEY (variant_id) REFERENCES variants(id);


--
-- Name: fk_rails_78f4b5a537; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_78f4b5a537 FOREIGN KEY (event_id) REFERENCES events(id);


--
-- Name: fk_rails_7be626955a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY gene_aliases_genes
    ADD CONSTRAINT fk_rails_7be626955a FOREIGN KEY (gene_alias_id) REFERENCES gene_aliases(id);


--
-- Name: fk_rails_886d275cf4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_886d275cf4 FOREIGN KEY (subscription_id) REFERENCES subscriptions(id);


--
-- Name: fk_rails_933bdff476; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY subscriptions
    ADD CONSTRAINT fk_rails_933bdff476 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_af50702d97; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY variants
    ADD CONSTRAINT fk_rails_af50702d97 FOREIGN KEY (gene_id) REFERENCES genes(id);


--
-- Name: fk_rails_b177d24d60; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY genes_sources
    ADD CONSTRAINT fk_rails_b177d24d60 FOREIGN KEY (source_id) REFERENCES sources(id);


--
-- Name: fk_rails_b2e941bea8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY variant_aliases_variants
    ADD CONSTRAINT fk_rails_b2e941bea8 FOREIGN KEY (variant_alias_id) REFERENCES variant_aliases(id);


--
-- Name: fk_rails_b32bd6c5c8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY variant_group_variants
    ADD CONSTRAINT fk_rails_b32bd6c5c8 FOREIGN KEY (variant_id) REFERENCES variants(id);


--
-- Name: fk_rails_c609e7bccc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_rails_c609e7bccc FOREIGN KEY (notified_user_id) REFERENCES users(id);


--
-- Name: fk_rails_caf1a85d4c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authors_sources
    ADD CONSTRAINT fk_rails_caf1a85d4c FOREIGN KEY (source_id) REFERENCES sources(id);


--
-- Name: fk_rails_d22bcc06f7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY evidence_items
    ADD CONSTRAINT fk_rails_d22bcc06f7 FOREIGN KEY (source_id) REFERENCES sources(id);


--
-- Name: fk_rails_d8bb1296af; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY drugs_evidence_items
    ADD CONSTRAINT fk_rails_d8bb1296af FOREIGN KEY (evidence_item_id) REFERENCES evidence_items(id);


--
-- Name: fk_rails_dc2cb419d8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY disease_aliases_diseases
    ADD CONSTRAINT fk_rails_dc2cb419d8 FOREIGN KEY (disease_alias_id) REFERENCES disease_aliases(id);


--
-- Name: fk_rails_e6d7b3fb68; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY audits
    ADD CONSTRAINT fk_rails_e6d7b3fb68 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO schema_migrations (version) VALUES ('20140805184308');

INSERT INTO schema_migrations (version) VALUES ('20141021192035');

INSERT INTO schema_migrations (version) VALUES ('20141022180523');

INSERT INTO schema_migrations (version) VALUES ('20141022195329');

INSERT INTO schema_migrations (version) VALUES ('20141108234203');

INSERT INTO schema_migrations (version) VALUES ('20141108234935');

INSERT INTO schema_migrations (version) VALUES ('20141109000136');

INSERT INTO schema_migrations (version) VALUES ('20141114222425');

INSERT INTO schema_migrations (version) VALUES ('20150107205621');

INSERT INTO schema_migrations (version) VALUES ('20150115231117');

INSERT INTO schema_migrations (version) VALUES ('20150116220720');

INSERT INTO schema_migrations (version) VALUES ('20150116230539');

INSERT INTO schema_migrations (version) VALUES ('20150116230632');

INSERT INTO schema_migrations (version) VALUES ('20150204192653');

INSERT INTO schema_migrations (version) VALUES ('20150205000010');

INSERT INTO schema_migrations (version) VALUES ('20150205205734');

INSERT INTO schema_migrations (version) VALUES ('20150205210725');

INSERT INTO schema_migrations (version) VALUES ('20150210191015');

INSERT INTO schema_migrations (version) VALUES ('20150210204445');

INSERT INTO schema_migrations (version) VALUES ('20150219202227');

INSERT INTO schema_migrations (version) VALUES ('20150220160805');

INSERT INTO schema_migrations (version) VALUES ('20150220182109');

INSERT INTO schema_migrations (version) VALUES ('20150223170106');

INSERT INTO schema_migrations (version) VALUES ('20150227204142');

INSERT INTO schema_migrations (version) VALUES ('20150227212146');

INSERT INTO schema_migrations (version) VALUES ('20150303202505');

INSERT INTO schema_migrations (version) VALUES ('20150305200429');

INSERT INTO schema_migrations (version) VALUES ('20150319181853');

INSERT INTO schema_migrations (version) VALUES ('20150416182633');

INSERT INTO schema_migrations (version) VALUES ('20150501151624');

INSERT INTO schema_migrations (version) VALUES ('20150511191452');

INSERT INTO schema_migrations (version) VALUES ('20150512184905');

INSERT INTO schema_migrations (version) VALUES ('20150528170506');

INSERT INTO schema_migrations (version) VALUES ('20150528211748');

INSERT INTO schema_migrations (version) VALUES ('20150602202928');

INSERT INTO schema_migrations (version) VALUES ('20150609210448');

INSERT INTO schema_migrations (version) VALUES ('20150611153328');

INSERT INTO schema_migrations (version) VALUES ('20150611154621');

INSERT INTO schema_migrations (version) VALUES ('20150611200713');

INSERT INTO schema_migrations (version) VALUES ('20150709222321');

INSERT INTO schema_migrations (version) VALUES ('20150709230109');

INSERT INTO schema_migrations (version) VALUES ('20150722183121');

INSERT INTO schema_migrations (version) VALUES ('20150722185207');

INSERT INTO schema_migrations (version) VALUES ('20150722185935');

INSERT INTO schema_migrations (version) VALUES ('20150728191648');

INSERT INTO schema_migrations (version) VALUES ('20150805161648');

INSERT INTO schema_migrations (version) VALUES ('20151028175026');

INSERT INTO schema_migrations (version) VALUES ('20151028181107');

INSERT INTO schema_migrations (version) VALUES ('20151028181641');

INSERT INTO schema_migrations (version) VALUES ('20151029221126');

INSERT INTO schema_migrations (version) VALUES ('20151029221742');

INSERT INTO schema_migrations (version) VALUES ('20151030154300');

INSERT INTO schema_migrations (version) VALUES ('20151030165159');

INSERT INTO schema_migrations (version) VALUES ('20151112020541');

INSERT INTO schema_migrations (version) VALUES ('20151221205318');

INSERT INTO schema_migrations (version) VALUES ('20160219230229');

INSERT INTO schema_migrations (version) VALUES ('20160314194531');

INSERT INTO schema_migrations (version) VALUES ('20160314194931');

INSERT INTO schema_migrations (version) VALUES ('20160322193758');

INSERT INTO schema_migrations (version) VALUES ('20160519204758');

INSERT INTO schema_migrations (version) VALUES ('20160525151415');

INSERT INTO schema_migrations (version) VALUES ('20160601155409');

INSERT INTO schema_migrations (version) VALUES ('20160601171231');

INSERT INTO schema_migrations (version) VALUES ('20160610144412');

INSERT INTO schema_migrations (version) VALUES ('20160629180940');

INSERT INTO schema_migrations (version) VALUES ('20160629185103');

INSERT INTO schema_migrations (version) VALUES ('20160720175535');

INSERT INTO schema_migrations (version) VALUES ('20160725152423');

INSERT INTO schema_migrations (version) VALUES ('20160817152610');

INSERT INTO schema_migrations (version) VALUES ('20160822203054');

INSERT INTO schema_migrations (version) VALUES ('20160823211859');

INSERT INTO schema_migrations (version) VALUES ('20160824184419');


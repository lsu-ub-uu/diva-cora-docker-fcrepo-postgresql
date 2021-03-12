--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.21
-- Dumped by pg_dump version 9.6.21

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: datastreampaths; Type: TABLE; Schema: public; Owner: fedoraAdmin
--

CREATE TABLE public.datastreampaths (
    tokendbid bigint NOT NULL,
    token character varying(199) DEFAULT ''::character varying NOT NULL,
    path character varying(255) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.datastreampaths OWNER TO "fedoraAdmin";

--
-- Name: datastreampaths_tokendbid_seq; Type: SEQUENCE; Schema: public; Owner: fedoraAdmin
--

CREATE SEQUENCE public.datastreampaths_tokendbid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datastreampaths_tokendbid_seq OWNER TO "fedoraAdmin";

--
-- Name: datastreampaths_tokendbid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fedoraAdmin
--

ALTER SEQUENCE public.datastreampaths_tokendbid_seq OWNED BY public.datastreampaths.tokendbid;


--
-- Name: dcdates; Type: TABLE; Schema: public; Owner: fedoraAdmin
--

CREATE TABLE public.dcdates (
    pid character varying(64) NOT NULL,
    dcdate bigint NOT NULL
);


ALTER TABLE public.dcdates OWNER TO "fedoraAdmin";

--
-- Name: dofields; Type: TABLE; Schema: public; Owner: fedoraAdmin
--

CREATE TABLE public.dofields (
    pid character varying(64) NOT NULL,
    label character varying(255),
    state character varying(1) DEFAULT 'A'::character varying NOT NULL,
    ownerid character varying(64),
    cdate bigint NOT NULL,
    mdate bigint NOT NULL,
    dcmdate bigint,
    dctitle text,
    dccreator text,
    dcsubject text,
    dcdescription text,
    dcpublisher text,
    dccontributor text,
    dcdate text,
    dctype text,
    dcformat text,
    dcidentifier text,
    dcsource text,
    dclanguage text,
    dcrelation text,
    dccoverage text,
    dcrights text
);


ALTER TABLE public.dofields OWNER TO "fedoraAdmin";

--
-- Name: doregistry; Type: TABLE; Schema: public; Owner: fedoraAdmin
--

CREATE TABLE public.doregistry (
    dopid character varying(64) NOT NULL,
    systemversion smallint DEFAULT 0 NOT NULL,
    ownerid character varying(64),
    objectstate character varying(1) DEFAULT 'A'::character varying NOT NULL,
    label character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.doregistry OWNER TO "fedoraAdmin";

--
-- Name: modeldeploymentmap; Type: TABLE; Schema: public; Owner: fedoraAdmin
--

CREATE TABLE public.modeldeploymentmap (
    cmodel character varying(64) NOT NULL,
    sdef character varying(64) NOT NULL,
    sdep character varying(64) NOT NULL
);


ALTER TABLE public.modeldeploymentmap OWNER TO "fedoraAdmin";

--
-- Name: objectpaths; Type: TABLE; Schema: public; Owner: fedoraAdmin
--

CREATE TABLE public.objectpaths (
    tokendbid bigint NOT NULL,
    token character varying(64) DEFAULT ''::character varying NOT NULL,
    path character varying(255) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.objectpaths OWNER TO "fedoraAdmin";

--
-- Name: objectpaths_tokendbid_seq; Type: SEQUENCE; Schema: public; Owner: fedoraAdmin
--

CREATE SEQUENCE public.objectpaths_tokendbid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objectpaths_tokendbid_seq OWNER TO "fedoraAdmin";

--
-- Name: objectpaths_tokendbid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fedoraAdmin
--

ALTER SEQUENCE public.objectpaths_tokendbid_seq OWNED BY public.objectpaths.tokendbid;


--
-- Name: pidgen; Type: TABLE; Schema: public; Owner: fedoraAdmin
--

CREATE TABLE public.pidgen (
    namespace character varying(255) NOT NULL,
    highestid integer NOT NULL
);


ALTER TABLE public.pidgen OWNER TO "fedoraAdmin";

--
-- Name: datastreampaths tokendbid; Type: DEFAULT; Schema: public; Owner: fedoraAdmin
--

ALTER TABLE ONLY public.datastreampaths ALTER COLUMN tokendbid SET DEFAULT nextval('public.datastreampaths_tokendbid_seq'::regclass);


--
-- Name: objectpaths tokendbid; Type: DEFAULT; Schema: public; Owner: fedoraAdmin
--

ALTER TABLE ONLY public.objectpaths ALTER COLUMN tokendbid SET DEFAULT nextval('public.objectpaths_tokendbid_seq'::regclass);


--
-- Data for Name: datastreampaths; Type: TABLE DATA; Schema: public; Owner: fedoraAdmin
--

COPY public.datastreampaths (tokendbid, token, path) FROM stdin;
\.


--
-- Name: datastreampaths_tokendbid_seq; Type: SEQUENCE SET; Schema: public; Owner: fedoraAdmin
--

SELECT pg_catalog.setval('public.datastreampaths_tokendbid_seq', 1, false);


--
-- Data for Name: dcdates; Type: TABLE DATA; Schema: public; Owner: fedoraAdmin
--

COPY public.dcdates (pid, dcdate) FROM stdin;
\.


--
-- Data for Name: dofields; Type: TABLE DATA; Schema: public; Owner: fedoraAdmin
--

COPY public.dofields (pid, label, state, ownerid, cdate, mdate, dcmdate, dctitle, dccreator, dcsubject, dcdescription, dcpublisher, dccontributor, dcdate, dctype, dcformat, dcidentifier, dcsource, dclanguage, dcrelation, dccoverage, dcrights) FROM stdin;
authority-person:60566	authority-person:60566	a	fedoraadmin	1551281688788	1551282004614	1551281688788	 authority-person:60566 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:60566 .	\N	\N	\N	\N	\N
fedora-system:ContentModel-3.0	content model object for content model objects	a	fedoraadmin	1214975383796	1615554677088	1214975384015	 content model object for content model objects .	\N	\N	\N	\N	\N	\N	\N	\N	 fedora-system:contentmodel-3.0 .	\N	\N	\N	\N	\N
fedora-system:FedoraObject-3.0	content model object for all objects	a	fedoraadmin	1214975383796	1615554677374	1214975384359	 content model object for all objects .	\N	\N	\N	\N	\N	\N	\N	\N	 fedora-system:fedoraobject-3.0 .	\N	\N	\N	\N	\N
fedora-system:ServiceDefinition-3.0	content model object for service definition objects	a	fedoraadmin	1214975383796	1615554677449	1214975384375	 content model object for service definition objects .	\N	\N	\N	\N	\N	\N	\N	\N	 fedora-system:servicedefinition-3.0 .	\N	\N	\N	\N	\N
fedora-system:ServiceDeployment-3.0	content model object for service deployment objects	a	fedoraadmin	1214975383796	1615554677524	1214975384406	 content model object for service deployment objects .	\N	\N	\N	\N	\N	\N	\N	\N	 fedora-system:servicedeployment-3.0 .	\N	\N	\N	\N	\N
authority-person:106	authority person 106	a	fedoraadmin	1615554728426	1615554781553	1615554728426	 authority person 106 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:106 .	\N	\N	\N	\N	\N
\.


--
-- Data for Name: doregistry; Type: TABLE DATA; Schema: public; Owner: fedoraAdmin
--

COPY public.doregistry (dopid, systemversion, ownerid, objectstate, label) FROM stdin;
authority-person:60566	2	fedoraAdmin	A	authority-person:60566
fedora-system:ContentModel-3.0	1		A	Content Model Object for Content Model Objects
fedora-system:FedoraObject-3.0	1		A	Content Model Object for All Objects
fedora-system:ServiceDefinition-3.0	1		A	Content Model Object for Service Definition Objects
fedora-system:ServiceDeployment-3.0	1		A	Content Model Object for Service Deployment Objects
authority-person:106	2	fedoraAdmin	A	Authority person 106
\.


--
-- Data for Name: modeldeploymentmap; Type: TABLE DATA; Schema: public; Owner: fedoraAdmin
--

COPY public.modeldeploymentmap (cmodel, sdef, sdep) FROM stdin;
\.


--
-- Data for Name: objectpaths; Type: TABLE DATA; Schema: public; Owner: fedoraAdmin
--

COPY public.objectpaths (tokendbid, token, path) FROM stdin;
5	authority-person:60566	/home/fedora/fedora32/data/objects/2019/0227/15/34/authority-person_60566
6	fedora-system:ContentModel-3.0	/home/fedora/fedora32/data/objects/2021/0312/13/11/fedora-system_ContentModel-3.0
7	fedora-system:FedoraObject-3.0	/home/fedora/fedora32/data/objects/2021/0312/13/11/fedora-system_FedoraObject-3.0
8	fedora-system:ServiceDefinition-3.0	/home/fedora/fedora32/data/objects/2021/0312/13/11/fedora-system_ServiceDefinition-3.0
9	fedora-system:ServiceDeployment-3.0	/home/fedora/fedora32/data/objects/2021/0312/13/11/fedora-system_ServiceDeployment-3.0
10	authority-person:106	/home/fedora/fedora32/data/objects/2021/0312/13/12/authority-person_106
\.


--
-- Name: objectpaths_tokendbid_seq; Type: SEQUENCE SET; Schema: public; Owner: fedoraAdmin
--

SELECT pg_catalog.setval('public.objectpaths_tokendbid_seq', 10, true);


--
-- Data for Name: pidgen; Type: TABLE DATA; Schema: public; Owner: fedoraAdmin
--

COPY public.pidgen (namespace, highestid) FROM stdin;
authority-person	60566
\.


--
-- Name: datastreampaths datastreampaths_pkey; Type: CONSTRAINT; Schema: public; Owner: fedoraAdmin
--

ALTER TABLE ONLY public.datastreampaths
    ADD CONSTRAINT datastreampaths_pkey PRIMARY KEY (tokendbid);


--
-- Name: datastreampaths datastreampaths_token_key; Type: CONSTRAINT; Schema: public; Owner: fedoraAdmin
--

ALTER TABLE ONLY public.datastreampaths
    ADD CONSTRAINT datastreampaths_token_key UNIQUE (token);


--
-- Name: doregistry doregistry_pkey; Type: CONSTRAINT; Schema: public; Owner: fedoraAdmin
--

ALTER TABLE ONLY public.doregistry
    ADD CONSTRAINT doregistry_pkey PRIMARY KEY (dopid);


--
-- Name: objectpaths objectpaths_pkey; Type: CONSTRAINT; Schema: public; Owner: fedoraAdmin
--

ALTER TABLE ONLY public.objectpaths
    ADD CONSTRAINT objectpaths_pkey PRIMARY KEY (tokendbid);


--
-- Name: objectpaths objectpaths_token_key; Type: CONSTRAINT; Schema: public; Owner: fedoraAdmin
--

ALTER TABLE ONLY public.objectpaths
    ADD CONSTRAINT objectpaths_token_key UNIQUE (token);


--
-- Name: dcdates_pid; Type: INDEX; Schema: public; Owner: fedoraAdmin
--

CREATE INDEX dcdates_pid ON public.dcdates USING btree (pid);


--
-- Name: dofields_pid; Type: INDEX; Schema: public; Owner: fedoraAdmin
--

CREATE INDEX dofields_pid ON public.dofields USING btree (pid);


--
-- PostgreSQL database dump complete
--


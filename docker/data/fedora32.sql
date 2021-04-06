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
authority-person:106	authority person 106	a	fedoraadmin	1615554728426	1615554781553	1615554728426	 authority person 106 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:106 .	\N	\N	\N	\N	\N
authority-person:110	authority person 110	a	fedoraadmin	1616590730499	1616590777635	1616590730499	 authority person 110 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:110 .	\N	\N	\N	\N	\N
authority-person:111	authority person 111	a	fedoraadmin	1616590832103	1616590859685	1616590832103	 authority person 111 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:111 .	\N	\N	\N	\N	\N
authority-person:112	authority person 112	a	fedoraadmin	1616590961174	1616590984225	1616590961174	 authority person 112 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:112 .	\N	\N	\N	\N	\N
authority-person:114	authority person 114	a	fedoraadmin	1616591044305	1616591064079	1616591044305	 authority person 114 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:114 .	\N	\N	\N	\N	\N
authority-person:115	authority person 115	a	fedoraadmin	1616591096947	1616591114391	1616591096947	 authority person 115 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:115 .	\N	\N	\N	\N	\N
authority-person:116	authority person 116	a	fedoraadmin	1616591131434	1616591190086	1616591131434	 authority person 116 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:116 .	\N	\N	\N	\N	\N
authority-person:117	authority person 117	a	fedoraadmin	1616591211170	1616591227359	1616591211170	 authority person 117 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:117 .	\N	\N	\N	\N	\N
authority-person:118	authority person 118	a	fedoraadmin	1616591251827	1616591270304	1616591251827	 authority person 118 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:118 .	\N	\N	\N	\N	\N
authority-person:107	authority person 107	a	fedoraadmin	1616591368236	1616591385997	1616591368236	 authority person 107 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:107 .	\N	\N	\N	\N	\N
authority-person:108	authority person 108	a	fedoraadmin	1616591407722	1616591439897	1616591407722	 authority person 108 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:108 .	\N	\N	\N	\N	\N
authority-person:109	authority person 109	a	fedoraadmin	1616591458311	1616591476259	1616591458311	 authority person 109 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:109 .	\N	\N	\N	\N	\N
authority-person:119	authority person 119	a	fedoraadmin	1616669331356	1616669360443	1616669331356	 authority person 119 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:119 .	\N	\N	\N	\N	\N
authority-person:120	authority person 120	a	fedoraadmin	1616669383066	1616669400937	1616669383066	 authority person 120 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:120 .	\N	\N	\N	\N	\N
authority-person:121	authority person 121	a	fedoraadmin	1616669771527	1616669795848	1616669771527	 authority person 121 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:121 .	\N	\N	\N	\N	\N
authority-person:122	authority person 122	a	fedoraadmin	1616669815958	1616669836722	1616669815958	 authority person 122 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:122 .	\N	\N	\N	\N	\N
authority-person:123	authority person 123	a	fedoraadmin	1616669855554	1616669874944	1616669855554	 authority person 123 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:123 .	\N	\N	\N	\N	\N
fedora-system:ContentModel-3.0	content model object for content model objects	a	fedoraadmin	1214975383796	1617697361957	1214975384015	 content model object for content model objects .	\N	\N	\N	\N	\N	\N	\N	\N	 fedora-system:contentmodel-3.0 .	\N	\N	\N	\N	\N
fedora-system:FedoraObject-3.0	content model object for all objects	a	fedoraadmin	1214975383796	1617697362306	1214975384359	 content model object for all objects .	\N	\N	\N	\N	\N	\N	\N	\N	 fedora-system:fedoraobject-3.0 .	\N	\N	\N	\N	\N
fedora-system:ServiceDefinition-3.0	content model object for service definition objects	a	fedoraadmin	1214975383796	1617697362384	1214975384375	 content model object for service definition objects .	\N	\N	\N	\N	\N	\N	\N	\N	 fedora-system:servicedefinition-3.0 .	\N	\N	\N	\N	\N
fedora-system:ServiceDeployment-3.0	content model object for service deployment objects	a	fedoraadmin	1214975383796	1617697362465	1214975384406	 content model object for service deployment objects .	\N	\N	\N	\N	\N	\N	\N	\N	 fedora-system:servicedeployment-3.0 .	\N	\N	\N	\N	\N
authority-person:113	authority person 113	d	fedoraadmin	1616591003125	1617697476516	1616591003125	 authority person 113 .	\N	\N	\N	\N	\N	\N	\N	\N	 authority-person:113 .	\N	\N	\N	\N	\N
\.


--
-- Data for Name: doregistry; Type: TABLE DATA; Schema: public; Owner: fedoraAdmin
--

COPY public.doregistry (dopid, systemversion, ownerid, objectstate, label) FROM stdin;
authority-person:60566	2	fedoraAdmin	A	authority-person:60566
authority-person:106	2	fedoraAdmin	A	Authority person 106
authority-person:110	2	fedoraAdmin	A	Authority person 110
authority-person:111	2	fedoraAdmin	A	Authority person 111
authority-person:112	2	fedoraAdmin	A	Authority person 112
authority-person:114	2	fedoraAdmin	A	Authority person 114
authority-person:115	2	fedoraAdmin	A	Authority person 115
authority-person:116	2	fedoraAdmin	A	Authority person 116
authority-person:117	2	fedoraAdmin	A	Authority person 117
authority-person:118	2	fedoraAdmin	A	Authority person 118
authority-person:107	2	fedoraAdmin	A	Authority person 107
authority-person:108	2	fedoraAdmin	A	Authority person 108
authority-person:109	2	fedoraAdmin	A	Authority person 109
authority-person:119	2	fedoraAdmin	A	Authority person 119
authority-person:120	2	fedoraAdmin	A	Authority person 120
authority-person:121	2	fedoraAdmin	A	Authority person 121
authority-person:122	2	fedoraAdmin	A	Authority person 122
authority-person:123	2	fedoraAdmin	A	Authority person 123
fedora-system:ContentModel-3.0	1		A	Content Model Object for Content Model Objects
fedora-system:FedoraObject-3.0	1		A	Content Model Object for All Objects
fedora-system:ServiceDefinition-3.0	1		A	Content Model Object for Service Definition Objects
fedora-system:ServiceDeployment-3.0	1		A	Content Model Object for Service Deployment Objects
authority-person:113	4	fedoraAdmin	A	Authority person 113
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
10	authority-person:106	/home/fedora/fedora32/data/objects/2021/0312/13/12/authority-person_106
15	authority-person:110	/home/fedora/fedora32/data/objects/2021/0324/12/58/authority-person_110
16	authority-person:111	/home/fedora/fedora32/data/objects/2021/0324/13/00/authority-person_111
17	authority-person:112	/home/fedora/fedora32/data/objects/2021/0324/13/02/authority-person_112
18	authority-person:113	/home/fedora/fedora32/data/objects/2021/0324/13/03/authority-person_113
19	authority-person:114	/home/fedora/fedora32/data/objects/2021/0324/13/04/authority-person_114
20	authority-person:115	/home/fedora/fedora32/data/objects/2021/0324/13/04/authority-person_115
21	authority-person:116	/home/fedora/fedora32/data/objects/2021/0324/13/05/authority-person_116
22	authority-person:117	/home/fedora/fedora32/data/objects/2021/0324/13/06/authority-person_117
23	authority-person:118	/home/fedora/fedora32/data/objects/2021/0324/13/07/authority-person_118
24	authority-person:107	/home/fedora/fedora32/data/objects/2021/0324/13/09/authority-person_107
25	authority-person:108	/home/fedora/fedora32/data/objects/2021/0324/13/10/authority-person_108
26	authority-person:109	/home/fedora/fedora32/data/objects/2021/0324/13/10/authority-person_109
31	authority-person:119	/home/fedora/fedora32/data/objects/2021/0325/10/48/authority-person_119
32	authority-person:120	/home/fedora/fedora32/data/objects/2021/0325/10/49/authority-person_120
34	authority-person:121	/home/fedora/fedora32/data/objects/2021/0325/10/56/authority-person_121
35	authority-person:122	/home/fedora/fedora32/data/objects/2021/0325/10/56/authority-person_122
36	authority-person:123	/home/fedora/fedora32/data/objects/2021/0325/10/57/authority-person_123
41	fedora-system:ContentModel-3.0	/home/fedora/fedora32/data/objects/2021/0406/08/22/fedora-system_ContentModel-3.0
42	fedora-system:FedoraObject-3.0	/home/fedora/fedora32/data/objects/2021/0406/08/22/fedora-system_FedoraObject-3.0
43	fedora-system:ServiceDefinition-3.0	/home/fedora/fedora32/data/objects/2021/0406/08/22/fedora-system_ServiceDefinition-3.0
44	fedora-system:ServiceDeployment-3.0	/home/fedora/fedora32/data/objects/2021/0406/08/22/fedora-system_ServiceDeployment-3.0
\.


--
-- Name: objectpaths_tokendbid_seq; Type: SEQUENCE SET; Schema: public; Owner: fedoraAdmin
--

SELECT pg_catalog.setval('public.objectpaths_tokendbid_seq', 44, true);


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


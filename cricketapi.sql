--
-- PostgreSQL database dump
--

-- Dumped from database version 13.12
-- Dumped by pg_dump version 14.9

-- Started on 2024-03-13 14:50:46 IST

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

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 16617)
-- Name: createteam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.createteam (
    email_id character varying(255) NOT NULL,
    matchid character varying(255) NOT NULL,
    tournamentid character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    venueid character varying(255) NOT NULL,
    capton character varying(255),
    captonid character varying(255),
    team1 character varying(255),
    team10 character varying(255),
    team10id character varying(255),
    team1id character varying(255),
    team2 character varying(255),
    team2id character varying(255),
    team3 character varying(255),
    team3id character varying(255),
    team4 character varying(255),
    team4id character varying(255),
    team5 character varying(255),
    team5id character varying(255),
    team6 character varying(255),
    team6id character varying(255),
    team7 character varying(255),
    team7id character varying(255),
    team8 character varying(255),
    team8id character varying(255),
    team9 character varying(255),
    team9id character varying(255),
    leagueid character varying(255),
    teamname character varying(255),
    createteamid character varying(255) NOT NULL
);


ALTER TABLE public.createteam OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16625)
-- Name: leaguedb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.leaguedb (
    leagueid character varying(255) NOT NULL,
    leaguecost character varying(255),
    leaguecreateuser character varying(255),
    leaguematch character varying(255),
    matchid character varying(255),
    teamcountmax character varying(255),
    teamcountmin character varying(255),
    tournamentid character varying(255)
);


ALTER TABLE public.leaguedb OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16635)
-- Name: livematches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livematches (
    lmid character varying(5000),
    matchid character varying(200) NOT NULL,
    tournamentid character varying(200) NOT NULL,
    matchstatus character varying(50),
    lastactiontime time without time zone,
    createdtime time without time zone
);


ALTER TABLE public.livematches OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16609)
-- Name: teamrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teamrole (
    roleid character varying NOT NULL,
    rolename character varying
);


ALTER TABLE public.teamrole OWNER TO postgres;

--
-- TOC entry 3183 (class 0 OID 16617)
-- Dependencies: 201
-- Data for Name: createteam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.createteam (email_id, matchid, tournamentid, user_id, venueid, capton, captonid, team1, team10, team10id, team1id, team2, team2id, team3, team3id, team4, team4id, team5, team5id, team6, team6id, team7, team7id, team8, team8id, team9, team9id, leagueid, teamname, createteamid) FROM stdin;
sdada	asdasd	dasdasd	asdsa	asdasd	asdasd	sdsaad	sas	asdasd	asdasd	asdasd	asdasd	sadasdas	asdasdasd	asdasdasd	asdasdasd	asdasdasd	asdasdasd	asdasd	asdasd	asdasd	asdasd	sadasd	asdasdas	asdasd	adsasdas	asdasda	01696ae6-38a7-4a9e-b2af-8f7150d35852	VKROCKS	51603db6-aac5-43e5-9019-473ef918f1de
sdada	asdasd	dasdasd	asdsa	asdasd	asdasd	sdsaad	sas	asdasd	asdasd	asdasd	asdasd	sadasdas	asdasdasd	asdasdasd	asdasdasd	asdasdasd	asdasdasd	asdasd	asdasd	asdasd	asdasd	sadasd	asdasdas	asdasd	adsasdas	asdasda	01696ae6-38a7-4a9e-b2af-8f7150d35852	VKROCKS	71fd890a-b527-4e54-aaf5-eb991e65a42f
sdada	asdasd	dasdasd	asdsa	asdasd	asdasd	sdsaad	sas	asdasd	asdasd	asdasd	asdasd	sadasdas	asdasdasd	asdasdasd	asdasdasd	asdasdasd	asdasdasd	asdasd	asdasd	asdasd	asdasd	sadasd	asdasdas	asdasd	adsasdas	asdasda	01696ae6-38a7-4a9e-b2af-8f7150d35852	VKROCKS	ca9948bb-4f49-42dd-9ffb-d68bea47c04f
sdada	asdasd	dasdasd	1234	asdasd	asdasd	sdsaad	sas	asdasd	asdasd	asdasd	asdasd	sadasdas	asdasdasd	asdasdasd	asdasdasd	asdasdasd	asdasdasd	asdasd	asdasd	asdasd	asdasd	sadasd	asdasdas	asdasd	adsasdas	asdasda	01696ae6-38a7-4a9e-b2af-8f7150d35852	\N	hgfhgfhgfh
sdada	asdasd	dasdasd	3455	asdasd	asdasd	sdsaad	sas	asdasd	asdasd	asdasd	asdasd	sadasdas	asdasdasd	asdasdasd	asdasdasd	asdasdasd	asdasdasd	asdasd	asdasd	asdasd	asdasd	sadasd	asdasdas	asdasd	adsasdas	asdasda	01696ae6-38a7-4a9e-b2af-8f7150d35852	VKROCKS	
\.


--
-- TOC entry 3184 (class 0 OID 16625)
-- Dependencies: 202
-- Data for Name: leaguedb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.leaguedb (leagueid, leaguecost, leaguecreateuser, leaguematch, matchid, teamcountmax, teamcountmin, tournamentid) FROM stdin;
sadsad	50	vsingh326	teamwing	sdadad9879	40	35	asdasd987987
01696ae6-38a7-4a9e-b2af-8f7150d35852	50	vsingh326	teamwing	sdadad9879	40	35	asdasd987987
1389a57f-0dce-4bfc-888d-958fc366f8c1	50	vsingh326	teamwing	sdadad9879	40	35	asdasd987987
\.


--
-- TOC entry 3185 (class 0 OID 16635)
-- Dependencies: 203
-- Data for Name: livematches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livematches (lmid, matchid, tournamentid, matchstatus, lastactiontime, createdtime) FROM stdin;
\.


--
-- TOC entry 3182 (class 0 OID 16609)
-- Dependencies: 200
-- Data for Name: teamrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teamrole (roleid, rolename) FROM stdin;
team9	player9
team8	player8
team7	player7
team6	player6
team5	player5
team4	player4
team3	player3
team2	player2
team1	player1
teamCap	capton
team10	player10
\.


--
-- TOC entry 3047 (class 2606 OID 16634)
-- Name: createteam createteam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.createteam
    ADD CONSTRAINT createteam_pkey PRIMARY KEY (matchid, tournamentid, user_id, venueid, createteamid);


--
-- TOC entry 3049 (class 2606 OID 16632)
-- Name: leaguedb leaguedb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leaguedb
    ADD CONSTRAINT leaguedb_pkey PRIMARY KEY (leagueid);


--
-- TOC entry 3051 (class 2606 OID 16642)
-- Name: livematches livematches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livematches
    ADD CONSTRAINT livematches_pkey PRIMARY KEY (matchid, tournamentid);


--
-- TOC entry 3045 (class 2606 OID 16616)
-- Name: teamrole teamrole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teamrole
    ADD CONSTRAINT teamrole_pkey PRIMARY KEY (roleid);


-- Completed on 2024-03-13 14:50:46 IST

--
-- PostgreSQL database dump complete
--


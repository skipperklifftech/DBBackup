--
-- PostgreSQL database dump
--

-- Dumped from database version 13.12
-- Dumped by pg_dump version 14.9

-- Started on 2024-03-13 14:50:06 IST

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
-- TOC entry 202 (class 1259 OID 16535)
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    address character varying(255),
    address2 character varying(255),
    city character varying(255),
    country character varying(255),
    zip_code character varying(255),
    user_id bigint NOT NULL
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16543)
-- Name: contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts (
    email character varying(255) NOT NULL,
    facebook character varying(255),
    linkedin character varying(255),
    note character varying(255),
    phone character varying(255),
    skype character varying(255),
    website character varying(255),
    user_id bigint NOT NULL
);


ALTER TABLE public.contacts OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16443)
-- Name: native; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.native
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.native OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16551)
-- Name: permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    enabled boolean,
    note character varying(255),
    permission character varying(255) NOT NULL
);


ALTER TABLE public.permissions OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16559)
-- Name: permissions_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permissions_roles (
    role_id bigint NOT NULL,
    permission_id bigint NOT NULL
);


ALTER TABLE public.permissions_roles OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16528)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    role character varying(80) NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16582)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    birth_date date,
    creationdt timestamp without time zone,
    enabled boolean,
    gender smallint,
    logindt timestamp without time zone,
    name character varying(255) NOT NULL,
    note character varying(255),
    password character varying(255) NOT NULL,
    secured boolean,
    surname character varying(255) NOT NULL,
    updateddt timestamp without time zone,
    username character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16562)
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_roles (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.users_roles OWNER TO postgres;

--
-- TOC entry 3210 (class 0 OID 16535)
-- Dependencies: 202
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.addresses (address, address2, city, country, zip_code, user_id) FROM stdin;
\N	\N	\N	\N	\N	4
\.


--
-- TOC entry 3211 (class 0 OID 16543)
-- Dependencies: 203
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts (email, facebook, linkedin, note, phone, skype, website, user_id) FROM stdin;
vsingh326@gmail.com	\N	\N	\N	\N	\N	\N	4
\.


--
-- TOC entry 3212 (class 0 OID 16551)
-- Dependencies: 204
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permissions (id, enabled, note, permission) FROM stdin;
\.


--
-- TOC entry 3213 (class 0 OID 16559)
-- Dependencies: 205
-- Data for Name: permissions_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permissions_roles (role_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3209 (class 0 OID 16528)
-- Dependencies: 201
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, role) FROM stdin;
1	user
\.


--
-- TOC entry 3215 (class 0 OID 16582)
-- Dependencies: 207
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, birth_date, creationdt, enabled, gender, logindt, name, note, password, secured, surname, updateddt, username) FROM stdin;
4	\N	2024-01-19 01:31:43.7493	t	0	2024-01-19 01:34:27.869611	singh	\N	5UBqGHZdkdH1BVdc0xbT4Mq78S0RP6GasiPM5u7Xjcs=	f	mr	\N	vishal
\.


--
-- TOC entry 3214 (class 0 OID 16562)
-- Dependencies: 206
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_roles (user_id, role_id) FROM stdin;
4	1
\.


--
-- TOC entry 3221 (class 0 OID 0)
-- Dependencies: 200
-- Name: native; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.native', 4, true);


--
-- TOC entry 3063 (class 2606 OID 16542)
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3065 (class 2606 OID 16550)
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3067 (class 2606 OID 16558)
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3059 (class 2606 OID 16532)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3061 (class 2606 OID 16534)
-- Name: roles roles_role_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_role_key UNIQUE (role);


--
-- TOC entry 3071 (class 2606 OID 16589)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3069 (class 2606 OID 16566)
-- Name: users_roles users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (user_id, role_id);


--
-- TOC entry 3072 (class 2606 OID 16590)
-- Name: addresses fk1fa36y2oqhao3wgg2rw1pi459; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT fk1fa36y2oqhao3wgg2rw1pi459 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3077 (class 2606 OID 16600)
-- Name: users_roles fk2o0jvgh89lemvvo17cbqvdxaa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3075 (class 2606 OID 16572)
-- Name: permissions_roles fk9j7vx1vojmoa6rs21eggd46xn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions_roles
    ADD CONSTRAINT fk9j7vx1vojmoa6rs21eggd46xn FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3074 (class 2606 OID 16567)
-- Name: permissions_roles fkff6bcp6bbaup2irutar3dfaks; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions_roles
    ADD CONSTRAINT fkff6bcp6bbaup2irutar3dfaks FOREIGN KEY (permission_id) REFERENCES public.permissions(id);


--
-- TOC entry 3076 (class 2606 OID 16577)
-- Name: users_roles fkj6m8fwv7oqv74fcehir1a9ffy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3073 (class 2606 OID 16595)
-- Name: contacts fkna8bddygr3l3kq1imghgcskt8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT fkna8bddygr3l3kq1imghgcskt8 FOREIGN KEY (user_id) REFERENCES public.users(id);


-- Completed on 2024-03-13 14:50:06 IST

--
-- PostgreSQL database dump complete
--


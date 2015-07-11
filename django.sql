--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.4
-- Dumped by pg_dump version 9.4.4
-- Started on 2015-07-11 18:56:43

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 193 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2156 (class 0 OID 0)
-- Dependencies: 193
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 179 (class 1259 OID 16623)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO django;

--
-- TOC entry 178 (class 1259 OID 16621)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO django;

--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 178
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 181 (class 1259 OID 16633)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO django;

--
-- TOC entry 180 (class 1259 OID 16631)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO django;

--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 180
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 177 (class 1259 OID 16613)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO django;

--
-- TOC entry 176 (class 1259 OID 16611)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO django;

--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 176
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 183 (class 1259 OID 16643)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO django;

--
-- TOC entry 185 (class 1259 OID 16653)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO django;

--
-- TOC entry 184 (class 1259 OID 16651)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO django;

--
-- TOC entry 2160 (class 0 OID 0)
-- Dependencies: 184
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 182 (class 1259 OID 16641)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO django;

--
-- TOC entry 2161 (class 0 OID 0)
-- Dependencies: 182
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 187 (class 1259 OID 16663)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO django;

--
-- TOC entry 186 (class 1259 OID 16661)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO django;

--
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 186
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 191 (class 1259 OID 16741)
-- Name: dictionary_word; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE dictionary_word (
    id integer NOT NULL,
    finnish character varying(128) NOT NULL,
    english character varying(128) NOT NULL,
    chinese character varying(128) NOT NULL,
    sentence character varying(256) NOT NULL,
    note character varying(256) NOT NULL,
    category character varying(128) NOT NULL,
    slug character varying(50) NOT NULL,
    times_practiced integer NOT NULL,
    CONSTRAINT dictionary_word_times_practiced_check CHECK ((times_practiced >= 0))
);


ALTER TABLE dictionary_word OWNER TO django;

--
-- TOC entry 190 (class 1259 OID 16739)
-- Name: dictionary_word_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE dictionary_word_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dictionary_word_id_seq OWNER TO django;

--
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 190
-- Name: dictionary_word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE dictionary_word_id_seq OWNED BY dictionary_word.id;


--
-- TOC entry 189 (class 1259 OID 16717)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO django;

--
-- TOC entry 188 (class 1259 OID 16715)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO django;

--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 188
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 175 (class 1259 OID 16603)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO django;

--
-- TOC entry 174 (class 1259 OID 16601)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO django;

--
-- TOC entry 2165 (class 0 OID 0)
-- Dependencies: 174
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 173 (class 1259 OID 16592)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO django;

--
-- TOC entry 172 (class 1259 OID 16590)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO django;

--
-- TOC entry 2166 (class 0 OID 0)
-- Dependencies: 172
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 192 (class 1259 OID 16757)
-- Name: django_session; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO django;

--
-- TOC entry 1946 (class 2604 OID 16626)
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 1947 (class 2604 OID 16636)
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 1945 (class 2604 OID 16616)
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 1948 (class 2604 OID 16646)
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 1949 (class 2604 OID 16656)
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 1950 (class 2604 OID 16666)
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 1953 (class 2604 OID 16744)
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY dictionary_word ALTER COLUMN id SET DEFAULT nextval('dictionary_word_id_seq'::regclass);


--
-- TOC entry 1951 (class 2604 OID 16720)
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 1944 (class 2604 OID 16606)
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 1943 (class 2604 OID 16595)
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 2135 (class 0 OID 16623)
-- Dependencies: 179
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2167 (class 0 OID 0)
-- Dependencies: 178
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 2137 (class 0 OID 16633)
-- Dependencies: 181
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 180
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2133 (class 0 OID 16613)
-- Dependencies: 177
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add word	7	add_word
20	Can change word	7	change_word
21	Can delete word	7	delete_word
\.


--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 176
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_permission_id_seq', 21, true);


--
-- TOC entry 2139 (class 0 OID 16643)
-- Dependencies: 183
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$7hIP3iIRTh8i$3WMxBCzhPkt4fLyMl1+037YpS5+k1fADhhfQ+knQ8JY=	2015-07-11 15:01:47.227223+00	t	z0h0l0			zl198565@163.com	t	t	2015-07-11 15:01:47.227223+00
\.


--
-- TOC entry 2141 (class 0 OID 16653)
-- Dependencies: 185
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 184
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 182
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- TOC entry 2143 (class 0 OID 16663)
-- Dependencies: 187
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 186
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2147 (class 0 OID 16741)
-- Dependencies: 191
-- Data for Name: dictionary_word; Type: TABLE DATA; Schema: public; Owner: django
--

COPY dictionary_word (id, finnish, english, chinese, sentence, note, category, slug, times_practiced) FROM stdin;
3	Gb		英国 [Yīng guó]			country	gb	2
4	Heinäkuu		七月 [qī yuè]			time	heinakuu	2
5	Helmikuu		二月 [èr yuè]			time	helmikuu	2
6	Huhtikuu		四月 [sì yuè]			time	huhtikuu	2
7	Intian tasavalta		印度 [Yìn dù]			country	intian-tasavalta	2
8	Italia		意大利 [Yì dà lì]			country	italia	2
9	Japani		日本 [Rì běn]			country	japani	2
10	Joulukuu		十二月 [shí èr yuè]			time	joulukuu	2
11	Keltainen		黄色 [huáng sè]			color	keltainen	1
12	Keskiviikko		星期三 [xīng qī sān]			time	keskiviikko	1
13	Kesäkuu		六月 [liù yuè]			time	kesakuu	1
14	Kiina		中国 [Zhōng guó]			country	kiina	1
15	Lauantai		星期六 [xīng qī liù]			time	lauantai	1
16	Lokakuu		十月 [shí yuè]			time	lokakuu	1
17	Maa		地球 [dì qiú]			geography	maa	1
18	Maanantai		星期一 [xīng qī yī] ; 周一 [zhōu yī] ; 礼拜一			time	maanantai	1
19	Marraskuu		十一月 [shí yī yuè]			time	marraskuu	1
20	Perjantai		星期五 [xīng qī wǔ] ; 周五 [zhōu wǔ] ; 礼拜五			time	perjantai	1
21	Ranskan tasavalta		法国 [Fǎ guó]			country	ranskan-tasavalta	1
22	Saksan liittotasavalta		德国 [Dé guó]			country	saksan-liittotasavalta	1
23	Sunnuntai		星期天 [xīng qī tiān] ; 周日 [zhōu rì] ; 礼拜天 [lǐ bài tiān]			time	sunnuntai	1
24	Syyskuu		九月 [jiǔ yuè]			time	syyskuu	1
25	Tammikuu		一月 [yī yuè]			time	tammikuu	1
26	Tiistai		星期二 [xīng qī èr]			time	tiistai	1
27	Torstai		星期四 [xīng qī sì] ; 周四 [zhōu sì] ; 礼拜四			time	torstai	1
28	Tšekin tasavalta		捷克 [Jié kè]			country	tsekin-tasavalta	1
29	Yhdysvallat		美国 [Měi guó]			country	yhdysvallat	1
30	aalto		波浪 [bō làng]			nature	aalto	1
31	aamiainen		早餐 [zǎo cān]			food	aamiainen	1
32	aamu		上午 [shàng wǔ]			time	aamu	1
33	aihe		主题 [zhǔ tí]			communication	aihe	1
46	alla		在...下面 (zài...xiàmiàn)			adjective	alla	1
34	aika		时间 [shí jiān]			physics	aika	1
35	aikakauslehti		杂志 [zá zhì]			communication	aikakauslehti	1
36	aina		总是			adverb	aina	1
37	aine		物质 [wù zhì]			material	aine	1
38	aivot		脑 [nǎo] ; 头脑 [tóu nǎo] ; 脑髓 [nǎo suǐ]			anatomy	aivot	1
39	ajaa		开车			verb	ajaa	1
40	ajan		在…期间在…时候			preposition	ajan	1
41	ajankohta		瞬间 [shùn jiān] ; 片刻 [piàn kè]			time	ajankohta	1
42	ajatus		想法 [xiǎng fǎ]			communication	ajatus	1
43	alku		开始 [kāi shǐ] ; 最初 [zuì chū]			time	alku	1
47	alue		地区 [dì qū] ; 区域 [qū yù]			geography	alue	1
44	alkuaine		成份 [chéng fèn]			mathematics	alkuaine	1
45	alkuperäinen		原始的			adjective	alkuperainen	1
48	ammatillinen		专业的			adjective	ammatillinen	1
49	ammatti		工作 [gōng zuò] ; 职业 [zhí yè] ; 行业 [háng yè]			business	ammatti	1
50	ammattilainen		专业人员			profession	ammattilainen	1
51	ampua		开枪			verb-basic	ampua	1
52	ampuma-ase		炮 [páo] ; 枪 [qiāng]			tool	ampuma-ase	1
53	ananas		菠萝 [bō luó]			fruit	ananas	1
54	antaa		给予			verb-basic	antaa	1
55	antaa anteeksi		原谅			verb	antaa-anteeksi	1
64	arvosana		分数 [fēn shù] ; 成绩 [chéng jì]			education	arvosana	1
56	anteeksi		抱歉 [bào qiàn] ; 对不起 [duì bu qǐ]			conversation	anteeksi	1
57	apina		猴子 [hóu zi]			animal	apina	1
58	appelsiini		橘子 [jú zi] ; 橙子 [chéng zi]			fruit	appelsiini	1
59	aprikoosi		杏 [xìng]			fruit	aprikoosi	1
60	apu		帮助 [bāng zhù] ; 协助 [xié zhù]			business	apu	1
61	armeija		军队 [jūn duì]			society	armeija	1
62	arvioida		猜測 ; 猜测			verb	arvioida	1
63	arvo		价值 [jià zhí]			business	arvo	1
65	asema		火车站			city	asema	1
71	asti		直到 [zhí dào]			conjunction	asti	1
66	asia		问题 [wèn tí]			science	asia	1
67	asiakas		客户 [kè hù]			business	asiakas	1
68	asiantuntija		专家 [zhuān jiā]			profession	asiantuntija	1
69	askel		脚步			abstract	askel	1
70	aste		温度 [wēn dù] ; 度数 [dù shù]			mathematics	aste	1
72	astua sisään		进入			verb	astua-sisaan	1
73	ateria		一餐一顿饭			food	ateria	1
74	auktoriteetti		权力 [quán lì] ; 权威 [quán wēi]			business	auktoriteetti	1
75	aurinko		太阳 [tài yáng]			geography	aurinko	1
76	auto		汽车 [qì chē]			transport	auto	1
77	automaattinen		自动的 ; 自动的			adjective	automaattinen	1
78	autotalli		车库 [chē kù]			house	autotalli	1
79	avain		钥匙 [yào shi]			tool	avain	1
80	avaruus		空间 [kōng jiān]			geography	avaruus	1
81	avata		打开			verb-basic	avata	1
82	avioliitto		婚姻 [hūn yīn]			family	avioliitto	1
83	aviomies		丈夫 [zhàng fu]			family	aviomies	1
84	avustaa		帮助			verb-basic	avustaa	1
1	Alas		向下			adjective	alas	2
85	avustus		支持 [zhī chí] ; 援助 [yuán zhù]			business	avustus	1
86	banaani		香蕉 [xiāng jiāo]			fruit	banaani	1
87	baseball		棒球 [bàng qiú]			sports	baseball	1
88	biologia		生物学 [shēng wù xué]			science	biologia	1
89	bussi		公共汽车 [gōng gòng qì chē]			transport	bussi	1
90	detalji		特殊			abstract	detalji	1
91	divisioona		部门 [bù mén]			business	divisioona	1
92	edespäin		在前			adverb	edespain	1
93	edustaja		代表 [dài biǎo]			profession	edustaja	1
94	ehdottaa		建議 ; 建议 (jiànyì)			verb	ehdottaa	1
95	ehkä		大概			adverb	ehka	1
153	heittää		扔			verb	heittaa	1
96	ei		不 [bù]			conversation	ei	1
97	ei koskaan		从不			adverb	ei-koskaan	1
98	ei kukaan		无			adjective	ei-kukaan	1
99	ei mitään		零 [líng]			number	ei-mitaan	1
100	ekologia		生态学 [shēng tài xué]			environment	ekologia	1
101	elokuu		八月 [bā yuè]			time	elokuu	1
102	elokuvateatteri		电影院 [diàn yǐng yuàn]			city	elokuvateatteri	1
103	eläin		动物 [dòng wù]			nature	elain	1
133	hallita		统治			verb	hallita	1
104	elämä		生活 [shēng huó]			nature	elama	1
105	elävä		活着的			adjective-people	elava	1
106	en tiedä		我不知道			conversation	en-tieda	1
107	en ymmärrä		我不明白			conversation	en-ymmarra	1
108	energia		能量 [néng liàng]			physics	energia	1
109	englanti		英语 [Yīng yǔ]			language	englanti	1
110	ennätys		记录 [jì lù]			sports	ennatys	1
111	ensisijainen		首要 (shǒuyào) ; 重要 (zhòngyào)			adjective	ensisijainen	1
112	epäillä		怀疑			verb	epailla	1
113	epävarmuus		怀疑 [huái yí] ; 不确定 [bù què dìng]			communication	epavarmuus	1
114	erilainen		不一样			adjective	erilainen	1
115	erilaisuus		多样性 [duō yàng xìng]			art	erilaisuus	1
116	ero		差别 [chā bié] ; 不同 [bù tóng]			mathematics	ero	1
117	erä		数量			abstract	era	1
118	esine		物			abstract	esine	1
119	esitys		提议 [tí yì] ; 建议 [jiàn yì]			communication	esitys	1
120	eteishalli		休息室 [xiū xī shì]			house	eteishalli	1
121	etelä		南方 [nán fāng]			geography	etela	1
122	etu		优势 [yōu shì]			business	etu	1
123	etupuoli		前面			abstract	etupuoli	1
124	fossiilinen polttoaine		化石燃料 [huà shí rán liào]			environment	fossiilinen-polttoaine	1
125	fyysinen		身体的			adjective	fyysinen	1
126	geeni		基因 [jī yīn]			anatomy	geeni	1
127	golf		高尔夫球 [gāo ěr fū qiú]			sports	golf	1
128	haarukka		餐叉			kitchen	haarukka	1
129	haastattelu		采访 [cǎi fǎng]			communication	haastattelu	1
130	haavoittaa		伤害			verb	haavoittaa	1
131	haista		闻			verb	haista	1
132	hakanen		钩 [gōu]			tool	hakanen	1
134	hallitus		政府 [zhèng fǔ]			society	hallitus	1
135	halpa		便宜			adjective	halpa	1
136	haluta		要 ; 想要 ; 缺乏			verb	haluta	1
137	hame		裙子 [qún zi]			clothes	hame	1
138	hammas		牙 [yá] ; 牙齿 [yá chǐ]			anatomy	hammas	1
139	hankaluus		困难 [kùn nan]			business	hankaluus	1
140	hankkia		提供			verb	hankkia	1
141	happamoituminen		酸雨 [suān yǔ]			environment	happamoituminen	1
142	happo		酸 [suān]			material	happo	1
143	harja		刷子 [shuā zi]			art	harja	1
144	harmaa		灰色 [huī sè]			color	harmaa	1
145	hattu		帽子 [mào zi]			clothes	hattu	1
146	havaita		发现			verb	havaita	1
147	he		他们 [tā men]			pronoun	he	1
148	hedelmä		水果 [shuǐ guǒ]			food	hedelma	1
149	heidän		他们的 [tā men de]			pronoun	heidan	1
150	heijastaa		反映			verb	heijastaa	1
151	heikko		微弱 (wēiruò)			adjective-basic	heikko	1
152	heitto		投 [tóu] ; 扔 [rēng]			sports	heitto	1
154	heitä		他们 [tā men]			pronoun	heita	1
155	henki		呼吸 [hū xī]			anatomy	henki	1
156	henkilö		个人 [gè rén]			family	henkilo	1
157	henkilökohtainen		个人的			adjective	henkilokohtainen	1
158	henkilökunta		职员 [zhí yuán]			business	henkilokunta	1
159	henkinen tasapaino		平衡 [píng héng]			physics	henkinen-tasapaino	1
160	hermo		神经 [shén jīng] ; 神经系统 [shén jīng xì tǒng]			anatomy	hermo	1
161	hevonen		马 [mǎ]			animal	hevonen	1
162	hiekka		沙 [shā]			material	hiekka	1
163	hiljainen		安静			adjective	hiljainen	1
164	hiljaisuus		安静			abstract	hiljaisuus	1
165	hiljakkoin		最近			adverb	hiljakkoin	1
166	hindi		北印度语 [běi Yìn dù yǔ]			language	hindi	1
167	hinta		代价 [dài jià]			business	hinta	1
168	hissi		电梯 [diàn tī]			device	hissi	1
169	historia		历史 [lì shǐ]			society	historia	1
170	hiukset		头发 [tóu fa] ; 毛发 [máo fà]			anatomy	hiukset	1
171	hoito		护理 [hù lǐ] ; 照料 [zhào liào]			medicine	hoito	1
172	hopea		银 [yín]			material	hopea	1
173	hotelli		旅馆 [lǚ guǎn]			city	hotelli	1
174	huomattava		伟大的			adjective-basic	huomattava	1
218	ilta		傍晚 [bàng wǎn]			time	ilta	1
175	huomenna		明天 [míng tiān]			time	huomenna	1
176	huomio		注意 [zhù yì]			business	huomio	1
177	huone		房间 [fáng jiān]			house	huone	1
178	huoneisto		公寓 [gōng yù]			city	huoneisto	1
179	huonekalut		家具 [jiā jù]			furniture	huonekalut	1
180	huono		坏的			adjective-basic	huono	1
181	huuli		唇 [chún] ; 嘴唇 [zuǐ chún]			anatomy	huuli	1
182	huumori		幽默 [yōu mò]			communication	huumori	1
183	huurre		霜 [shuāng]			weather	huurre	1
184	huuru		蒸汽 [zhēng qì]			physics	huuru	1
185	huutaa		叫喊			verb	huutaa	1
186	huuto		呼喊 [hū hǎn] ; 叫嚷 [jiào rǎng]			communication	huuto	1
187	huutokauppa		销售 [xiāo shòu]			business	huutokauppa	1
188	huvitus		娱乐 [yú lè] ; 消遣 [xiāo qiǎn]			art	huvitus	1
189	hylly		架子 [jià zi]			furniture	hylly	1
190	hymy		微笑 [wēi xiào]			relations	hymy	1
191	hymyillä		微笑			verb-basic	hymyilla	1
192	hyvin		好			adverb	hyvin	1
193	hyväksyntä		批准 [pī zhǔn] ; 赞成 [zàn chéng]			communication	hyvaksynta	1
194	hyvää päivää		日安			conversation	hyvaa-paivaa	1
195	hyökkäys		攻打			abstract	hyokkays	1
196	hyönteinen		虫 [chóng] ; 虫子 [chóng zi] ; 昆虫 [kūn chóng]			animal	hyonteinen	1
197	hyötyä		获利			verb	hyotya	1
198	hälinä		噪音 [zào yīn]			society	halina	1
219	iltapäivä		下午 [xià wǔ]			time	iltapaiva	1
199	hän		她自己 [tā zì jǐ]			pronoun	han	1
200	hänen		她 [tā]			pronoun	hanen	1
220	inhimillinen		人的			adjective-people	inhimillinen	1
201	häntä		尾巴 [wěi ba]			anatomy	hanta	1
202	häät		结婚 [jié hūn] ; 婚礼 [hūn lǐ]			family	haat	1
203	höyhen		羽毛 [yǔ máo]			object	hoyhen	1
204	ihminen		人类 [rén lèi]			family	ihminen	1
205	ihmiset		人群 [rén qún] ; 群体 [qún tǐ]			society	ihmiset	1
206	iho		皮 [pí] ; 皮肤 [pí fū]			anatomy	iho	1
207	ikkuna		窗户 [chuāng hu]			house	ikkuna	1
208	ikä		年龄 [nián líng]			time	ika	1
209	ilma		空气 [kōng qì]			nature	ilma	1
210	ilmainen		使自由			adjective	ilmainen	1
211	ilmakehä		大气 [dà qì] ; 空气 [kōng qì]			environment	ilmakeha	1
212	ilman		没有 [méi yǒu] ; 不 [bù]			preposition	ilman	1
213	ilmaston lämpeneminen		全球变暖 [quán qiú biàn nuǎn]			environment	ilmaston-lampeneminen	1
214	ilmastonmuutos		气候变化 [qì hòu biàn huà]			environment	ilmastonmuutos	1
215	ilme		表情 [biǎo qíng]			communication	ilme	1
216	ilmoittaa		报道			verb	ilmoittaa	1
221	internet		互联网			abstract	internet	1
217	ilmoitus		广告 [guǎng gào]			business	ilmoitus	1
222	isoisä		祖父 [zǔ fù]			family	isoisa	1
223	istua		坐			verb-basic	istua	1
224	isä		爸爸 [bà ba]			family	isa	1
225	itkeä		哭			verb	itkea	1
238	johonkin		进入 [jìn rù] ; 到…里			preposition	johonkin	1
226	itsensä		它本身 [tā běn shēn] ; 它自己			pronoun	itsensa	1
227	itä		东方 [dōng fāng]			geography	ita	1
228	ja		和 [hé] ; 与 [yǔ]			conjunction	ja	1
229	jakaa		拆分			verb	jakaa	1
230	jako		划分 [huà fēn]			mathematics	jako	1
231	jakojäännös		剩余 [shèng yú]			business	jakojaannos	1
232	jalka		腿 [tuǐ]			anatomy	jalka	1
233	jalkapallo		足球 [zú qiú]			sports	jalkapallo	1
234	jalokivi		珠宝 [zhū bǎo]			clothes	jalokivi	1
235	jatkaa		继续			verb	jatkaa	1
236	jauhe		粉末 [fěn mò]			material	jauhe	1
237	jo		已经			adverb	jo	1
245	joskus		有时			adverb	joskus	1
239	johtaja		领导人 [lǐng dǎo rén] ; 首领 [shǒu lǐng]			society	johtaja	1
240	johto		方向 [fāng xiàng]			business	johto	1
246	joukko		集合 [jí hé]			mathematics	joukko	1
241	jokainen		每一			adjective	jokainen	1
242	joki		河流 [hé liú]			geography	joki	1
243	joku		任何人 [rèn hé rén]			pronoun	joku	1
244	jos		如果 [rú guǒ]			conjunction	jos	1
247	joukkue		团队 [tuán duì]			business	joukkue	1
248	journalisti		记者 [jì zhě]			profession	journalisti	1
249	jousi		弹簧 [tán huáng]			tool	jousi	1
250	juhla		聚会 [jù huì] ; 派对 [pài duì]			relations	juhla	1
251	julma		野蛮的			adjective	julma	1
252	juna		火车 [huǒ chē]			transport	juna	1
253	juoda		喝			verb-basic	juoda	1
254	juoma		饮料 [yǐn liào]			drink	juoma	1
255	juoni		手法			abstract	juoni	1
256	juuri		根 [gēn]			nature	juuri	1
257	juusto		奶酪 [nǎi lào]			food	juusto	1
258	jyvänen		颗粒 [kē lì]			material	jyvanen	1
259	jäljitelmä		副本 [fù běn] ; 备份 [bèi fèn]			business	jaljitelma	1
260	järjestelmä		系统 [xì tǒng]			science	jarjestelma	1
261	järvi		湖 [hú]			geography	jarvi	1
262	jäsen		成员 [chéng yuán]			society	jasen	1
263	jäte		垃圾 [lā jī] ; 废物 [fèi wù]			environment	jate	1
264	jää		冰 [bīng]			material	jaa	1
265	kaali		卷心菜 [juǎn xīn cài]			vegetable	kaali	1
266	kaappi		壁橱 [bì chú]			furniture	kaappi	1
267	kahdeksan		八 [bā]			number	kahdeksan	1
268	kahdeksankymmentä		八十 [bā shí]			number	kahdeksankymmenta	1
269	kahdeksantoista		十八 (shíbā)			number	kahdeksantoista	1
270	kahva		柄 [bǐng] ; 把手 [bǎ shǒu]			object	kahva	1
271	kahvi		咖啡 [kā fēi]			drink	kahvi	1
308	kaupankäynti		贸易 [mào yì]			business	kaupankaynti	1
272	kaikki		全部			adjective	kaikki	1
273	kaivos		矿 [kuàng]			environment	kaivos	1
274	kakku		蛋糕 [dàn gāo]			food	kakku	1
275	kaksikymmentä		二十 [èr shí]			number	kaksikymmenta	1
276	kala		鱼 [yú]			animal	kala	1
277	kalvo		影片 [yǐng piàn] ; 电影 [diàn yǐng]			art	kalvo	1
278	kamera		照相机 [zhào xiàng jī]			device	kamera	1
279	kangas		纺织品 [fǎng zhī pǐn] ; 布料 [bù liào]			clothes	kangas	1
280	kansa		人民 [rén mín]			society	kansa	1
281	kansainvälinen		国际			adjective	kansainvalinen	1
282	kansakunta		国民 [guó mín]			society	kansakunta	1
283	kansallinen		国民			adjective	kansallinen	1
284	kansi		盖子 [gài zi]			object	kansi	1
309	kauppa		商店 [shāng diàn]			business	kauppa	1
285	kanssa		和 [hé] ; 有 [yǒu] ; 以 [yǐ] ; 用 [yòng]			preposition	kanssa	1
286	kapea		窄的 (zhǎide)			adjective	kapea	1
287	karhu		熊 [xióng]			animal	karhu	1
288	karhunvatukka		黑莓 [hēi méi]			fruit	karhunvatukka	1
289	kartta		地图 [dì tú]			geography	kartta	1
290	karva		毛发 [máo fà]			anatomy	karva	1
291	karvas		苦的			adjective	karvas	1
292	kaste		露水 [lù shuǐ]			weather	kaste	1
293	kastike		酱 [jiàng]			food	kastike	1
294	kasvaa		增长			verb	kasvaa	1
295	kasvatus		教育 [jiào yù]			education	kasvatus	1
296	kasvi		植物 [zhí wù]			nature	kasvi	1
297	kasvihuoneilmiö		温室效应 [wēn shì xiào yìng]			environment	kasvihuoneilmio	1
298	kasvot		脸 [liǎn]			anatomy	kasvot	1
299	kasvu		生长			abstract	kasvu	1
300	katku		烟 [yān]			nature	katku	1
301	katsoa		看			verb-basic	katsoa	1
302	katto		屋顶 [wū dǐng]			house	katto	1
303	katu		街道 [jiē dào]			city	katu	1
304	kaukana		較遠的 / 较远的 (jiào yuǎn de) ; 遠 / 远 (yuǎn)			adjective	kaukana	1
305	kaula		脖子 [bó zi] ; 颈部 [jǐng bù]			anatomy	kaula	1
306	kaulus		衣领 [yī lǐng]			clothes	kaulus	1
307	kaunis		美丽的			adjective-basic	kaunis	1
326	keppi		木棍 [mù gùn]			object	keppi	1
310	kaupunki		城镇 [chéng zhèn]			city	kaupunki	1
311	kausi		季节 [jì jié]			time	kausi	1
312	kehittyminen		进化 [jìn huà] ; 发展 [fā zhǎn]			nature	kehittyminen	1
313	kehitys		过程 [guò chéng] ; 进程 [jìn chéng]			physics	kehitys	1
314	kehys		框架 [kuàng jià]			object	kehys	1
315	keittiö		厨房 [chú fáng]			house	keittio	1
316	keitto		汤 [tāng]			food	keitto	1
317	keittäjä		厨师 [chú shī]			kitchen	keittaja	1
318	keksiminen		发明 [fā míng] ; 创新 [chuàng xīn]			art	keksiminen	1
327	kerho		俱乐部 [jù lè bù]			society	kerho	1
319	kello		钟 [zhōng]			tool	kello	1
320	kemia		化学 [huà xué]			science	kemia	1
321	kemiallinen		化学的			adjective	kemiallinen	1
322	kemikaali		化学物质			material	kemikaali	1
323	kenen		誰的			pronoun	kenen	1
324	kenkä		鞋 [xié]			clothes	kenka	1
325	kenraali		将军 [jiāng jūn]			profession	kenraali	1
328	kerran		一次			adverb	kerran	1
329	kerros		层 [céng]			house	kerros	1
330	kerä		花环 [huā huán]			object	kera	1
331	keskeinen		中央			adjective	keskeinen	1
332	keskellä		在…之中			preposition	keskella	1
333	keskipiste		中心 [zhōng xīn]			mathematics	keskipiste	1
334	keskiväli		平均数 [píng jūn shù]			business	keskivali	1
335	keskiyö		半夜 [bàn yè] ; 午夜 [wǔ yè]			time	keskiyo	1
336	keskustella		讨论			verb	keskustella	1
337	keskustelu		讨论 [tǎo lùn]			communication	keskustelu	1
338	kesä		夏天 [xià tiān]			time	kesa	1
339	ketju		链条 [liàn tiáo]			object	ketju	1
340	kevyt		轻的			adjective-basic	kevyt	1
341	kevät		春天 [chūn tiān]			time	kevat	1
343	kierrätys		再循环再利用 [zài lì yòng]			environment	kierratys	1
342	kieli		语言 [yǔ yán]			communication	kieli	1
344	kiillottaa		磨光			verb	kiillottaa	1
345	kiinnostava		有趣 (yǒuqù) ; 有意思 (yǒu yìsi)			adjective	kiinnostava	1
346	kiista		争论 [zhēng lùn]			communication	kiista	1
347	kilpailija		竞争对手			sports	kilpailija	1
527	lyijy		铅 [qiān]			material	lyijy	1
348	kilpailu		竞争 [jìng zhēng] ; 竞赛 [jìng sài] ; 比赛 [bǐ sài]			business	kilpailu	1
393	kravatti		领带 [lǐng dài]			clothes	kravatti	1
349	kiltti		好的			adjective-basic	kiltti	1
350	kippis		干杯 [gān bēi]			conversation	kippis	1
351	kipu		痛苦 [tòng kǔ]			medicine	kipu	1
352	kirja		书 [shū]			communication	kirja	1
353	kirjailija		作家 [zuò jiā]			profession	kirjailija	1
354	kirjain		字母 [zì mǔ]			communication	kirjain	1
355	kirjasto		图书馆 [tú shū guǎn] ; 仓库 [cāng kù]			city	kirjasto	1
356	kirje		信 [xìn] ; 信函 [xìn hán]			communication	kirje	1
357	kirjekuori		信封 [xìn fēng]			container	kirjekuori	1
358	kirjoittaa		写			verb-basic	kirjoittaa	1
359	kirjoitus		文字 [wén zì] ; 书写 [shū xiě]			communication	kirjoitus	1
360	kirjoituspöytä		书桌 [shū zhuō]			furniture	kirjoituspoyta	1
361	kirkko		教堂 [jiào táng]			city	kirkko	1
362	kirsikka		樱桃 [yīng táo]			fruit	kirsikka	1
363	kisko		铁轨 [tiě guǐ]			transport	kisko	1
364	kissa		猫 [māo]			animal	kissa	1
365	kivi		石头 [shí tou]			object	kivi	1
366	kivihiili		煤 [méi]			material	kivihiili	1
367	kohdella		对待			verb	kohdella	1
368	kohtelu		处理			abstract	kohtelu	1
369	kohti		在 [zài] ; 于 [yú]			preposition	kohti	1
370	koira		狗 [gǒu] ; 犬 [quǎn]			animal	koira	1
394	kriteeri		标准 [biāo zhǔn]			communication	kriteeri	1
371	koiras		雄性			adjective-people	koiras	1
372	kokemus		经历 [jīng lì]			communication	kokemus	1
395	kuin		比 [bǐ]			conjunction	kuin	1
373	koko		整個 ; 整个 (zhěnggè)			adjective	koko	1
374	kolmas		第三 [dì sān]			number	kolmas	1
375	kolme		三 [sān]			number	kolme	1
376	kolmekymmentä		三十 (sānshí)			number	kolmekymmenta	1
377	kolmetoista		十三 (shísān)			number	kolmetoista	1
378	kolo		洞 (Mandarin: dong4 ; Cantonese: dong3)			abstract	kolo	1
379	komitea		委员会 [wěi yuán huì]			business	komitea	1
380	kone		机器 [jī qì]			device	kone	1
381	konsertti		音乐会 [yīn yuè huì]			art	konsertti	1
382	kopioida		复制			verb	kopioida	1
383	kori		篮子 [lán zi]			container	kori	1
384	koriste		装饰物			abstract	koriste	1
385	korkeus		海拔			geography	korkeus	1
386	korko		利息 [lì xī]			business	korko	1
387	kortti		纸牌 [zhǐ pái] ; 卡片 [kǎ piàn]			object	kortti	1
388	korva		耳 [ěr] ; 耳朵 [ěr duo]			anatomy	korva	1
389	koska		因为 [yīn wèi]			conjunction	koska	1
390	kosteus		潮湿 [cháo shī] ; 湿气 [shī qì]			nature	kosteus	1
391	koti		家 [jiā]			house	koti	1
392	koulu		学校 [xué xiào]			city	koulu	1
396	kuinka voitte		你好吗 [nǐ hǎo ma]			conversation	kuinka-voitte	1
397	kuitenkin		仍然			adverb	kuitenkin	1
398	kuiva		干的			adjective	kuiva	1
399	kuka		谁 [shéi]			pronoun	kuka	1
400	kukistuminen		落下			abstract	kukistuminen	1
401	kukka		花 [huā]			nature	kukka	1
402	kukkula		山丘 [shān qiū]			geography	kukkula	1
403	kuljetus		运输 [yùn shū]			transport	kuljetus	1
404	kulma		角 [jué]			mathematics	kulma	1
405	kulta		黄金 [huáng jīn]			material	kulta	1
406	kulttuuri		文明 [wén míng]			society	kulttuuri	1
407	kun		什么时候 [shén me shí hou] ; 何时 [hé shí]			pronoun	kun	1
408	kuningas		国王 [guó wáng]			society	kuningas	1
409	kunnianosoitus		奖品			sports	kunnianosoitus	1
410	kunnioittaa		尊敬			verb	kunnioittaa	1
411	kunto		条件			abstract	kunto	1
412	kuolema		死亡 [sǐ wáng]			family	kuolema	1
413	kuolla		死			verb	kuolla	1
414	kuollut		死			adjective-people	kuollut	1
415	kuppi		茶杯 [chá bēi]			container	kuppi	1
416	kuri		学科 [xué kē]			science	kuri	1
423	kuuma		热			adjective-basic	kuuma	1
417	kurkku		黄瓜 [huáng guā]			vegetable	kurkku	1
418	kustannus		费用 [fèi yòng]			business	kustannus	1
419	kutsua		命名			verb	kutsua	1
420	kuu		月亮 [yuè liang]			geography	kuu	1
421	kuukausi		月 [yuè]			time	kuukausi	1
422	kuukautiskierto		月经 [yuè jīng]			medicine	kuukautiskierto	1
424	kuunnella		侦听			verb-basic	kuunnella	1
425	kuusi		六 [liù]			number	kuusi	1
426	kuusikymmentä		六十 [liù shí]			number	kuusikymmenta	1
427	kuusitoista		十六 [shí liù]			number	kuusitoista	1
428	kuva		图象 [tú xiàng] ; 画面 [huà miàn]			art	kuva	1
429	kykenevä		能够的			adjective-people	kykeneva	1
430	kyllä		是 [shì]			conversation	kylla	1
431	kylmä		冷的			adjective-basic	kylma	1
432	kylpyhuone		浴室 [yù shì]			house	kylpyhuone	1
433	kylä		乡村 [xiāng cūn] ; 村庄 [cūn zhuāng]			city	kyla	1
434	kymmenen		十 [shí]			number	kymmenen	1
435	kynsi		指甲 [zhǐ jia]			anatomy	kynsi	1
436	kynä		钢笔 [gāng bǐ]			art	kyna	1
437	kysymys		问题 [wèn tí] ; 咨询 [zī xún]			communication	kysymys	1
438	kysyä		问 (wèn) ; 询问 (xúnwèn)			verb	kysya	1
439	kärpänen		苍蝇 [cāng ying]			animal	karpanen	1
440	kärsivällinen		患者			adjective-people	karsivallinen	1
441	kärsiä		忍受			verb	karsia	1
442	käsi		手 [shǒu] ; 爪 [zhuǎ]			anatomy	kasi	1
443	käsivarsi		手臂 [shǒu bì] ; 胳膊 [gē bo]			anatomy	kasivarsi	1
444	kätkeä		隐瞒			verb	katkea	1
445	kävellä		走 (zǒu)			verb	kavella	1
446	käydä		訪問 ; 访问 (fǎngwèn)			verb	kayda	1
447	käymälä		厕所 [cè suǒ]			house	kaymala	1
448	käynnistää		开始			verb-basic	kaynnistaa	1
449	käynti		拜访 [bài fǎng] ; 参观 [cān guān]			relations	kaynti	1
450	käyrä		弯曲 [wān qū]			mathematics	kayra	1
451	käyttäjä		用户 [yòng hù]			science	kayttaja	1
452	käyttäytyminen		行为			abstract	kayttaytyminen	1
484	leimasin		印章 [yìn zhāng]			tool	leimasin	1
453	käyttää		练习			verb-basic	kayttaa	1
454	kääntyä		转动			verb	kaantya	1
455	käärme		蛇 [shé]			animal	kaarme	1
456	köysi		绳子 [shéng zi]			object	koysi	1
457	laatikko		箱子 [xiāng zi]			container	laatikko	1
485	leipä		面包 [miàn bāo]			food	leipa	1
458	laatu		种类			abstract	laatu	1
459	lahja		礼物 [lǐ wù]			object	lahja	1
460	laillinen		法律的			adjective	laillinen	1
461	laita		翅膀 [chì bǎng] ; 翼 [yì]			anatomy	laita	1
462	laitos		机构 [jī gòu]			society	laitos	1
463	laiva		轮船 [lún chuán]			transport	laiva	1
464	laki		法律 [fǎ lǜ]			business	laki	1
465	lammas		羊 [yáng] ; 绵羊 [mián yáng]			animal	lammas	1
466	lapsi		孩子 [hái zi]			family	lapsi	1
467	lasi		玻璃 [bō li]			material	lasi	1
468	lasku		账单 [zhàng dān] ; 发票 [fā piào]			business	lasku	1
469	lataus		电荷 [diàn hé]			physics	lataus	1
470	lattia		地板 [dì bǎn]			house	lattia	1
486	lento		飞行 [fēi xíng]			transport	lento	1
471	laukku		袋子 [dài zi]			container	laukku	1
472	laulaa		唱歌			verb-basic	laulaa	1
473	laulaja		歌手 [gē shǒu]			art	laulaja	1
474	laulu		歌 [gē] ; 歌曲 [gē qǔ]			art	laulu	1
475	lausunto		声明 [shēng míng]			communication	lausunto	1
476	lautanen		盘子 [pán zi]			container	lautanen	1
477	lava		舞台 [wǔ tái]			art	lava	1
478	lehmä		母牛 [mǔ niú]			animal	lehma	1
479	lehti		树叶 [shù yè] ; 叶子 [yè zi]			nature	lehti	1
480	leijona		狮子 [shī zi]			animal	leijona	1
481	leikata		切			verb-basic	leikata	1
482	leikki		比赛 [bǐ sài] ; 游戏 [yóu xì]			sports	leikki	1
483	leikkiä		演奏			verb-basic	leikkia	1
487	lentoasema		飞机场 [fēi jī chǎng]			city	lentoasema	1
488	lentokone		飞机 [fēi jī]			transport	lentokone	1
489	lentää		飞			verb-basic	lentaa	1
490	lepo		休息			abstract	lepo	1
491	leuka		下巴 [xià ba] ; 下颔 [xià hàn]			anatomy	leuka	1
492	leveä		宽 ; 宽广的 ; 宽阔的			adjective	levea	1
493	liekki		燃烧 [rán shāo] ; 火焰 [huǒ yàn]			nature	liekki	1
494	liha		肉 [ròu]			food	liha	1
495	lihas		肌肉 [jī ròu]			anatomy	lihas	1
496	liike		运动 [yùn dòng]			physics	liike	1
497	liikemies		商人 [shāng rén] ; 老板 [lǎo bǎn]			profession	liikemies	1
498	liima		胶水 [jiāo shuǐ]			material	liima	1
499	liitin		连接器			abstract	liitin	1
500	liitto		联合 [lián hé]			society	liitto	1
501	linna		城堡 [chéng bǎo]			city	linna	1
502	lintu		鸟 [niǎo]			animal	lintu	1
504	lista		列表			abstract	lista	1
503	lippu		通行证 [tōng xíng zhèng] ; 许可证 [xǔ kě zhèng]			society	lippu	1
505	lisätä		增加			verb	lisata	1
512	lopputulos		结果 [jié guǒ]			mathematics	lopputulos	1
506	lisäys		附加设备			abstract	lisays	1
507	lisää		更多			adjective	lisaa	1
508	loma		假期 [jià qī]			business	loma	1
509	lomake		表格 [biǎo gé]			business	lomake	1
510	lopettaa		完成			verb	lopettaa	1
511	loppu		终点 [zhōng diǎn] ; 末端 [mò duān]			time	loppu	1
513	lopullinen		终端			adjective	lopullinen	1
514	lounas		午饭 [wǔ fàn]			food	lounas	1
515	lukea		读			verb-basic	lukea	1
516	lukko		锁 [suǒ]			tool	lukko	1
517	luku		编号 [biān hào]			communication	luku	1
518	lumi		雪 [xuě]			weather	lumi	1
519	luokitella		整理			verb	luokitella	1
520	luokka		班级 [bān jí]			education	luokka	1
521	luonto		自然 [zì rán]			nature	luonto	1
522	luotsi		飞行员 [fēi xíng yuán]			profession	luotsi	1
523	lusikka		勺子 [sháo zi] ; 调羹 [tiáo gēng]			kitchen	lusikka	1
524	luu		骨头 [gǔ tou]			anatomy	luu	1
525	luulla		相信			verb	luulla	1
526	luumu		李子 [lǐ zi]			fruit	luumu	1
528	lyijykynä		铅笔 [qiān bǐ]			art	lyijykyna	1
573	mielenkiinto		兴趣 [xìng qu]			communication	mielenkiinto	1
529	lähde		泉 [quán]			nature	lahde	1
530	länsi		西方 [xī fāng]			geography	lansi	1
531	lääketieteellinen		医学的			adjective-people	laaketieteellinen	1
532	lääkäri		医生 [yī shēng]			medicine	laakari	1
533	löytäminen		发现 [fā xiàn]			science	loytaminen	1
534	maailma		世界 [shì jiè]			nature	maailma	1
535	maalaus		画 [huà]			art	maalaus	1
536	maali		颜料 [yán liào] ; 涂料 [tú liào] ; 油漆 [yóu qī]			art	maali	1
537	maanalainen		地铁 [dì tiě]			city	maanalainen	1
538	maata		躺			verb-basic	maata	1
539	maatila		农场 [nóng chǎng]			nature	maatila	1
540	maha		胃 [wèi] ; 肚子 [dù zi] ; 腹部 [fù bù]			anatomy	maha	1
541	mainita		援引			verb	mainita	1
542	maito		牛奶 [niú nǎi]			drink	maito	1
543	makeus		甜 [tián]			food	makeus	1
544	maksaa		支付			verb-basic	maksaa	1
545	maksu		付款 [fù kuǎn]			business	maksu	1
546	makuaisti		滋味			abstract	makuaisti	1
547	makuuhuone		卧室 [wò shì]			house	makuuhuone	1
548	malli		设计 [shè jì] ; 规划 [guī huà]			art	malli	1
549	mansikka		草莓 [cǎo méi]			fruit	mansikka	1
550	massa		质量 [zhì liàng] ; 重量 [zhòng liàng]			physics	massa	1
551	materiaali		原料 [yuán liào] ; 材料 [cái liào]			business	materiaali	1
574	mieli		头脑			abstract	mieli	1
552	matka		距离 [jù lí]			mathematics	matka	1
553	matkalaukku		手提箱 [shǒu tí xiāng]			clothes	matkalaukku	1
554	matkapuhelin		手机 [shǒu jī]			device	matkapuhelin	1
555	matkustaja		乘客 [chéng kè]			transport	matkustaja	1
556	matto		地毯 [dì tǎn]			furniture	matto	1
557	me		我们 [wǒ men]			pronoun	me	1
558	mehiläinen		蜜蜂 [mì fēng]			animal	mehilainen	1
559	meidät		我们 [wǒ men]			pronoun	meidat	1
560	melkein		几乎			adverb	melkein	1
561	menekki		市场 [shì chǎng]			business	menekki	1
562	menestys		成功 [chéng gōng]			business	menestys	1
563	menetelmä		方法 [fāng fǎ]			science	menetelma	1
564	menneisyys		过去 [guò qu]			time	menneisyys	1
565	mennä		去			verb	menna	1
566	meri		大海 [dà hǎi]			geography	meri	1
567	merimies		水手 [shuǐ shǒu]			profession	merimies	1
575	mielipide		观点 [guān diǎn] ; 看法 [kàn fǎ]			communication	mielipide	1
568	merkki		算术符号（加减乘除）			communication	merkki	1
569	mestaruus		冠军 [guàn jūn]			sports	mestaruus	1
570	metalli		金属 [jīn shǔ]			material	metalli	1
571	metallilanka		金属丝			object	metallilanka	1
572	metsä		森林 [sēn lín]			nature	metsa	1
576	mies		男人 [nán rén]			family	mies	1
577	miksi		为什么 [wèi shén me]			adverb	miksi	1
592	muistiinpano		注释 [zhù shì] ; 备注 [bèi zhù]			communication	muistiinpano	1
578	mikä		哪个 [nǎ ge]			pronoun	mika	1
579	mikä teidän nimenne on		你叫什么名字			conversation	mika-teidan-nimenne-on	1
580	miljoona		百万 [bǎi wàn]			number	miljoona	1
581	milloin tahansa		无论何时 [wú lùn hé shí]			conjunction	milloin-tahansa	1
582	ministeri		部长 [bù zhǎng]			profession	ministeri	1
583	ministeriö		部门 [bù mén]			business	ministerio	1
584	minua		我 [wǒ]			pronoun	minua	1
585	minun		我的 [wǒ de]			pronoun	minun	1
586	minuutti		分 [fèn] ; 分钟 [fēn zhōng]			time	minuutti	1
587	mitata		衡量			verb	mitata	1
588	mittaaminen		测量 [cè liáng]			physics	mittaaminen	1
589	monta		许多的			adjective	monta	1
590	moottori		发动机 [fā dòng jī] ; 引擎 [yǐn qíng]			device	moottori	1
591	muisti		记忆力 [jì yì lì]			communication	muisti	1
593	muisto		记忆 [jì yì] ; 回忆 [huí yì]			communication	muisto	1
594	muna		蛋 [dàn]			food	muna	1
595	muodostaa		建造			verb	muodostaa	1
596	muoto		形像 [xíng xiàng] ; 外表 [wài biǎo]			art	muoto	1
597	museo		博物馆 [bó wù guǎn]			art	museo	1
598	musiikki		音乐 [yīn yuè] ; 乐曲 [yuè qǔ]			art	musiikki	1
599	musta		黑色 [hēi sè]			color	musta	1
600	muste		墨水 [mò shuǐ]			art	muste	1
601	mutka		拐弯 [guǎi wān]			transport	mutka	1
602	mutteri		螺母 [luó mǔ] ; 螺帽 [luó mào]			object	mutteri	1
603	muurahainen		蚂蚁 [mǎ yǐ]			animal	muurahainen	1
604	muuri		墙壁 [qiáng bì]			house	muuri	1
605	muusikko		音乐家 [yīn yuè jiā]			profession	muusikko	1
606	muutos		变化			abstract	muutos	1
607	muuttaa		改变			verb	muuttaa	1
608	myrkky		毒药 [dú yào]			material	myrkky	1
609	myrsky		暴风雨 [bào fēng yǔ]			weather	myrsky	1
610	myydä		销售			verb-basic	myyda	1
611	myös		也			adverb	myos	1
612	märkä		濕 (shī)			adjective	marka	1
613	määrä		总和 [zǒng hé]			mathematics	maara	1
790	puuvilla		棉布 [mián bù]			material	puuvilla	1
614	määränpää		目的地 [mù dì dì]			sports	maaranpaa	1
615	määräys		命令 [mìng lìng]			society	maarays	1
616	naapuri		邻居 [lín jū]			family	naapuri	1
617	nahka		皮革 [pí gé]			material	nahka	1
618	nainen		女人 [nǚ rén]			family	nainen	1
619	nappi		按钮 [àn niǔ]			tool	nappi	1
620	naula		钉 [dīng] ; 钉子 [dīng zi]			tool	naula	1
621	nauraa		笑			verb-basic	nauraa	1
622	nautinto		快乐 [kuài lè] ; 愉快 [yú kuài]			feeling	nautinto	1
661	ole hyvä		不客气 [bù kè qi]			conversation	ole-hyva	1
623	neliö		正方形 [zhèng fāng xíng]			mathematics	nelio	1
624	neljä		四 [sì]			number	nelja	1
625	neljäkymmentä		四十 [sì shí]			number	neljakymmenta	1
626	neljätoista		十四 [shí sì]			number	neljatoista	1
627	nenä		鼻子 [bí zi]			anatomy	nena	1
628	neste		液体 [yè tǐ]			material	neste	1
629	neula		针 [zhēn]			tool	neula	1
630	neuvosto		理事会 [lǐ shì huì] ; 委员会 [wěi yuán huì]			business	neuvosto	1
631	niitä		那些 [nà xiē]			pronoun	niita	1
662	olemassaolo		存在 [cún zài]			society	olemassaolo	1
632	nimi		标题 [biāo tí]			society	nimi	1
633	noin		大概			adverb	noin	1
634	nokka		喙 [huì] ; 鸟嘴 [niǎo zuǐ]			anatomy	nokka	1
635	nopea		迅速			adjective-basic	nopea	1
636	normaali		正常的			adjective	normaali	1
637	norsu		象 [xiàng] ; 大象 [dà xiàng]			animal	norsu	1
638	nostaa		举起			verb	nostaa	1
639	nousu		上升			abstract	nousu	1
640	nuija		棍棒 [gùn bàng]			object	nuija	1
641	nuori		niánqīng (年轻)			adjective-people	nuori	1
642	nuppineula		楔子 [xiē zi]			object	nuppineula	1
643	nykyhetki		现在 [xiàn zài]			time	nykyhetki	1
644	nykyinen		现在的			adjective	nykyinen	1
645	nyt		现在 [xiàn zài]			time	nyt	1
646	nyttemmin		现在 (xiànzài)			adverb	nyttemmin	1
647	nähdä		看			verb	nahda	1
648	nälkäinen		餓/饿 è			adjective-people	nalkainen	1
649	nämä		这些 [zhè xiē]			pronoun	nama	1
650	näyte		例子 [lì zi]			science	nayte	1
651	näytelmä		表演 [biǎo yǎn]			business	naytelma	1
652	näyttelijä		艺人 [yì rén]			profession	nayttelija	1
653	näyttää		展览			verb	nayttaa	1
654	näyttää toteen		证明			verb	nayttaa-toteen	1
655	näyttö		证据 [zhèng jù]			science	naytto	1
663	oliivi		橄榄 [gǎn lǎn]			vegetable	oliivi	1
656	odottaa		等 (děng)			verb-basic	odottaa	1
657	ohjelma		程序			science	ohjelma	1
658	oikeinkirjoitus		拼写 [pīn xiě]			communication	oikeinkirjoitus	1
659	oikeus		法院 [fǎ yuàn]			society	oikeus	1
660	oksa		分枝 [fēn zhī]			nature	oksa	1
664	olla		是			verb-basic	olla	1
665	olla olemassa		存在			verb	olla-olemassa	1
666	olut		啤酒 [pí jiǔ]			drink	olut	1
667	oma		自己的			adjective	oma	1
668	omaisuus		财产 [cái chǎn] ; 所有物 [suǒ yǒu wù]			business	omaisuus	1
669	omena		苹果 [píng guǒ]			fruit	omena	1
670	ominaisuus		属性			abstract	ominaisuus	1
682	opettaja		老师 [lǎo shī] ; 教师 [jiào shī]			education	opettaja	1
671	omistaa		有			verb	omistaa	1
672	omistaja		所有者 [suǒ yǒu zhě] ; 主人 [zhǔ rén]			business	omistaja	1
673	ongelma		问题 [wèn tí]			business	ongelma	1
674	onnea		祝你好运			conversation	onnea	1
675	onnekas		幸运的			adjective	onnekas	1
676	onnellinen		高興 (gāoxìng)			adjective-basic	onnellinen	1
677	onnettomuus		事故 [shì gù]			transport	onnettomuus	1
678	opastaa		带领			verb	opastaa	1
679	opastus		管理 [guǎn lǐ]			business	opastus	1
680	operaatio		手术 [shǒu shù]			medicine	operaatio	1
681	opettaa		讲授			verb	opettaa	1
683	opettaminen		教育 [jiào yù] ; 培训 [péi xùn]			education	opettaminen	1
684	opiskelija		学生 [xué sheng]			education	opiskelija	1
685	opiskella		學習 ; 学习 (xuéxí) ; 學 ; 学 (xué)			verb	opiskella	1
686	oppia		学 (xué)			verb-basic	oppia	1
687	oppitunti		课程 [kè chéng]			business	oppitunti	1
688	oranssi		橙色 [chéng sè]			color	oranssi	1
689	organisaatio		组织 [zǔ zhī] ; 机构 [jī gòu] ; 团体 [tuán tǐ]			society	organisaatio	1
691	osa		部分			abstract	osa	1
690	orkesteri		乐队 [yuè duì] ; 管弦乐队 [guǎn xián yuè duì]			art	orkesteri	1
693	osasto		阶段 [jiē duàn] ; 部分 [bù fèn]			business	osasto	1
692	osake		股份 [gǔ fèn]			business	osake	1
694	osoite		地址 [dì zhǐ]			house	osoite	1
695	ostaa		买			verb-basic	ostaa	1
696	osuus		百分比 [bǎi fēn bǐ]			mathematics	osuus	1
697	otsa		额头 [é tóu]			anatomy	otsa	1
698	otsoni		臭氧 [chòu yǎng]			environment	otsoni	1
699	ottaa		取			verb-basic	ottaa	1
700	ottaa vastaan		接受			verb	ottaa-vastaan	1
701	ovi		门 [mén]			house	ovi	1
702	paikallinen		当地的			adjective	paikallinen	1
750	pisara		水滴			abstract	pisara	1
703	paikka		席位 [xí wèi]			furniture	paikka	1
751	pisto		针脚			medicine	pisto	1
704	painaa		稱 (chèng)			verb	painaa	1
705	paine		压力 [yā lì]			physics	paine	1
706	paino		重力 [zhòng lì]			physics	paino	1
707	paita		衬衫 [chèn shān]			clothes	paita	1
708	paketti		包 [bāo] ; 包裹 [bāo guǒ]			business	paketti	1
709	pala		部分			abstract	pala	1
710	paljon kiitoksia		非常感谢 [fēi cháng gǎn xiè]			conversation	paljon-kiitoksia	1
711	palkinto		报酬 [bào chóu] ; 酬劳 [chóu láo]			business	palkinto	1
712	pallo		球 [qiú]			sports	pallo	1
713	palsternakka		欧洲防风草			vegetable	palsternakka	1
714	paluu		重回			abstract	paluu	1
715	palvelija		仆人 [pú rén] ; 佣人 [yōng rén]			profession	palvelija	1
716	palvelu		服务 [fú wù]			business	palvelu	1
717	pankki		银行 [yín háng]			city	pankki	1
718	panna		安放			verb-basic	panna	1
719	paperi		纸 [zhǐ]			art	paperi	1
720	papu		豆 [dòu]			vegetable	papu	1
721	parantaa		增高			verb	parantaa	1
722	paras		最好 (zuì háo)			adjective-basic	paras	1
723	pari		一对 [yī duì] ; 一双			number	pari	1
724	passi		护照 [hù zhào]			society	passi	1
725	peili		镜子 [jìng zi]			physics	peili	1
726	pelaaja		参赛者 [cān sài zhě]			sports	pelaaja	1
727	peli		竞赛 [jìng sài] ; 比赛 [bǐ sài]			sports	peli	1
728	pelko		害怕 [hài pà]			feeling	pelko	1
729	pelto		田地 [tián dì]			nature	pelto	1
730	persikka		桃子 [táo zi]			fruit	persikka	1
731	peruna		土豆 [tǔ dòu] ; 马铃薯 [mǎ líng shǔ]			vegetable	peruna	1
732	perustaa		建立			verb	perustaa	1
733	perustelu		论据 [lùn jù]			communication	perustelu	1
734	pestä		洗			verb	pesta	1
735	pesuallas		盥洗盆			furniture	pesuallas	1
736	peukalo		拇指 [mǔ zhǐ]			anatomy	peukalo	1
737	pian		不久			adverb	pian	1
738	pieni		小 (xiǎo)			adjective	pieni	1
739	piiri		范围			science	piiri	1
740	piirre		特征			abstract	piirre	1
741	piirtää		画			verb-basic	piirtaa	1
742	pikajuna		快车 [kuài chē]			transport	pikajuna	1
743	pikkutakki		夹克 [jiā kè]			clothes	pikkutakki	1
744	pilkku		点 [diǎn] ; 圆点 [yuán diǎn]			communication	pilkku	1
745	pilvi		云 [yún]			weather	pilvi	1
746	pimeä		黑暗的			adjective-basic	pimea	1
767	portti		门 [mén]			house	portti	1
747	pinta		表面 [biǎo miàn]			mathematics	pinta	1
748	pinta-ala		区域 [qū yù] ; 面积 [miàn jī]			mathematics	pinta-ala	1
749	pirtelö		奶昔 [nǎi xī]			drink	pirtelo	1
752	pitkä		高的 (gāo-de)			adjective	pitka	1
753	pitkäveteinen		乏味			adjective	pitkaveteinen	1
754	pitää		维护			verb	pitaa	1
755	pohja		军事基地 [jūn shì jī dì]			society	pohja	1
756	pohjoinen		北方 [běi fāng]			geography	pohjoinen	1
768	posti		邮政 [yóu zhèng]			communication	posti	1
757	poika		男孩 [nán hái]			family	poika	1
758	poikaystävä		男朋友 [nán péng you]			relations	poikaystava	1
759	pokaali		奖杯			sports	pokaali	1
760	poliisi		警方 [jǐng fāng] ; 警察机关			society	poliisi	1
761	poliitikko		政治家 [zhèng zhì jiā]			profession	poliitikko	1
762	politiikka ; menettelytapa ; ohjelma		政策 [zhèng cè]			society	politiikka-menettelytapa-ohjelma	1
763	polttaa		烧毁			verb	polttaa	1
764	polvi		膝 [xī] ; 膝盖 [xī gài]			anatomy	polvi	1
765	porkkana		胡萝卜 [hú luó bo]			vegetable	porkkana	1
766	porras		阶梯 [jiē tī] ; 台阶 [tái jiē]			house	porras	1
769	postimaksu		邮费 [yóu fèi]			object	postimaksu	1
770	potilas		病人 [bìng rén]			medicine	potilas	1
771	potkaista		踢			verb	potkaista	1
772	projekti		项目 [xiàng mù]			science	projekti	1
773	protesti		抗议 [kàng yì]			communication	protesti	1
774	pudota		落下			verb-basic	pudota	1
775	puhelu		电话 [diàn huà]			communication	puhelu	1
776	puhua		谈话			verb-basic	puhua	1
777	puhutko englantia		你会说英语吗			conversation	puhutko-englantia	1
778	puisto		公园 [gōng yuán]			city	puisto	1
779	puku		衣服 [yī fu] ; 服装 [fú zhuāng]			clothes	puku	1
780	pullo		瓶子 [píng zi]			container	pullo	1
781	punainen		红色 [hóng sè]			color	punainen	1
782	puoli		旁边 [páng biān]			mathematics	puoli	1
783	puolikas		半 [bàn] ; 一半 [yī bàn]			mathematics	puolikas	1
784	purje		帆 [fān]			object	purje	1
785	purkki		罐头 [guàn tou] ; 听头 [tīng tóu]			container	purkki	1
786	putki		管子 [guǎn zi]			object	putki	1
788	puuska		突发			abstract	puuska	1
787	puu		树 [shù]			nature	puu	1
789	puutarha		花园 [huā yuán]			house	puutarha	1
791	pyyntö		请求 [qǐng qiú]			communication	pyynto	1
792	pyytää		请求			verb	pyytaa	1
838	ruskea		褐色 [hè sè] ; 棕色 [zōng sè]			color	ruskea	1
793	pyörä		轮子 [lún zi]			object	pyora	1
794	pähkinä		坚果 [jiān guǒ]			fruit	pahkina	1
795	päivä		天 [tiān]			time	paiva	1
796	päivämäärä		日期 [rì qī]			time	paivamaara	1
797	pää		头 [tóu] ; 首 [shǒu]			anatomy	paa	1
798	pääkaupunki		首都 [shǒu dū]			city	paakaupunki	1
799	päällä		在…之上关于 [guān yú]			preposition	paalla	1
800	pääoma		资本 [zī běn] ; 资金 [zī jīn]			business	paaoma	1
801	päärynä		梨子 [lí zi]			fruit	paaryna	1
802	päästä		变成			verb	paasta	1
803	päätös		结论 [jié lùn] ; 决定 [jué dìng]			communication	paatos	1
804	pöly		灰尘 [huī chén]			material	poly	1
805	pöytä		桌子 [zhuō zi]			furniture	poyta	1
806	raaka		绿色 [lǜ sè]			color	raaka	1
807	raakaöljy		石油 [shí yóu]			material	raakaoljy	1
808	raha		钱 [qián]			business	raha	1
809	rahallinen		财政的			adjective	rahallinen	1
810	raja		限度 [xiàn dù]			mathematics	raja	1
811	rajoittaa		约束			verb	rajoittaa	1
812	rakas		亲爱的 [qīn ài de]			relations	rakas	1
813	rakastaa		爱			verb-basic	rakastaa	1
814	rakennus		建筑物 [jiàn zhù wù]			city	rakennus	1
815	rakentaminen		结构 [jié gòu]			city	rakentaminen	1
816	rakkaus		爱 [ài]			feeling	rakkaus	1
817	rangaistus		惩罚 [chéng fá]			society	rangaistus	1
818	raskas		沉重			adjective-basic	raskas	1
819	rasva		脂肪 [zhī fáng]			material	rasva	1
820	rauha		和平 [hé píng]			society	rauha	1
821	rauta		铁 [tiě]			material	rauta	1
822	ravintola		餐厅 [cān tīng] ; 饭店 [fàn diàn]			city	ravintola	1
823	reaktio		反应 [fǎn yìng]			communication	reaktio	1
824	retiisi		萝卜 [luó bo]			vegetable	retiisi	1
825	reuna		边缘 [biān yuán]			mathematics	reuna	1
826	riisi		稻 [dào] ; 米 [mǐ]			food	riisi	1
827	rikas		富的 ; 富裕的			adjective-people	rikas	1
828	rikos		犯罪 [fàn zuì]			society	rikos	1
829	rinnakkainen		平行			adjective	rinnakkainen	1
839	rytmi		节奏 [jié zòu] ; 旋律 [xuán lǜ]			art	rytmi	1
830	rinta		胸膛 [xiōng táng] ; 胸部 [xiōng bù]			anatomy	rinta	1
831	ruma		難看 ; 难看 (nánkàn) ; 醜 (chǒu)			adjective	ruma	1
832	runo		诗歌 [shī gē] ; 韵文 [yùn wén]			art	runo	1
833	runous		诗 [shī] ; 诗歌 [shī gē] ; 韵文 [yùn wén]			art	runous	1
834	ruoho		草 [cǎo]			nature	ruoho	1
835	ruoka		食物 [shí wù]			food	ruoka	1
836	ruokalista		菜单 [cài dān]			object	ruokalista	1
837	ruoska		鞭子 [biān zi]			tool	ruoska	1
840	saada		收到			verb	saada	1
841	saapas		靴子 [xuē zi]			clothes	saapas	1
842	saapua		到达			verb	saapua	1
843	saari		岛 [dǎo]			geography	saari	1
844	saastuminen		污染 [wū rǎn]			environment	saastuminen	1
845	sade		雨 [yǔ]			weather	sade	1
846	saippua		肥皂 [féi zào]			material	saippua	1
847	sairaala		医院 [yī yuàn]			city	sairaala	1
848	sairaanhoitaja		护士 [hù shi]			medicine	sairaanhoitaja	1
849	sairas		疒 ; 病			adjective-people	sairas	1
850	sairaus		疾病 [jí bìng]			medicine	sairaus	1
851	sakset		剪刀 [jiǎn dāo]			tool	sakset	1
852	salaatti		沙拉 [shā lā]			food	salaatti	1
853	salaisuus		秘密 [mì mì]			communication	salaisuus	1
854	salama		闪电 [shǎn diàn]			weather	salama	1
855	sama		相同的			adjective	sama	1
856	sana		词 [cí]			communication	sana	1
857	sanakirja		词典 [cí diǎn]			communication	sanakirja	1
858	sanoa		说			verb-basic	sanoa	1
859	sanomalehti		报纸 [bào zhǐ]			communication	sanomalehti	1
860	sateenkaari		彩虹 [cǎi hóng]			weather	sateenkaari	1
861	savusumu		烟雾 [yān wù]			environment	savusumu	1
862	se		它 [tā]			pronoun	se	1
863	seisoa		站住			verb	seisoa	1
864	seitsemän		七 [qī]			number	seitseman	1
865	seitsemänkymmentä		七十 [qī shí]			number	seitsemankymmenta	1
866	sekki		支票 [zhī piào]			business	sekki	1
867	sekunti		秒 [miǎo]			time	sekunti	1
868	selittää		解釋 ; 解释			verb	selittaa	1
869	selkä		背 [bèi] ; 背部			anatomy	selka	1
870	sellainen		这样			adverb	sellainen	1
871	seteli		纸币 [zhǐ bì]			business	seteli	1
872	seura		陪伴 [péi bàn]			society	seura	1
873	seuraava		下一个			adjective	seuraava	1
874	seurata		跟从			verb-basic	seurata	1
875	seuraus		结果 [jié guǒ]			science	seuraus	1
876	siemen		种子 [zhǒng zi]			object	siemen	1
877	sihteeri		秘书 [mì shū] ; 书记 [shū ji]			profession	sihteeri	1
878	siis		因此			adverb	siis	1
879	sijainti		地位			abstract	sijainti	1
880	sika		猪 [zhū]			animal	sika	1
881	sileä		光滑的			adjective	silea	1
882	silkki		丝绸 [sī chóu]			material	silkki	1
883	sillä		为了 [wèi le] ; 对于 [duì yú]			conjunction	silla	1
884	silmukka		网 [wǎng]			mathematics	silmukka	1
885	silmä		眼睛 [yǎn jing]			anatomy	silma	1
886	silmänräpäys		瞬间 [shùn jiān]			time	silmanrapays	1
887	silta		桥 [qiáo]			city	silta	1
888	sininen		蓝色 [lán sè]			color	sininen	1
889	sipuli		洋葱 [yáng cōng]			vegetable	sipuli	1
890	sisko		姐妹 [jiě mèi]			family	sisko	1
891	sisällä		在...里面 (zài...lǐmiàn)			adverb	sisalla	1
892	sitruuna		柠檬 [níng méng]			fruit	sitruuna	1
929	syntymä		出生 [chū shēng]			family	syntyma	1
893	sitten		自从 [zì cóng] ; 自…以来			preposition	sitten	1
894	sivistys		知识 [zhī shi] ; 学问 [xué wèn]			education	sivistys	1
895	sivu		页 [yè]			communication	sivu	1
896	soitin		工具 [gōng jù]			device	soitin	1
897	soittaa		打电话			verb	soittaa	1
898	sokeri		糖 [táng]			food	sokeri	1
899	solmu		结			abstract	solmu	1
900	solu		细胞 [xì bāo]			anatomy	solu	1
930	syntymäpäivä		生日 [shēng rì]			family	syntymapaiva	1
901	sopimus		合同 [hé tong] ; 合约 [hé yuē]			business	sopimus	1
902	sormi		手指 [shǒu zhǐ]			anatomy	sormi	1
903	sormus		戒指 [jiè zhi]			clothes	sormus	1
904	sota		战争 [zhàn zhēng]			society	sota	1
905	sotaretki		市场活动 ; 市场活动			abstract	sotaretki	1
906	sotilas		軍事			adjective	sotilas	1
907	suggestio		提议 [tí yì] ; 建议 [jiàn yì]			communication	suggestio	1
908	suhde		关系 [guān xì]			family	suhde	1
909	suhteet		关系 [guān xì]			communication	suhteet	1
910	suihku		淋浴器			house	suihku	1
911	sukka		短袜 [duǎn wà]			clothes	sukka	1
912	suklaa		巧克力 [qiǎo kè lì]			food	suklaa	1
913	suku		家庭 [jiā tíng]			family	suku	1
914	sukupuoli		性别 [xìng bié]			nature	sukupuoli	1
915	suljettu		结束			adjective	suljettu	1
916	sulkea		关闭			verb-basic	sulkea	1
917	sumu		雾 [wù]			weather	sumu	1
918	suola		盐 [yán]			food	suola	1
919	suora		直			adjective	suora	1
920	suoraan		直接地			adverb	suoraan	1
921	suu		口 [kǒu] ; 嘴 [zuǐ] ; 嘴巴 [zuǐ bā]			anatomy	suu	1
922	suudella		接吻			verb-basic	suudella	1
923	suudelma		吻 [wěn]			relations	suudelma	1
924	suunnitelma		计划 [jì huà]			business	suunnitelma	1
925	suuri		大			adjective-basic	suuri	1
926	suurkiitos		多谢 [duō xiè]			conversation	suurkiitos	1
927	sydän		心 [xīn] ; 心脏 [xīn zàng]			anatomy	sydan	1
928	syksy		秋天 [qiū tiān]			time	syksy	1
949	takki		外套 [wài tào]			clothes	takki	1
931	syy		理由 [lǐ yóu] ; 原因 [yuán yīn]			communication	syy	1
932	syyte		控告 [kòng gào] ; 指控 [zhǐ kòng]			business	syyte	1
933	syyttää		控告			verb	syyttaa	1
934	syödä		吃			verb-basic	syoda	1
935	sähköinen		电的			adjective	sahkoinen	1
936	sänky		床 [chuáng]			furniture	sanky	1
937	särö		裂缝			abstract	saro	1
938	sävel		音符 [yīn fú]			art	savel	1
939	sää		天气 [tiān qì]			nature	saa	1
940	sääntö		规则 [guī zé] ; 惯例 [guàn lì]			mathematics	saanto	1
941	säästää		节约			verb	saastaa	1
942	tahto		意志 [yì zhì]			society	tahto	1
943	taide		艺术 [yì shù]			art	taide	1
944	taipumus		趋势 [qū shì]			science	taipumus	1
945	taistelu		斗争			abstract	taistelu	1
946	taiteilija		艺术家 [yì shù jiā]			art	taiteilija	1
947	taito		技能 [jì néng] ; 技巧 [jì qiǎo]			business	taito	1
948	taivas		天空 [tiān kōng]			nature	taivas	1
950	talo		房子 [fáng zi]			house	talo	1
951	talous		经济 [jīng jì]			business	talous	1
952	talvi		冬天 [dōng tiān]			time	talvi	1
953	tanssia		跳舞			verb-basic	tanssia	1
954	tapa		方式			art	tapa	1
960	tarjous		答应提供			business	tarjous	1
955	tapaaminen		约会 [yuē huì]			relations	tapaaminen	1
956	tapahtua		發生 ; 发生			verb	tapahtua	1
957	tapaus		服务案例			abstract	tapaus	1
958	tappaa		杀			verb	tappaa	1
959	tappio		失去 [shī qù] ; 失败 [shī bài]			business	tappio	1
961	tarkoitus		功能 [gōng néng] ; 用处 [yòng chu]			mathematics	tarkoitus	1
962	tarpeeksi		足够			adverb	tarpeeksi	1
963	tarve		需求 [xū qiú]			business	tarve	1
964	tarvita		要求			verb-basic	tarvita	1
965	tasainen		平的			adjective	tasainen	1
966	tasanko		平原 [píng yuán]			geography	tasanko	1
967	tasavalta		民主共和国			society	tasavalta	1
968	taso		收费 [shōu fèi] ; 费率 [fèi lǜ]			business	taso	1
969	taulu		板 [pàn]			object	taulu	1
970	taulukko		表格 [biǎo gé] ; 列表 [liè biǎo]			business	taulukko	1
971	tavata		会晤			verb-basic	tavata	1
972	te		你 [nǐ] ; 您 [nín]			pronoun	te	1
973	teatteri		剧场 [jù chǎng] ; 剧院 [jù yuàn]			city	teatteri	1
974	tee		茶 [chá]			drink	tee	1
975	tehdas		工厂 [gōng chǎng]			city	tehdas	1
976	tehdä		做 (zuò)			verb-basic	tehda	1
1015	tulitikku		火柴 [huǒ chái]			tool	tulitikku	1
977	tehtävä		问题 [wèn tí]			science	tehtava	1
978	teknologia		科技 [kē jì] ; 工艺 [gōng yì]			science	teknologia	1
979	teko		行动			abstract	teko	1
980	televisiovastaanotin		电视 [diàn shì]			device	televisiovastaanotin	1
981	tennis		网球 [wǎng qiú]			sports	tennis	1
982	tentti		考试 [kǎo shì] ; 测试 [cè shì]			education	tentti	1
983	teollisuus		工业 [gōng yè] ; 制造业 [zhì zào yè]			business	teollisuus	1
984	teoria		理论 [lǐ lùn]			science	teoria	1
985	terve		你好 [nǐ hǎo]			conversation	terve	1
986	terveys		健康 [jiàn kāng]			medicine	terveys	1
987	terä		刀叶 [dāo yè]			object	tera	1
988	teräs		钢 [gāng]			material	teras	1
989	testamentti		遗嘱 [yí zhǔ]			society	testamentti	1
990	testata		试			verb	testata	1
991	tie		道路 [dào lù]			city	tie	1
992	tiede		科学 [kē xué]			science	tiede	1
993	tiedemies		科学家 [kē xué jiā]			profession	tiedemies	1
1016	tulla		来			verb-basic	tulla	1
994	tieto		知道 [zhī dao] ; 认识 [rèn shi]			education	tieto	1
995	tietokone		计算机 [jì suàn jī] ; 电脑 [diàn nǎo]			device	tietokone	1
996	tiili		砖 [zhuān]			house	tiili	1
997	tila		状态			abstract	tila	1
998	tilaisuus		机会			abstract	tilaisuus	1
999	tili		帐目			business	tili	1
1017	tulot		收入 [shōu rù]			business	tulot	1
1000	todella		确实			adverb	todella	1
1001	todennäköinen		可能			adjective	todennakoinen	1
1002	toimia		表现			verb	toimia	1
1018	tunne		感觉 [gǎn jué]			communication	tunne	1
1003	toiminta		行动			abstract	toiminta	1
1004	toiminto		行动 [xíng dòng] ; 操作 [cāo zuò]			business	toiminto	1
1005	toimintosarja		过程			science	toimintosarja	1
1006	toinen		另外的			adjective	toinen	1
1007	toive		期望 [qī wàng]			feeling	toive	1
1008	toivoa		希望			verb-basic	toivoa	1
1009	tomaatti		西红柿 [xī hóng shì]			vegetable	tomaatti	1
1019	tunnistaa		识别			verb	tunnistaa	1
1010	tosi		非常			adverb	tosi	1
1011	tosiasia		事实 [shì shí]			science	tosiasia	1
1012	toukokuu		五月 [wǔ yuè]			time	toukokuu	1
1013	tuhat		千 [qiān]			number	tuhat	1
1014	tulevaisuus		将来 [jiāng lái] ; 未来 [wèi lái]			time	tulevaisuus	1
1020	tunti		小时 [xiǎo shí] ; 钟头 [zhōng tóu]			time	tunti	1
1021	tuo		那 [nǎ] ; 那个 [nèi gè]			pronoun	tuo	1
1022	tuoksu		气味 [qì wèi]			nature	tuoksu	1
1023	tuoli		椅子 [yǐ zi]			furniture	tuoli	1
1024	tuomari		裁判 [cái pàn]			profession	tuomari	1
1025	tuotanto		生产			science	tuotanto	1
1026	tuote		产品 [chǎn pǐn]			business	tuote	1
1036	työläinen		工人 [gōng rén]			business	tyolainen	1
1027	tutkimus		调查 [diào chá]			science	tutkimus	1
1028	tuuli		风 [fēng]			weather	tuuli	1
1029	typerä		愚蠢的			adjective-people	typera	1
1030	tyttö		小姐 [xiǎo jie]			family	tytto	1
1031	tytär		女儿 [nǚ ér]			family	tytar	1
1032	tyyli		款式 [kuǎn shì] ; 样式 [yàng shì]			art	tyyli	1
1033	tyyppi		种类			abstract	tyyppi	1
1037	tähti		星 [xīng]			geography	tahti	1
1034	työ		行动 [xíng dòng] ; 工作 [gōng zuò]			business	tyo	1
1035	työhuone		办公室 [bàn gōng shì] ; 办事处 [bàn shì chù]			business	tyohuone	1
1038	tällöin		这里 (zhèlǐ) ; 这儿 (zhèr)			adverb	talloin	1
1039	tämä		这 [zhè] ; 这个 [zhè ge]			pronoun	tama	1
1040	tänä iltana		今晚 (jīnwǎn)			adverb	tana-iltana	1
1041	tänään		今天			adverb	tanaan	1
1042	täsmälleen		恰恰			adverb	tasmalleen	1
1043	täydellinen		完全			adjective	taydellinen	1
1044	täysi		充满的			adjective	taysi	1
1045	täyttää		装满			verb	tayttaa	1
1046	uida		游泳 (yóuyǒng)			verb-basic	uida	1
1047	uimaranta		沙滩 [shā tān]			geography	uimaranta	1
1048	ukkonen		雷 [léi]			weather	ukkonen	1
1049	ulkomaan		外國的 ; 外国的 (wàiguó-de)			adjective	ulkomaan	1
1050	ulkopuoli		表面 [biǎo miàn] ; 外面 [wài mian]			mathematics	ulkopuoli	1
1051	uni		睡眠 [shuì mián]			nature	uni	1
1052	unohtaa		忘记			verb-basic	unohtaa	1
1053	usein		常常			adverb	usein	1
1055	uudestaan		又			adverb	uudestaan	1
1054	uskonto		宗教信仰			society	uskonto	1
1056	uuni		炉子 [lú zi]			device	uuni	1
1057	uusi		新的			adjective-basic	uusi	1
1058	vaaleanpunainen		粉红色 [fěn hóng sè]			color	vaaleanpunainen	1
1059	vaara		危险			abstract	vaara	1
1060	vaarallinen		危險 ; 危险			adjective	vaarallinen	1
1061	vaarantaa		赌博			verb	vaarantaa	1
1062	vai		或 [huò]			conjunction	vai	1
1063	vaihe		时期 [shí qī]			science	vaihe	1
1064	vaihto		替换 [tì huàn]			mathematics	vaihto	1
1065	vaihtoraha		零钱 [líng qián]			business	vaihtoraha	1
1066	vaikea		沉重			adjective-basic	vaikea	1
1067	vaille		的 [dí]			preposition	vaille	1
1068	vaimo		妻子 [qī zi]			family	vaimo	1
1069	vain		仅仅			adverb	vain	1
1070	vakuutus		保险 [bǎo xiǎn]			business	vakuutus	1
1071	valehdella		说谎 ; 說謊 (shuohuang)			verb-basic	valehdella	1
1072	valehtelu		谎言 [huǎng yán]			communication	valehtelu	1
1073	valinnanvara		选择			abstract	valinnanvara	1
1074	valinta		选举 [xuǎn jǔ]			society	valinta	1
1075	valintamyymälä		超级市场 [chāo jí shì chǎng] ; 超市 [chāo shì]			city	valintamyymala	1
1076	valita		选择			verb	valita	1
1077	valkoinen		白色 [bái sè]			color	valkoinen	1
1078	valkosipuli		大蒜 [dà suàn]			vegetable	valkosipuli	1
1079	valmennus		训练 [xùn liàn] ; 培训 [péi xùn]			education	valmennus	1
1080	valmistaa		准备			verb	valmistaa	1
1081	valo		光 [guāng]			physics	valo	1
1082	valokuvaaja		摄影师 [shè yǐng shī]			profession	valokuvaaja	1
1083	valta		统治 [tǒng zhì]			society	valta	1
1084	valtaosa		多数			abstract	valtaosa	1
1085	valtio		政区			society	valtio	1
1086	vanha		旧的			adjective-people	vanha	1
1087	vanhempi		父亲 [fù qīn] ; 母亲 [mǔ qīn] ; 监护人 [jiān hù rén]			family	vanhempi	1
1088	vankila		监狱 [jiān yù]			city	vankila	1
1089	vapaa		自由的			adjective-people	vapaa	1
1090	vapauttaa		释放			verb	vapauttaa	1
1091	varastaa		偷窃			verb	varastaa	1
1092	varhainen		早的			adjective	varhainen	1
1093	varma		確定 ;  确定 (quèdìng) ; 当然 (dāngrán)			adjective	varma	1
1094	varmasti		一定			adverb	varmasti	1
1095	varsi		茎 [jīng]			nature	varsi	1
1096	varvas		脚趾 [jiǎo zhǐ]			anatomy	varvas	1
1097	vasara		锤子 [chuí zi]			tool	vasara	1
1098	vasen		左			adjective-basic	vasen	1
1099	vastaan		相反 [xiāng fǎn] ; 靠着			preposition	vastaan	1
1100	vastakaiku		回复 [huí fù]			communication	vastakaiku	1
1101	vastakohta		逆			abstract	vastakohta	1
1102	vastata		回答			verb	vastata	1
1103	vastuu		可靠性			abstract	vastuu	1
1104	vattu		树莓 [shù méi]			fruit	vattu	1
1105	vauva		婴儿 [yīng ér]			family	vauva	1
1106	veitsi		餐刀			kitchen	veitsi	1
1107	veli		兄弟 [xiōng dì]			family	veli	1
1108	vene		小船 [xiǎo chuán]			transport	vene	1
1109	verho		帘子 [lián zi] ; 窗帘 [chuāng lián]			furniture	verho	1
1110	veri		血 [xuè] ; 血液 [xuè yè]			anatomy	veri	1
1111	vero		税 [shuì] ; 税收 [shuì shōu]			business	vero	1
1112	verrata		比较			verb	verrata	1
1113	vertailu		比较 [bǐ jiào]			science	vertailu	1
1114	vesi		水 [shuǐ]			drink	vesi	1
1115	vesipumppu		泵 [bèng]			tool	vesipumppu	1
1116	vetää		拉			verb-basic	vetaa	1
1117	vielä		仍然			adverb	viela	1
1118	vieras		客人 [kè rén]			relations	vieras	1
1119	vieressä		在旁边			preposition	vieressa	1
1120	viettää		度过			verb	viettaa	1
1121	viha		恨 [hèn] ; 憎恨 [zēng hèn]			feeling	viha	1
1122	vihata		憎恨			verb	vihata	1
1123	viikko		星期 [xīng qī]			time	viikko	1
1124	viikonloppu		周末 [zhōu mò]			time	viikonloppu	1
1125	viimeinen		最后的			adjective	viimeinen	1
1126	viini		葡萄酒 [pú tao jiǔ]			drink	viini	1
1127	viisas		聪 (cōng)			adjective-people	viisas	1
1128	viisi		五 [wǔ]			number	viisi	1
1129	viisikymmentä		五十 (wǔ shí)			number	viisikymmenta	1
1130	viisitoista		十五 (shíwǔ)			number	viisitoista	1
1131	viiva		线条 [xiàn tiáo]			art	viiva	1
1132	villa		羊毛 [yáng máo]			material	villa	1
1133	vilustuminen		感冒 [gǎn mào]			medicine	vilustuminen	1
1134	violetti		紫色 [zǐ sè]			color	violetti	1
1135	virhe		错误 [cuò wù]			communication	virhe	1
1136	virkamies		官员 [guān yuán] ; 领导 [lǐng dǎo]			business	virkamies	1
1137	virke		句子 [jù zi]			communication	virke	1
1140	voileipä		三明治 [sān míng zhì]			food	voileipa	1
1138	virta		流 [liú]			nature	virta	1
1139	voi		黄油 [huáng yóu]			food	voi	1
1142	voimakas		強的 ; 强的 (qiángde)			adjective-basic	voimakas	1
1141	voima		势力			abstract	voima	1
1145	vuohi		山羊 [shān yáng]			animal	vuohi	1
1143	voittaa		赢			verb	voittaa	1
1144	voitto		赢 [yíng] ; 胜利 [shèng lì]			sports	voitto	1
1146	vuosi		年 [nián]			time	vuosi	1
1147	vuosisata		世纪 [shì jì]			time	vuosisata	1
1148	väestö		人口 [rén kǒu]			society	vaesto	1
1149	väliaika		暂停 [zàn tíng]			time	valiaika	1
1150	välittömästi		立刻			adverb	valittomasti	1
1151	välttää		避开			verb	valttaa	1
1152	väri		颜色 [yán sè] ; 色彩 [sè cǎi] ; 颜料 [yán liào]			art	vari	1
1153	väsynyt		累 (lèi)			adjective-people	vasynyt	1
1154	ydin		内核			science	ydin	1
1155	yhdeksän		九 [jiǔ]			number	yhdeksan	1
1156	yhdeksänkymmentä		九十 [jiǔ shí]			number	yhdeksankymmenta	1
1157	yhdeksäntoista		十九 [shí jiǔ]			number	yhdeksantoista	1
1158	yhdessä		一起			adverb	yhdessa	1
1159	yhteenlasku		加 [jiā]			mathematics	yhteenlasku	1
1160	yhteiskunta		社会 [shè huì]			science	yhteiskunta	1
1161	yhtiö		公司 [gōng sī]			business	yhtio	1
1162	yhtye		集团 [jí tuán] ; 团体 [tuán tǐ]			business	yhtye	1
1163	ykkönen		计量单位 [jì liàng dān wèi]			physics	ykkonen	1
1164	yksi		一 [yī]			number	yksi	1
1165	yksilö		个体 [gè tǐ]			society	yksilo	1
1166	yksinkertainen		简单化			adjective	yksinkertainen	1
1167	yksinäinen		寂寞			adjective-people	yksinainen	1
1168	yksitoista		十一 [shí yī]			number	yksitoista	1
1169	yksityinen		私人的			adjective	yksityinen	1
2	Espanjan kuningaskunta		西班牙 [Xī bān yá]			country	espanjan-kuningaskunta	2
1170	yleinen		通常 (tōngcháng)			adjective	yleinen	1
1171	yliopisto		大学 [dà xué]			city	yliopisto	1
1172	yllättää		使惊奇			verb	yllattaa	1
1173	yllätys		惊奇 [jīng qí] ; 诧异 [chà yì]			relations	yllatys	1
1174	yläpuolella		上			adverb	ylapuolella	1
1175	yläruumis		身体 [shēn tǐ]			anatomy	ylaruumis	1
1176	ylös		向上 (xiàngshàng)			adverb	ylos	1
1177	ymmärtää		了解			verb-basic	ymmartaa	1
1178	ympyrä		圆形 [yuán xíng]			mathematics	ympyra	1
1179	ympäristö		环境 [huán jìng]			environment	ymparisto	1
1180	yrittää		企图			verb	yrittaa	1
1181	yritys		公司 [gōng sī] ; 企业 [qǐ yè]			business	yritys	1
1182	yskiä		咳嗽			verb	yskia	1
1183	yskä		咳嗽 [ké sou]			medicine	yska	1
1184	ystävä		朋友 [péng you]			family	ystava	1
1185	yö		夜晚 [yè wǎn]			time	yo	1
1186	äiti		母亲 [mǔ qīn]			family	aiti	1
1187	äkillinen		突然的			adjective	akillinen	1
1188	älykäs		聪明的			adjective-people	alykas	1
1189	äyräs		堤 [dī] ; 岸 [àn]			geography	ayras	1
1190	ääni		声音 [shēng yīn]			physics	aani	1
1191	ääntämys		发音 [fā yīn]			communication	aantamys	1
1192	öljy		油 [yóu]			food	oljy	1
1193	šokki		震动			feeling	sokki	1
\.


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 190
-- Name: dictionary_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('dictionary_word_id_seq', 1193, true);


--
-- TOC entry 2145 (class 0 OID 16717)
-- Dependencies: 189
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 2174 (class 0 OID 0)
-- Dependencies: 188
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- TOC entry 2131 (class 0 OID 16603)
-- Dependencies: 175
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	word	dictionary	word
\.


--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 174
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_content_type_id_seq', 7, true);


--
-- TOC entry 2129 (class 0 OID 16592)
-- Dependencies: 173
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-07-07 13:01:34.559467+00
2	auth	0001_initial	2015-07-07 13:01:34.691555+00
3	admin	0001_initial	2015-07-07 13:01:34.760601+00
4	dictionary	0001_initial	2015-07-07 13:01:34.801644+00
5	sessions	0001_initial	2015-07-07 13:01:34.82666+00
\.


--
-- TOC entry 2176 (class 0 OID 0)
-- Dependencies: 172
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_migrations_id_seq', 5, true);


--
-- TOC entry 2148 (class 0 OID 16757)
-- Dependencies: 192
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
yen5ykxbcxhsl5a4uonu334w1cvd4p0z	M2FhMjZiMjcyMzEzNWJkMTNmMTFlYTBjY2QyN2NlZGZiODIyMmIxNjp7fQ==	2015-07-21 13:02:54.878966+00
\.


--
-- TOC entry 1968 (class 2606 OID 16630)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 1974 (class 2606 OID 16640)
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 1976 (class 2606 OID 16638)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 1970 (class 2606 OID 16628)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 1963 (class 2606 OID 16620)
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 1965 (class 2606 OID 16618)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 1985 (class 2606 OID 16658)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 1987 (class 2606 OID 16660)
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 1978 (class 2606 OID 16648)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 1991 (class 2606 OID 16668)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 1993 (class 2606 OID 16670)
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 1981 (class 2606 OID 16650)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2000 (class 2606 OID 16752)
-- Name: dictionary_word_finnish_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY dictionary_word
    ADD CONSTRAINT dictionary_word_finnish_key UNIQUE (finnish);


--
-- TOC entry 2002 (class 2606 OID 16750)
-- Name: dictionary_word_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY dictionary_word
    ADD CONSTRAINT dictionary_word_pkey PRIMARY KEY (id);


--
-- TOC entry 2005 (class 2606 OID 16754)
-- Name: dictionary_word_slug_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY dictionary_word
    ADD CONSTRAINT dictionary_word_slug_key UNIQUE (slug);


--
-- TOC entry 1997 (class 2606 OID 16726)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 1958 (class 2606 OID 16610)
-- Name: django_content_type_app_label_1bcbd182_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_1bcbd182_uniq UNIQUE (app_label, model);


--
-- TOC entry 1960 (class 2606 OID 16608)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 1956 (class 2606 OID 16600)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2008 (class 2606 OID 16764)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 1966 (class 1259 OID 16677)
-- Name: auth_group_name_42199b5a_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_group_name_42199b5a_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 1971 (class 1259 OID 16688)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 1972 (class 1259 OID 16689)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 1961 (class 1259 OID 16676)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 1982 (class 1259 OID 16702)
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- TOC entry 1983 (class 1259 OID 16701)
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- TOC entry 1988 (class 1259 OID 16714)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 1989 (class 1259 OID 16713)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 1979 (class 1259 OID 16690)
-- Name: auth_user_username_2094e6d7_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_username_2094e6d7_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 1998 (class 1259 OID 16755)
-- Name: dictionary_word_finnish_9f19d6f_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX dictionary_word_finnish_9f19d6f_like ON dictionary_word USING btree (finnish varchar_pattern_ops);


--
-- TOC entry 2003 (class 1259 OID 16756)
-- Name: dictionary_word_slug_2b812439_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX dictionary_word_slug_2b812439_like ON dictionary_word USING btree (slug varchar_pattern_ops);


--
-- TOC entry 1994 (class 1259 OID 16737)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 1995 (class 1259 OID 16738)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 2006 (class 1259 OID 16765)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 2009 (class 1259 OID 16766)
-- Name: django_session_session_key_105300c9_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_session_session_key_105300c9_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2012 (class 2606 OID 16683)
-- Name: auth_group_permiss_permission_id_110d47bf_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_110d47bf_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2011 (class 2606 OID 16678)
-- Name: auth_group_permissions_group_id_78840da8_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_78840da8_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2010 (class 2606 OID 16671)
-- Name: auth_permiss_content_type_id_51ef5986_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51ef5986_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2014 (class 2606 OID 16696)
-- Name: auth_user_groups_group_id_106675be_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_106675be_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2013 (class 2606 OID 16691)
-- Name: auth_user_groups_user_id_38fc0920_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_38fc0920_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2016 (class 2606 OID 16708)
-- Name: auth_user_user_per_permission_id_46496c26_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_46496c26_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2015 (class 2606 OID 16703)
-- Name: auth_user_user_permissions_user_id_4e2226e5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_4e2226e5_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2017 (class 2606 OID 16727)
-- Name: django_admin_content_type_id_5ee693e2_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5ee693e2_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2018 (class 2606 OID 16732)
-- Name: django_admin_log_user_id_73075736_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_73075736_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-07-11 18:56:43

--
-- PostgreSQL database dump complete
--


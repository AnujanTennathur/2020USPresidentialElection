--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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
-- Name: election; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.election (
    full_name text,
    county text NOT NULL,
    state text NOT NULL,
    democrat_vote_raw bigint,
    democrat_vote double precision,
    republican_vote_raw bigint,
    republican_vote double precision,
    other_vote_raw bigint,
    other_vote double precision,
    population_with_less_than_9th_grade_education double precision,
    population_with_9th_to_12th_grade_education_no_diploma double precision,
    high_school_graduate_and_equivalent double precision,
    some_college_no_degree double precision,
    associates_degree double precision,
    bachelors_degree double precision,
    graduate_or_professional_degree double precision,
    median_income bigint,
    mean_income bigint
);


ALTER TABLE public.election OWNER TO postgres;

--
-- Name: fips; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fips (
    fips bigint NOT NULL,
    name text,
    state text
);


ALTER TABLE public.fips OWNER TO postgres;

--
-- Name: unemployment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.unemployment (
    fips_code bigint NOT NULL,
    area_name text,
    civilian_labor_force_2020 bigint,
    employed_2020 bigint,
    unemployed_2020 bigint,
    unemployment_rate_2020 double precision,
    CONSTRAINT chk_labor_force CHECK ((civilian_labor_force_2020 = (employed_2020 + unemployed_2020)))
);


ALTER TABLE public.unemployment OWNER TO postgres;

--
-- Data for Name: election; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.election (full_name, county, state, democrat_vote_raw, democrat_vote, republican_vote_raw, republican_vote, other_vote_raw, other_vote, population_with_less_than_9th_grade_education, population_with_9th_to_12th_grade_education_no_diploma, high_school_graduate_and_equivalent, some_college_no_degree, associates_degree, bachelors_degree, graduate_or_professional_degree, median_income, mean_income) FROM stdin;
Escambia County, Alabama	Escambia County	AL	4918	30.91	10869	68.32	123	0.77	4.6	13.2	44.4	16.9	8.5	8.5	4	41153	55542
Etowah County, Alabama	Etowah County	AL	11567	24.24	35528	74.44	633	1.33	4	9.9	33.4	24.2	10.8	10.8	6.9	52177	69693
Fayette County, Alabama	Fayette County	AL	1395	15.91	7300	83.28	71	0.81	6.4	9.8	39.8	23.1	7.8	8.3	4.8	45650	66681
Franklin County, Alabama	Franklin County	AL	2086	16.58	10376	82.49	116	0.92	6.1	13.8	40.1	18.1	7.1	10.3	4.5	47359	63747
Geneva County, Alabama	Geneva County	AL	1595	12.71	10848	86.47	102	0.81	6.3	10.3	36.7	21.8	11	9.7	4.2	47608	63491
Greene County, Alabama	Greene County	AL	3884	81.34	875	18.32	16	0.34	2.8	15.3	37.1	20.4	7.6	10.6	6.1	32796	48095
Hale County, Alabama	Hale County	AL	4687	59.16	3190	40.27	45	0.57	5.2	14.3	37.8	17.5	8.9	10.8	5.6	35851	59052
Henry County, Alabama	Henry County	AL	2606	28.03	6607	71.06	85	0.91	5.8	12.7	32.8	18.7	9.1	14	7	58395	73705
Houston County, Alabama	Houston County	AL	12917	27.98	32618	70.64	638	1.38	3.6	8.8	32	23.5	9.7	14.3	8.1	55064	78415
Jackson County, Alabama	Jackson County	AL	3717	15.73	19670	83.22	249	1.05	5.2	12.8	37.4	19.2	9.3	10.2	5.9	46748	65829
Jefferson County, Alabama	Jefferson County	AL	181688	55.76	138843	42.61	5317	1.63	2.5	6.5	26.1	21.2	8.2	21.2	14.4	63595	93745
Lamar County, Alabama	Lamar County	AL	978	13.6	6174	85.83	41	0.57	7	11	40.9	20.5	10.4	6.1	4.1	49565	62422
Lauderdale County, Alabama	Lauderdale County	AL	11915	26.87	31721	71.54	703	1.59	3	8.3	34.9	20	8.1	16.1	9.8	56081	76624
Lawrence County, Alabama	Lawrence County	AL	3562	22.22	12322	76.86	147	0.92	5.7	11.6	41.1	18.5	7.3	10.1	5.7	54786	72948
Lee County, Alabama	Lee County	AL	27860	38.99	42221	59.09	1368	1.91	2.4	5.9	21.7	20.6	9.2	22.1	18	59288	84719
Limestone County, Alabama	Limestone County	AL	13672	27.77	34640	70.36	923	1.87	4.3	8.4	27.8	20.9	9.1	18.9	10.7	80146	99315
Lowndes County, Alabama	Lowndes County	AL	4972	72.74	1836	26.86	27	0.4	4.8	11.9	41.6	15.3	10.1	10.5	5.8	33125	55548
Macon County, Alabama	Macon County	AL	7108	81.49	1541	17.67	74	0.85	3.8	13.5	31.7	23	7.5	10.7	9.8	41206	57338
Madison County, Alabama	Madison County	AL	87286	44.82	102780	52.77	4701	2.41	2.2	5.5	19	20.5	7.6	26.8	18.3	78058	107154
Marengo County, Alabama	Marengo County	AL	5488	50.35	5343	49.02	69	0.63	3.1	7.8	35.6	21.9	9.6	12.7	9.2	42975	65484
Marion County, Alabama	Marion County	AL	1463	10.6	12205	88.4	139	1.01	6.1	13.2	35.5	21.7	11.6	7.1	4.7	49743	62389
Marshall County, Alabama	Marshall County	AL	5943	14.99	33191	83.7	521	1.31	6.5	9.1	31.9	20.2	10.9	14.5	6.9	58272	77500
Mobile County, Alabama	Mobile County	AL	79474	43.39	101243	55.27	2447	1.34	2.8	9.1	34.1	21	8.8	15.7	8.6	55352	75532
Monroe County, Alabama	Monroe County	AL	4455	41.76	6147	57.62	66	0.62	3.5	12.8	44	17.5	8.7	7.8	5.7	39965	57487
Montgomery County, Alabama	Montgomery County	AL	64529	65.09	33311	33.6	1299	1.31	3.6	8.4	25.6	21.1	7.6	19.5	14.2	56707	79962
Morgan County, Alabama	Morgan County	AL	13234	24.63	39664	73.83	824	1.53	6	8.8	30.8	21.6	9	15.9	7.9	61588	82600
Perry County, Alabama	Perry County	AL	3860	73.8	1339	25.6	31	0.59	6.6	13.8	42.9	16.1	5.3	10.1	5.1	32332	41226
Pickens County, Alabama	Pickens County	AL	4022	41.6	5594	57.86	52	0.54	6.4	8.6	41.1	20.1	9.2	9	5.5	45339	66279
Pike County, Alabama	Pike County	AL	5636	40.72	8042	58.1	163	1.18	3.1	9	36.2	18.5	5.4	15.7	12	42616	67849
Randolph County, Alabama	Randolph County	AL	2203	20.33	8559	78.98	75	0.69	6.1	11.9	34.9	18.4	10	12.1	6.7	49879	67742
Russell County, Alabama	Russell County	AL	11228	52.64	9864	46.25	237	1.11	5.5	9.3	29.6	26	13.3	10.3	6.1	47420	62441
Shelby County, Alabama	Shelby County	AL	33268	28.94	79700	69.33	1982	1.72	2	4.2	20.2	20.1	7.9	29.8	15.8	90618	118066
St. Clair County, Alabama	St. Clair County	AL	7744	17.43	36166	81.38	531	1.19	4.1	8.7	35.5	23.2	9.2	13.3	6	73218	88263
Sumter County, Alabama	Sumter County	AL	4648	73.88	1598	25.4	45	0.72	2.5	8.6	32.2	27.7	7.1	12.3	9.5	31726	49122
Talladega County, Alabama	Talladega County	AL	13138	36.84	22235	62.35	290	0.81	4.5	12.3	34.9	23.9	7.8	9.8	6.8	52457	70872
Tallapoosa County, Alabama	Tallapoosa County	AL	5859	27.91	14963	71.28	169	0.81	5.1	13	32.1	22.6	9	11.4	6.7	53282	71359
Tuscaloosa County, Alabama	Tuscaloosa County	AL	37765	41.88	51117	56.69	1290	1.43	2.5	6.8	29.4	21.4	9	18.2	12.7	61645	82543
Walker County, Alabama	Walker County	AL	4834	15.51	26002	83.42	334	1.07	5.3	12.1	34.8	21.6	11	9.4	5.9	52987	68336
Washington County, Alabama	Washington County	AL	2258	25.44	6564	73.95	54	0.61	2.8	8.9	43.8	22.7	7.5	6.7	7.5	51184	76832
Wilcox County, Alabama	Wilcox County	AL	4048	68.58	1833	31.05	22	0.37	5.7	16.6	40.4	20.5	5.2	7.8	3.8	38208	50522
Winston County, Alabama	Winston County	AL	974	8.63	10195	90.35	115	1.02	5.9	14	40.4	18.4	7.5	8.1	5.7	49494	66201
Aleutians East Borough, Alaska	Aleutians East Borough	AK	180	32.85	336	61.31	32	5.84	9.8	9.2	39.4	18.7	6.1	12.7	4.3	79961	88309
Aleutians West Census Area, Alaska	Aleutians West Census Area	AK	692	53.98	551	42.98	39	3.04	6.2	4.2	41.3	25.2	7.5	13.2	2.3	100662	117300
Anchorage Municipality, Alaska	Anchorage Municipality	AK	70933	48.87	68189	46.97	6031	4.16	2.1	3.7	24.5	24.1	8.6	23	14	95731	122032
Bethel Census Area, Alaska	Bethel Census Area	AK	3085	60.41	1670	32.7	352	6.89	6.3	11	47.9	17.9	7.3	5.3	4.4	64094	85288
Bristol Bay Borough, Alaska	Bristol Bay Borough	AK	193	38.14	304	60.08	9	1.78	2	3	28.3	31.9	8.5	21.9	4.4	94167	116487
Chugach Census Area, Alaska	Chugach Census Area	AK	1395	39.59	1938	54.99	191	5.42	1.8	3.7	23.8	27.8	11.5	20.3	11.2	83068	103289
Copper River Census Area, Alaska	Copper River Census Area	AK	480	28.43	1130	66.9	79	4.68	2.1	5.5	29.1	28.9	6.4	19	9	70606	88145
Denali Borough, Alaska	Denali Borough	AK	478	41.17	637	54.87	46	3.96	1.1	2.2	46.8	16.3	8.4	13.7	11.5	87292	98536
Dillingham Census Area, Alaska	Dillingham Census Area	AK	984	51.6	822	43.1	101	5.3	4.1	7.8	41.6	19.5	6.5	11.3	9.1	69412	86298
Fairbanks North Star Borough, Alaska	Fairbanks North Star Borough	AK	18138	40.11	24917	55.1	2165	4.79	1.9	3.5	25.3	26.7	9.7	19.6	13.3	81655	107852
Haines Borough, Alaska	Haines Borough	AK	1579	60.13	986	37.55	61	2.32	0.8	1.5	34.4	25.1	4.4	16.8	16.9	68276	76099
Hoonah-Angoon Census Area, Alaska	Hoonah-Angoon Census Area	AK	1645	71.49	577	25.08	79	3.43	0.7	5.3	33.6	23.2	9.6	20.4	7.1	62344	84200
Juneau City and Borough, Alaska	Juneau City and Borough	AK	10834	61.25	6210	35.11	643	3.64	1	3.5	22.1	23.4	9.2	25.8	14.9	95711	117189
Kenai Peninsula Borough, Alaska	Kenai Peninsula Borough	AK	10965	32.3	21761	64.1	1222	3.6	1.6	4.2	30.8	26.5	8.9	17.6	10.4	76272	99127
Ketchikan Gateway Borough, Alaska	Ketchikan Gateway Borough	AK	2467	36.4	3985	58.79	326	4.81	1.1	4.1	28.5	31.2	6.6	19.3	9.2	82763	108405
Kodiak Island Borough, Alaska	Kodiak Island Borough	AK	2523	38.18	3756	56.84	329	4.98	4.3	4.5	29	24.2	9.5	19.2	9.3	91138	106803
Kusilvak Census Area, Alaska	Kusilvak Census Area	AK	1209	62	569	29.18	172	8.82	3.9	14.7	55.7	18.2	2.9	4	0.6	42663	57035
Lake and Peninsula Borough, Alaska	Lake and Peninsula Borough	AK	358	55.59	234	36.34	52	8.07	3.8	5.4	45	23	7.2	8.6	6.9	61607	72594
Matanuska-Susitna Borough, Alaska	Matanuska-Susitna Borough	AK	12849	24	38492	71.9	2195	4.1	1.7	4	33.2	26.3	11.1	15.3	8.4	86435	106734
Nome Census Area, Alaska	Nome Census Area	AK	2131	58.1	1287	35.09	250	6.82	3.3	8.5	43.4	23.1	3.4	7.8	10.5	70121	89721
North Slope Borough, Alaska	North Slope Borough	AK	1134	45.4	1197	47.92	167	6.69	2.8	6.5	43	24.7	8.7	9.5	4.7	83472	109311
Northwest Arctic Borough, Alaska	Northwest Arctic Borough	AK	1031	54.12	735	38.58	139	7.3	4.1	9.9	46.2	20.5	4.2	10	5.1	77647	96030
Petersburg Borough, Alaska	Petersburg Borough	AK	534	33.21	1002	62.31	72	4.48	8.7	4.3	31.8	22.3	8	17.7	7.1	77826	96770
Prince of Wales-Hyder Census Area, Alaska	Prince of Wales-Hyder Census Area	AK	2321	52.91	1930	43.99	136	3.1	1.3	6.2	36.4	28.1	8.6	13.6	5.8	61779	80427
Sitka City and Borough, Alaska	Sitka City and Borough	AK	2124	52.69	1745	43.29	162	4.02	2	2.8	25.8	25.4	9.9	22.9	11.3	95261	104872
Skagway Municipality, Alaska	Skagway Municipality	AK	679	71.17	217	22.75	58	6.08	5.3	2.1	34	24.4	6.4	22.1	5.8	79583	91563
Southeast Fairbanks Census Area, Alaska	Southeast Fairbanks Census Area	AK	748	20.19	2823	76.19	134	3.62	2.1	4.2	36.6	27.8	9.5	13.7	6.1	75378	85484
Wrangell City and Borough, Alaska	Wrangell City and Borough	AK	396	31.01	827	64.76	54	4.23	1.7	11.2	33.4	26	9.6	13.9	4.1	61000	80656
Yakutat City and Borough, Alaska	Yakutat City and Borough	AK	160	50.47	133	41.96	24	7.57	1	5	43.6	29.2	10.3	9.6	1.3	76875	89580
Yukon-Koyukuk Census Area, Alaska	Yukon-Koyukuk Census Area	AK	1740	61.31	965	34	133	4.69	4.4	8.6	38.9	29	5	9.6	4.5	47826	62362
Apache County, Arizona	Apache County	AZ	23293	66.21	11442	32.52	448	1.27	7	9	32.5	28.6	9.2	8.2	5.6	37483	53624
Cochise County, Arizona	Cochise County	AZ	23732	39.24	35557	58.8	1184	1.96	4.6	6.5	25.1	25.6	11.4	16.6	10	58421	75274
Coconino County, Arizona	Coconino County	AZ	44698	60.94	27052	36.88	1596	2.18	3.3	5.3	21	22.2	8.6	23.3	16.3	67266	89188
Gila County, Arizona	Gila County	AZ	8943	32.31	18377	66.4	358	1.29	2.7	10.2	30.6	28.3	10.2	11.8	6.2	55242	69681
Graham County, Arizona	Graham County	AZ	4034	26.9	10749	71.68	213	1.42	4.3	11.1	30.4	29.1	11.1	9	5	64089	74766
Greenlee County, Arizona	Greenlee County	AZ	1182	32.05	2433	65.97	73	1.98	4.8	9.3	32.4	29.9	7	13.2	3.5	73756	79905
La Paz County, Arizona	La Paz County	AZ	2236	29.97	5129	68.75	95	1.27	6	11.4	32.8	28.5	8.9	8.4	4	46634	62044
Maricopa County, Arizona	Maricopa County	AZ	1040774	50.29	995665	48.11	33036	1.6	4.9	5.9	22.1	23.1	9	21.9	13.1	80675	108596
Mohave County, Arizona	Mohave County	AZ	24831	23.72	78535	75.01	1339	1.28	3.5	8.7	34.4	29.6	9.3	8.9	5.5	53592	73093
Navajo County, Arizona	Navajo County	AZ	23383	45.16	27657	53.41	743	1.43	5	9.4	29.9	28.6	9.9	10.1	7.2	50335	63992
Pima County, Arizona	Pima County	AZ	304981	58.57	207758	39.9	7996	1.54	4.2	6.3	21.5	24.2	8.8	20	15	64323	88437
Pinal County, Arizona	Pinal County	AZ	75106	40.59	107077	57.87	2854	1.54	4.4	7.1	30.7	26.2	10.1	14.4	7	73313	92354
Santa Cruz County, Arizona	Santa Cruz County	AZ	13138	67.16	6194	31.67	229	1.17	10	12	25.4	20	9.1	14	9.5	51885	71305
Yavapai County, Arizona	Yavapai County	AZ	49602	34.62	91527	63.88	2151	1.5	2.1	5.7	25.4	28.6	9.4	17	11.7	62430	83305
Yuma County, Arizona	Yuma County	AZ	32210	46.06	36534	52.25	1182	1.69	12.4	11.4	26.4	24.8	8.5	10.7	5.7	56439	74377
Arkansas County, Arkansas	Arkansas County	AR	1818	28.89	4304	68.4	170	2.7	4.3	9.7	42.5	15.3	12.4	10.4	5.4	58695	70590
Ashley County, Arkansas	Ashley County	AR	2125	26.81	5548	70	253	3.19	5.6	8.6	48.4	19.8	6.1	8.2	3.3	44804	64449
Baxter County, Arkansas	Baxter County	AR	4635	22.06	15836	75.38	536	2.55	2.4	8	35.2	24.6	11.7	12.5	5.6	47403	66193
Benton County, Arkansas	Benton County	AR	42249	35.23	73965	61.68	3698	3.08	4.8	5	28.8	18.9	7	22.9	12.6	85269	116152
Boone County, Arkansas	Boone County	AR	3064	17.9	13652	79.77	398	2.33	3.1	6.3	34.9	28	11.1	11	5.6	52275	69322
Bradley County, Arkansas	Bradley County	AR	1214	33.22	2335	63.9	105	2.87	5.1	9.1	47.1	20	6.2	8.7	3.8	43688	57798
Calhoun County, Arkansas	Calhoun County	AR	479	21.95	1636	74.98	67	3.07	2.3	12.4	45.4	18.6	8.8	7.7	4.9	60237	65273
Carroll County, Arkansas	Carroll County	AR	4023	34.1	7424	62.93	350	2.97	8.3	5.9	35.9	20.6	7.9	14.5	6.9	56826	71631
Chicot County, Arkansas	Chicot County	AR	2260	55.08	1752	42.7	91	2.22	5.8	14.5	37.9	19.4	4.8	12.6	5	36593	61443
Clark County, Arkansas	Clark County	AR	3438	40.95	4616	54.99	341	4.06	3.3	7	31.2	26.3	5.8	17.4	9.1	48071	63424
Clay County, Arkansas	Clay County	AR	962	18.56	4086	78.83	135	2.6	5.9	9.8	41.1	19.3	8.5	8.7	6.7	44685	61486
Cleburne County, Arkansas	Cleburne County	AR	1988	15.68	10328	81.45	364	2.87	4.4	7.7	39.4	22.1	9.2	11.4	5.8	52780	71025
Cleveland County, Arkansas	Cleveland County	AR	651	18.08	2867	79.64	82	2.28	0.9	7.2	43.8	27.1	5.1	10.1	5.8	48913	68293
Columbia County, Arkansas	Columbia County	AR	2814	32.66	5500	63.83	302	3.51	3.5	8.2	41.5	21.2	6.6	13.3	5.7	47441	72061
Conway County, Arkansas	Conway County	AR	2615	30.11	5694	65.56	376	4.33	3.8	7	43.2	17.7	9.2	14.1	5	50282	68736
Craighead County, Arkansas	Craighead County	AR	11921	30.95	25558	66.37	1032	2.68	4.4	5.4	33.1	21.1	7.8	17.3	10.9	55169	80561
Crawford County, Arkansas	Crawford County	AR	4959	20.58	18607	77.24	525	2.18	4.2	10.3	34.4	22.3	8.4	14.5	5.8	56702	74478
Crittenden County, Arkansas	Crittenden County	AR	8514	52.02	7333	44.8	520	3.18	4.7	9.7	36.3	23.3	8.3	12.5	5.2	51860	70749
Cross County, Arkansas	Cross County	AR	1772	25.53	4946	71.25	224	3.23	5.9	10.7	42.7	17.4	7.3	10.7	5.4	48129	68838
Dallas County, Arkansas	Dallas County	AR	963	36.35	1573	59.38	113	4.27	3.8	7.7	48.4	20.7	6.3	8.7	4.3	40085	58645
Desha County, Arkansas	Desha County	AR	2016	48.41	1921	46.13	227	5.45	9.7	11.3	43.7	19.7	2.5	8.3	4.8	38067	51673
Drew County, Arkansas	Drew County	AR	2426	35.12	4349	62.96	133	1.93	3.2	9.5	36	19.9	6.4	17	8	44968	66829
Faulkner County, Arkansas	Faulkner County	AR	18347	33.71	34421	63.24	1660	3.05	3	4	29.7	22.7	8.2	20.2	12.3	61273	80941
Franklin County, Arkansas	Franklin County	AR	1300	18.24	5677	79.63	152	2.13	4.6	9.2	42.6	21.8	9.6	8.7	3.6	47695	62043
Fulton County, Arkansas	Fulton County	AR	1035	20.22	3961	77.38	123	2.4	4.9	8.3	38.2	27.2	7.2	9.5	4.9	38917	53748
Garland County, Arkansas	Garland County	AR	14045	31.78	29069	65.77	1085	2.45	2.5	6.9	31.2	24.4	9.8	15.8	9.4	54229	73126
Grant County, Arkansas	Grant County	AR	1268	15.46	6794	82.85	138	1.68	2.2	5.1	42.6	23.5	7.7	13.7	5.1	68598	88493
Greene County, Arkansas	Greene County	AR	3058	18.99	12670	78.7	372	2.31	3.5	8.6	44.4	20.3	6.6	10.6	6	54879	67548
Hempstead County, Arkansas	Hempstead County	AR	2138	31.22	4470	65.27	240	3.5	7.7	8.5	39.1	21	8	9.6	6.2	45049	62956
Hot Spring County, Arkansas	Hot Spring County	AR	3082	24.54	9202	73.28	273	2.17	2.6	8.9	39.3	25.3	8.4	10.1	5.4	50260	65891
Howard County, Arkansas	Howard County	AR	1340	27.72	3367	69.65	127	2.63	4.3	7.3	42.9	21	9.6	9.9	5.1	44824	61924
Independence County, Arkansas	Independence County	AR	2806	19.34	11250	77.52	456	3.14	4	9.2	38.6	22.9	8.2	11.6	5.5	52361	71260
Izard County, Arkansas	Izard County	AR	1021	17.57	4631	79.71	158	2.72	4.5	12.2	34.5	22.6	7.2	13.3	5.6	46159	64670
Jackson County, Arkansas	Jackson County	AR	1365	26.81	3593	70.58	133	2.61	4.3	9.5	44.6	22.3	7.5	7.8	4.1	41929	57912
Jefferson County, Arkansas	Jefferson County	AR	14981	59.55	9521	37.84	656	2.61	3.3	7.6	42.3	21.3	5.3	14	6.2	46855	64705
Johnson County, Arkansas	Johnson County	AR	2283	24.04	6938	73.05	277	2.92	8.6	10.9	41	19.4	5	10.3	4.8	42470	56684
Lafayette County, Arkansas	Lafayette County	AR	839	31.32	1757	65.58	83	3.1	9.3	9.6	48.4	16.3	5.8	7.2	3.4	40262	56291
Lawrence County, Arkansas	Lawrence County	AR	1080	18.44	4569	78.01	208	3.55	6	11.8	37.5	24.6	7.1	8.7	4.2	43606	62355
Lee County, Arkansas	Lee County	AR	1423	49.96	1286	45.15	139	4.88	4.4	12.1	49.3	20.7	5.8	6.4	1.3	33801	56868
Lincoln County, Arkansas	Lincoln County	AR	1032	26.63	2729	70.43	114	2.94	5.6	10.9	50.7	20.1	4.5	5.5	2.7	50526	68575
Little River County, Arkansas	Little River County	AR	1226	23.68	3715	71.76	236	4.56	2.1	7.3	45.5	21.1	8.1	11.6	4.3	58627	71108
Logan County, Arkansas	Logan County	AR	1544	18.77	6441	78.31	240	2.92	3.2	8.6	43.7	22.1	8	9.1	5.3	51131	70242
Lonoke County, Arkansas	Lonoke County	AR	6686	21.81	22884	74.63	1092	3.56	3.1	7	37.1	22.2	10.6	13.3	6.6	68078	85865
Madison County, Arkansas	Madison County	AR	1563	21.26	5658	76.97	130	1.77	4.6	10.4	49.5	18.8	4.4	8.3	4	51514	70891
Marion County, Arkansas	Marion County	AR	1531	20.41	5783	77.08	189	2.52	4.4	7.9	37.2	27	8.2	9	6.2	42891	57906
Miller County, Arkansas	Miller County	AR	4245	25.68	11920	72.12	364	2.2	4.3	9	38	25.5	7.6	9	6.6	47613	66142
Mississippi County, Arkansas	Mississippi County	AR	4558	36.93	7296	59.12	488	3.95	6.8	10.4	39.9	20.6	7.4	9.2	5.6	50012	71494
Monroe County, Arkansas	Monroe County	AR	1147	40.73	1545	54.87	124	4.4	7	12.8	41.1	18.7	6.2	9.8	4.4	41786	55658
Montgomery County, Arkansas	Montgomery County	AR	731	18.87	3046	78.65	96	2.48	4.8	8.4	35	26.9	8.4	11.8	4.6	47103	61955
Nevada County, Arkansas	Nevada County	AR	1076	32.04	2133	63.52	149	4.44	4.6	5.8	49.8	20.9	7.9	8.4	2.5	43421	51512
Newton County, Arkansas	Newton County	AR	709	17.73	3192	79.84	97	2.43	3.8	11.3	37.1	25.2	7.9	9.4	5.3	50699	65087
Ouachita County, Arkansas	Ouachita County	AR	3995	41.49	5294	54.98	340	3.53	2.1	9.8	39.8	25.8	7.6	10	5	47348	62145
Perry County, Arkansas	Perry County	AR	1012	21.87	3479	75.19	136	2.94	3.4	5.6	44.5	25.2	6.1	10.9	4.3	53980	69280
Phillips County, Arkansas	Phillips County	AR	3623	58.04	2417	38.72	202	3.24	5.8	12.2	31.2	23.5	12	9.6	5.7	37458	54223
Pike County, Arkansas	Pike County	AR	644	15.17	3519	82.88	83	1.95	6.8	4.5	39.7	23.1	7.3	12.1	6.4	49248	69106
Poinsett County, Arkansas	Poinsett County	AR	1424	18.93	5918	78.69	179	2.38	8.2	10	46.9	18.8	4.5	8.3	3.2	43440	60498
Polk County, Arkansas	Polk County	AR	1246	14.68	7035	82.86	209	2.46	3.3	8.7	36.1	28.3	7.4	11.2	5.1	48449	72330
Pope County, Arkansas	Pope County	AR	5772	23.62	18081	74.01	579	2.37	5.5	9.2	34	20.4	7.1	15.7	8.2	51678	73118
Prairie County, Arkansas	Prairie County	AR	654	18.71	2786	79.71	55	1.57	6.5	7.9	42	21.2	6.4	9.9	6	47045	66616
Pulaski County, Arkansas	Pulaski County	AR	101947	59.98	63687	37.47	4322	2.54	2.8	5.1	25.3	21.6	8.1	21.8	15.3	58326	90292
Randolph County, Arkansas	Randolph County	AR	1215	17.84	5355	78.61	242	3.55	5.3	7.3	40.5	21.2	10.1	9.8	5.8	45993	61004
Saline County, Arkansas	Saline County	AR	16060	28.2	39556	69.45	1343	2.36	2.6	5.5	31	23.1	9.3	19.6	8.9	73236	89502
Scott County, Arkansas	Scott County	AR	483	13.6	2962	83.41	106	2.99	6.1	10	41.7	21.7	8.4	9.2	2.8	45340	56716
Searcy County, Arkansas	Searcy County	AR	588	14.63	3365	83.73	66	1.64	7.4	10.6	39.1	20	7.9	11.1	3.8	42063	55577
Sebastian County, Arkansas	Sebastian County	AR	14487	30.73	31198	66.18	1455	3.09	6.5	8.5	30.2	23.5	7.4	15.1	8.9	54047	81552
Sevier County, Arkansas	Sevier County	AR	1116	21.45	3884	74.66	202	3.88	14.3	12.2	34.7	18.6	8.6	7.8	3.9	53567	70910
Sharp County, Arkansas	Sharp County	AR	1398	18.48	5938	78.48	230	3.04	4	11.4	40.9	25.7	6.4	7.5	4	43332	61476
St. Francis County, Arkansas	St. Francis County	AR	3604	50.7	3242	45.61	262	3.69	5.1	10.7	41.9	21.8	7.2	7.4	5.8	39822	54833
Stone County, Arkansas	Stone County	AR	1180	19.87	4616	77.74	142	2.39	4	9.9	35.5	24.4	11.9	9.3	5.1	37664	50387
Union County, Arkansas	Union County	AR	5584	33.62	10478	63.09	545	3.28	3	9.8	38.2	22.1	8.4	12.3	6.2	49745	71752
Van Buren County, Arkansas	Van Buren County	AR	1593	20.4	6034	77.29	180	2.31	5.6	10	40.3	20.5	6.9	10.4	6.3	45768	59684
Washington County, Arkansas	Washington County	AR	43824	46.49	47504	50.39	2938	3.12	7.1	5.9	27.7	18.4	6.5	20.1	14.3	61985	89423
White County, Arkansas	White County	AR	5978	19.36	24182	78.3	725	2.35	4.3	9.4	40.1	17	8.8	12	8.5	51144	70736
Woodruff County, Arkansas	Woodruff County	AR	856	34.57	1543	62.32	77	3.11	4.2	11.4	48	11.5	8.4	8.5	8	49608	66258
Yell County, Arkansas	Yell County	AR	1284	19.05	5226	77.53	231	3.43	8.8	13.8	37.9	19	6.7	9.4	4.4	55879	66319
Alameda County, California	Alameda County	CA	617659	80.23	136309	17.71	15896	2.06	5.9	4.8	16.2	15.7	6.4	28.8	22.2	122488	164668
Alpine County, California	Alpine County	CA	476	64.24	244	32.93	21	2.83	4.1	2.6	20.1	24.1	9.5	23.2	16.4	101125	164883
Amador County, California	Amador County	CA	8153	36.56	13585	60.91	564	2.53	2.6	6.9	28.8	27.2	13.9	14.4	6.2	74853	99147
Butte County, California	Butte County	CA	50426	49.42	48730	47.75	2886	2.83	3.5	6.2	22.3	26.8	10.4	20.2	10.6	66085	92479
Calaveras County, California	Calaveras County	CA	10046	36.98	16518	60.81	600	2.21	1.6	5.9	31.3	29.2	10.7	14.5	6.9	77526	97040
Colusa County, California	Colusa County	CA	3234	40.67	4554	57.28	163	2.05	18	8.7	29.3	19.5	10.2	10.9	3.4	69619	91248
Contra Costa County, California	Contra Costa County	CA	416386	71.64	152877	26.3	11967	2.06	5.3	5	17.6	19.4	8.3	27.2	17.3	120020	165199
Del Norte County, California	Del Norte County	CA	4677	40.84	6461	56.42	314	2.74	4.8	12	28	28	9.5	11.1	6.6	61149	79344
El Dorado County, California	El Dorado County	CA	51621	44.45	61838	53.25	2679	2.31	2.1	3.2	20.6	25.2	11	25.2	12.7	99246	139272
Fresno County, California	Fresno County	CA	193025	52.91	164464	45.08	7320	2.01	12.2	9.6	22.7	23.1	9	15.5	7.9	67756	91924
Glenn County, California	Glenn County	CA	3995	35.38	7063	62.55	234	2.07	13.2	9	31.3	23	8.6	11.5	3.4	64033	78523
Humboldt County, California	Humboldt County	CA	44768	65.04	21770	31.63	2290	3.33	2.5	6.2	23.7	26.8	9.8	20.3	10.8	57881	81887
Imperial County, California	Imperial County	CA	34678	61.14	20847	36.76	1193	2.1	14.3	14.4	25.3	22.5	7.6	11.8	4.1	53847	72923
Inyo County, California	Inyo County	CA	4634	48.88	4620	48.73	227	2.39	2.8	4.1	28	27	9.2	17.4	11.6	63417	83422
Kern County, California	Kern County	CA	133366	43.69	164484	53.89	7376	2.42	12.8	10.6	27.4	23	7.8	12.1	6.2	63883	87915
Kings County, California	Kings County	CA	18699	42.64	24072	54.89	1087	2.48	13.2	12.3	27	23.7	9	10	4.7	68540	85040
Lake County, California	Lake County	CA	14941	51.88	13123	45.57	736	2.56	4.9	8.5	28.4	27.8	12.2	12.1	6.1	56259	83917
Lassen County, California	Lassen County	CA	2799	23.35	8970	74.84	216	1.8	5.5	14	31.9	27.4	9	9	3.1	59515	76595
Los Angeles County, California	Los Angeles County	CA	3028885	71.04	1145530	26.87	89028	2.09	11.7	8	20.4	18.2	7	22.3	12.3	83411	119756
Madera County, California	Madera County	CA	23168	43.13	29378	54.69	1176	2.19	16.5	11.4	23.1	24.2	7.6	11.6	5.5	73543	94764
Marin County, California	Marin County	CA	128288	82.34	24612	15.8	2901	1.86	4.1	2.5	10.3	15.6	6.3	34.1	27.1	142019	215832
Mariposa County, California	Mariposa County	CA	4088	39.77	5950	57.88	242	2.35	2.2	6	21.8	30.4	10.7	19.5	9.4	60021	79433
Mendocino County, California	Mendocino County	CA	28782	66.42	13267	30.61	1287	2.97	6.2	7	25.5	27.7	9.6	14.4	9.6	61335	86870
Merced County, California	Merced County	CA	48991	54.11	39397	43.51	2153	2.38	16.8	11.8	27.8	21.3	7.7	10.2	4.5	64772	86076
Modoc County, California	Modoc County	CA	1150	26.51	3109	71.67	79	1.82	5	6.7	29.4	26.5	8.6	16.3	7.5	54962	68080
Mono County, California	Mono County	CA	4013	59.57	2513	37.3	211	3.13	6.5	6.4	19.9	25.1	10.4	19.7	12	82038	100757
Monterey County, California	Monterey County	CA	113953	69.53	46299	28.25	3631	2.22	17.2	9.4	20.4	17.6	8.3	16.3	10.8	91043	123405
Napa County, California	Napa County	CA	49817	69.07	20676	28.67	1629	2.26	9.8	5.8	17.4	20.5	8.7	24.5	13.4	105809	146888
Nevada County, California	Nevada County	CA	36359	56.16	26779	41.37	1600	2.47	1.6	3.3	19.9	26.5	9.9	25.1	13.7	79395	110539
Orange County, California	Orange County	CA	814009	53.49	676498	44.46	31218	2.05	7.3	5.9	17.3	19.2	7.6	26.9	15.8	109361	147182
Placer County, California	Placer County	CA	106869	45.47	122488	52.12	5660	2.41	2	3.1	17.4	23.9	11.2	27.7	14.8	109375	140703
Plumas County, California	Plumas County	CA	4561	40.52	6445	57.26	250	2.22	2.2	3.7	27.5	35.3	10.1	14.6	6.6	67885	95940
Riverside County, California	Riverside County	CA	527945	53	448702	45.04	19509	1.96	9	7.9	26.8	23.7	8.6	15.4	8.7	84505	110021
Sacramento County, California	Sacramento County	CA	440808	61.37	259405	36.11	18077	2.52	6.1	5.5	21.9	24.1	9.8	21.1	11.5	84010	108612
San Benito County, California	San Benito County	CA	17628	61.16	10590	36.74	603	2.09	9.9	6.4	26.5	24.4	10.7	15.8	6.2	104451	129829
San Bernardino County, California	San Bernardino County	CA	455859	54.21	366257	43.55	18815	2.24	8.5	10.1	27.2	23.3	8.4	14.5	7.9	77423	100078
San Diego County, California	San Diego County	CA	964650	60.23	600094	37.47	36978	2.31	6	5.3	18.1	21.2	8.4	25	16.1	96974	129234
San Francisco County, California	San Francisco County	CA	378156	85.27	56417	12.72	8885	2	6.9	4.3	11.6	12.2	5.3	35.1	24.7	136689	197408
San Joaquin County, California	San Joaquin County	CA	161137	55.86	121098	41.98	6208	2.15	11.4	8.4	28.4	22.2	9.4	13.8	6.5	82837	107068
San Luis Obispo County, California	San Luis Obispo County	CA	88310	55.3	67436	42.23	3935	2.46	3.4	4.6	18.7	25	10.4	23.9	14.1	90158	121160
San Mateo County, California	San Mateo County	CA	291410	77.89	75563	20.2	7165	1.92	5.5	3.9	14.9	16	6.9	29.4	23.5	149907	216684
Santa Barbara County, California	Santa Barbara County	CA	129963	64.89	65736	32.82	4589	2.29	11.3	6.6	17.2	20.7	8.5	21.3	14.4	92332	131742
Santa Clara County, California	Santa Clara County	CA	617967	72.66	214612	25.23	17943	2.11	6.3	4.4	13.5	13.8	6.7	28.1	27.2	153792	210349
Santa Cruz County, California	Santa Cruz County	CA	114246	78.9	26937	18.6	3613	2.5	7.2	4.1	15.8	22.1	8.3	24.6	17.9	104409	146532
Shasta County, California	Shasta County	CA	30000	32.29	60789	65.43	2111	2.27	2.1	6.1	25.8	31.4	12	15.3	7.4	68347	91289
Sierra County, California	Sierra County	CA	730	37.82	1142	59.17	58	3.01	2.8	3.6	33	28.2	8.4	11.8	12.1	61108	89205
Siskiyou County, California	Siskiyou County	CA	9593	40.91	13290	56.67	567	2.42	3.7	5.8	27	28.8	12.8	14.9	7.1	53898	76371
Solano County, California	Solano County	CA	131639	63.95	69306	33.67	4886	2.37	5.5	5.6	23.8	26.4	10.5	19.3	8.9	97037	121293
Sonoma County, California	Sonoma County	CA	199938	74.53	61825	23.05	6489	2.42	5.9	4.9	18.1	23.9	9.4	23.3	14.5	99266	133119
Stanislaus County, California	Stanislaus County	CA	105841	49.26	104145	48.47	4890	2.28	10.9	8.8	30.1	24.1	7.9	12.6	5.6	74872	97409
Sutter County, California	Sutter County	CA	17367	40.73	24375	57.16	898	2.11	10.4	10	24.1	24.8	10	14	6.7	72654	100982
Tehama County, California	Tehama County	CA	8911	31.03	19141	66.64	669	2.33	5.4	7.5	30.1	28.5	10.4	13.2	4.9	59029	87477
Trinity County, California	Trinity County	CA	2851	45.56	3188	50.94	219	3.5	1.4	3.3	44.6	25.5	6	11.7	7.5	47317	73300
Tulare County, California	Tulare County	CA	66105	45.02	77579	52.84	3148	2.14	16.7	9.9	26.4	22.4	9.2	10.1	5.5	64474	85832
Tuolumne County, California	Tuolumne County	CA	11978	39.4	17689	58.19	734	2.41	1.6	5.9	24.7	32.3	11	16.5	7.9	70432	94641
Ventura County, California	Ventura County	CA	251388	59.47	162207	38.37	9103	2.15	8.7	5.9	19.7	20.9	10.1	21.8	12.9	102141	135094
Yuba County, California	Yuba County	CA	11230	37.7	17676	59.34	881	2.96	8	9.3	25.4	29.3	10.6	11.5	5.9	66693	85286
Adams County, Colorado	Adams County	CO	134202	56.69	95657	40.41	6876	2.9	6.9	8.3	28.7	20.4	8.5	18.5	8.7	86297	105685
Alamosa County, Colorado	Alamosa County	CO	3759	48.14	3813	48.83	236	3.02	5.6	4.6	27.7	25.2	8.7	15.8	12.4	52271	74983
Arapahoe County, Colorado	Arapahoe County	CO	213607	61	127323	36.36	9253	2.64	3.6	4.2	19.4	19.5	8.4	27.8	17.1	92292	126187
Archuleta County, Colorado	Archuleta County	CO	3738	40.88	5189	56.75	217	2.37	1.5	4	24	25.5	5.6	24.4	15.1	66813	90766
Baca County, Colorado	Baca County	CO	317	14.25	1867	83.91	41	1.84	4.4	9.8	30.8	20.2	10.4	17.7	6.6	42115	63674
Bent County, Colorado	Bent County	CO	732	32.19	1503	66.09	39	1.72	4.6	12	43.1	16.6	8.3	9.6	5.9	45776	56392
Boulder County, Colorado	Boulder County	CO	159089	77.19	42501	20.62	4521	2.19	1.9	2.3	11.2	14.9	6.3	34.6	28.6	99770	139221
Broomfield County, Colorado	Broomfield County	CO	29077	62.35	16295	34.94	1260	2.7	1	2.7	12.5	16.1	9.3	35.4	23	117541	148374
Chaffee County, Colorado	Chaffee County	CO	7160	52.2	6222	45.36	335	2.44	2.4	4.5	24.7	18.9	8	24.1	17.3	65703	87722
Cheyenne County, Colorado	Cheyenne County	CO	131	11.53	993	87.41	12	1.06	2.2	4.8	31.3	27.9	10.3	16	7.4	65577	84245
Clear Creek County, Colorado	Clear Creek County	CO	3604	55.04	2754	42.06	190	2.9	1.1	2.3	18.7	16.6	6.3	28.8	26.2	87169	121173
Conejos County, Colorado	Conejos County	CO	1959	45.21	2286	52.76	88	2.03	4.8	5.5	33	23.6	8.5	16.4	8.2	44093	60460
Costilla County, Colorado	Costilla County	CO	1311	62.61	741	35.39	42	2.01	5.8	5.8	30.4	27.3	7	16.9	6.8	34578	51216
Crowley County, Colorado	Crowley County	CO	437	24.97	1271	72.63	42	2.4	6.8	12.2	43.8	16.6	7.9	9.2	3.5	40685	54258
Custer County, Colorado	Custer County	CO	1112	30.6	2474	68.08	48	1.32	0.6	2.5	21	30.2	9.2	22.5	13.9	66250	83884
Delta County, Colorado	Delta County	CO	5887	30.39	13081	67.53	402	2.08	3	7	36.6	22.2	6.7	16.2	8.3	56349	77809
Denver County, Colorado	Denver County	CO	313293	79.55	71618	18.19	8916	2.26	4.6	4.9	15.4	15.6	5.4	33.2	21.1	85853	122771
Dolores County, Colorado	Dolores County	CO	341	23.53	1089	75.16	19	1.31	1.9	2.8	39.6	22.2	7.1	15.7	10.6	64708	81392
Douglas County, Colorado	Douglas County	CO	104653	45.19	121270	52.36	5676	2.45	0.9	1.2	12	18.1	7.8	38.7	21.3	139010	169322
Eagle County, Colorado	Eagle County	CO	18588	63.79	9892	33.95	660	2.26	4.1	3.5	16.8	14.4	9.3	35.1	16.7	98887	140636
El Paso County, Colorado	El Paso County	CO	161941	42.75	202828	53.54	14080	3.72	1.9	3.3	19.8	23.8	11.1	24.5	15.7	82748	106872
Elbert County, Colorado	Elbert County	CO	4490	23.65	14027	73.89	466	2.45	1.4	1.9	24.8	24.9	11.5	25.5	10.1	124360	150842
Fremont County, Colorado	Fremont County	CO	7369	28.83	17517	68.54	671	2.63	2.7	7.5	38.4	22.8	8.4	14	6.2	56165	75869
Garfield County, Colorado	Garfield County	CO	15427	49.92	14717	47.62	760	2.46	5.3	5.4	24.2	22.3	9.1	21.7	12	82772	103158
Gilpin County, Colorado	Gilpin County	CO	2223	53.11	1833	43.79	130	3.11	0.3	5.2	16.7	20.7	13.2	20.9	23	95902	125373
Grand County, Colorado	Grand County	CO	4710	47.72	4883	49.47	277	2.81	1.7	3.6	28.2	22	6.6	22	15.8	79367	97139
Gunnison County, Colorado	Gunnison County	CO	7132	63.74	3735	33.38	323	2.89	0.8	0.9	17	16.2	5.8	41.3	18	76538	97237
Hinsdale County, Colorado	Hinsdale County	CO	255	40.35	353	55.85	24	3.8	0	1.5	14.4	34.1	5.5	25	19.6	58712	86692
Huerfano County, Colorado	Huerfano County	CO	2076	47.12	2203	50	127	2.88	4.2	2.9	26	29	11.9	16.4	9.7	49631	64924
Jackson County, Colorado	Jackson County	CO	175	19.98	681	77.74	20	2.28	3.7	10.6	25.4	23.5	9.3	16.2	11.3	38686	63900
Jefferson County, Colorado	Jefferson County	CO	218396	57.88	148417	39.33	10544	2.79	1.5	3.3	19.2	19.2	7.7	31.2	18	103167	130332
Kiowa County, Colorado	Kiowa County	CO	98	10.85	795	88.04	10	1.11	1.2	7.6	28.4	31.4	13.4	12.6	5.4	45250	66747
Kit Carson County, Colorado	Kit Carson County	CO	662	17.1	3144	81.22	65	1.68	4.9	7.3	29.8	29.3	10.6	12	6	58992	84540
La Plata County, Colorado	La Plata County	CO	20548	57.61	14233	39.91	886	2.48	1.1	3	21.3	19.4	8.1	30.5	16.4	81936	104900
Lake County, Colorado	Lake County	CO	2303	58.14	1497	37.79	161	4.06	4.2	1.6	26.4	17.3	11.4	23.6	15.6	78942	95574
Larimer County, Colorado	Larimer County	CO	126120	56.22	91489	40.78	6729	3	1.2	2.5	16.7	19.9	8.9	30.6	20.3	87199	113592
Las Animas County, Colorado	Las Animas County	CO	3497	43.93	4284	53.81	180	2.26	5	6.5	27.1	29.7	15.2	10.1	6.5	48965	64640
Lincoln County, Colorado	Lincoln County	CO	470	17.73	2135	80.54	46	1.74	1.6	9.6	41.3	16.5	8.2	18.2	4.5	59167	83441
Logan County, Colorado	Logan County	CO	2218	21.06	8087	76.79	227	2.16	2.2	6.7	37.5	21.5	12.3	11.9	7.8	54864	71494
Mesa County, Colorado	Mesa County	CO	31536	34.8	56894	62.78	2192	2.42	1.9	5.8	28.8	25.1	8.3	20.2	9.9	68077	87457
Mineral County, Colorado	Mineral County	CO	317	41.93	427	56.48	12	1.59	0	2.2	15.8	19.1	5.3	40.6	17.1	58929	72350
Moffat County, Colorado	Moffat County	CO	1203	17.12	5670	80.7	153	2.18	1.1	7.6	41.4	19.1	10.3	14.8	5.7	63983	79512
Montezuma County, Colorado	Montezuma County	CO	5836	37.65	9306	60.04	358	2.31	2.1	6.6	31	21.3	8.9	17.8	12.3	61377	76273
Montrose County, Colorado	Montrose County	CO	7687	30.84	16770	67.29	465	1.87	5.2	5.5	33.2	22.1	6.3	18.6	9.1	62817	84981
Morgan County, Colorado	Morgan County	CO	3876	28.2	9593	69.8	275	2	9.7	7.6	31.7	23.8	9.4	11.6	6.1	70471	80351
Otero County, Colorado	Otero County	CO	3605	37.65	5756	60.11	215	2.25	3.8	8.2	32.6	23.5	13.6	11.1	7.3	47500	61974
Ouray County, Colorado	Ouray County	CO	2365	58.83	1577	39.23	78	1.94	0.7	1.9	13.7	25.1	9.1	30.5	19	78750	97473
Park County, Colorado	Park County	CO	4903	39.89	6991	56.88	396	3.22	0.9	1.6	23.1	28.1	10.8	23.3	12.2	85019	105999
Phillips County, Colorado	Phillips County	CO	486	19.56	1958	78.79	41	1.65	4.4	6.5	29.4	22.7	10.7	19.3	7	58474	93678
Pitkin County, Colorado	Pitkin County	CO	8989	75.18	2780	23.25	188	1.57	0.3	1.5	14	13.3	7.8	37.4	25.7	96123	180169
Prowers County, Colorado	Prowers County	CO	1458	26.22	4008	72.07	95	1.71	8.2	6.3	31.2	24.5	11.6	10.3	7.9	49422	76069
Pueblo County, Colorado	Pueblo County	CO	43772	49.57	42252	47.85	2275	2.58	3.4	6.5	29.5	24.1	12.3	15.6	8.5	59436	76972
Rio Blanco County, Colorado	Rio Blanco County	CO	561	15.2	3061	82.93	69	1.87	2	5.8	34.8	24.3	9.3	16.4	7.4	69882	76757
Rio Grande County, Colorado	Rio Grande County	CO	2495	39.57	3660	58.05	150	2.38	5.1	4.9	28.5	22.9	7.4	20.9	10.4	57591	78305
Routt County, Colorado	Routt County	CO	10582	62.7	5925	35.11	369	2.19	1	2.1	18.2	19.3	9.4	31.6	18.4	95144	134020
Saguache County, Colorado	Saguache County	CO	1884	55.59	1413	41.69	92	2.71	5.5	6	31.6	23.6	8.9	12.8	11.6	51946	75124
San Juan County, Colorado	San Juan County	CO	342	60.75	202	35.88	19	3.37	4.3	0	30.6	19.6	3.8	24.3	17.4	67344	84592
San Miguel County, Colorado	San Miguel County	CO	3924	76.24	1136	22.07	87	1.69	0.3	1.5	17.8	13.6	4.7	45.7	16.4	72829	113806
Sedgwick County, Colorado	Sedgwick County	CO	301	20.82	1121	77.52	24	1.66	2	6.7	25.8	22.6	16.5	18	8.5	45855	70610
Summit County, Colorado	Summit County	CO	12631	68.35	5322	28.8	526	2.85	2.3	3.5	16.8	20.2	4.9	32.7	19.5	100611	133518
Teller County, Colorado	Teller County	CO	5278	31.16	11241	66.36	420	2.48	0.4	2.6	21.9	26.2	10.9	23	14.9	69655	94263
Washington County, Colorado	Washington County	CO	369	12.27	2595	86.27	44	1.46	3	6.5	28.4	25.3	12.4	16.6	7.8	59087	76776
Weld County, Colorado	Weld County	CO	66060	39.56	96145	57.58	4763	2.85	5.8	5.8	24.9	23.1	9.7	19.8	10.8	89182	109274
Yuma County, Colorado	Yuma County	CO	785	15.76	4107	82.45	89	1.79	8.8	6.4	27.1	23.6	9.7	15.3	9.1	60118	81329
Fairfield County, Connecticut	Fairfield County	CT	297505	62.98	168445	35.66	6446	1.36	4.6	3.7	18.5	13.1	5.8	29.6	24.7	118930	200941
Hartford County, Connecticut	Hartford County	CT	283368	63.06	159024	35.39	6944	1.55	3.8	5.2	25.2	16.5	8.3	22.9	18.2	88190	119001
Litchfield County, Connecticut	Litchfield County	CT	50164	46.65	55601	51.7	1779	1.65	3	3.8	28.6	17.9	8.7	21.9	16	87971	125814
Middlesex County, Connecticut	Middlesex County	CT	56848	57.31	40665	40.99	1685	1.7	1.8	2.9	23.8	17.3	9	24.9	20.3	99742	129717
New Haven County, Connecticut	New Haven County	CT	242630	58.05	169893	40.65	5460	1.31	3.9	4.7	28.4	15.8	6.9	20.6	19.8	83617	115620
New London County, Connecticut	New London County	CT	79459	56.92	57110	40.91	3035	2.17	2.8	4.8	29.6	20.4	8.5	19.2	14.6	80330	103899
Tolland County, Connecticut	Tolland County	CT	44151	54.7	34838	43.16	1725	2.14	4.4	5.2	30.1	18.5	8.5	18.8	14.4	82939	110049
Windham County, Connecticut	Windham County	CT	26706	46.79	29141	51.05	1235	2.16	2.8	5.9	34.8	21	10.4	14.3	10.7	83119	102050
Kent County, Delaware	Kent County	DE	44552	51.19	41009	47.12	1464	1.68	3.8	7.3	33.1	21	8.5	15.9	10.4	69278	85275
New Castle County, Delaware	New Castle County	DE	195034	67.81	88364	30.72	4235	1.47	2.9	4.6	28.3	18	7.8	21.9	16.4	85309	112414
Sussex County, Delaware	Sussex County	DE	56682	43.82	71230	55.07	1440	1.11	3.3	6.6	30.4	18.6	9.4	18.2	13.5	75406	100646
District of Columbia, District of Columbia	District of Columbia	DistrictofColumbia	39041	93.67	1725	4.14	915	2.2	3	4.3	15	12	3.1	25.8	36.9	101722	150292
Alachua County, Florida	Alachua County	FL	89704	62.9	50972	35.74	1928	1.35	2	4.4	20	15.7	11.2	23.7	23	57566	87691
Baker County, Florida	Baker County	FL	2037	14.49	11911	84.72	111	0.79	3.6	11.4	42.4	20.4	8.2	8.5	5.6	67872	86352
Bay County, Florida	Bay County	FL	25614	27.53	66097	71.05	1313	1.41	3.2	6.4	28.1	23.9	11.7	17.2	9.5	65999	88375
Bradford County, Florida	Bradford County	FL	3160	23.18	10334	75.81	138	1.01	5.7	12.1	39	22.4	7.6	8	5.2	54759	70626
Brevard County, Florida	Brevard County	FL	148549	41.18	207883	57.62	4332	1.2	2.3	5.1	26.1	21.6	12.1	20.1	12.8	71308	95587
Broward County, Florida	Broward County	FL	618752	64.61	333409	34.81	5511	0.58	4.3	5.7	26.8	18.4	9.9	21.6	13.3	70331	100559
Calhoun County, Florida	Calhoun County	FL	1209	18.53	5274	80.82	43	0.66	6.9	13.8	42	20.8	5.5	7.7	3.4	41526	60413
Charlotte County, Florida	Charlotte County	FL	42273	36.34	73243	62.96	824	0.71	2.3	5.7	33.7	23.6	9.6	15.7	9.4	62164	83154
Citrus County, Florida	Citrus County	FL	27092	29.07	65352	70.11	764	0.82	2.7	6.8	37.7	23.2	9.9	12.2	7.5	52569	74579
Clay County, Florida	Clay County	FL	38317	30.8	84480	67.91	1608	1.29	2.4	5	27.9	25.1	12	18.5	9.1	82242	100855
Collier County, Florida	Collier County	FL	77621	37.35	128950	62.05	1247	0.6	5.8	4.6	25.9	16.5	8.4	22.8	15.9	82011	133140
Columbia County, Florida	Columbia County	FL	8914	26.98	23836	72.14	292	0.88	3.6	10.6	36.1	24.1	9.6	10.9	5.1	53501	74233
DeSoto County, Florida	DeSoto County	FL	4259	33.64	8313	65.67	87	0.69	12.7	14.2	39.8	15.1	6.6	7.8	3.8	45000	56356
Dixie County, Florida	Dixie County	FL	1365	16.71	6759	82.76	43	0.53	5	14.3	48.3	17.4	7.1	5.3	2.7	45057	57286
Duval County, Florida	Duval County	FL	252556	51.25	233762	47.43	6502	1.32	3.1	6.1	27.9	20.9	9.7	21.4	10.8	65579	90666
Escambia County, Florida	Escambia County	FL	70929	41.63	96674	56.74	2769	1.63	2.5	6.8	27.5	23.7	11.5	17.6	10.4	61642	82923
Flagler County, Florida	Flagler County	FL	28161	39.27	43043	60.02	512	0.71	2.9	4.8	31	22.7	10.2	18.5	9.9	69251	97079
Franklin County, Florida	Franklin County	FL	2120	30.95	4675	68.26	54	0.79	6.1	13.6	32.2	19.6	7.6	11.5	9.4	58107	77080
Gadsden County, Florida	Gadsden County	FL	16153	67.98	7465	31.42	144	0.61	6.5	13.2	35.2	18.7	6.8	12.6	7.1	45721	62158
Gilchrist County, Florida	Gilchrist County	FL	1700	17.55	7895	81.52	90	0.93	4.4	9.6	39.1	21.8	10.5	10	4.7	56823	80346
Glades County, Florida	Glades County	FL	1385	26.67	3782	72.83	26	0.5	11.6	15.3	34.5	20.7	4.9	9.5	3.4	37221	57786
Gulf County, Florida	Gulf County	FL	1985	24.32	6113	74.89	65	0.8	4	10.3	34.1	21	9.2	12.8	8.6	56250	79013
Hamilton County, Florida	Hamilton County	FL	1963	33.67	3815	65.44	52	0.89	6.6	16.3	44.1	16.6	7.1	6.7	2.5	47668	56950
Hardee County, Florida	Hardee County	FL	2298	27.08	6122	72.15	65	0.77	12.2	9.8	47	14.1	6.4	7.1	3.3	44665	67611
Hendry County, Florida	Hendry County	FL	4929	38.09	7906	61.1	105	0.81	16.7	13.8	36.4	14	8.6	7.6	2.9	49259	71309
Hernando County, Florida	Hernando County	FL	37519	34.45	70412	64.64	991	0.91	3	7.6	32.6	25.5	11.3	13.5	6.5	59202	76007
Highlands County, Florida	Highlands County	FL	16938	32.47	34873	66.84	359	0.69	5.3	8.4	35.5	23.3	9.2	11.9	6.4	53679	70660
Hillsborough County, Florida	Hillsborough County	FL	376367	52.86	327398	45.98	8298	1.17	4.6	6.1	26	17.5	9.6	22.9	13.4	70612	100434
Holmes County, Florida	Holmes County	FL	924	10.19	8080	89.1	64	0.71	4.5	12.8	45.7	20.8	5.2	7.7	3.3	46063	58649
Indian River County, Florida	Indian River County	FL	37844	38.82	58872	60.39	768	0.79	3	5.6	26.7	21.2	10.8	19.9	12.8	67543	101260
Jackson County, Florida	Jackson County	FL	6766	30.18	15488	69.08	165	0.74	4.7	11.1	39.7	21.8	8.9	8.3	5.5	46144	62374
Jefferson County, Florida	Jefferson County	FL	3897	46.11	4479	53	75	0.89	4.9	10	37.2	20.7	7.6	13.2	6.3	51573	73704
Lafayette County, Florida	Lafayette County	FL	510	13.94	3128	85.51	20	0.55	9	12.5	50.5	14.4	5.6	5.7	2.4	57852	59789
Lake County, Florida	Lake County	FL	83505	39.52	125859	59.56	1950	0.92	2.8	6.8	30.6	22.5	11.7	16.3	9.4	66239	86578
Lee County, Florida	Lee County	FL	157695	40.03	233247	59.21	2957	0.75	4.1	5.8	30.2	20.3	9.5	18.5	11.6	69368	97521
Leon County, Florida	Leon County	FL	103517	63.54	57453	35.26	1959	1.2	2	4.7	19.2	17.4	9.2	26.6	20.9	61317	89489
Levy County, Florida	Levy County	FL	6205	26.81	16749	72.37	191	0.83	4.5	7.8	41.8	17.9	11.9	11.2	4.9	49933	67318
Liberty County, Florida	Liberty County	FL	694	19.49	2846	79.92	21	0.59	4.8	14.1	41.6	17.2	5.3	9.4	7.5	51723	61612
Madison County, Florida	Madison County	FL	3747	39.95	5576	59.45	57	0.61	5.7	14.2	35.7	21.4	10.1	8.8	4.2	43386	60056
Manatee County, Florida	Manatee County	FL	90166	41.56	124987	57.61	1805	0.83	3.5	5.8	29.3	19.4	9.2	20	12.9	71385	100288
Marion County, Florida	Marion County	FL	74858	36.63	127826	62.54	1692	0.83	3.5	7.3	35.1	21.7	10.4	13.9	8.1	55265	73931
Martin County, Florida	Martin County	FL	36893	37.37	61168	61.96	665	0.67	3	4.6	24.8	23.2	9.3	22.4	12.7	77894	117069
Miami-Dade County, Florida	Miami-Dade County	FL	617864	53.41	532833	46.06	6119	0.53	8.4	8.9	26.5	14.1	9.6	20.2	12.3	64215	96595
Monroe County, Florida	Monroe County	FL	21881	45.56	25693	53.49	455	0.95	3.5	4.2	28.3	19.2	8.4	22	14.4	80111	125422
Nassau County, Florida	Nassau County	FL	15564	26.46	42566	72.38	681	1.16	2.1	6	29.3	20.9	9.7	20.4	11.6	84085	109291
Okaloosa County, Florida	Okaloosa County	FL	34248	29.43	79798	68.57	2327	2	2.7	4.2	24.6	23.3	11.8	20.6	12.7	73988	99249
Okeechobee County, Florida	Okeechobee County	FL	4390	27.52	11470	71.89	94	0.59	7.3	12.8	35.6	20.5	7	11.3	5.6	50476	69244
Orange County, Florida	Orange County	FL	395014	61.02	245398	37.9	6991	1.08	4.4	6.2	24	17.1	11	24	13.4	72629	103222
Osceola County, Florida	Osceola County	FL	97297	56.42	73480	42.61	1659	0.96	5.5	6.8	29.6	20.6	11	18	8.6	64312	83692
Palm Beach County, Florida	Palm Beach County	FL	433572	56.08	334711	43.29	4875	0.63	5.6	5.4	23.1	17.9	9.2	23.5	15.2	76066	117712
Pasco County, Florida	Pasco County	FL	119073	39.43	179621	59.48	3276	1.08	2.9	6.4	33.1	20.5	10	17.6	9.5	63187	86348
Pinellas County, Florida	Pinellas County	FL	277450	49.57	276209	49.35	6056	1.08	2.6	4.9	26.6	20.9	10	22.5	12.6	66406	96725
Polk County, Florida	Polk County	FL	145049	42.26	194586	56.69	3621	1.05	5.4	7.7	33.9	21.7	9.9	14.4	7	60901	80027
Putnam County, Florida	Putnam County	FL	10527	28.94	25514	70.15	332	0.91	4.9	12.7	41.7	19.6	7.8	9.3	4	44852	62872
Santa Rosa County, Florida	Santa Rosa County	FL	27612	25.82	77385	72.37	1931	1.81	1.8	5.6	27.3	22.8	12.6	19.4	10.5	84715	104371
Sarasota County, Florida	Sarasota County	FL	120110	44.39	148370	54.84	2095	0.77	1.9	4	26.4	20	9.5	21.9	16.4	77213	115389
Seminole County, Florida	Seminole County	FL	132528	50.81	125241	48.02	3046	1.17	2.2	4	21.3	19.1	11.7	27.2	14.6	79490	106626
St. Johns County, Florida	St. Johns County	FL	63850	36.15	110946	62.82	1826	1.03	1.8	3.2	20.9	17.7	9.1	29.3	18.1	100020	136986
St. Lucie County, Florida	St. Lucie County	FL	84137	48.87	86831	50.43	1201	0.7	4.3	7.1	30.8	21.8	10.9	16.4	8.7	66154	85019
Sumter County, Florida	Sumter County	FL	29341	31.73	62761	67.86	383	0.41	1.6	5.9	29.2	20	9.7	20.2	13.5	70105	88921
Suwannee County, Florida	Suwannee County	FL	4485	21.3	16410	77.93	162	0.77	6.5	9.1	40.5	21.2	6.7	9.1	6.8	49729	64635
Taylor County, Florida	Taylor County	FL	2299	22.7	7751	76.54	77	0.76	3.5	13.3	44.1	18.6	6.7	9.7	4.2	46239	77277
Union County, Florida	Union County	FL	1053	16.86	5133	82.19	59	0.94	4.4	17.7	39.2	19.2	9.5	6.1	3.9	64043	94886
Volusia County, Florida	Volusia County	FL	130575	42.47	173821	56.54	3043	0.99	2.8	5.6	30.9	22.2	12.4	17.2	9	63075	82859
Wakulla County, Florida	Wakulla County	FL	5351	29.08	12874	69.95	179	0.97	3.2	8.4	36.7	24.5	7.5	12	7.7	72035	87288
Walton County, Florida	Walton County	FL	10338	23.65	32947	75.37	426	0.97	2.5	5.6	28.1	20.9	9.8	22.6	10.5	74832	111179
Washington County, Florida	Washington County	FL	2347	19.04	9876	80.12	104	0.84	4.8	12.1	42.6	21.9	6.1	7.1	5.3	47536	63246
Appling County, Georgia	Appling County	GA	1784	21.26	6570	78.31	36	0.43	8.1	13.5	38.1	21.4	8.9	5.5	4.5	43268	59805
Atkinson County, Georgia	Atkinson County	GA	825	26.15	2300	72.9	30	0.95	17	12.5	34.7	17.3	7	5.6	5.8	38007	59101
Bacon County, Georgia	Bacon County	GA	625	13.39	4017	86.07	25	0.54	6	9.4	38.2	26.6	8.9	5.1	5.8	43938	64535
Baker County, Georgia	Baker County	GA	652	41.93	897	57.68	6	0.39	4.2	10.1	35.9	16.8	14.1	11	7.9	45417	59560
Baldwin County, Georgia	Baldwin County	GA	9140	50.08	8903	48.78	208	1.14	3.9	10.6	31.9	21.6	8.6	13.5	9.9	54699	83400
Banks County, Georgia	Banks County	GA	932	10.59	7795	88.57	74	0.84	6.4	14.2	34.3	19.3	8.7	10.6	6.5	69096	78399
Barrow County, Georgia	Barrow County	GA	10453	27.57	26804	70.68	664	1.75	5	7.4	33.6	23.9	8.9	13.9	7.3	75053	88455
Bartow County, Georgia	Bartow County	GA	12091	23.96	37672	74.65	701	1.39	4.1	8	37.2	21.8	7.8	14.4	6.7	74812	89775
Ben Hill County, Georgia	Ben Hill County	GA	2393	36.46	4111	62.63	60	0.91	5.2	11.1	51.3	12.9	7.3	8.7	3.5	38255	54433
Berrien County, Georgia	Berrien County	GA	1269	16.39	6419	82.9	55	0.71	6.3	12.4	38.4	17.8	10.3	9.7	5.1	48670	63731
Bibb County, Georgia	Bibb County	GA	43408	61.39	26559	37.56	747	1.06	3.7	9.8	30.7	22.1	7.8	13.3	12.5	48897	74427
Bleckley County, Georgia	Bleckley County	GA	1312	22.99	4329	75.84	67	1.17	4.7	7.4	31.9	27	10.4	11	7.6	56021	72658
Brantley County, Georgia	Brantley County	GA	700	9.03	6993	90.24	56	0.72	5.7	14.8	43.3	17.4	8.5	4.7	5.6	40166	55077
Brooks County, Georgia	Brooks County	GA	2791	39.3	4261	60.01	49	0.69	6.5	11	37.2	22.4	8.3	9.7	4.9	42263	66023
Bryan County, Georgia	Bryan County	GA	6738	31.58	14240	66.74	357	1.67	2.3	5.4	25	23.3	10.1	21.2	12.7	90627	117553
Bulloch County, Georgia	Bulloch County	GA	11248	37.38	18387	61.11	455	1.51	2.3	8.9	28.7	21.6	8.8	17.9	11.7	53675	74400
Burke County, Georgia	Burke County	GA	5208	48.75	5400	50.55	75	0.7	6	9.4	37.8	21.2	11	10.7	4	50321	77372
Butts County, Georgia	Butts County	GA	3274	27.81	8406	71.41	91	0.77	3.8	12.5	42.7	22.1	5.8	8.4	4.7	60076	77618
Calhoun County, Georgia	Calhoun County	GA	1263	57.46	923	41.99	12	0.55	7.6	16.2	39.6	21.5	3.7	7	4.4	48663	63633
Camden County, Georgia	Camden County	GA	7967	33.64	15249	64.38	470	1.98	1.5	6	32.4	28.5	9.9	13.7	7.9	68104	81749
Candler County, Georgia	Candler County	GA	1269	28.64	3133	70.71	29	0.65	10.7	11.8	35.5	23.7	6	8.1	4.2	45519	62538
Carroll County, Georgia	Carroll County	GA	16236	29.81	37476	68.8	760	1.4	5	10.5	34.3	21.4	7.6	13.4	7.8	66895	84126
Catoosa County, Georgia	Catoosa County	GA	6932	21.27	25167	77.22	494	1.52	3.2	7.4	32.3	24.5	9.4	14.6	8.6	68896	86080
Charlton County, Georgia	Charlton County	GA	1105	24.19	3419	74.85	44	0.96	7.2	8.8	45.2	20.4	6.4	9.7	2.5	45770	60178
Chatham County, Georgia	Chatham County	GA	78247	58.65	53232	39.9	1929	1.45	2.6	6	24.9	23	7.4	21.3	14.8	66171	92238
Chattahoochee County, Georgia	Chattahoochee County	GA	667	42.16	880	55.63	35	2.21	0.6	3.5	23.4	33.7	8.9	19.5	10.5	52943	62041
Chattooga County, Georgia	Chattooga County	GA	1854	18.45	8064	80.24	132	1.31	9.9	17	38.4	18.4	7	5.5	4	43556	54605
Cherokee County, Georgia	Cherokee County	GA	42779	29.54	99585	68.77	2451	1.69	3.4	4.4	22.6	22.1	8	27.8	11.7	100824	121950
Clarke County, Georgia	Clarke County	GA	36055	70.22	14450	28.14	841	1.64	3.6	6.5	18.6	16.8	6.5	24.4	23.6	48692	72456
Clay County, Georgia	Clay County	GA	791	55.12	637	44.39	7	0.49	3.6	13.2	34.4	19.3	13	9.8	6.7	43264	48429
Clayton County, Georgia	Clayton County	GA	95466	84.99	15811	14.08	1053	0.94	6.1	8.5	33.2	22.3	9.4	13.8	6.8	56207	70517
Clinch County, Georgia	Clinch County	GA	744	26	2105	73.58	12	0.42	10.2	15.9	36.8	18	6.4	9.1	3.7	53350	57046
Cobb County, Georgia	Cobb County	GA	221847	56.35	165436	42.02	6445	1.64	3.7	3.2	17.8	18.2	7.4	31.5	18.2	94244	126092
Coffee County, Georgia	Coffee County	GA	4511	29.65	10578	69.53	125	0.82	8	13.7	39.4	18	8	7.9	5	48398	62361
Colquitt County, Georgia	Colquitt County	GA	4190	26.05	11777	73.21	119	0.74	8.3	14	37	17.7	8.3	7.7	7	47235	68065
Columbia County, Georgia	Columbia County	GA	29232	36.28	50013	62.07	1330	1.65	1.8	5	23	20.4	12.3	21.6	15.9	92571	114331
Cook County, Georgia	Cook County	GA	2059	29.27	4900	69.65	76	1.08	6	12	34.4	21.2	10.3	9.7	6.3	46706	65744
Coweta County, Georgia	Coweta County	GA	24210	31.52	51501	67.06	1088	1.42	2.5	6.8	26	21.3	9.3	21.9	12.3	90031	111379
Crawford County, Georgia	Crawford County	GA	1615	26.47	4428	72.57	59	0.97	5.2	13.8	41.4	19.4	8.9	5.9	5.4	56948	82870
Crisp County, Georgia	Crisp County	GA	2982	37.12	4985	62.06	66	0.82	4.6	13.2	39	20.8	8.2	8.5	5.6	47463	67397
Dade County, Georgia	Dade County	GA	1261	16.96	6066	81.6	107	1.44	4	9.5	36.7	20.8	10.6	13.1	5.3	59531	79211
Dawson County, Georgia	Dawson County	GA	2486	15.46	13398	83.32	197	1.23	3.4	8.6	21.9	23.2	7.5	24.5	11	84516	107051
DeKalb County, Georgia	DeKalb County	GA	308162	83.12	58377	15.75	4207	1.13	4.1	4.8	20.3	16.5	7.7	26.2	20.4	76044	111453
Decatur County, Georgia	Decatur County	GA	4782	41.14	6755	58.11	88	0.76	7.2	10.5	34.6	21.4	11.3	9.8	5.2	47383	63648
Dodge County, Georgia	Dodge County	GA	2172	26.91	5843	72.39	56	0.69	3.5	9.9	41.7	23.6	6.5	9.7	5	46091	63137
Dooly County, Georgia	Dooly County	GA	1911	46.55	2159	52.59	35	0.85	5	12.2	42.6	17.6	9.6	8.9	4.1	54109	78644
Dougherty County, Georgia	Dougherty County	GA	24568	69.62	10441	29.59	278	0.79	4.4	11.7	29.6	21.7	9.4	12.9	10.4	45640	62407
Douglas County, Georgia	Douglas County	GA	42814	61.95	25454	36.83	838	1.21	3.2	6.5	30.1	21.7	8.6	18.5	11.4	76930	95060
Early County, Georgia	Early County	GA	2450	47.22	2710	52.24	28	0.54	5.6	14.6	40.8	16.7	8.3	9.1	4.9	48355	67361
Echols County, Georgia	Echols County	GA	167	11.59	1256	87.16	18	1.25	4.3	13.3	46.4	16.9	5.2	8.6	5.4	61184	70181
Effingham County, Georgia	Effingham County	GA	7718	24.45	23361	74	492	1.56	2.2	7.7	33.6	21.9	9.5	17.9	7.2	79474	98830
Elbert County, Georgia	Elbert County	GA	2879	31.39	6226	67.89	66	0.72	4.9	13.3	40.5	21.6	5.5	8.5	5.6	48190	65608
Emanuel County, Georgia	Emanuel County	GA	2886	30.36	6553	68.94	66	0.69	6.8	14.1	40.9	17.6	9	7.7	3.9	47905	62820
Evans County, Georgia	Evans County	GA	1324	31.17	2888	68	35	0.82	6.9	14.1	38.2	19.6	4.8	10.5	5.9	55222	66877
Fannin County, Georgia	Fannin County	GA	2570	17.31	12169	81.95	110	0.74	4.5	7.7	34.4	20.8	9.5	13.1	10.1	54857	80336
Fayette County, Georgia	Fayette County	GA	33062	45.92	37956	52.72	976	1.36	1.8	2.9	20.7	18.5	8.9	29.3	18	105910	138756
Floyd County, Georgia	Floyd County	GA	11917	28.83	28906	69.92	518	1.25	6.2	9.7	32.6	21.4	7.8	13	9.3	57868	80139
Forsyth County, Georgia	Forsyth County	GA	42208	32.64	85123	65.83	1980	1.53	2.8	3.3	14.6	16.3	6.8	35	21.2	131660	158520
Franklin County, Georgia	Franklin County	GA	1593	14.8	9069	84.25	103	0.96	5.6	13.5	33.3	20.1	10.6	9.9	6.9	52597	71474
Fulton County, Georgia	Fulton County	GA	380212	72.59	137247	26.2	6320	1.21	2.3	4.1	16.1	14.3	6.1	33.2	23.9	86267	134949
Gilmer County, Georgia	Gilmer County	GA	2932	17.74	13429	81.26	164	0.99	6.6	7.4	34.9	18.3	9.4	14.1	9.3	70334	83115
Glascock County, Georgia	Glascock County	GA	155	9.9	1402	89.58	8	0.51	7.9	10	39.4	19.6	10.3	11.7	1.3	60469	74995
Glynn County, Georgia	Glynn County	GA	15882	37.83	25617	61.01	489	1.16	3.8	8.1	26.8	21.4	9.4	18.2	12.4	65970	95279
Gordon County, Georgia	Gordon County	GA	4384	18.24	19405	80.74	244	1.02	8.7	13.5	35	19.8	6.4	9.4	7.3	57555	79038
Grady County, Georgia	Grady County	GA	3619	33.8	7034	65.7	54	0.5	7.3	11.7	36.2	21.2	7.7	9.4	6.4	51929	69859
Greene County, Georgia	Greene County	GA	4087	36.35	7066	62.84	91	0.81	3.7	8.3	30.4	17.4	6.8	21.4	12	77527	126105
Gwinnett County, Georgia	Gwinnett County	GA	241994	58.45	166400	40.19	5629	1.36	6.2	5.6	22.5	17.3	9.4	25.2	13.7	82296	107962
Habersham County, Georgia	Habersham County	GA	3562	17.43	16637	81.43	232	1.14	9.2	10.1	33.7	18	6.1	12.9	10.1	61292	81009
Hall County, Georgia	Hall County	GA	25033	27.65	64183	70.89	1321	1.46	10.9	8.1	28.4	20	7.2	15.9	9.6	74153	101102
Hancock County, Georgia	Hancock County	GA	2976	71.66	1154	27.79	23	0.55	12.4	12.5	35.9	19.5	10.1	8.2	1.5	31767	53841
Haralson County, Georgia	Haralson County	GA	1791	12.57	12330	86.55	125	0.88	4.6	11.3	39	21.2	6	11	6.9	65940	82330
Harris County, Georgia	Harris County	GA	5457	27.3	14319	71.63	215	1.08	1.9	4.7	26.6	24.6	9.9	17.9	14.6	85936	109995
Hart County, Georgia	Hart County	GA	3157	24.8	9465	74.36	106	0.83	5.3	11.9	34.5	20.3	9.8	13	5.2	61765	77141
Heard County, Georgia	Heard County	GA	824	15.28	4519	83.78	51	0.95	4.5	11.4	42.4	24.6	5.4	7.7	3.9	62965	80834
Henry County, Georgia	Henry County	GA	73443	59.71	48259	39.24	1296	1.05	2.5	5	31.9	22.2	10.9	17.9	9.6	79663	98501
Houston County, Georgia	Houston County	GA	32239	43.08	41540	55.51	1059	1.42	2.4	4.6	27.2	22	11.8	18.3	13.7	76968	92873
Irwin County, Georgia	Irwin County	GA	1008	24.18	3134	75.19	26	0.62	4.8	13.4	36.3	21.7	6.9	8.4	8.4	46383	59585
Jackson County, Georgia	Jackson County	GA	7642	20.28	29502	78.31	531	1.41	4.5	7.7	32.3	20	9	18.3	8.2	82056	101089
Jasper County, Georgia	Jasper County	GA	1761	23.04	5822	76.16	61	0.8	2.8	7.6	44.1	21.5	5.7	10.1	8.2	57374	83435
Jeff Davis County, Georgia	Jeff Davis County	GA	1028	17.81	4695	81.36	48	0.83	4.8	14.7	38.2	22.8	8.1	8.4	3.1	41780	56898
Jefferson County, Georgia	Jefferson County	GA	4058	53.12	3537	46.3	44	0.58	8.3	11.3	41.5	22.2	6	7.5	3.3	46865	64495
Jenkins County, Georgia	Jenkins County	GA	1266	36.64	2161	62.55	28	0.81	5.6	12.8	44.4	22.9	5.2	4.9	4.1	31463	48434
Johnson County, Georgia	Johnson County	GA	1222	29.8	2850	69.51	28	0.68	5.1	18.7	43.8	14.8	8.2	4.2	5.3	47796	59256
Jones County, Georgia	Jones County	GA	4882	32.69	9940	66.56	112	0.75	2.5	5.9	41.4	20.8	11.5	11.6	6.3	66288	83629
Lamar County, Georgia	Lamar County	GA	2620	28.97	6331	69.99	94	1.04	2.9	7.6	35.9	27.3	8.8	9.1	8.3	64966	82098
Lanier County, Georgia	Lanier County	GA	1019	28.5	2509	70.16	48	1.34	5.1	8	41	18.8	8.6	11.3	7.1	39971	60229
Laurens County, Georgia	Laurens County	GA	8074	35.52	14493	63.76	164	0.72	3.2	10.3	41.7	19.6	8.1	8.8	8.3	46776	71471
Lee County, Georgia	Lee County	GA	4558	27.27	12007	71.84	149	0.89	2.4	5.6	27.2	19.6	12.5	19.8	12.8	83632	95557
Liberty County, Georgia	Liberty County	GA	13104	61.25	7959	37.2	331	1.55	2.2	5.6	32	28.1	11.9	13.9	6.3	55149	68445
Lincoln County, Georgia	Lincoln County	GA	1432	30.86	3173	68.37	36	0.78	2.8	10	41.7	20	9.3	10.3	6	50754	71037
Long County, Georgia	Long County	GA	2035	35.97	3527	62.35	95	1.68	2.5	13.6	41.5	20.6	8.7	7.9	5.1	56819	69881
Lowndes County, Georgia	Lowndes County	GA	20116	43.4	25692	55.42	547	1.18	3.2	7.1	31.9	21.7	9.9	15.7	10.3	52821	70840
Lumpkin County, Georgia	Lumpkin County	GA	3126	20.13	12163	78.31	242	1.56	2.3	10.1	29.3	19.9	6.3	19	13	67592	92797
Macon County, Georgia	Macon County	GA	2858	61.29	1783	38.24	22	0.47	9.1	18.3	39.1	18.8	4.6	6	4.1	33960	63512
Madison County, Georgia	Madison County	GA	3411	22.84	11326	75.83	200	1.34	7	9.9	34.2	20.6	8.8	9.6	10	53626	73468
Marion County, Georgia	Marion County	GA	1312	36.19	2275	62.76	38	1.05	7.4	16.7	36.7	20.1	7	9.4	2.7	48836	61169
McDuffie County, Georgia	McDuffie County	GA	4168	39.87	6169	59.01	118	1.13	3.1	11.4	40.1	19.3	7.8	10.1	8.3	54752	72508
McIntosh County, Georgia	McIntosh County	GA	2612	39.01	4016	59.98	68	1.02	3	14.4	36.6	21.6	6.5	11.8	6	51262	65348
Meriwether County, Georgia	Meriwether County	GA	4287	39.41	6524	59.98	66	0.61	4.2	12.8	42.5	21.9	5.4	8	5.1	52392	62898
Miller County, Georgia	Miller County	GA	748	26.39	2066	72.9	20	0.71	6.1	11.2	29.9	19.2	13.9	11.3	8.3	52132	67507
Mitchell County, Georgia	Mitchell County	GA	3993	44.55	4935	55.07	34	0.38	5.3	11.3	36.2	25.4	9.5	6.4	5.9	45966	62136
Monroe County, Georgia	Monroe County	GA	4385	28.13	11057	70.92	148	0.95	3.4	8.2	34.9	17.1	7.9	15.8	12.8	74867	105763
Montgomery County, Georgia	Montgomery County	GA	980	24.7	2960	74.62	27	0.68	5.1	11	38.5	16.4	9.4	10.6	9	49138	79916
Morgan County, Georgia	Morgan County	GA	3353	28.64	8231	70.31	122	1.04	4	6.6	35.5	17.2	6.8	17.5	12.3	81524	100742
Murray County, Georgia	Murray County	GA	2301	14.95	12944	84.11	144	0.94	10.3	13.5	35.4	21.8	7.5	7.5	3.8	60617	74925
Muscogee County, Georgia	Muscogee County	GA	49446	61.41	30107	37.39	961	1.19	3.7	7.8	27.1	23.4	9.6	16.5	12	54561	75620
Newton County, Georgia	Newton County	GA	29789	54.93	23869	44.01	576	1.06	3.4	7	33.1	24.8	9.2	13.5	9	70732	84253
Oconee County, Georgia	Oconee County	GA	8162	32.43	16595	65.94	411	1.63	1.4	3.1	16.1	19.5	6.4	26.3	27.1	116221	156856
Oglethorpe County, Georgia	Oglethorpe County	GA	2439	29.99	5592	68.76	102	1.25	4.2	8.3	38.9	17.4	8.5	13.4	9.3	66672	79153
Paulding County, Georgia	Paulding County	GA	29695	34.78	54517	63.86	1160	1.36	2.2	6.8	30.1	25.6	8.8	17.6	9	89237	102401
Peach County, Georgia	Peach County	GA	5922	47.18	6506	51.83	125	1	5.6	8.4	32.2	19.2	11.7	11.4	11.5	60940	79612
Pickens County, Georgia	Pickens County	GA	2824	16.45	14110	82.19	233	1.36	2.5	7.4	35.6	21.8	8.4	16	8.3	72558	91717
Pierce County, Georgia	Pierce County	GA	1100	12.16	7898	87.3	49	0.54	5.9	7.4	41.9	17.6	10.1	9.4	7.6	54861	71390
Pike County, Georgia	Pike County	GA	1505	14.04	9127	85.14	88	0.82	2.4	9.5	37.3	21	9.6	11.4	8.7	83866	100838
Polk County, Georgia	Polk County	GA	3657	21.02	13587	78.1	152	0.87	6.5	10.6	42.6	18.7	7.2	9	5.4	51956	70683
Pulaski County, Georgia	Pulaski County	GA	1230	30.14	2815	68.98	36	0.88	13.1	6.2	36	24.6	7.3	8.2	4.7	42545	62414
Putnam County, Georgia	Putnam County	GA	3448	29.08	8291	69.94	116	0.98	4.9	7.5	34.1	19.4	8.6	16.3	9.3	60825	96829
Quitman County, Georgia	Quitman County	GA	497	44.94	604	54.61	5	0.45	6.3	14.6	37.2	24.1	6.9	7	4	38889	51307
Rabun County, Georgia	Rabun County	GA	1984	20.74	7474	78.11	110	1.15	3.7	7.1	29.9	24.6	6.7	15.6	12.4	57261	83513
Randolph County, Georgia	Randolph County	GA	1671	54.38	1390	45.23	12	0.39	7.2	11.7	34.8	21.2	12.7	9.5	2.9	24638	39003
Richmond County, Georgia	Richmond County	GA	59119	67.95	26780	30.78	1110	1.28	3.2	9.2	32.2	22.3	9.6	14.2	9.3	50605	70310
Rockdale County, Georgia	Rockdale County	GA	31237	69.91	13014	29.13	430	0.96	3.8	6.7	28.4	24.2	8.9	17	11.1	68999	90490
Schley County, Georgia	Schley County	GA	462	20.31	1800	79.12	13	0.57	3.5	11.4	34.6	23	9.5	10	7.9	53274	64565
Screven County, Georgia	Screven County	GA	2661	40.15	3915	59.08	51	0.77	2.4	12.6	37.9	21.4	9.9	8.2	7.5	49941	73243
Seminole County, Georgia	Seminole County	GA	1256	32.3	2613	67.21	19	0.49	2.9	9.1	40.3	20.3	10.3	11.1	5.9	46063	76257
Spalding County, Georgia	Spalding County	GA	11828	39.15	18104	59.93	279	0.92	3.6	12.8	39.2	17.2	8.9	11.4	6.9	57367	89899
Stephens County, Georgia	Stephens County	GA	2386	20.08	9367	78.81	132	1.11	5.5	10.9	40.8	21.4	5.5	9.7	6.3	52901	66178
Stewart County, Georgia	Stewart County	GA	1182	59.4	801	40.25	7	0.35	8.7	18.7	36	16.8	3.9	11.2	4.6	43094	53207
Sumter County, Georgia	Sumter County	GA	6314	51.98	5733	47.19	101	0.83	6.7	9.5	35.9	19.2	6.5	14.1	8	38899	60049
Talbot County, Georgia	Talbot County	GA	2114	60.02	1392	39.52	16	0.45	4.2	12.3	41.5	17.6	9	9.9	5.5	48065	65761
Taliaferro County, Georgia	Taliaferro County	GA	561	60.45	360	38.79	7	0.75	8.5	7.2	42.1	26.2	4.6	6.6	4.8	45881	54144
Tattnall County, Georgia	Tattnall County	GA	2062	25.19	6054	73.96	69	0.84	8.8	12.9	39.7	17.6	7.1	7.6	6.4	51868	67531
Taylor County, Georgia	Taylor County	GA	1388	36.13	2420	62.99	34	0.88	7.9	18.1	38.8	12.9	5.9	10.3	6.1	40727	60232
Telfair County, Georgia	Telfair County	GA	1488	34.33	2825	65.18	21	0.48	10.7	13.8	47.6	12.9	6.9	3.7	4.4	41801	59442
Terrell County, Georgia	Terrell County	GA	2376	53.8	2004	45.38	36	0.82	6.7	11.4	37.5	25.6	5.8	6.5	6.5	43507	60803
Thomas County, Georgia	Thomas County	GA	8708	39.81	12969	59.29	195	0.89	3.8	9.8	31.4	19.4	11.7	15.7	8.1	55958	78699
Tift County, Georgia	Tift County	GA	5318	32.67	10784	66.24	177	1.09	5.4	10.7	33.3	18.3	13.6	9.6	9.1	52561	71609
Toombs County, Georgia	Toombs County	GA	2938	26.92	7873	72.14	103	0.94	7.3	9.8	36.5	22.2	7.8	8.7	7.6	47310	70812
Towns County, Georgia	Towns County	GA	1550	19.43	6384	80.01	45	0.56	1.9	5.9	27.8	22.6	9.9	18.4	13.6	55574	75397
Treutlen County, Georgia	Treutlen County	GA	952	30.94	2101	68.28	24	0.78	6.2	20.2	44.1	9.5	6.2	11.1	2.6	38641	64959
Troup County, Georgia	Troup County	GA	11577	38.53	18142	60.38	328	1.09	3.5	8.3	36.7	21.6	9.6	11.9	8.5	53599	76163
Turner County, Georgia	Turner County	GA	1409	37.17	2349	61.96	33	0.87	8.8	11.6	34.8	20.7	13.6	7.5	3	39666	56172
Twiggs County, Georgia	Twiggs County	GA	2044	45.99	2370	53.33	30	0.68	4.3	16.4	42.5	19.5	6.7	6.5	4.1	50446	76579
Union County, Georgia	Union County	GA	2800	18	12650	81.31	108	0.69	3.6	8.3	32.5	20.4	9.7	15.6	9.9	59783	87591
Upson County, Georgia	Upson County	GA	4203	32.57	8606	66.69	96	0.74	4.7	10.9	37.8	21.3	9.9	9.8	5.5	48740	69603
Walker County, Georgia	Walker County	GA	5770	19.66	23173	78.94	411	1.4	5.4	9.6	35.5	22	7.9	12.5	7.2	52276	71206
Walton County, Georgia	Walton County	GA	12683	24.82	37839	74.06	571	1.12	3.4	9.5	32.1	22.4	8.3	15.1	9.1	79425	97391
Ware County, Georgia	Ware County	GA	4169	29.38	9903	69.79	117	0.82	5.9	12.5	39.9	19.3	7.3	10.6	4.5	44138	60616
Warren County, Georgia	Warren County	GA	1468	55.4	1166	44	16	0.6	10.3	17.6	37.2	16.5	7.4	7	4	45091	57899
Washington County, Georgia	Washington County	GA	4743	50.05	4668	49.26	66	0.7	5.7	10.1	43.9	15.7	7.2	12.5	4.9	43810	61302
Wayne County, Georgia	Wayne County	GA	2688	21.03	9987	78.15	104	0.81	4.9	9.6	44.7	18.1	8.6	8.5	5.7	49847	67746
Webster County, Georgia	Webster County	GA	640	46.01	748	53.77	3	0.22	10.8	8.1	33.9	27	10.9	7.5	1.8	35000	51092
Wheeler County, Georgia	Wheeler County	GA	689	30.15	1583	69.28	13	0.57	3.5	20.1	44.4	14.7	4.7	11.6	1.1	36354	49480
White County, Georgia	White County	GA	2411	16.27	12222	82.49	183	1.24	4.9	9.5	31.2	23.7	7.6	13.3	9.8	66256	83004
Whitfield County, Georgia	Whitfield County	GA	10680	29.05	25644	69.75	442	1.2	13.3	12.4	31.6	18.5	5.6	10.9	7.7	59659	79537
Wilcox County, Georgia	Wilcox County	GA	861	26.26	2402	73.25	16	0.49	4.2	15.4	39.8	20	7	7	6.6	46759	59691
Wilkes County, Georgia	Wilkes County	GA	2160	42.94	2823	56.12	47	0.93	5.2	12.1	44.6	16.7	5.7	12	3.7	51780	67375
Wilkinson County, Georgia	Wilkinson County	GA	2074	43.48	2665	55.87	31	0.65	3.9	6.7	48	19.3	10	8.1	4	40757	57529
Worth County, Georgia	Worth County	GA	2395	25.79	6830	73.56	60	0.65	3.8	10.7	44.2	21.4	10.4	6.6	2.9	56496	70767
Hawaii County, Hawaii	Hawaii County	HI	58731	66.88	26897	30.63	2186	2.49	2.3	4.8	29.2	21.6	11.5	19.2	11.4	74238	100481
Honolulu County, Hawaii	Honolulu County	HI	238869	62.51	136259	35.66	6986	1.83	3.6	3.7	25.4	19.5	11.1	23.3	13.4	99816	128036
Kalawao County, Hawaii	Kalawao County	HI	23	95.83	1	4.17	0	0	4	4	34	20	4	20	14	87813	82150
Kauai County, Hawaii	Kauai County	HI	21225	63.36	11582	34.58	690	2.06	3.9	3.6	28.9	21.2	12.1	21.3	9.1	88869	115181
Maui County, Hawaii	Maui County	HI	47305	66.59	22126	31.14	1613	2.27	3.4	4.1	30.2	22.6	9.6	20	10.1	95379	124551
Ada County, Idaho	Ada County	ID	120539	46.47	130699	50.39	8151	3.14	1.6	3.1	19.8	23.7	9	27.9	14.9	83881	113335
Adams County, Idaho	Adams County	ID	591	22.85	1941	75.06	54	2.09	2	4	35.9	27.3	9.5	12.5	8.8	55891	85710
Bannock County, Idaho	Bannock County	ID	14682	37.12	23331	58.99	1540	3.89	1.5	5.1	25.5	27.8	10.6	19.6	9.9	60998	78542
Bear Lake County, Idaho	Bear Lake County	ID	350	10.56	2914	87.9	51	1.54	0.9	6	35.2	26.4	10.7	14.2	6.6	63244	78250
Benewah County, Idaho	Benewah County	ID	977	19.65	3878	77.98	118	2.37	2.5	12.4	34.3	22.1	10.2	12.8	5.8	54191	68342
Bingham County, Idaho	Bingham County	ID	4124	20.52	15295	76.12	675	3.36	5.1	6.5	32.3	25.5	10.7	14.2	5.6	69433	89090
Blaine County, Idaho	Blaine County	ID	8919	67.12	4032	30.34	338	2.54	3.3	4.9	24.7	17.6	5	31.2	13.3	81794	115132
Boise County, Idaho	Boise County	ID	1204	24.98	3485	72.3	131	2.72	0.9	3.7	29	24.4	15	17.6	9.5	70776	81673
Bonner County, Idaho	Bonner County	ID	8310	30.38	18369	67.16	673	2.46	2.3	6.5	30.2	25.3	8.6	18.1	9.1	61816	83879
Bonneville County, Idaho	Bonneville County	ID	14254	26.4	37805	70.02	1936	3.59	3	5.1	25.2	24.3	10.7	21.6	10.3	73103	94934
Boundary County, Idaho	Boundary County	ID	1220	19.33	4937	78.2	156	2.47	4.6	8.5	37	24.4	7.4	11.1	7	58810	69579
Butte County, Idaho	Butte County	ID	188	13.29	1202	84.95	25	1.77	3.3	6.4	29.6	24.1	20.4	12.4	3.8	37358	63767
Camas County, Idaho	Camas County	ID	149	19.76	507	67.24	98	13	11.1	1.8	29.6	22.2	8.3	18.6	8.5	63750	92141
Canyon County, Idaho	Canyon County	ID	25881	28.62	61759	68.29	2798	3.09	5.5	7.5	29.9	26.2	9.3	15.2	6.4	68473	82742
Caribou County, Idaho	Caribou County	ID	431	12.62	2906	85.07	79	2.31	3.6	6	34.3	29.5	11	10.1	5.6	65380	77812
Cassia County, Idaho	Cassia County	ID	1464	15.2	7907	82.12	258	2.68	6.6	7.7	28.9	26.6	9.6	14.6	5.9	63525	83982
Clark County, Idaho	Clark County	ID	41	13.18	264	84.89	6	1.93	15.3	23.1	28.3	15.1	3	10.8	4.4	53500	58571
Clearwater County, Idaho	Clearwater County	ID	877	19.85	3453	78.14	89	2.01	1.5	6.7	37	28.7	8	12.3	5.8	55885	68736
Custer County, Idaho	Custer County	ID	603	22.02	2089	76.27	47	1.72	2.4	6.3	26.9	26	9.7	23.5	5.2	60357	68465
Elmore County, Idaho	Elmore County	ID	2601	25.49	7246	71	358	3.51	5.8	6.2	28.9	25.9	12.3	15.4	5.4	55000	72029
Franklin County, Idaho	Franklin County	ID	657	9.86	5845	87.71	162	2.43	0.6	7.3	46	23	5.8	11.8	5.4	61679	81863
Fremont County, Idaho	Fremont County	ID	998	14.85	5548	82.57	173	2.57	3.6	6.5	30.1	26	12.4	16.8	4.5	67015	78960
Gem County, Idaho	Gem County	ID	1803	18.11	7951	79.85	204	2.05	2.8	7	34.8	26.3	6.6	18.3	4.2	65204	83872
Gooding County, Idaho	Gooding County	ID	1256	20.76	4659	77.01	135	2.23	7.1	13.9	33.8	22.4	6.9	11.2	4.6	60938	78884
Idaho County, Idaho	Idaho County	ID	1561	16.26	7826	81.5	215	2.24	1.4	6.4	34.8	24.9	11.1	16.5	4.9	54745	70728
Jefferson County, Idaho	Jefferson County	ID	1661	11.72	12099	85.37	413	2.91	3	4.4	25.5	24.9	15.4	18.1	8.7	77491	91003
Jerome County, Idaho	Jerome County	ID	1893	24.23	5734	73.4	185	2.37	13.3	11.4	28.5	22.5	11.2	8.7	4.4	67347	84105
Kootenai County, Idaho	Kootenai County	ID	24312	27.05	62837	69.91	2729	3.04	1.8	4.7	27.1	28.5	11.2	17.8	8.9	71949	92570
Latah County, Idaho	Latah County	ID	10236	49.76	9472	46.05	862	4.19	0.9	2.1	21	22.9	8.6	27.2	17.1	62258	82919
Lemhi County, Idaho	Lemhi County	ID	1032	21.78	3592	75.81	114	2.41	1.5	6.8	31.4	26.2	12	13.5	8.7	49216	70830
Lewis County, Idaho	Lewis County	ID	349	18.66	1489	79.63	32	1.71	2.8	7.3	30.4	29.9	11.1	12.6	6	46484	63154
Lincoln County, Idaho	Lincoln County	ID	414	21.34	1469	75.72	57	2.94	10.4	8.1	34.6	23.3	12.5	6.4	4.8	62250	72223
Madison County, Idaho	Madison County	ID	2666	15.58	13559	79.24	887	5.18	0.4	2.2	16.7	28.1	13.5	27.6	11.4	53025	84274
Minidoka County, Idaho	Minidoka County	ID	1550	19.39	6265	78.38	178	2.23	10.2	8.5	36.2	20.4	8.7	9	6.9	63594	80532
Nez Perce County, Idaho	Nez Perce County	ID	6686	31.89	13738	65.52	543	2.59	2.5	4.5	29.7	26.3	11.3	17.5	8.2	65023	84952
Oneida County, Idaho	Oneida County	ID	249	10.16	2148	87.64	54	2.2	0.4	6.2	38.7	23.4	7.5	17.9	5.8	67383	74086
Owyhee County, Idaho	Owyhee County	ID	816	17.21	3819	80.54	107	2.26	14.3	9.6	34.3	22.3	5.6	10.6	3.3	58440	69334
Payette County, Idaho	Payette County	ID	2161	19.14	8862	78.47	270	2.39	5.5	8.6	34.4	22.7	8.6	14.5	5.6	62721	81772
Power County, Idaho	Power County	ID	865	28.03	2116	68.57	105	3.4	8.3	7.4	32.1	30.8	6.8	9.8	4.9	56671	68466
Shoshone County, Idaho	Shoshone County	ID	1693	27.99	4216	69.7	140	2.31	2.7	9.3	36.8	28.7	10.9	7	4.7	44807	58514
Teton County, Idaho	Teton County	ID	3318	52.28	2858	45.03	171	2.69	3.8	2.8	18.1	19.2	9	33.8	13.3	88906	115438
Twin Falls County, Idaho	Twin Falls County	ID	9391	25.6	25897	70.6	1392	3.79	5.5	7.1	28.3	24.2	11.3	14.1	9.5	61183	84035
Valley County, Idaho	Valley County	ID	2976	42.14	3947	55.88	140	1.98	1.9	5.4	26.9	20	9.5	23.5	12.9	72878	95069
Washington County, Idaho	Washington County	ID	1073	20.08	4154	77.73	117	2.19	5.5	4.3	30.9	29.6	12.3	11.6	5.9	50046	62962
Adams County, Illinois	Adams County	IL	8633	25.75	24220	72.24	674	2.01	1.5	5.1	34.5	22.1	9.8	17.9	9	63767	81360
Alexander County, Illinois	Alexander County	IL	1114	42.55	1486	56.76	18	0.69	4.8	8.9	41.8	26.7	7.5	5.9	4.4	40365	53921
Bond County, Illinois	Bond County	IL	2288	28.09	5625	69.07	231	2.84	2.3	8.8	32.5	25.7	9.7	12.2	8.9	58617	76759
Boone County, Illinois	Boone County	IL	10542	42.2	13883	55.58	554	2.22	7	6.4	32.3	22.4	7.9	15.1	8.9	80502	100719
Brown County, Illinois	Brown County	IL	486	19.25	1931	76.48	108	4.28	3.7	16	40	18.5	7.8	10.8	3.3	64760	75886
Bureau County, Illinois	Bureau County	IL	6669	38.25	10411	59.72	354	2.03	3	6.7	34.9	24.2	9.8	14.2	7.3	64165	81875
Calhoun County, Illinois	Calhoun County	IL	677	24.41	2046	73.78	50	1.8	1.7	6.3	36.2	17.8	18.4	13.8	5.7	88059	106062
Carroll County, Illinois	Carroll County	IL	2748	34.25	5105	63.62	171	2.13	3.8	7.8	35.9	25	8.8	13.6	5.1	61539	78177
Cass County, Illinois	Cass County	IL	1615	30.32	3625	68.06	86	1.61	6.6	7.2	42.6	17	7.4	14.3	4.9	64826	75705
Champaign County, Illinois	Champaign County	IL	57067	59.71	35285	36.92	3216	3.37	1.7	3.7	22	18.3	8.8	20.7	24.9	61090	86280
Christian County, Illinois	Christian County	IL	4335	26.75	11563	71.36	306	1.89	2.1	7.5	44	19.6	9.7	12.4	4.8	56933	70766
Clark County, Illinois	Clark County	IL	1993	23.85	6226	74.52	136	1.63	2.3	5.5	35.3	17.7	14.8	16.7	7.8	65874	79807
Clay County, Illinois	Clay County	IL	1129	16.36	5629	81.59	141	2.04	4.5	7.4	37.6	20.8	14.8	9.6	5.4	58028	76897
Clinton County, Illinois	Clinton County	IL	4493	23.38	14304	74.45	417	2.17	3	5	33	19.3	16	16.5	7.1	78054	99933
Coles County, Illinois	Coles County	IL	8067	35.69	14037	62.09	502	2.22	2.1	5.9	31.8	22.2	11	16	11	53732	74067
Cook County, Illinois	Cook County	IL	1725973	74.35	558269	24.05	37157	1.6	6.1	5.7	22.3	17.8	6.8	24	17.3	78304	113411
Crawford County, Illinois	Crawford County	IL	2202	23.32	7043	74.6	196	2.08	3	8.3	28.6	21.5	19.6	12.3	6.6	64163	81010
Cumberland County, Illinois	Cumberland County	IL	1142	19.52	4601	78.65	107	1.83	2.3	4.2	39	20.2	16.5	11.9	5.8	71274	84760
De Witt County, Illinois	De Witt County	IL	2191	27.31	5632	70.19	201	2.5	1.6	4.3	41.3	23.6	7.8	14.3	7.2	61823	80318
DeKalb County, Illinois	DeKalb County	IL	24643	51.35	21905	45.65	1441	3	3.1	3.8	24.9	23.7	10.4	20.8	13.3	68617	86040
Douglas County, Illinois	Douglas County	IL	2335	26.66	6227	71.08	198	2.26	10.3	4.9	33.9	20.2	10.8	13.9	5.9	67177	82408
DuPage County, Illinois	DuPage County	IL	281222	57.98	193611	39.91	10231	2.11	3.4	3.2	18	16.9	7.5	30.3	20.7	107035	144731
Edgar County, Illinois	Edgar County	IL	1887	23.02	6193	75.56	116	1.42	3.4	8.7	38.9	20.7	9.6	13.4	5.4	56687	70504
Edwards County, Illinois	Edwards County	IL	488	14.49	2833	84.12	47	1.4	2.2	6.7	34.5	24.6	18.1	10.1	3.8	60784	73519
Effingham County, Illinois	Effingham County	IL	3716	19.47	15006	78.64	361	1.89	2.5	4	32.5	21.4	13.7	17.8	8.2	73181	93523
Fayette County, Illinois	Fayette County	IL	1826	18.12	8055	79.94	195	1.94	4.1	9.3	40.5	19.4	11.9	10.7	4.1	51962	71866
Ford County, Illinois	Ford County	IL	1754	25.18	5048	72.46	165	2.37	2.2	6	35.5	26.6	9.9	11.8	8	58930	74003
Franklin County, Illinois	Franklin County	IL	4760	25.5	13622	72.97	287	1.54	2.2	7.8	33	26.8	12.5	12.3	5.3	51031	66309
Fulton County, Illinois	Fulton County	IL	6503	38.88	9867	59	354	2.12	1.7	8.4	37.4	22.7	12.2	12.2	5.5	57223	76880
Gallatin County, Illinois	Gallatin County	IL	622	23.25	2019	75.48	34	1.27	3.4	9.4	38.3	25.9	10.7	7.5	4.9	51868	83451
Greene County, Illinois	Greene County	IL	1349	21.66	4770	76.6	108	1.73	2.4	7.2	45.6	19.8	9.5	10.7	4.8	58900	77641
Grundy County, Illinois	Grundy County	IL	9626	35.98	16523	61.76	604	2.26	2	4	32	25.8	10.6	16.7	9	89993	107987
Hamilton County, Illinois	Hamilton County	IL	824	19.06	3432	79.39	67	1.55	5.9	7.7	30.7	25.4	13	9.9	7.2	60574	72181
Hancock County, Illinois	Hancock County	IL	2315	24.67	6906	73.6	162	1.73	1.3	4.2	34.5	22.7	12.6	17	7.6	61026	79875
Hardin County, Illinois	Hardin County	IL	449	20.77	1691	78.21	22	1.02	5.7	7	38.1	23.3	13.9	6.7	5.3	53026	70437
Henderson County, Illinois	Henderson County	IL	1187	32.47	2394	65.48	75	2.05	1.2	5.8	39.8	22.6	9.9	15.6	5.1	64946	78911
Henry County, Illinois	Henry County	IL	9797	38.12	15300	59.53	603	2.35	2.3	5.3	34.2	21.8	11.9	16.6	8.1	66313	88220
Iroquois County, Illinois	Iroquois County	IL	2908	20.71	10877	77.45	259	1.84	3.5	7.8	39.2	21.4	10.5	13.1	4.6	62866	79788
Jackson County, Illinois	Jackson County	IL	11181	49.22	10890	47.94	645	2.84	3	5.2	22.2	25.4	9	17.5	17.7	44847	67690
Jasper County, Illinois	Jasper County	IL	1007	18.03	4494	80.45	85	1.52	1.5	5.1	36.9	17	18	15	6.4	67429	82197
Jefferson County, Illinois	Jefferson County	IL	4608	26.43	12476	71.55	352	2.02	2.6	6.8	31.7	27.3	13.4	11.6	6.6	58384	75046
Jersey County, Illinois	Jersey County	IL	2961	24.76	8712	72.84	287	2.4	2.2	4.5	38.3	20.2	13.1	13.5	8.2	77607	97649
Jo Daviess County, Illinois	Jo Daviess County	IL	5109	40.89	7166	57.35	220	1.76	2.7	3.7	34.6	20	11.1	18.2	9.7	67729	85711
Johnson County, Illinois	Johnson County	IL	1281	19.86	5059	78.43	110	1.71	4.3	11.1	33	24.4	10.6	11.7	4.9	63295	78899
Kane County, Illinois	Kane County	IL	130166	56.14	96775	41.74	4935	2.13	7.3	6.2	22.6	20	7.6	23.4	13	96400	125010
Kankakee County, Illinois	Kankakee County	IL	20271	40.51	28532	57.02	1236	2.47	3.7	6.4	35.2	24.4	9.9	12.2	8.1	65489	85018
Kendall County, Illinois	Kendall County	IL	33168	51.66	29492	45.93	1545	2.41	2.4	4.2	24.5	22	11.1	22.6	13.2	106358	121223
Knox County, Illinois	Knox County	IL	10703	46.12	12009	51.75	493	2.12	3.2	8	34.2	21.8	12.4	13.6	6.8	50263	68079
LaSalle County, Illinois	LaSalle County	IL	22442	41.8	30113	56.09	1128	2.1	2.5	6.4	35.5	25.3	11.8	12.3	6.1	67942	85086
Lake County, Illinois	Lake County	IL	204032	61.06	123594	36.99	6530	1.95	4.8	4.4	19.8	17.6	6.4	27.3	19.6	104553	147075
Lawrence County, Illinois	Lawrence County	IL	1419	22.1	4886	76.08	117	1.82	3.6	11.2	35.8	21.9	13.4	9.1	5	55811	81372
Lee County, Illinois	Lee County	IL	6407	38.97	9630	58.58	403	2.45	2.3	7.6	36	24.9	10.3	12.2	6.7	64588	82936
Livingston County, Illinois	Livingston County	IL	4615	26.87	12208	71.08	351	2.04	2.9	6.6	39.9	23.4	8.5	12.3	6.4	68175	85405
Logan County, Illinois	Logan County	IL	3840	28.89	9136	68.72	318	2.39	1.9	6.6	38.4	24.2	8.7	13.6	6.5	62547	83002
Macon County, Illinois	Macon County	IL	19847	40.19	28589	57.89	951	1.93	2	5.7	37	22.9	8.6	15.9	7.9	59622	81114
Macoupin County, Illinois	Macoupin County	IL	7365	30.6	16153	67.11	552	2.29	2.1	6.9	39.7	21.5	10.5	13.4	5.9	64706	82453
Madison County, Illinois	Madison County	IL	57836	42.04	76031	55.27	3691	2.68	1.8	4.9	28.7	24.3	10.9	18.5	10.9	71759	93528
Marion County, Illinois	Marion County	IL	4524	25.86	12678	72.48	290	1.66	2.7	7.3	36.5	25.5	11.3	11.1	5.6	59099	73326
Marshall County, Illinois	Marshall County	IL	2005	31.6	4197	66.15	143	2.25	2	6	38.8	23.4	12.4	12.5	5	64940	78116
Mason County, Illinois	Mason County	IL	1985	29.34	4654	68.79	127	1.88	3.1	5.6	38.8	22.7	12.5	12.2	5.1	58479	77730
Massac County, Illinois	Massac County	IL	1725	25.3	4997	73.29	96	1.41	4.9	7.4	36	25.2	11.7	10.1	4.6	57365	70962
McDonough County, Illinois	McDonough County	IL	4992	40.63	7027	57.2	266	2.17	1.8	3.8	33.7	19.2	10.3	16	15.2	48904	67033
McHenry County, Illinois	McHenry County	IL	78154	47.49	82260	49.98	4164	2.53	2.5	3.6	26.3	22.8	9.5	23.3	12	100101	123694
McLean County, Illinois	McLean County	IL	43933	50.27	40502	46.35	2954	3.38	1.3	2.8	23.1	18.9	7.9	30.5	15.5	75356	99327
Menard County, Illinois	Menard County	IL	2022	29.08	4764	68.51	168	2.42	0.9	4	33.5	23.6	12	15.6	10.2	84846	99217
Mercer County, Illinois	Mercer County	IL	3280	36.8	5418	60.78	216	2.42	2	5.5	39.2	24.4	11	11.4	6.4	67028	82414
Monroe County, Illinois	Monroe County	IL	6569	30.98	14142	66.69	495	2.33	0.7	3.7	24.7	22.2	10.9	23.9	13.9	100685	119329
Montgomery County, Illinois	Montgomery County	IL	3905	28.38	9544	69.36	312	2.27	2.6	7.7	42.8	20.8	7.9	11.6	6.6	61796	76744
Morgan County, Illinois	Morgan County	IL	5076	33.11	9950	64.89	307	2	2.5	7.9	39.2	20.6	7.4	15.1	7.3	61188	80285
Moultrie County, Illinois	Moultrie County	IL	1662	24.64	4964	73.61	118	1.75	8.8	4.8	32.6	23.6	9.5	14	6.8	72833	86610
Ogle County, Illinois	Ogle County	IL	9428	35.79	16248	61.69	664	2.52	3.3	5.4	33.6	23.6	10.7	15.2	8.2	75782	88858
Peoria County, Illinois	Peoria County	IL	43578	51.9	38252	45.55	2143	2.55	2.2	4.9	27.5	21.9	9.7	20.5	13.2	63409	90221
Perry County, Illinois	Perry County	IL	2612	25.94	7313	72.61	146	1.45	3.6	11.9	35.1	26.6	11.8	7.5	3.5	56338	69605
Piatt County, Illinois	Piatt County	IL	3329	33.79	6248	63.43	274	2.78	1.3	4.8	32.2	19.7	11.1	19.6	11.3	81151	100385
Pike County, Illinois	Pike County	IL	1484	18.63	6332	79.5	149	1.87	2.2	6.8	41.6	22.4	9	13.1	4.9	55514	69755
Pope County, Illinois	Pope County	IL	433	19.91	1722	79.17	20	0.92	5.3	6.5	41	22.7	9	10.4	5	57582	66317
Pulaski County, Illinois	Pulaski County	IL	891	33.87	1699	64.58	41	1.56	3.1	8.9	40.7	24.7	8.2	9	5.5	41038	56897
Putnam County, Illinois	Putnam County	IL	1338	39.47	1993	58.79	59	1.74	1	5.4	36.9	21.2	12.1	15	8.5	75726	86843
Randolph County, Illinois	Randolph County	IL	3592	24.09	11076	74.29	242	1.62	3.8	10.2	38.1	25	9.2	8.6	5.1	63860	76855
Richland County, Illinois	Richland County	IL	1830	22.7	6089	75.52	144	1.79	2.2	5.7	32	23	18.2	12.5	6.3	61607	72845
Rock Island County, Illinois	Rock Island County	IL	36691	54.91	28603	42.81	1523	2.28	3.8	6.6	30	25	10.5	15.3	8.8	64435	80579
Saline County, Illinois	Saline County	IL	2789	25.15	8103	73.07	197	1.78	4.7	7.1	29.8	24.3	13.8	14.2	6.1	51710	78176
Sangamon County, Illinois	Sangamon County	IL	48917	46.7	53485	51.06	2349	2.24	1.6	5.2	28.3	21.5	8.7	20.6	13.9	71653	94790
Schuyler County, Illinois	Schuyler County	IL	1068	27.26	2773	70.78	77	1.97	1.4	6.9	39.2	25.2	10.3	11.2	5.7	63737	79229
Scott County, Illinois	Scott County	IL	572	20.87	2114	77.13	55	2.01	2	5.3	46.1	16.3	8.4	17.2	4.9	70500	79099
Shelby County, Illinois	Shelby County	IL	2504	20.7	9426	77.92	167	1.38	1.7	4.5	42.5	21.1	12.1	13.2	5.1	65585	76869
St. Clair County, Illinois	St. Clair County	IL	68325	53.34	57150	44.61	2629	2.05	2.4	5.4	26.5	24.1	11.3	17.7	12.6	68915	89002
Stark County, Illinois	Stark County	IL	815	28.24	2004	69.44	67	2.32	3.1	5.9	40	19.9	12.1	13.6	5.4	58125	75678
Stephenson County, Illinois	Stephenson County	IL	9055	41.07	12521	56.79	472	2.14	2.5	5.7	33.4	27.4	10.7	13.1	7.2	57527	74090
Tazewell County, Illinois	Tazewell County	IL	24819	35.94	42513	61.57	1719	2.49	1.9	4.4	30.7	23.5	11.9	18.7	8.8	74606	92162
Union County, Illinois	Union County	IL	2579	28.96	6161	69.19	164	1.84	4.9	7.1	34.5	22.8	8.9	14.9	6.8	54090	72159
Vermilion County, Illinois	Vermilion County	IL	10323	32.62	20725	65.5	594	1.88	2.5	6.9	41.5	21.5	12	9.8	5.8	52787	69249
Wabash County, Illinois	Wabash County	IL	1253	22.35	4237	75.57	117	2.09	1.9	5	32	21.6	20.9	11.6	6.9	54074	75432
Warren County, Illinois	Warren County	IL	3090	39	4676	59.01	158	1.99	4.8	7.7	34.6	21.4	10.4	14.1	6.9	62700	79550
Washington County, Illinois	Washington County	IL	1641	20.72	6115	77.2	165	2.08	3	4.5	32.8	21	15.6	15.1	8	75111	89669
Wayne County, Illinois	Wayne County	IL	1187	13.97	7176	84.43	136	1.6	4.6	6.1	34.1	22.9	16.4	10.6	5.2	53522	67841
White County, Illinois	White County	IL	1517	20.41	5791	77.93	123	1.66	4.1	7.4	33.8	23.1	15.6	10	6	54605	70303
Whiteside County, Illinois	Whiteside County	IL	12253	44.76	14527	53.07	595	2.17	3.3	5.9	37.8	22.7	11	11.8	7.5	62828	82270
Will County, Illinois	Will County	IL	183915	53.11	155116	44.8	7235	2.09	3.9	4.5	25.7	21.2	8.6	22.7	13.4	103678	126188
Williamson County, Illinois	Williamson County	IL	10206	30.26	22801	67.6	722	2.14	2.1	5.1	29.1	25.1	11.4	16.2	10.9	60325	81280
Winnebago County, Illinois	Winnebago County	IL	64056	50.16	60861	47.66	2793	2.19	3.6	7.9	31.1	23.8	9.5	15.3	8.8	61738	81384
Woodford County, Illinois	Woodford County	IL	6160	28.65	14799	68.84	539	2.51	1.3	4.4	27.8	19.5	11.6	22.4	13	80093	103919
Adams County, Indiana	Adams County	IN	3236	22.77	10686	75.21	287	2.02	9.5	3.8	44.4	16.9	10	10.9	4.5	61731	76370
Allen County, Indiana	Allen County	IN	73189	43.29	92083	54.46	3810	2.25	4.5	5.4	28.2	20.9	10.5	20.3	10.2	66222	88623
LaPorte County, Indiana	LaPorte County	IN	22427	45.41	25997	52.63	968	1.96	2.9	7.3	39.1	20.8	8.9	14.2	6.9	66854	84640
Bartholomew County, Indiana	Bartholomew County	IN	12934	35.69	22410	61.85	891	2.46	2.4	5.8	31.2	17.4	8.4	19.9	14.9	76912	95616
Benton County, Indiana	Benton County	IN	1009	24.53	3007	73.09	98	2.38	3.6	7.9	40.6	22	7.3	14.8	3.8	58620	76182
Blackford County, Indiana	Blackford County	IN	1376	25.72	3841	71.79	133	2.49	2.4	7.2	49.2	18.1	8.3	9.2	5.6	51108	68100
Boone County, Indiana	Boone County	IN	15244	39.57	22351	58.02	925	2.4	1.8	3.2	19.3	17.1	9	30.9	18.6	103038	144562
Brown County, Indiana	Brown County	IN	3036	33.8	5777	64.32	168	1.87	1.5	5.6	34.9	20.1	10.4	16.9	10.6	73933	95212
Carroll County, Indiana	Carroll County	IN	2224	23.42	7086	74.63	185	1.95	2.5	7.2	43.3	19.1	11.3	11	5.7	61464	82095
Cass County, Indiana	Cass County	IN	4304	28.32	10552	69.43	342	2.25	6.2	8.1	42.3	18.8	9.2	10	5.4	55862	68534
Clark County, Indiana	Clark County	IN	23093	39.91	33668	58.18	1108	1.91	2.6	6.9	33.3	21.8	10.7	16.6	8	69005	85658
Clay County, Indiana	Clay County	IN	2552	20.8	9499	77.44	216	1.76	2.1	6.4	41.5	19.1	14	12	4.9	68364	84947
Clinton County, Indiana	Clinton County	IN	3361	25.96	9334	72.08	254	1.96	4.8	8.2	44.3	17.3	9.1	10.7	5.6	59515	72316
Crawford County, Indiana	Crawford County	IN	1355	27.41	3483	70.45	106	2.14	3.5	10.9	47.6	17.8	8	7.8	4.4	46706	67626
Daviess County, Indiana	Daviess County	IN	2169	18.14	9576	80.11	209	1.75	14.4	8.5	35	14.7	12.2	10.7	4.4	64113	81481
DeKalb County, Indiana	DeKalb County	IN	4966	25.3	14237	72.53	425	2.17	2.2	6.4	43.5	19.4	9.5	13.4	5.5	68110	83146
Dearborn County, Indiana	Dearborn County	IN	5446	21.46	19528	76.93	409	1.61	2.4	6.5	38.5	18.2	9.7	16.4	8.3	80352	91881
Decatur County, Indiana	Decatur County	IN	2439	19.85	9575	77.93	273	2.22	3.1	5.7	42.8	17.6	10.3	15.4	5.1	71566	87713
Delaware County, Indiana	Delaware County	IN	20474	42.49	26827	55.67	890	1.85	1.8	7.5	33.6	21.8	9.8	15	10.5	53377	68286
Dubois County, Indiana	Dubois County	IN	6292	28.9	15033	69.05	445	2.04	4.5	5.6	38.7	14.9	12.4	17.3	6.6	68945	84786
Elkhart County, Indiana	Elkhart County	IN	26108	35.1	46972	63.15	1307	1.76	8.4	9.4	36.1	18.8	7.3	13.2	6.8	63978	83810
Fayette County, Indiana	Fayette County	IN	2237	22.07	7755	76.51	144	1.42	4.7	10.1	44.5	17.7	7.6	11.4	4	52219	64529
Floyd County, Indiana	Floyd County	IN	17511	41.89	23400	55.98	891	2.13	2.2	5.4	31.1	20.7	9.2	19.5	11.7	75686	97601
Fountain County, Indiana	Fountain County	IN	1629	20.4	6154	77.06	203	2.54	3.5	7.6	45.6	20.1	9.7	8.7	4.8	60559	72960
Franklin County, Indiana	Franklin County	IN	2137	17.81	9691	80.76	172	1.43	3.3	7.2	40.1	20.2	8.5	13.2	7.5	75985	89486
Fulton County, Indiana	Fulton County	IN	2280	24.93	6694	73.18	173	1.89	3.5	9.2	39.1	22.4	8	12.2	5.6	62644	81844
Gibson County, Indiana	Gibson County	IN	4023	24.89	11817	73.12	321	1.99	2.3	7.1	40.8	19.6	12.2	13	5	64153	79276
Grant County, Indiana	Grant County	IN	8015	29.51	18543	68.28	601	2.21	3.5	7.9	38.2	22	10	10.8	7.6	53033	68397
Greene County, Indiana	Greene County	IN	3389	22.92	11103	75.1	292	1.98	2.7	9	39.7	21.1	11.4	11.1	5	57771	73817
Hamilton County, Indiana	Hamilton County	IN	88390	45.56	101587	52.36	4022	2.07	1	1.9	14.8	14.4	7.1	37.8	23	114866	151722
Hancock County, Indiana	Hancock County	IN	12895	30.05	28996	67.57	1020	2.38	1.6	5.1	30.1	21.3	9.1	22.4	10.4	85262	106434
Harrison County, Indiana	Harrison County	IN	5343	26.4	14565	71.98	328	1.62	2	7.8	40.5	20.5	8.5	13.6	7	71302	87786
Hendricks County, Indiana	Hendricks County	IN	32604	36.84	53802	60.79	2099	2.37	1.4	5.1	26.6	19.8	7.8	25.8	13.5	95261	117133
Henry County, Indiana	Henry County	IN	5544	26.36	15043	71.53	443	2.11	2.4	6.4	43.2	22.1	8.8	11.5	5.5	57632	74301
Howard County, Indiana	Howard County	IN	13303	32.74	26449	65.1	878	2.16	3	5.7	37.9	24.1	9.5	13.3	6.5	62014	78616
Huntington County, Indiana	Huntington County	IN	4255	23.87	13147	73.74	427	2.39	1.6	5.8	42.7	18.1	9.9	14.6	7.4	59894	76590
Jackson County, Indiana	Jackson County	IN	4302	22.36	14555	75.66	381	1.98	3.6	6.3	42	21.2	8.2	12.3	6.3	65609	80954
Jasper County, Indiana	Jasper County	IN	3798	24.54	11383	73.56	294	1.9	1.9	5.2	43.3	21.9	8.7	12.6	6.4	77777	91528
Jay County, Indiana	Jay County	IN	1926	22.76	6361	75.18	174	2.06	5.3	7.2	46.3	19.2	9	7.5	5.4	52231	71116
Jefferson County, Indiana	Jefferson County	IN	4731	32.19	9663	65.75	303	2.06	3.8	8.3	39.5	18.6	11.7	11.1	6.9	57801	74618
Jennings County, Indiana	Jennings County	IN	2523	20.59	9490	77.46	238	1.94	2.4	8.7	43.8	23.2	7.7	9.7	4.4	66892	77901
Johnson County, Indiana	Johnson County	IN	24736	31.87	51219	65.99	1663	2.14	2.6	4.8	30.9	20.2	9	20.4	12.1	82730	104666
Knox County, Indiana	Knox County	IN	4067	25.4	11655	72.79	289	1.81	3.2	7.7	35.6	20.7	14.6	11.6	6.5	58173	79399
Kosciusko County, Indiana	Kosciusko County	IN	8364	23.37	26499	74.05	924	2.58	5.2	7	35.2	20.8	7.7	15.4	8.7	70945	88194
LaGrange County, Indiana	LaGrange County	IN	2355	22.15	8110	76.27	168	1.58	31.8	7.6	30.1	13.3	5.9	7	4.2	81658	96952
Lake County, Indiana	Lake County	IN	124870	56.77	91760	41.72	3326	1.51	3.8	6	35.4	21.8	8.6	16.2	8.2	66375	86793
Lawrence County, Indiana	Lawrence County	IN	4961	23.6	15601	74.2	463	2.2	3.1	7.7	38.6	20.7	10.9	11.1	7.8	64210	76151
Madison County, Indiana	Madison County	IN	19524	37.7	31215	60.27	1054	2.04	2.7	7.4	39.1	21.5	9.9	12.9	6.6	60060	75913
Marion County, Indiana	Marion County	IN	247772	63.59	134175	34.44	7672	1.97	4.5	8.1	27.5	18.8	7.8	21.4	11.8	59504	83196
Marshall County, Indiana	Marshall County	IN	5712	28.66	13844	69.47	371	1.86	5.7	8.6	37.8	19.7	8.2	13	7.1	66016	84516
Martin County, Indiana	Martin County	IN	1011	19.65	4029	78.32	104	2.02	3	8.2	42.5	18	14.3	9.5	4.6	65489	77781
Miami County, Indiana	Miami County	IN	3235	22.35	10925	75.49	313	2.16	4.5	8.7	42.5	19.7	9.1	10.8	4.7	59551	73007
Monroe County, Indiana	Monroe County	IN	39861	63.12	22071	34.95	1219	1.93	1.1	4.2	21.4	17.5	7.6	24.1	24.1	60308	82332
Montgomery County, Indiana	Montgomery County	IN	4213	24.5	12659	73.61	326	1.9	2.7	8.2	41.2	20	7.1	13.1	7.7	62937	80316
Morgan County, Indiana	Morgan County	IN	7781	21.52	27512	76.09	866	2.39	2	8.5	38.8	20.9	9.6	13.6	6.7	79134	97771
Newton County, Indiana	Newton County	IN	1509	22.89	4942	74.98	140	2.12	4.6	8.4	45.3	20.9	7.3	10	3.4	63673	73581
Noble County, Indiana	Noble County	IN	4660	24.28	14195	73.97	335	1.75	9	7.8	39.6	17.7	8.2	12.3	5.4	70286	82166
Ohio County, Indiana	Ohio County	IN	750	23.7	2392	75.6	22	0.7	1.3	6	45.2	21.6	10.2	11.1	4.5	66333	81019
Orange County, Indiana	Orange County	IN	2224	25.18	6432	72.83	176	1.99	5.3	9.4	44.7	18.1	8.5	9.3	4.6	60775	75798
Owen County, Indiana	Owen County	IN	2420	24.43	7286	73.57	198	2	4.1	9.5	42.9	19.5	8.6	10.7	4.6	57947	74786
Parke County, Indiana	Parke County	IN	1503	21.44	5398	76.99	110	1.57	7.5	7.2	37.9	21.2	11	9	6.1	63393	79566
Perry County, Indiana	Perry County	IN	3203	36.72	5345	61.28	174	1.99	2	6.8	45.9	19.7	9.5	11.3	4.9	58936	72080
Pike County, Indiana	Pike County	IN	1415	22.75	4692	75.43	113	1.82	3.2	6.4	47.8	19.8	8.7	9.3	4.8	64182	75704
Porter County, Indiana	Porter County	IN	39746	45.94	45008	52.03	1755	2.03	1.9	4.1	34.5	20.9	8.7	18.6	11.4	82915	102269
Posey County, Indiana	Posey County	IN	3811	28.79	9206	69.55	219	1.65	2	4.2	36.3	20.4	11.6	16.9	8.6	75594	91501
Pulaski County, Indiana	Pulaski County	IN	1463	25.2	4246	73.13	97	1.67	3	8.9	45.3	21.3	7.4	8.8	5.2	56823	73330
Putnam County, Indiana	Putnam County	IN	3946	23.78	12278	73.98	373	2.25	2.9	6.2	38.8	23.5	9.2	12.9	6.6	70609	82803
Randolph County, Indiana	Randolph County	IN	2513	22.7	8312	75.09	245	2.21	2.6	7.5	42.3	23.7	8.7	9.4	5.8	59674	71761
Ripley County, Indiana	Ripley County	IN	2774	19.44	11261	78.91	236	1.65	2.9	6.5	42.5	18.6	10.5	10.7	8.3	70285	88962
Rush County, Indiana	Rush County	IN	1754	22.11	6035	76.08	143	1.8	3.2	7.4	45.8	19.5	8.4	10.4	5.3	62386	72784
Scott County, Indiana	Scott County	IN	2698	26.55	7328	72.12	135	1.33	5.1	13	44.8	17	8.6	7.8	3.7	49343	63400
Shelby County, Indiana	Shelby County	IN	5023	25.13	14568	72.87	400	2	3.4	7.5	42.1	18.7	8.7	13.4	6.2	66449	83754
Spencer County, Indiana	Spencer County	IN	3213	29.84	7357	68.32	199	1.85	2	5.5	40.3	19.1	13.2	12.4	7.5	66168	84229
St. Joseph County, Indiana	St. Joseph County	IN	59896	51.98	53164	46.13	2178	1.89	2.5	6.7	29.9	20.1	8.9	19.2	12.8	61877	84995
Starke County, Indiana	Starke County	IN	2650	25.75	7466	72.56	174	1.69	5.7	9.2	43.4	20.4	8.2	8.6	4.5	59916	74265
Steuben County, Indiana	Steuben County	IN	4513	27.92	11327	70.08	322	1.99	1.9	5.4	39.2	20.5	8.6	15.9	8.5	68837	90100
Sullivan County, Indiana	Sullivan County	IN	2153	23.94	6691	74.39	150	1.67	3.2	7.9	42.1	19.1	13.8	9.4	4.4	54556	70658
Switzerland County, Indiana	Switzerland County	IN	964	23.21	3133	75.42	57	1.37	5.7	11.1	45.6	19	7.6	8.3	2.6	66525	74029
Tippecanoe County, Indiana	Tippecanoe County	IN	35017	49.01	34581	48.4	1850	2.59	3	5	27.1	17.7	8.2	22.2	16.9	55728	76830
Tipton County, Indiana	Tipton County	IN	1834	22.6	6110	75.28	172	2.12	2.6	6.6	37.1	18.9	9.9	17.2	7.6	71947	85471
Union County, Indiana	Union County	IN	736	21.13	2688	77.17	59	1.69	1.8	9.4	36.5	21	11.5	14.3	5.6	68514	83247
Vanderburgh County, Indiana	Vanderburgh County	IN	34415	44.31	41844	53.88	1403	1.81	2.3	6.5	32.4	20.9	10.9	17.9	9.2	58839	78153
Vermillion County, Indiana	Vermillion County	IN	2145	28.67	5184	69.3	152	2.03	1.5	6	40.7	20.8	13.1	12.6	5.2	59567	72538
Vigo County, Indiana	Vigo County	IN	18123	41.57	24545	56.3	926	2.12	2.4	7.2	33.2	22	9.6	15.1	10.5	52789	72845
Wabash County, Indiana	Wabash County	IN	3494	23.98	10762	73.85	317	2.18	2.4	6.2	41.8	18.8	9.1	13.6	8.1	66194	79536
Warren County, Indiana	Warren County	IN	974	21.78	3401	76.05	97	2.17	1.5	5.9	41.3	22.1	10	13.6	5.6	72833	96729
Warrick County, Indiana	Warrick County	IN	11923	35.24	21326	63.04	580	1.71	1.4	3.6	28.3	19.6	12.6	20.7	13.8	91105	120609
Washington County, Indiana	Washington County	IN	2784	22.93	9114	75.08	241	1.99	4.8	7.7	41.9	20.6	10.9	10.4	3.7	60695	73702
Wayne County, Indiana	Wayne County	IN	9524	34.41	17567	63.47	588	2.12	4.2	7.7	36.3	22.5	10.2	11.7	7.3	54854	70847
Wells County, Indiana	Wells County	IN	2928	20.84	10855	77.26	267	1.9	1.5	5.2	42.7	20	11.5	13.6	5.5	68074	80657
White County, Indiana	White County	IN	3032	27.15	7957	71.26	177	1.59	2.8	6.8	39.9	23.3	8.9	12.5	5.7	65345	78827
Whitley County, Indiana	Whitley County	IN	4234	24.12	12862	73.26	460	2.62	2.6	5.5	37.2	20	11.8	16.7	6	73636	89600
Adair County, Iowa	Adair County	IA	1198	28.68	2917	69.83	62	1.48	1.5	2.8	41.1	21.8	13.8	14.3	4.7	63172	81199
Adams County, Iowa	Adams County	IA	590	27.31	1530	70.83	40	1.85	2.8	3.1	35.4	20.2	16.9	16.7	4.7	64750	92745
Allamakee County, Iowa	Allamakee County	IA	2576	34.71	4735	63.8	111	1.5	3.5	4.8	41.5	18.6	13.2	13.6	4.9	64049	80279
Appanoose County, Iowa	Appanoose County	IA	1891	29.02	4512	69.24	113	1.73	4.2	3.9	37.6	22.3	13.3	14	4.8	50684	66726
Audubon County, Iowa	Audubon County	IA	1071	31.32	2295	67.11	54	1.58	3	6.5	35.9	21.3	11.7	16	5.7	54973	72306
Benton County, Iowa	Benton County	IA	5160	35.24	9188	62.75	294	2.01	1.6	4	34.5	21.3	15.3	16.1	7.2	79444	92655
Black Hawk County, Iowa	Black Hawk County	IA	35647	53.53	29640	44.51	1306	1.96	2.5	4.6	30.2	20.9	11.8	19.5	10.5	62329	85130
Boone County, Iowa	Boone County	IA	6303	41.09	8695	56.68	342	2.23	0.8	4	32.3	21.6	14.8	19.2	7.2	75759	91134
Bremer County, Iowa	Bremer County	IA	5958	40.96	8294	57.02	294	2.02	1.1	2.8	30.7	17.4	14	23.2	10.8	84727	102454
Buchanan County, Iowa	Buchanan County	IA	4169	38.7	6420	59.59	185	1.72	2.8	3.6	35.6	23	13.9	14.9	6.2	73493	86635
Buena Vista County, Iowa	Buena Vista County	IA	2961	36.26	5056	61.91	150	1.84	11.3	9.3	31.4	15.7	10.7	14.5	7.2	62662	85747
Butler County, Iowa	Butler County	IA	2424	29.93	5542	68.44	132	1.63	1.4	5.1	37.1	21.7	15.5	15.2	4.2	65743	81283
Calhoun County, Iowa	Calhoun County	IA	1470	27.96	3689	70.16	99	1.88	1.1	5	36.6	21.8	14.1	15.2	6.2	65614	84083
Carroll County, Iowa	Carroll County	IA	3454	30.47	7737	68.26	144	1.27	2.5	2.9	36	21.8	14.8	16.4	5.7	68041	84303
Cass County, Iowa	Cass County	IA	2201	30.25	4969	68.29	106	1.46	1.9	6.9	37.3	23	10	15.2	5.7	60815	80614
Cedar County, Iowa	Cedar County	IA	4337	40.52	6161	57.56	205	1.92	1.6	2.8	40.1	20.2	14.4	15.2	5.7	76959	88121
Cerro Gordo County, Iowa	Cerro Gordo County	IA	10941	45.97	12442	52.28	418	1.76	2.1	4.1	34.4	20.2	15.2	16.4	7.5	63149	85095
Cherokee County, Iowa	Cherokee County	IA	1936	29.7	4495	68.96	87	1.33	2.1	4.7	40.5	18.8	12.2	14.3	7.4	63638	81329
Chickasaw County, Iowa	Chickasaw County	IA	2233	33.68	4308	64.97	90	1.36	2.9	3.4	45.2	16.8	13	14	4.6	72734	85021
Clarke County, Iowa	Clarke County	IA	1466	31.39	3144	67.32	60	1.28	3.6	11.9	42.3	18.1	8.8	9.7	5.6	63120	78632
Clay County, Iowa	Clay County	IA	2662	29.68	6137	68.42	170	1.9	0.6	3.9	32.1	24.3	13.1	18.3	7.7	61756	78126
Clayton County, Iowa	Clayton County	IA	3340	34.81	6106	63.64	148	1.54	3.4	5.9	43	19.7	10.8	12.8	4.4	60441	79375
Clinton County, Iowa	Clinton County	IA	10812	43.8	13361	54.12	514	2.08	1.6	6.4	37.2	21.1	12.1	15	6.6	61080	80620
Crawford County, Iowa	Crawford County	IA	2220	31.03	4854	67.85	80	1.12	9.5	8	34.9	21.7	9.8	12.6	3.5	61188	78927
Dallas County, Iowa	Dallas County	IA	26879	47.98	27987	49.96	1156	2.06	1.6	2.1	18.6	16.9	9.2	34.8	16.8	99533	130223
Davis County, Iowa	Davis County	IA	1013	24.7	3032	73.92	57	1.39	16.5	4.4	29.4	18	12.7	13.7	5.2	77176	91815
Decatur County, Iowa	Decatur County	IA	1120	29.44	2615	68.74	69	1.81	4.4	6.5	37.2	18.6	8.4	14.4	10.5	56068	67612
Delaware County, Iowa	Delaware County	IA	3157	31.56	6666	66.64	180	1.8	2.3	5.6	42.6	17.2	13.8	13.6	4.9	75896	97812
Des Moines County, Iowa	Des Moines County	IA	8893	44.56	10592	53.08	471	2.36	1.6	5.5	34.9	21.1	13.6	15.3	8	58084	80551
Dickinson County, Iowa	Dickinson County	IA	3661	32.56	7438	66.15	145	1.29	1.6	1.9	28.6	21.6	13.6	24.6	8.1	72446	97496
Dubuque County, Iowa	Dubuque County	IA	25657	47.58	27214	50.47	1055	1.96	1.9	4.1	33.4	17.8	10.8	21.3	10.7	73495	95084
Emmet County, Iowa	Emmet County	IA	1520	31.32	3265	67.28	68	1.4	4.2	8.6	33.4	21.4	17.3	11	4.2	64461	77456
Fayette County, Iowa	Fayette County	IA	3835	37.65	6145	60.33	206	2.02	2.6	4.6	42.1	21.2	12.4	12.4	4.8	56043	72851
Floyd County, Iowa	Floyd County	IA	3172	39.49	4732	58.91	128	1.59	3.6	3.2	40.8	20	14.1	13.1	5.1	62356	81040
Franklin County, Iowa	Franklin County	IA	1626	31.7	3422	66.71	82	1.6	3.6	4	38.9	22.7	12.2	15.2	3.4	62214	72225
Fremont County, Iowa	Fremont County	IA	1080	28	2711	70.29	66	1.71	1.4	3.7	35.9	24.4	15.4	16.1	3	69375	88553
Greene County, Iowa	Greene County	IA	1769	34.98	3223	63.73	65	1.29	1.9	5	35.1	23.4	15	14.4	5.3	56884	72184
Grundy County, Iowa	Grundy County	IA	2206	30.32	4929	67.74	141	1.94	1.2	3	33.4	20.5	15.8	19.6	6.6	80701	93098
Guthrie County, Iowa	Guthrie County	IA	1985	31.16	4272	67.05	114	1.79	1.5	4.3	34.2	23.7	14.8	15.4	6.3	75795	92867
Hamilton County, Iowa	Hamilton County	IA	2843	35.79	4956	62.39	144	1.81	3.4	4	34.4	20.4	15.4	17.7	4.9	66685	83101
Hancock County, Iowa	Hancock County	IA	1683	27.27	4390	71.13	99	1.6	1.4	7.2	36.1	20.7	14.3	16.4	3.8	67865	81776
Hardin County, Iowa	Hardin County	IA	2976	33.11	5850	65.08	163	1.81	2.1	4.5	34.9	23.5	14.1	15	5.8	64656	73266
Harrison County, Iowa	Harrison County	IA	2440	29.92	5569	68.29	146	1.79	1.8	5.1	37.8	24.6	10.1	15	5.6	75830	89903
Henry County, Iowa	Henry County	IA	3275	32.81	6507	65.19	200	2	3.3	5.5	34.4	22	11.9	15.9	6.9	62365	76704
Howard County, Iowa	Howard County	IA	1772	35.74	3127	63.07	59	1.19	4.6	3.4	41.1	18.7	13	15.4	3.8	63947	80838
Humboldt County, Iowa	Humboldt County	IA	1442	27.07	3819	71.69	66	1.24	1.4	4.5	37.1	19.6	19.1	14.5	3.9	66617	81193
Ida County, Iowa	Ida County	IA	917	23.82	2880	74.82	52	1.35	1.4	5.5	39.4	19.6	14.4	15.3	4.4	63125	82137
Iowa County, Iowa	Iowa County	IA	3547	36.41	6009	61.68	186	1.91	2	4.3	35.5	21.7	13.7	16.2	6.5	69787	97019
Jackson County, Iowa	Jackson County	IA	4029	36.18	6940	62.33	166	1.49	2.2	3.8	42	22.7	10.8	13.2	5.2	69709	82447
Jasper County, Iowa	Jasper County	IA	7737	38.33	12084	59.87	363	1.8	2.1	3.7	40.6	20.9	13	13.8	5.9	67784	87626
Jefferson County, Iowa	Jefferson County	IA	4319	48.21	4443	49.59	197	2.2	2.8	3.9	23.8	18.9	11.1	22.6	16.9	52210	80266
Johnson County, Iowa	Johnson County	IA	59177	70.57	22925	27.34	1749	2.09	1.9	2	15.6	17.6	8.8	29.5	24.7	72977	103328
Jones County, Iowa	Jones County	IA	4213	38.34	6572	59.81	204	1.86	1.5	4.3	38.6	19	14.2	15.5	7	68781	83469
Keokuk County, Iowa	Keokuk County	IA	1414	26.66	3797	71.6	92	1.73	2	4.5	44.2	20.3	12.6	11.7	4.7	60016	78499
Kossuth County, Iowa	Kossuth County	IA	2696	29.66	6275	69.03	119	1.31	1.7	4.6	34.6	23.5	15.8	14.5	5.4	62553	77186
Lee County, Iowa	Lee County	IA	6541	39.09	9773	58.4	420	2.51	1.5	4.4	37.9	21.6	14.3	14.6	5.8	58094	75411
Linn County, Iowa	Linn County	IA	70874	55.61	53364	41.87	3220	2.53	1.4	3.6	26.2	20.8	13.3	23.7	10.9	75457	99589
Louisa County, Iowa	Louisa County	IA	1726	32.37	3500	65.64	106	1.99	4.9	9.1	39.1	20.7	11.9	11.4	3	72500	90256
Lucas County, Iowa	Lucas County	IA	1284	27.73	3287	70.99	59	1.27	3.6	4.1	44.1	23.5	9.9	10.7	4.2	63405	77054
Lyon County, Iowa	Lyon County	IA	1067	15.55	5707	83.16	89	1.3	3	2.3	41.6	18.1	15.6	15.2	4.2	73735	89292
Madison County, Iowa	Madison County	IA	3134	31.9	6507	66.24	183	1.86	1	2	34	25.6	11.5	19.3	6.5	88110	98671
Mahaska County, Iowa	Mahaska County	IA	2894	25.38	8297	72.76	213	1.87	2.4	4.4	38.3	20.7	11.8	16.7	5.7	65200	81121
Marion County, Iowa	Marion County	IA	6178	32.12	12663	65.84	391	2.03	2	4	32.1	19.2	11.1	21.4	10.4	74193	94589
Marshall County, Iowa	Marshall County	IA	8176	45.08	9571	52.77	389	2.14	9.1	5.7	33.5	19.5	11.2	14.9	6.1	70828	82035
Mills County, Iowa	Mills County	IA	2508	30.33	5585	67.55	175	2.12	1.2	3.7	29	23.4	12.2	21	9.5	81907	105654
Mitchell County, Iowa	Mitchell County	IA	2053	35.26	3677	63.16	92	1.58	3.5	4.2	35.6	19.1	16.1	15.7	5.7	66056	82619
Monona County, Iowa	Monona County	IA	1407	29.76	3248	68.7	73	1.54	1.8	5.1	39.7	26.6	11	11.2	4.5	59897	73609
Monroe County, Iowa	Monroe County	IA	1078	26.37	2975	72.77	35	0.86	2.6	4.4	39.7	18.8	11.8	18.5	4.2	76324	82311
Montgomery County, Iowa	Montgomery County	IA	1583	29.72	3659	68.69	85	1.6	2.2	6.2	34.7	23.5	14.9	13.5	5.1	61261	83161
Muscatine County, Iowa	Muscatine County	IA	9372	45.34	10823	52.36	476	2.3	3.6	6.3	35	20.1	11.8	16.4	6.9	67427	84799
O'Brien County, Iowa	O'Brien County	IA	1569	20.78	5861	77.62	121	1.6	2.2	7.1	37.1	17.6	14.4	17	4.5	65076	77922
Osceola County, Iowa	Osceola County	IA	601	18.06	2690	80.83	37	1.11	6.6	7.2	38.1	20	13.9	9.9	4.3	67561	81183
Page County, Iowa	Page County	IA	2086	27.71	5319	70.66	123	1.63	2	5.2	40.8	22.2	12.2	12.2	5.5	58264	76013
Palo Alto County, Iowa	Palo Alto County	IA	1519	30.64	3370	67.97	69	1.39	2.2	4.8	30.2	28.6	14	14.6	5.6	67306	80710
Plymouth County, Iowa	Plymouth County	IA	3494	24.63	10492	73.95	202	1.42	2.8	2.9	36	19.8	14.4	17.9	6.2	79963	98322
Pocahontas County, Iowa	Pocahontas County	IA	933	24.4	2826	73.92	64	1.67	1.4	7.1	37.7	22.1	14.6	13	4	61434	76294
Polk County, Iowa	Polk County	IA	146250	56.52	106800	41.27	5705	2.2	3.6	3.8	24.7	18.8	10.3	26.5	12.4	78827	101787
Pottawattamie County, Iowa	Pottawattamie County	IA	18575	40.61	26247	57.38	922	2.02	2.9	6.5	33.6	22.3	11.3	16.1	7.3	68718	85937
Poweshiek County, Iowa	Poweshiek County	IA	4306	42.47	5657	55.79	177	1.75	2.4	2.8	39	17.6	9.4	16.3	12.6	61192	87550
Ringgold County, Iowa	Ringgold County	IA	709	26.12	1968	72.51	37	1.36	1.9	4.1	37.5	22.4	11.5	15.8	6.8	67898	85147
Sac County, Iowa	Sac County	IA	1389	25.09	4061	73.37	85	1.54	2.7	3.7	34.4	23.4	14.2	16.1	5.6	68778	88446
Scott County, Iowa	Scott County	IA	46926	50.68	43683	47.17	1990	2.15	2	4.1	26.6	21.1	11.4	22.3	12.6	72792	98290
Shelby County, Iowa	Shelby County	IA	1959	28.83	4697	69.12	139	2.05	1.7	4	34.7	22	14.7	16.3	6.5	70295	91452
Sioux County, Iowa	Sioux County	IA	3019	15.85	15680	82.31	352	1.85	4.5	3.9	28.8	17.6	13.9	22.3	8.9	81914	98083
Story County, Iowa	Story County	IA	29175	57.16	20340	39.85	1523	2.98	0.8	2.1	16.2	17.3	11	30.1	22.4	66197	89244
Tama County, Iowa	Tama County	IA	3577	39.53	5303	58.61	168	1.86	3.5	5.5	41.6	18.8	12.3	12.8	5.5	65483	81745
Taylor County, Iowa	Taylor County	IA	746	22.96	2463	75.81	40	1.23	3.8	5.2	41.3	22	12.2	11.8	3.7	65926	79167
Union County, Iowa	Union County	IA	2061	33.32	4010	64.83	114	1.84	1.5	5.7	34.5	25	9.2	17.3	6.8	56495	72410
Van Buren County, Iowa	Van Buren County	IA	875	23.08	2859	75.42	57	1.5	8.5	3.1	38.7	21.2	10.1	12.6	5.9	58417	79818
Wapello County, Iowa	Wapello County	IA	5821	37.24	9516	60.87	296	1.89	4.8	7.3	38	19.5	12	11.6	6.9	56209	72293
Warren County, Iowa	Warren County	IA	12574	40.51	17782	57.29	683	2.2	0.9	2.6	30	21.1	13.2	22.3	9.8	89741	105626
Washington County, Iowa	Washington County	IA	4561	38.77	6971	59.25	233	1.98	3.4	4.3	36.3	21.7	10	16.2	8.2	71122	87585
Wayne County, Iowa	Wayne County	IA	727	23.38	2338	75.2	44	1.42	6.7	3.8	41.5	20.4	12.6	11.2	3.8	58257	80360
Webster County, Iowa	Webster County	IA	6613	37.11	10938	61.37	271	1.52	1.9	6.3	33.7	24.3	13.1	15.4	5.3	65335	79761
Winnebago County, Iowa	Winnebago County	IA	2135	35.76	3707	62.09	128	2.14	1.7	3.8	31.8	19.7	17.1	19.6	6.2	62853	81985
Winneshiek County, Iowa	Winneshiek County	IA	5617	46.56	6235	51.68	212	1.76	2.2	2.6	33	16.8	14.8	19.6	11	67770	90134
Woodbury County, Iowa	Woodbury County	IA	18704	41.23	25736	56.73	922	2.03	6.1	6.3	32.7	20	11	15.8	8.1	68399	85370
Worth County, Iowa	Worth County	IA	1596	36.12	2738	61.97	84	1.9	1.2	4.5	35.6	22.4	16.8	13.7	5.8	69897	85650
Wright County, Iowa	Wright County	IA	1996	31.92	4136	66.13	122	1.95	2.1	5.2	35.3	25.2	11.2	16.7	4.3	58240	77774
Allen County, Kansas	Allen County	KS	1559	26.69	4155	71.12	128	2.19	1.8	5.5	34.8	27.2	11	12.3	7.3	55059	65234
Anderson County, Kansas	Anderson County	KS	765	20.56	2874	77.26	81	2.18	8.8	4.7	40.5	21.5	9.2	9	6.2	67651	74368
Atchison County, Kansas	Atchison County	KS	2314	31.65	4826	66	172	2.35	2.3	4	41.9	22.3	7.4	13.3	8.9	55281	71685
Barber County, Kansas	Barber County	KS	284	12.28	1992	86.12	37	1.6	1.4	7.1	33.7	23.3	10.9	17.9	5.7	53774	74541
Barton County, Kansas	Barton County	KS	2302	21	8480	77.37	179	1.63	2.7	7.6	30.4	27	10.6	15.3	6.4	54634	72632
Bourbon County, Kansas	Bourbon County	KS	1505	22.98	4910	74.96	135	2.06	3	7.3	30.3	24.7	11	15.6	8.1	55826	72191
Brown County, Kansas	Brown County	KS	1088	24.75	3206	72.93	102	2.32	1.3	5.2	38.9	23.8	10.8	15	5.1	55876	72853
Butler County, Kansas	Butler County	KS	9003	28.18	22250	69.65	693	2.17	1.6	4.2	27.6	24	10.5	20.8	11.2	77724	94378
Chase County, Kansas	Chase County	KS	341	23.07	1114	75.37	23	1.56	1.8	4.9	36	21.8	9	20.6	5.9	52481	76004
Chautauqua County, Kansas	Chautauqua County	KS	212	12.97	1397	85.5	25	1.53	3.6	7.6	35.7	26.5	10.4	11.5	4.7	51210	67791
Cherokee County, Kansas	Cherokee County	KS	2163	24.18	6622	74.03	160	1.79	2.7	7.3	32.4	28.5	9.2	13	6.7	53382	64116
Cheyenne County, Kansas	Cheyenne County	KS	220	15.71	1158	82.71	22	1.57	3	7.8	31.8	26.2	9	17.4	4.8	52730	71667
Clark County, Kansas	Clark County	KS	143	13.65	885	84.45	20	1.91	1.9	3.9	27.2	27.7	13.2	21.2	4.9	58287	70781
Clay County, Kansas	Clay County	KS	883	21.36	3129	75.69	122	2.95	2.6	3.2	34.8	25	8.1	17.7	8.6	57765	71763
Cloud County, Kansas	Cloud County	KS	893	21.39	3182	76.23	99	2.37	2.3	1.9	30.8	27	15.6	14.4	8	51197	66846
Coffey County, Kansas	Coffey County	KS	928	20.86	3407	76.6	113	2.54	2.4	3.8	32.5	28.7	10.4	15.4	6.8	67645	84009
Comanche County, Kansas	Comanche County	KS	126	13.94	745	82.41	33	3.65	1.7	1.8	31.4	34.6	9.4	17	4.1	49754	66123
Cowley County, Kansas	Cowley County	KS	4171	29.98	9442	67.87	298	2.14	2.2	6.1	29.4	25.8	12	15.8	8.7	55726	74917
Crawford County, Kansas	Crawford County	KS	6179	36.96	10045	60.08	494	2.95	2.1	3.6	29.2	24.9	9.4	19.6	11.3	49779	67083
Decatur County, Kansas	Decatur County	KS	208	14.27	1232	84.5	18	1.23	1.6	4.8	32.8	25.5	10.5	21.1	3.7	49412	67705
Dickinson County, Kansas	Dickinson County	KS	2040	22.06	7045	76.2	161	1.74	2	4.4	31.7	27.4	11	16.8	6.7	62971	81081
Doniphan County, Kansas	Doniphan County	KS	678	18.45	2949	80.27	47	1.28	2.9	6	33.6	29.6	9.1	11	7.8	66358	77632
Douglas County, Kansas	Douglas County	KS	39436	68.54	16737	29.09	1367	2.38	1.5	2.4	19.3	18.3	6.2	29	23.3	66153	89488
Edwards County, Kansas	Edwards County	KS	267	18.9	1127	79.76	19	1.34	5.5	7	35.1	25.2	9.4	13.5	4.3	52750	70588
Elk County, Kansas	Elk County	KS	191	14.18	1130	83.89	26	1.93	3.9	9.1	36.3	26.5	5.9	12.6	5.6	50000	66254
Ellis County, Kansas	Ellis County	KS	3633	26.91	9569	70.88	299	2.21	1.4	3.3	27.9	19.8	9	24	14.7	59665	88751
Ellsworth County, Kansas	Ellsworth County	KS	646	23.02	2106	75.05	54	1.92	1.4	6.3	34.9	28.4	8.3	14	6.9	59844	75676
Finney County, Kansas	Finney County	KS	4155	36.24	7079	61.74	232	2.02	17.1	10.8	24.2	21.6	7.9	12.3	6.2	68481	85317
Ford County, Kansas	Ford County	KS	2926	33.06	5763	65.12	161	1.82	13.5	9.3	25.4	21.1	10.9	12.6	7.2	67997	81063
Franklin County, Kansas	Franklin County	KS	3623	29.58	8326	67.98	298	2.43	3.1	4.9	36.3	23.1	8.7	14.7	9.3	68217	81761
Geary County, Kansas	Geary County	KS	3825	41.08	5193	55.77	293	3.15	2.7	3.6	26.3	29.9	13.7	14.5	9.4	57992	68466
Gove County, Kansas	Gove County	KS	163	11.37	1256	87.65	14	0.98	2.2	4	39.4	22.4	12.4	15.2	4.5	59417	76425
Graham County, Kansas	Graham County	KS	222	17.05	1052	80.8	28	2.15	2.6	3.5	33.7	23.7	12.1	18.1	6.2	47071	60647
Grant County, Kansas	Grant County	KS	497	20.27	1910	77.9	45	1.84	19.2	1.6	26.9	23.8	8.2	13.1	7.2	84808	101550
Gray County, Kansas	Gray County	KS	337	15.04	1871	83.53	32	1.43	19.1	5.5	23.9	20.5	9.1	17.8	4.1	74500	93977
Greeley County, Kansas	Greeley County	KS	77	12.24	537	85.37	15	2.38	8.9	2.1	25.1	19	16	17.5	11.3	69948	85945
Greenwood County, Kansas	Greenwood County	KS	562	18.55	2404	79.34	64	2.11	2.8	5.6	36.9	29.9	8.8	10.4	5.5	51812	77264
Hamilton County, Kansas	Hamilton County	KS	134	16.01	684	81.72	19	2.27	6.5	7.9	39.8	19.1	7.5	14.9	4.4	58750	72397
Harper County, Kansas	Harper County	KS	453	17.25	2128	81.04	45	1.71	4.1	6.2	37.9	27.7	6.7	11.4	6	53032	67153
Harvey County, Kansas	Harvey County	KS	6652	39.05	10015	58.79	367	2.15	3.7	4.5	25.3	25.1	10.7	20.8	9.8	70685	84841
Haskell County, Kansas	Haskell County	KS	261	18.87	1103	79.75	19	1.37	18.3	6.6	25.6	25.6	8.2	9.7	6	66458	89104
Hodgeman County, Kansas	Hodgeman County	KS	151	14.62	866	83.83	16	1.55	3.6	3.8	28	23.3	10.8	23.3	7.2	63125	79682
Jackson County, Kansas	Jackson County	KS	1852	28.63	4435	68.57	181	2.8	2.1	4.1	38	27	7.9	13.3	7.6	70385	81146
Jefferson County, Kansas	Jefferson County	KS	3106	32.42	6193	64.64	282	2.94	1.8	2.5	37.9	25	8.3	15.3	9.2	74562	93904
Jewell County, Kansas	Jewell County	KS	211	13.12	1369	85.14	28	1.74	1.2	6.4	37.5	26.2	10.3	12.7	5.8	47109	71540
Johnson County, Kansas	Johnson County	KS	184259	52.74	155631	44.54	9496	2.72	1.5	2	14	18.4	7.4	34.3	22.4	103644	138482
Kearny County, Kansas	Kearny County	KS	255	18.05	1134	80.25	24	1.7	10	9.7	36.3	19.2	8.3	10.4	6.2	68750	83545
Kingman County, Kansas	Kingman County	KS	745	18.96	3102	78.95	82	2.09	2.1	7	30.8	27.4	8.3	17.7	6.6	59640	79373
Kiowa County, Kansas	Kiowa County	KS	153	13.43	957	84.02	29	2.55	3.4	7.7	29.4	22.3	11.9	20	5.3	70347	89071
Labette County, Kansas	Labette County	KS	2607	30.98	5639	67.02	168	2	3.8	5.8	30.3	24.8	12.8	14.5	8	56143	71778
Lane County, Kansas	Lane County	KS	114	12.84	757	85.25	17	1.91	0.1	4.1	25.3	39.9	10.7	10	9.9	52222	75972
Leavenworth County, Kansas	Leavenworth County	KS	13753	38.08	21378	59.19	984	2.72	2.4	4.3	28.3	21.4	8.2	20.8	14.7	84307	101341
Lincoln County, Kansas	Lincoln County	KS	266	16.94	1273	81.08	31	1.97	2.6	2.8	25.4	33	12.5	13.8	9.9	52540	70397
Linn County, Kansas	Linn County	KS	863	17.6	3940	80.36	100	2.04	1.7	4.8	37.3	26.7	7.5	14.7	7.3	56697	79456
Logan County, Kansas	Logan County	KS	185	12.87	1231	85.66	21	1.46	4.9	2.7	28.8	21.5	15.4	20.2	6.5	70382	91613
Lyon County, Kansas	Lyon County	KS	5878	43.15	7381	54.18	363	2.66	6.7	5.5	32.2	21.9	7	15.4	11.3	56415	71990
Marion County, Kansas	Marion County	KS	1463	24.51	4377	73.33	129	2.16	3.1	4.8	32.2	22.5	9.7	18.8	8.9	60011	80818
Marshall County, Kansas	Marshall County	KS	1239	24.67	3662	72.9	122	2.43	3.1	4.7	38.8	21.1	11.5	13.5	7.3	64306	81259
McPherson County, Kansas	McPherson County	KS	3977	28.68	9562	68.95	329	2.37	4.3	3	25.1	24.8	11.4	21.2	10.2	71250	82937
Meade County, Kansas	Meade County	KS	261	14.44	1508	83.45	38	2.1	6.5	7.2	25	23.4	13.9	16	8	74063	118809
Miami County, Kansas	Miami County	KS	5133	29.13	12116	68.75	375	2.13	1.5	2.9	31.6	24.5	8.9	20.1	10.4	85564	102739
Mitchell County, Kansas	Mitchell County	KS	547	18	2454	80.75	38	1.25	1.1	3.6	23.6	29.6	13.3	19.1	9.7	63008	76546
Montgomery County, Kansas	Montgomery County	KS	3147	23.88	9768	74.13	262	1.99	2.6	7.4	33.8	24.6	11.5	13.2	6.9	51513	66032
Morris County, Kansas	Morris County	KS	721	25.31	2085	73.18	43	1.51	2.1	5.4	35.2	20.7	8.7	19.5	8.4	52866	72380
Morton County, Kansas	Morton County	KS	147	12.64	1004	86.33	12	1.03	8.6	3.6	36.1	22.3	11.9	13.2	4.3	57943	72181
Nemaha County, Kansas	Nemaha County	KS	920	16.36	4612	81.99	93	1.65	3.4	3.5	36.2	16.4	12.3	18.8	9.5	72788	94845
Neosho County, Kansas	Neosho County	KS	1727	26.05	4795	72.33	107	1.61	2.6	6.4	29.7	27.1	13.1	14.4	6.7	54894	71079
Ness County, Kansas	Ness County	KS	147	9.89	1315	88.43	25	1.68	3.1	5.5	34.9	23.7	11.9	17.9	3	64907	89559
Norton County, Kansas	Norton County	KS	361	15.1	1977	82.72	52	2.18	2	7.2	31.2	28.4	10.4	14.8	6	52710	72782
Osage County, Kansas	Osage County	KS	2099	26.59	5591	70.83	203	2.57	2	5.8	40.8	22.5	8.8	13.4	6.6	66155	76953
Osborne County, Kansas	Osborne County	KS	275	14.48	1590	83.73	34	1.79	2.3	2.2	31.8	25	15.4	17.5	5.7	58750	73819
Ottawa County, Kansas	Ottawa County	KS	504	15.95	2581	81.7	74	2.34	1.1	4.1	30.4	30.2	10.4	17.2	6.5	74551	85895
Pawnee County, Kansas	Pawnee County	KS	635	23.41	2028	74.78	49	1.81	2.4	7.9	33.7	28.7	9	12.6	5.8	54141	75010
Phillips County, Kansas	Phillips County	KS	318	11.56	2388	86.77	46	1.67	3.1	5.8	34.3	24.3	12.3	14	6.1	57611	74849
Pottawatomie County, Kansas	Pottawatomie County	KS	3257	25.42	9247	72.16	311	2.43	0.6	3.4	27	20.1	11.1	24.2	13.6	85241	97130
Pratt County, Kansas	Pratt County	KS	924	22.5	3087	75.16	96	2.34	2.5	5.6	28.7	25.5	9.8	17.7	10.2	61685	79910
Rawlins County, Kansas	Rawlins County	KS	214	14.3	1253	83.76	29	1.94	2.2	3.2	30.3	31.2	15.7	13.4	4	61827	71305
Reno County, Kansas	Reno County	KS	8602	31.57	17948	65.88	695	2.55	2.1	6.2	31.1	28	12.2	13.4	7.1	57390	74762
Republic County, Kansas	Republic County	KS	420	15.89	2172	82.18	51	1.93	1.6	3	32.1	21.7	15.1	16.7	9.7	54531	70275
Rice County, Kansas	Rice County	KS	953	22.53	3187	75.34	90	2.13	2.2	5.8	29.5	29.5	9.3	15.8	7.9	58523	74985
Riley County, Kansas	Riley County	KS	11940	50.05	11174	46.84	741	3.11	1.7	2.5	16.4	23.2	8.4	26	21.9	56327	79585
Rooks County, Kansas	Rooks County	KS	332	12.48	2294	86.21	35	1.32	1.4	6	31.9	23	15	16.6	6	60821	77922
Rush County, Kansas	Rush County	KS	291	16.65	1425	81.52	32	1.83	2	7.1	32.1	29.4	9.9	14.9	4.7	53523	74989
Russell County, Kansas	Russell County	KS	591	17.24	2765	80.64	73	2.13	1.9	4.7	30.6	29.3	13.4	15.4	4.7	49929	68506
Saline County, Kansas	Saline County	KS	8022	33.55	15313	64.04	576	2.41	1.4	4.9	29.6	26	9.9	18.1	10.1	59887	76189
Scott County, Kansas	Scott County	KS	290	12.49	1991	85.75	41	1.77	7.1	7.9	29.5	28.7	6.7	12.7	7.2	53365	71235
Sedgwick County, Kansas	Sedgwick County	KS	90820	42.53	117653	55.09	5079	2.38	4.4	6.1	25.8	23.4	8.6	20.2	11.6	65372	88589
Seward County, Kansas	Seward County	KS	1736	34.05	3285	64.42	78	1.53	18.6	11.6	30.1	20.7	7.7	8.3	3	57131	72107
Shawnee County, Kansas	Shawnee County	KS	43015	49.95	40443	46.96	2664	3.09	2.6	4.5	30.1	23.2	7.9	20.4	11.4	63463	84874
Sheridan County, Kansas	Sheridan County	KS	144	10.31	1237	88.55	16	1.15	1.6	2.1	34.6	22.7	14.6	17.7	6.6	66719	95576
Sherman County, Kansas	Sherman County	KS	386	14.44	2222	83.13	65	2.43	3.9	6.4	28.7	23.3	11.6	20.2	5.9	61404	89437
Smith County, Kansas	Smith County	KS	328	15.68	1734	82.89	30	1.43	1.9	2.7	39.3	21.8	11.3	17.1	6	50943	74345
Stafford County, Kansas	Stafford County	KS	355	17.6	1631	80.86	31	1.54	2.2	4.6	29.5	23.6	14	19.2	6.9	60000	82699
Stanton County, Kansas	Stanton County	KS	147	19.17	607	79.14	13	1.69	12.9	7.1	37.6	15.5	9.5	12.9	4.5	66000	87817
Stevens County, Kansas	Stevens County	KS	233	11.67	1731	86.68	33	1.65	9.8	15.8	25.7	27.6	8.5	10.3	2.2	67950	76991
Sumner County, Kansas	Sumner County	KS	2551	23.67	7998	74.2	230	2.13	1.7	4.8	36.2	24.3	9	15.7	8.2	59397	75973
Thomas County, Kansas	Thomas County	KS	622	16.39	3106	81.87	66	1.74	1.9	3.7	23.2	31.1	13.8	16.6	9.9	72417	95662
Trego County, Kansas	Trego County	KS	238	14.85	1341	83.66	24	1.5	0.2	5.2	31	20.6	17.9	18.7	6.3	77500	90516
Wabaunsee County, Kansas	Wabaunsee County	KS	956	24.76	2813	72.86	92	2.38	1	2.4	38.2	22.8	10.5	17.1	8.1	70000	87718
Wallace County, Kansas	Wallace County	KS	44	5.39	762	93.27	11	1.35	4	3.4	28.9	22.4	15.4	21	4.9	57708	72338
Washington County, Kansas	Washington County	KS	467	16.43	2332	82.03	44	1.55	2.7	3.8	40	19.9	11.2	15.2	7.3	59432	74689
Wichita County, Kansas	Wichita County	KS	147	15.3	803	83.56	11	1.14	3.8	8.1	29.4	27.1	10.3	16.7	4.7	69551	94598
Wilson County, Kansas	Wilson County	KS	711	18.24	3111	79.79	77	1.97	2.9	5.8	37.4	22.8	11.6	14.6	4.9	55439	75208
Woodson County, Kansas	Woodson County	KS	283	18.93	1189	79.53	23	1.54	1.1	6.9	38	23.5	9.4	15.3	5.8	50670	68094
Wyandotte County, Kansas	Wyandotte County	KS	35566	64.54	18512	33.59	1029	1.87	9.6	9.1	32	20.9	8.5	12.9	7.1	57771	72423
Adair County, Kentucky	Adair County	KY	1392	15.88	7276	82.98	100	1.14	6.6	7.3	39.8	16.5	11.1	9	9.7	49690	65724
Allen County, Kentucky	Allen County	KY	1642	17.54	7587	81.02	135	1.44	6.9	6.6	39.9	19	9.4	11	7.3	57159	70978
Anderson County, Kentucky	Anderson County	KY	3348	25.26	9661	72.89	245	1.85	3.8	5.1	35.1	21.7	9	16.5	8.8	69885	85850
Ballard County, Kentucky	Ballard County	KY	825	19.53	3356	79.43	44	1.04	2.7	5.2	40.6	19.2	15	11.7	5.6	57111	77040
Barren County, Kentucky	Barren County	KY	5127	25.55	14654	73.04	283	1.41	6.7	8.6	42	17.3	8	10.6	6.8	48141	67977
Bath County, Kentucky	Bath County	KY	1573	27.95	3986	70.84	68	1.21	9.8	8.8	44.2	16.2	6.8	8.1	6.3	51471	75187
Bell County, Kentucky	Bell County	KY	1789	17.81	8140	81.04	115	1.14	9.2	12.6	40.3	17.7	8.5	7.2	4.5	33658	46786
Boone County, Kentucky	Boone County	KY	20901	31.2	44814	66.89	1283	1.91	2.3	3.8	29.1	20.8	9.3	21.7	12.9	91697	110633
Bourbon County, Kentucky	Bourbon County	KY	3296	34.16	6190	64.16	162	1.68	6.5	8.2	34.4	20.9	6.7	12.8	10.4	54580	74117
Boyd County, Kentucky	Boyd County	KY	7083	32.56	14295	65.72	373	1.71	2.8	8.5	32	23.3	12.6	11.3	9.5	58327	76156
Boyle County, Kentucky	Boyle County	KY	5298	36.59	8872	61.28	308	2.13	2.8	6.8	35.2	20.8	7.7	15.1	11.6	56568	76729
Bracken County, Kentucky	Bracken County	KY	800	18.84	3398	80.03	48	1.13	4.2	7.8	43.5	17.4	9.5	11.1	6.4	59911	78058
Breathitt County, Kentucky	Breathitt County	KY	1301	22.98	4265	75.34	95	1.68	7.5	13	40.1	16.2	6.1	8.2	8.8	38209	50811
Breckinridge County, Kentucky	Breckinridge County	KY	2350	23.04	7701	75.49	150	1.47	4.5	10.4	42.1	20.6	8.1	8.2	6.1	51756	69871
Bullitt County, Kentucky	Bullitt County	KY	10552	25.13	30708	73.12	738	1.76	3	7.7	40.8	21.5	9.6	11.3	6.2	73900	88496
Butler County, Kentucky	Butler County	KY	1079	17.62	4960	80.98	86	1.4	8.6	10.7	46	17	6.5	5.4	5.9	47589	59302
Caldwell County, Kentucky	Caldwell County	KY	1433	22.27	4906	76.25	95	1.48	2.4	9.9	42.6	19.7	9.3	9	7.2	52488	71682
Calloway County, Kentucky	Calloway County	KY	5797	33.21	11352	65.03	308	1.76	3.4	6.3	31.9	19.7	7.2	17.7	13.9	48276	68254
Campbell County, Kentucky	Campbell County	KY	19374	39.64	28482	58.27	1022	2.09	2.1	4.6	26.5	19.1	8.4	24.4	14.9	71979	101730
Carlisle County, Kentucky	Carlisle County	KY	463	17.55	2159	81.84	16	0.61	5	8	44.7	19.9	8.9	8.6	4.7	53065	77657
Carroll County, Kentucky	Carroll County	KY	1116	26.98	2954	71.42	66	1.6	5.9	11.4	43.3	25.2	8.5	3	2.8	50625	70237
Carter County, Kentucky	Carter County	KY	2642	22.8	8775	75.74	169	1.46	8	10.8	40.2	17.1	9.4	8.4	6.1	47004	67304
Casey County, Kentucky	Casey County	KY	918	12.8	6179	86.17	74	1.03	13.6	9.2	43.5	15.1	6.5	6.4	5.8	42190	58686
Christian County, Kentucky	Christian County	KY	8296	34.77	15080	63.19	487	2.04	5.3	8.4	32.3	24.7	10.2	13.1	6	48920	65876
Clark County, Kentucky	Clark County	KY	6004	33.1	11811	65.11	324	1.79	4.1	7	37.6	21.8	9.5	12.7	7.2	61878	87594
Clay County, Kentucky	Clay County	KY	831	10.95	6677	87.96	83	1.09	14.3	13.6	38.2	14.2	5.5	7.2	7.1	37888	49866
Clinton County, Kentucky	Clinton County	KY	603	12.23	4280	86.78	49	0.99	9.2	9.9	40.3	16.1	10.5	8.2	5.8	41180	57130
Crittenden County, Kentucky	Crittenden County	KY	731	17.23	3451	81.35	60	1.41	5.8	7.8	45.5	20	8.5	7.4	5	45810	67820
Cumberland County, Kentucky	Cumberland County	KY	508	15.35	2769	83.68	32	0.97	7	12.7	43.1	16.4	3.7	11.6	5.5	40515	52191
Daviess County, Kentucky	Daviess County	KY	17286	35.07	31025	62.95	976	1.98	2.8	6	33.9	21.2	10.7	15.7	9.7	64021	83578
Edmonson County, Kentucky	Edmonson County	KY	1227	20.01	4828	78.73	77	1.26	8.1	10.3	43.5	20.1	6.5	5.3	6.1	53029	65087
Elliott County, Kentucky	Elliott County	KY	712	23.77	2246	74.99	37	1.24	12.2	12.4	45.5	14.6	5.2	7	3.2	39469	51370
Estill County, Kentucky	Estill County	KY	1355	20.72	5100	77.98	85	1.3	10.9	12.7	43.3	13.1	8.9	7.7	3.4	39980	52548
Fayette County, Kentucky	Fayette County	KY	90600	59.25	58860	38.49	3452	2.26	3.2	4.6	18.8	19	7.8	26	20.6	66087	96124
Fleming County, Kentucky	Fleming County	KY	1474	20.85	5534	78.3	60	0.85	7.9	10.7	42.4	14.1	9.1	9.8	6	46885	65181
Floyd County, Kentucky	Floyd County	KY	3884	23.75	12250	74.91	219	1.34	8.8	11.9	39.3	20.1	6.8	7.6	5.5	38723	55243
Franklin County, Kentucky	Franklin County	KY	12652	48.53	12900	49.48	520	1.99	3.6	4.4	29.6	22.4	8.3	18.5	13.1	62929	86369
Fulton County, Kentucky	Fulton County	KY	794	32.73	1606	66.2	26	1.07	6.6	13	39.8	21.7	4.9	11.5	2.5	35449	46463
Gallatin County, Kentucky	Gallatin County	KY	822	21.36	2955	76.77	72	1.87	5.6	9.9	45.8	19.7	6	9.8	3.3	58641	72527
Garrard County, Kentucky	Garrard County	KY	1830	21.02	6754	77.58	122	1.4	4.9	10.2	37.2	19.5	8.2	9.9	10	58263	79557
Grant County, Kentucky	Grant County	KY	2205	19.85	8725	78.55	178	1.6	2.9	8.2	44.6	21.8	6.7	10.1	5.6	65461	77012
Graves County, Kentucky	Graves County	KY	3560	20.92	13206	77.6	253	1.49	3.3	6.6	41.5	18.9	11.2	10.6	8	52526	71040
Grayson County, Kentucky	Grayson County	KY	2400	20.03	9453	78.87	132	1.1	6.4	10.1	44.6	18.4	7.3	7.5	5.7	47024	65162
Green County, Kentucky	Green County	KY	920	15.83	4838	83.24	54	0.93	9.7	7.3	41.3	19.9	8.1	6.9	6.7	38595	58189
Greenup County, Kentucky	Greenup County	KY	4873	26.81	13064	71.88	239	1.31	4.4	5.7	36.8	22	13.4	9.1	8.5	58562	79161
Hancock County, Kentucky	Hancock County	KY	1351	29.45	3145	68.56	91	1.98	3.8	9	40.9	17.2	11.6	11.8	5.6	68102	79132
Hardin County, Kentucky	Hardin County	KY	18101	36.99	29832	60.96	1008	2.06	2.2	5.5	30.9	26.6	10.9	14.3	9.6	64136	89362
Harlan County, Kentucky	Harlan County	KY	1494	13.62	9367	85.38	110	1	8.8	14.2	35.9	20.4	10.1	5.2	5.3	35128	51132
Harrison County, Kentucky	Harrison County	KY	2400	27.09	6334	71.5	125	1.41	4	9.5	42.9	18.4	7.1	9.6	8.5	58840	74050
Hart County, Kentucky	Hart County	KY	1908	22.8	6345	75.81	117	1.4	8.8	12.8	43.8	17.2	7	6.3	4.2	45561	60803
Henderson County, Kentucky	Henderson County	KY	7639	36.91	12730	61.51	328	1.58	3.1	7.7	37.5	23.9	9.1	12	6.8	56912	72697
Henry County, Kentucky	Henry County	KY	2142	26.41	5843	72.05	125	1.54	5.9	9.9	42.1	20.7	6.6	9.7	5.1	58294	75226
Hickman County, Kentucky	Hickman County	KY	458	20.83	1714	77.94	27	1.23	5.4	6.3	38.7	20.4	7	17.5	4.8	68589	97007
Hopkins County, Kentucky	Hopkins County	KY	5439	25.28	15757	73.25	316	1.47	4.4	7.1	40.3	22.4	10.5	8.5	7	54466	67816
Jackson County, Kentucky	Jackson County	KY	605	9.9	5453	89.2	55	0.9	11.5	15.5	40.8	14.6	6.4	6.9	4.3	38516	52075
Jefferson County, Kentucky	Jefferson County	KY	228358	59.06	150646	38.96	7625	1.97	2.7	6	25.8	21.1	8.3	21.3	14.8	66296	93367
Jessamine County, Kentucky	Jessamine County	KY	8567	32.6	17096	65.05	617	2.35	3	7.4	31	18.7	9.7	17.4	12.9	69905	105419
Johnson County, Kentucky	Johnson County	KY	1608	15.78	8450	82.91	134	1.31	6.1	11.1	41.1	19.2	7.9	8.1	6.5	44231	59346
Kenton County, Kentucky	Kenton County	KY	32271	39.26	48129	58.55	1798	2.19	2.9	5.2	27.2	19.3	8.9	23.4	13.1	76016	100475
Knott County, Kentucky	Knott County	KY	1412	22.58	4780	76.46	60	0.96	12.6	15.6	27.9	17.8	9.7	7.5	8.8	38336	51962
Knox County, Kentucky	Knox County	KY	2114	15.93	11012	82.97	147	1.11	10.7	10.3	39.2	17.8	5.3	9	7.7	34254	52729
Laurel County, Kentucky	Laurel County	KY	4475	15.92	23237	82.66	399	1.42	5.9	10.1	40.3	19.5	7.7	8.9	7.7	53693	68970
Lawrence County, Kentucky	Lawrence County	KY	1238	17.8	5633	80.99	84	1.21	9.6	13.4	43.6	17.1	5.4	5.8	5.1	42488	57756
Lee County, Kentucky	Lee County	KY	481	17.17	2273	81.15	47	1.68	12.8	13.7	41.4	19.3	5.5	5.1	2.2	31682	45719
Leslie County, Kentucky	Leslie County	KY	446	9.27	4321	89.78	46	0.96	6.8	11.2	41.4	22.3	6.8	7.2	4.4	37019	48176
Letcher County, Kentucky	Letcher County	KY	1799	19.69	7226	79.1	110	1.2	9.7	11.4	36	20	9.8	7.4	5.7	38466	55991
Lewis County, Kentucky	Lewis County	KY	823	13.99	4986	84.75	74	1.26	11.8	9.6	44.4	15.1	9	5.9	4.3	36662	51822
Lincoln County, Kentucky	Lincoln County	KY	2254	20.65	8489	77.78	171	1.57	6.1	11.3	43.5	17.1	6.5	9.3	6.1	49487	65270
Livingston County, Kentucky	Livingston County	KY	939	18.76	4010	80.14	55	1.1	3.7	9.2	44	22.8	7.1	7.4	5.8	56125	72767
Logan County, Kentucky	Logan County	KY	3094	25.05	9067	73.42	189	1.53	4.9	7.3	42.9	19.8	7.8	10.6	6.5	58869	69316
Lyon County, Kentucky	Lyon County	KY	1092	25.83	3100	73.32	36	0.85	2.9	6.6	46.6	18.8	10.6	7.3	7.2	64081	78816
Madison County, Kentucky	Madison County	KY	15581	35.45	27356	62.23	1020	2.32	3.6	5.7	28.5	19.5	9.4	20	13.4	59797	79635
Magoffin County, Kentucky	Magoffin County	KY	1214	22.29	4174	76.63	59	1.08	12.8	14.7	39.8	16.6	5.2	3.6	7.2	31927	48375
Marion County, Kentucky	Marion County	KY	2722	30.49	6113	68.47	93	1.04	6.1	9.6	43.6	16.9	11	6.3	6.6	49627	62201
Marshall County, Kentucky	Marshall County	KY	4071	23.13	13297	75.54	235	1.33	2.4	5.3	35	25.7	9.1	13	9.4	64597	79257
Martin County, Kentucky	Martin County	KY	403	10.24	3496	88.82	37	0.94	11.4	13.3	36.9	18.2	9.4	6.8	4	45265	60039
Mason County, Kentucky	Mason County	KY	2362	29.68	5477	68.82	119	1.5	6.8	7.7	31.8	18.9	12.3	12	10.6	48460	81916
McCracken County, Kentucky	McCracken County	KY	11195	33.37	21820	65.04	534	1.59	2.1	5.2	31.6	22.6	10.4	16.7	11.5	58490	87475
McCreary County, Kentucky	McCreary County	KY	725	11.26	5664	87.98	49	0.76	10	12	43.5	17.9	9.7	3.8	3	35000	46836
McLean County, Kentucky	McLean County	KY	1074	22.46	3633	75.97	75	1.57	4.1	4.6	40.4	22.3	10.6	11.1	6.8	64020	81719
Meade County, Kentucky	Meade County	KY	3632	25.74	10185	72.17	296	2.1	3.2	7.2	39.6	22.6	9.6	10.3	7.5	68518	91215
Menifee County, Kentucky	Menifee County	KY	750	24.18	2311	74.5	41	1.32	11.3	9	42.9	17.9	8.2	7.5	3.3	43797	57311
Mercer County, Kentucky	Mercer County	KY	3033	25.85	8506	72.48	196	1.67	4.5	5.4	35.2	22.2	11.1	13.1	8.6	60728	71935
Metcalfe County, Kentucky	Metcalfe County	KY	975	19.45	3959	78.99	78	1.56	8.9	7.8	42.3	18.6	8.3	7.7	6.4	46932	58208
Monroe County, Kentucky	Monroe County	KY	657	12.33	4628	86.83	45	0.84	8.6	9.8	42.4	16.8	6.4	5.8	10.2	47252	63360
Montgomery County, Kentucky	Montgomery County	KY	3630	28.27	8993	70.03	219	1.71	6.5	8.3	41.5	18.5	7.1	10.7	7.4	53436	66798
Morgan County, Kentucky	Morgan County	KY	1175	21.19	4301	77.58	68	1.23	10.9	11.6	37.9	16.2	5.7	9.1	8.7	46018	65134
Muhlenberg County, Kentucky	Muhlenberg County	KY	3545	24.9	10497	73.74	193	1.36	5	10.8	41.9	18.1	10.9	7.5	5.8	50935	78421
Nelson County, Kentucky	Nelson County	KY	7188	30.91	15703	67.52	365	1.57	2.2	5.5	36.6	20.9	12.2	13.7	8.9	66212	86041
Nicholas County, Kentucky	Nicholas County	KY	955	28.12	2408	70.91	33	0.97	5.4	13	45.4	19.4	9.7	3.3	3.8	57539	66212
Oldham County, Kentucky	Oldham County	KY	14505	38.2	22654	59.65	817	2.15	1.8	4	19.7	19.9	9.3	25.9	19.5	117334	153498
Owen County, Kentucky	Owen County	KY	1098	20.12	4292	78.64	68	1.25	7.1	9.1	44.1	12.1	8.8	14.7	4.2	56485	72858
Owsley County, Kentucky	Owsley County	KY	216	11.39	1671	88.13	9	0.47	15.9	12.7	43.7	13.7	2.9	7.5	3.6	32844	47393
Pendleton County, Kentucky	Pendleton County	KY	1322	19.09	5515	79.64	88	1.27	4.3	10.2	43.2	16.9	8.9	10.9	5.7	58723	74375
Perry County, Kentucky	Perry County	KY	2356	22.17	8129	76.5	141	1.33	8.4	12	34.3	21.7	10.4	5.8	7.4	45330	70429
Pike County, Kentucky	Pike County	KY	4866	19.16	20284	79.87	245	0.96	9.2	11.1	38.7	17.7	7.6	8.4	7.4	41271	59240
Powell County, Kentucky	Powell County	KY	1367	24.83	4041	73.41	97	1.76	7.9	10.2	43.5	16.6	6.7	9.4	5.7	38415	59213
Pulaski County, Kentucky	Pulaski County	KY	5666	17.95	25442	80.62	449	1.42	7.4	8.9	35	21.5	9.4	9.9	7.9	48768	70298
Robertson County, Kentucky	Robertson County	KY	253	22.08	884	77.14	9	0.79	6.6	9.2	39.1	19.9	13	9.8	2.4	53798	68070
Rockcastle County, Kentucky	Rockcastle County	KY	1134	14.57	6577	84.49	73	0.94	8.3	9.8	45.5	19.7	4.7	5.6	6.5	45693	63530
Rowan County, Kentucky	Rowan County	KY	3880	38.55	5994	59.55	191	1.9	5.6	7.6	34.2	18.7	6.9	12.7	14.4	50038	75092
Russell County, Kentucky	Russell County	KY	1331	14.86	7519	83.96	105	1.17	7.7	9.7	38.6	17.7	9.9	9	7.4	48220	61985
Scott County, Kentucky	Scott County	KY	10567	36.48	17767	61.33	635	2.19	1.7	4	29.3	23.9	9.2	19.5	12.4	80782	99498
Shelby County, Kentucky	Shelby County	KY	8077	34.3	15055	63.93	418	1.77	4	7.5	30.1	18.6	9.7	18.6	11.6	81012	100473
Simpson County, Kentucky	Simpson County	KY	2681	30.7	5888	67.43	163	1.87	2.3	7.4	43.9	19.9	11.9	8.4	6.2	55907	69020
Spencer County, Kentucky	Spencer County	KY	2530	22.13	8737	76.42	166	1.45	2.3	5.2	39.2	21.7	9.6	14.2	7.9	101118	109491
Taylor County, Kentucky	Taylor County	KY	2963	23.67	9376	74.91	178	1.42	4.1	7.6	34.9	22.6	7.9	14.2	8.8	63211	76987
Todd County, Kentucky	Todd County	KY	1205	22.47	4062	75.74	96	1.79	12.1	9.4	38.7	16.6	6.8	9.5	7	57891	81451
Trigg County, Kentucky	Trigg County	KY	1791	24.28	5487	74.39	98	1.33	4.9	7.3	32.3	25.3	9.8	11.9	8.6	55864	70898
Trimble County, Kentucky	Trimble County	KY	1012	23.43	3227	74.7	81	1.88	2.2	12.3	43.2	15.9	12.8	9.3	4.4	66492	74263
Union County, Kentucky	Union County	KY	1529	23.25	4965	75.49	83	1.26	2.9	6.6	45.6	20.7	14.1	6.5	3.7	58260	70108
Warren County, Kentucky	Warren County	KY	22479	40.58	31791	57.38	1131	2.04	5.5	5.9	27.3	19.8	8.6	20.2	12.8	63074	87002
Washington County, Kentucky	Washington County	KY	1644	26.41	4482	72	99	1.59	6.2	5.7	42.4	17.6	8.3	11	8.8	65456	76390
Wayne County, Kentucky	Wayne County	KY	1700	18.4	7430	80.41	110	1.19	12.5	11.1	39.6	16.5	6.5	7.6	6.2	41583	62297
Webster County, Kentucky	Webster County	KY	1412	23.56	4506	75.19	75	1.25	5.2	9.2	46.4	18.5	9.3	7.2	4.2	55451	65556
Larue County, Kentucky	Larue County	KY	1504	20.6	5685	77.87	112	1.53	5.3	10.3	35	23.7	10.5	5.9	9.3	57867	69024
Whitley County, Kentucky	Whitley County	KY	2552	16.62	12567	81.84	237	1.54	6.4	11.6	39.4	18.6	5.4	9.4	9.3	44332	61934
Wolfe County, Kentucky	Wolfe County	KY	839	28.16	2097	70.39	43	1.44	14.4	22	32.5	18.6	5.4	2.3	4.7	28666	36089
Woodford County, Kentucky	Woodford County	KY	6530	42.93	8362	54.97	319	2.1	2.9	5.9	26.2	15.8	8.5	24.5	16.1	78295	95331
Acadia Parish, Louisiana	Acadia Parish	LA	5443	19.15	22596	79.49	386	1.36	8.6	11.3	43.5	15.4	7.5	9.9	3.8	44977	66417
Allen Parish, Louisiana	Allen Parish	LA	2108	21.49	7574	77.21	128	1.3	5.4	15	43.3	17.8	6.5	8.1	3.9	52755	68154
Ascension Parish, Louisiana	Ascension Parish	LA	20399	32.73	40687	65.28	1239	1.99	3.7	7.5	29.4	21.4	8.9	19.6	9.4	93800	112217
Assumption Parish, Louisiana	Assumption Parish	LA	3833	34.12	7271	64.72	131	1.17	8	12.9	43.9	16.9	4.8	8.2	5.2	47023	71916
Avoyelles Parish, Louisiana	Avoyelles Parish	LA	4979	28.79	12028	69.56	285	1.65	6.8	15.2	35.8	22.4	7.5	7.4	4.8	38696	59355
Beauregard Parish, Louisiana	Beauregard Parish	LA	2542	15.54	13575	82.99	240	1.47	3.9	8	40.6	21	8.6	12.2	5.7	68525	85994
Bienville Parish, Louisiana	Bienville Parish	LA	3067	43.5	3891	55.19	92	1.3	3.4	10.9	48.2	18.3	6.8	9	3.4	34268	50794
Bossier Parish, Louisiana	Bossier Parish	LA	15662	28.66	38074	69.66	919	1.68	2.8	6.9	29.3	24.4	9.1	17.7	9.9	64598	85431
Caddo Parish, Louisiana	Caddo Parish	LA	55110	52.53	48021	45.77	1781	1.7	3.4	9.3	32.6	22.9	7.4	14.2	10.1	47572	75055
Calcasieu Parish, Louisiana	Calcasieu Parish	LA	25982	31.43	55066	66.62	1615	1.95	3.2	8.1	34	22.1	9	15.5	8.1	64370	88202
Caldwell Parish, Louisiana	Caldwell Parish	LA	745	15.64	3976	83.49	41	0.86	6.3	13.7	48.7	15.5	3.6	9.3	2.7	45707	75489
Cameron Parish, Louisiana	Cameron Parish	LA	324	8.02	3671	90.89	44	1.09	2.3	7.4	40.9	26.8	8.1	9.7	4.7	69847	87243
Catahoula Parish, Louisiana	Catahoula Parish	LA	1269	26.12	3541	72.89	48	0.99	8.2	16.9	40.5	12.7	4.3	11	6.5	48259	66583
Claiborne Parish, Louisiana	Claiborne Parish	LA	2731	41.5	3770	57.29	79	1.2	4.4	17	47	16.3	3.6	7.6	4.1	32034	49243
Concordia Parish, Louisiana	Concordia Parish	LA	3177	35.99	5550	62.87	101	1.14	5.2	9	44.3	17	6.9	11.2	6.3	38929	57685
De Soto Parish, Louisiana	De Soto Parish	LA	5457	37.03	9112	61.83	167	1.13	5.8	11.9	39.6	18.1	8.4	11	5.3	49807	72336
East Baton Rouge Parish, Louisiana	East Baton Rouge Parish	LA	115577	55.52	88420	42.47	4185	2.01	3.1	6.1	26	21	5.7	22.7	15.5	62083	93990
East Carroll Parish, Louisiana	East Carroll Parish	LA	1900	62.58	1080	35.57	56	1.84	6.6	25.7	34.8	17.8	3.3	10	1.8	30856	60044
East Feliciana Parish, Louisiana	East Feliciana Parish	LA	4280	40.73	6064	57.7	165	1.57	2.8	12.8	42.1	18.3	7.9	11.9	4.2	64709	92942
Evangeline Parish, Louisiana	Evangeline Parish	LA	4158	26.98	11053	71.72	201	1.3	10.2	13.3	40.6	17	6.7	9.4	2.9	34526	54793
Franklin Parish, Louisiana	Franklin Parish	LA	2658	27.35	6970	71.71	92	0.95	8.1	13.7	42.1	15.7	5	9.9	5.4	41129	62149
Grant Parish, Louisiana	Grant Parish	LA	1157	12.32	8117	86.42	118	1.26	6.1	13.5	43.2	18.8	6.5	9.2	2.9	57362	75336
Iberia Parish, Louisiana	Iberia Parish	LA	11027	33.71	21251	64.96	435	1.33	5.6	11.7	41.9	18.1	8.5	10.6	3.6	55190	72619
Iberville Parish, Louisiana	Iberville Parish	LA	8514	50.92	7893	47.21	312	1.87	8.2	12.1	37.9	16.6	10.2	9.7	5.3	59410	77666
Jackson Parish, Louisiana	Jackson Parish	LA	2143	28.08	5394	70.68	95	1.24	4.9	11.8	44	17.5	8.9	9.2	3.7	40406	57124
Jefferson Davis Parish, Louisiana	Jefferson Davis Parish	LA	3208	21.62	11423	76.97	210	1.41	5.9	11	42.4	19.3	6.2	9.1	6.1	52470	73722
Jefferson Parish, Louisiana	Jefferson Parish	LA	84477	43.6	105949	54.69	3307	1.71	5.3	7.5	28.4	22.2	6.9	19.4	10.4	63257	87728
LaSalle Parish, Louisiana	LaSalle Parish	LA	638	9.02	6378	90.12	61	0.86	5.1	12	39.9	16.9	8.4	12	5.7	59926	79073
Lafayette Parish, Louisiana	Lafayette Parish	LA	39685	34.65	72519	63.32	2317	2.02	3.4	7	29.2	19.3	6.3	23.6	11.1	66617	93264
Lafourche Parish, Louisiana	Lafourche Parish	LA	8672	19.11	36024	79.37	692	1.52	7	10.9	40.5	16.4	6.5	12.5	6.1	61381	83072
Lincoln Parish, Louisiana	Lincoln Parish	LA	7559	39.22	11311	58.68	405	2.1	3.2	8.1	29.4	17.3	5.4	20.9	15.7	37001	62188
Livingston Parish, Louisiana	Livingston Parish	LA	9249	14.18	54877	84.13	1104	1.69	3.8	7.5	36.8	22.9	7.3	15.7	6	77978	93117
Madison Parish, Louisiana	Madison Parish	LA	2654	56.83	1930	41.33	86	1.84	7.3	16.2	34.1	24.1	4.3	10.3	3.7	34508	56215
Morehouse Parish, Louisiana	Morehouse Parish	LA	4946	42.73	6510	56.25	118	1.02	6.5	12.6	38.5	20.4	9.2	8.5	4.4	37875	57055
Natchitoches Parish, Louisiana	Natchitoches Parish	LA	6896	41.66	9358	56.53	300	1.81	2.6	9.8	38.1	17.8	8.9	13.5	9.4	41310	65033
Orleans Parish, Louisiana	Orleans Parish	LA	147854	83.15	26664	15	3301	1.86	3.4	7.9	21.8	21.2	4.9	22.4	18.3	51116	84158
Ouachita Parish, Louisiana	Ouachita Parish	LA	25913	37.46	42255	61.09	998	1.44	3.2	8.8	32.5	23.8	5.9	16.3	9.5	49261	74687
Plaquemines Parish, Louisiana	Plaquemines Parish	LA	3414	31	7412	67.3	188	1.71	7.4	6.3	31.6	27.9	7.7	13	6	77996	98008
Pointe Coupee Parish, Louisiana	Pointe Coupee Parish	LA	4683	37.85	7503	60.65	185	1.5	7.7	11.3	37	21.3	7.9	11.3	3.5	53045	75386
Rapides Parish, Louisiana	Rapides Parish	LA	19475	33.08	38347	65.14	1043	1.77	4.2	8.2	37.5	21	6.8	14.2	8.1	55407	78704
Red River Parish, Louisiana	Red River Parish	LA	1644	39.79	2413	58.4	75	1.82	3.9	16.5	49.3	14.7	5	7.1	3.5	43821	58820
Richland Parish, Louisiana	Richland Parish	LA	3225	32.44	6607	66.47	108	1.09	5.2	14.7	39.2	19	5.7	9.7	6.6	48125	66114
Sabine Parish, Louisiana	Sabine Parish	LA	1731	16.34	8776	82.82	89	0.84	4.2	10	46.2	20.1	6.2	9.8	3.5	40777	60497
St. Bernard Parish, Louisiana	St. Bernard Parish	LA	6151	34.85	11179	63.34	320	1.81	5.2	13.6	29.5	26.1	8.7	11.4	5.4	55857	73752
St. Charles Parish, Louisiana	St. Charles Parish	LA	9800	34.37	18233	63.94	484	1.7	2.9	6.4	31.9	22.5	9.1	19.9	7.2	79191	103356
St. Helena Parish, Louisiana	St. Helena Parish	LA	3346	54.34	2714	44.07	98	1.59	6.9	14	46.3	16	4.9	8.3	3.7	46402	59719
St. James Parish, Louisiana	St. James Parish	LA	6510	51.71	5954	47.29	126	1	2.3	8.8	39.7	20.4	10.1	12.7	6	62946	85748
St. John the Baptist Parish, Louisiana	St. John the Baptist Parish	LA	13582	63.37	7538	35.17	312	1.46	3	10.5	41.1	19.9	9	10.3	6.1	65114	82424
St. Landry Parish, Louisiana	St. Landry Parish	LA	17372	42.21	23171	56.3	611	1.48	8.1	13.3	39.6	18	6.8	9.2	4.9	44478	62361
St. Martin Parish, Louisiana	St. Martin Parish	LA	8439	31.21	18203	67.32	396	1.46	6.1	11.1	46.1	16.9	5.6	10.3	3.9	50806	71266
St. Mary Parish, Louisiana	St. Mary Parish	LA	8055	34.74	14811	63.88	320	1.38	6.5	13.4	45.5	15.9	6.4	8.4	4	47322	66683
St. Tammany Parish, Louisiana	St. Tammany Parish	LA	37746	26.94	99666	71.13	2698	1.93	3	5.7	24	23.4	7.5	23.5	12.9	76914	103990
Tangipahoa Parish, Louisiana	Tangipahoa Parish	LA	18887	32.76	37806	65.57	968	1.68	6.3	10.5	35.9	18.8	7	14.7	6.8	55274	75429
Tensas Parish, Louisiana	Tensas Parish	LA	1329	52.04	1197	46.87	28	1.1	5.1	16.6	44.2	16.9	3.1	8.9	5.3	35653	52353
Terrebonne Parish, Louisiana	Terrebonne Parish	LA	11198	24.22	34339	74.26	703	1.52	7.4	10.3	38.9	19.9	6.5	11.2	5.9	63088	83074
Union Parish, Louisiana	Union Parish	LA	2654	23.69	8407	75.06	140	1.25	3.5	10.6	43	20.5	5	13.6	3.8	47068	67629
Vermilion Parish, Louisiana	Vermilion Parish	LA	5009	18.33	21930	80.26	385	1.41	5.1	10.1	40.6	17.8	7.7	13.8	4.9	56194	74911
Vernon Parish, Louisiana	Vernon Parish	LA	2898	16.78	14107	81.69	263	1.52	3.6	8.6	39.3	22.1	7.7	13.6	5.1	56547	72993
Washington Parish, Louisiana	Washington Parish	LA	5970	30.59	13307	68.2	236	1.21	5.4	11.5	46.2	19.1	6	8	3.8	41803	62460
Webster Parish, Louisiana	Webster Parish	LA	6172	33.88	11830	64.94	214	1.17	4.4	8.9	43.1	20.5	8.7	10.1	4.3	34263	54821
West Baton Rouge Parish, Louisiana	West Baton Rouge Parish	LA	6200	43.98	7684	54.51	213	1.51	3.1	8.4	36.9	21.1	7.4	16.9	6.2	80510	88670
West Carroll Parish, Louisiana	West Carroll Parish	LA	710	14.05	4317	85.45	25	0.49	7.1	11.3	46.8	20.2	3.2	6.9	4.6	45035	63099
West Feliciana Parish, Louisiana	West Feliciana Parish	LA	2298	36.66	3863	61.63	107	1.71	4.9	11.7	37.6	19.2	5.3	14.4	6.8	71985	102485
Winn Parish, Louisiana	Winn Parish	LA	1543	24.79	4619	74.2	63	1.01	5.9	10.2	46.8	17.9	5.9	8.6	4.7	44922	67400
Androscoggin County, Maine	Androscoggin County	ME	27617	46.52	29268	49.31	2476	4.17	3.3	4.7	35.6	21	12.5	15.3	7.5	64500	82809
Aroostook County, Maine	Aroostook County	ME	13956	38.54	21080	58.22	1174	3.24	3.8	5.5	38.6	20	10.7	14.6	6.8	50843	68346
Cumberland County, Maine	Cumberland County	ME	128759	65.72	59584	30.41	7571	3.86	1.4	2.3	20.6	16.3	8.7	30.2	20.4	87710	119466
Franklin County, Maine	Franklin County	ME	8069	45.85	8754	49.74	776	4.41	0.9	5.2	36	19.3	9.8	18.8	10	56890	77513
Hancock County, Maine	Hancock County	ME	19369	54.29	14982	41.99	1325	3.71	1.5	3.5	30.6	18.6	9.3	23.3	13.3	64149	84942
Kennebec County, Maine	Kennebec County	ME	34902	48.06	34721	47.82	2992	4.12	2	3.5	35.3	19.8	9.7	18.5	11.3	62118	81937
Knox County, Maine	Knox County	ME	15110	58.04	9982	38.35	940	3.61	1.4	4.9	30.5	17.5	7.8	23.7	14.2	68904	88889
Lincoln County, Maine	Lincoln County	ME	12684	53.17	10256	42.99	917	3.84	1.4	3.8	31.1	16.4	8.1	23.8	15.4	69638	95969
Oxford County, Maine	Oxford County	ME	14755	43.64	17698	52.35	1357	4.01	2.3	6.6	40.9	17.1	11.6	14.5	7	54780	72619
Penobscot County, Maine	Penobscot County	ME	37713	43.78	44825	52.04	3595	4.17	1.8	4.3	32.9	19.7	11.5	18.9	10.9	59438	79488
Piscataquis County, Maine	Piscataquis County	ME	3517	35.18	6143	61.45	336	3.36	3.7	4.3	37.2	22.1	11.8	15.2	5.6	51805	72016
Sagadahoc County, Maine	Sagadahoc County	ME	13528	55.72	9755	40.18	997	4.11	1.8	3.9	27.9	18	9.7	22.3	16.3	77591	92470
Somerset County, Maine	Somerset County	ME	10199	36.59	16644	59.71	1030	3.7	2.5	5.7	41.9	18.6	11.6	14.3	5.5	53527	71414
Waldo County, Maine	Waldo County	ME	12345	50.25	11196	45.58	1025	4.17	1.8	5.1	32.4	18.6	8.9	20	13.2	62694	80694
Washington County, Maine	Washington County	ME	6761	38.48	10194	58.02	615	3.5	3.2	5.9	35.9	20.7	9.7	15.8	8.8	51669	68265
York County, Maine	York County	ME	71189	54.33	54817	41.83	5036	3.84	1.5	3.8	30.2	19.9	11.4	21.2	12	79743	98768
Allegany County, Maryland	Allegany County	MD	9158	29.89	20886	68.16	597	1.95	2.2	7.3	40.6	19.4	9.7	12	8.9	55248	70741
Anne Arundel County, Maryland	Anne Arundel County	MD	172823	55.82	127821	41.28	8973	2.9	2.2	4.2	21.9	20.1	7.3	25.1	19	116009	147102
Baltimore County, Maryland	Baltimore County	MD	258409	62.28	146202	35.24	10321	2.49	3.3	5	24.3	18.9	7.3	23.1	18.1	88157	117444
Baltimore city, Maryland	Baltimore city	MD	207260	87.28	25374	10.69	4827	2.03	4	9	28.2	18.8	5.2	17.7	17.2	58349	85857
Calvert County, Maryland	Calvert County	MD	22587	45.99	25346	51.61	1179	2.4	1.1	4.4	28.5	21.7	8.7	19.4	16.2	128078	147643
Caroline County, Maryland	Caroline County	MD	5095	32.26	10283	65.11	416	2.63	5.4	10.2	39.5	20.9	6.4	10.3	7.4	65326	90691
Carroll County, Maryland	Carroll County	MD	36456	36.34	60218	60.02	3653	3.64	1.7	4.1	28.2	18.8	8.5	23.8	14.9	111672	132777
Cecil County, Maryland	Cecil County	MD	16809	35.42	29439	62.03	1214	2.56	2.3	6.2	36.3	20.6	7.8	16.3	10.4	86869	105463
Charles County, Maryland	Charles County	MD	62171	69.47	25579	28.58	1748	1.95	2.1	3.4	30.2	24.3	8.9	18.2	12.9	116882	133710
Dorchester County, Maryland	Dorchester County	MD	6857	42.92	8764	54.85	356	2.23	3.5	8.8	40.3	21.1	7.2	10.4	8.8	57490	80396
Frederick County, Maryland	Frederick County	MD	77675	53.34	63682	43.73	4258	2.92	3.1	3.6	23.4	17.8	8.4	24.5	19.1	115724	138462
Garrett County, Maryland	Garrett County	MD	3281	21.02	12002	76.88	328	2.1	3	6.5	40.9	15.5	9.4	13.5	11.1	64447	94949
Harford County, Maryland	Harford County	MD	63095	42.58	80930	54.61	4161	2.81	1.7	4.1	26.2	20.7	8.5	22	16.7	106417	126684
Howard County, Maryland	Howard County	MD	129433	70.7	48390	26.43	5239	2.86	2.3	2.5	12.6	13	5.7	30.8	33.2	140971	173854
Kent County, Maryland	Kent County	MD	5329	49.37	5195	48.13	270	2.5	2.4	7.1	32.3	15.3	5.6	21.1	16.3	71635	98025
Montgomery County, Maryland	Montgomery County	MD	419569	78.61	101222	18.96	12952	2.43	4.9	3.8	13.3	12.4	5.5	27.3	32.8	125583	172866
Prince George's County, Maryland	Prince George's County	MD	379208	89.26	37090	8.73	8557	2.01	7.1	5.8	25	20	6.5	20	15.6	97935	118777
Queen Anne's County, Maryland	Queen Anne's County	MD	10709	35.35	18741	61.87	840	2.77	1.6	5.1	29	19.9	7.7	22.9	13.7	108332	134896
Somerset County, Maryland	Somerset County	MD	4241	41.8	5739	56.56	167	1.65	3.2	12.1	38.8	21.2	7.8	11.6	5.3	52149	66829
St. Mary's County, Maryland	St. Mary's County	MD	23138	41.57	30826	55.38	1701	3.06	2.6	5.6	29.6	19.8	7.5	19.8	15.1	113668	134383
Talbot County, Maryland	Talbot County	MD	11062	49.04	10946	48.53	547	2.43	2.3	5.5	23.9	19.6	7.3	22.9	18.5	81667	119018
Washington County, Maryland	Washington County	MD	26044	38.42	40224	59.35	1511	2.23	3.1	8.5	36.5	20.9	8	13.6	9.4	73017	93605
Wicomico County, Maryland	Wicomico County	MD	22054	47.72	22944	49.65	1218	2.64	3.8	7.7	32	19.3	8.3	17.5	11.5	69421	92407
Worcester County, Maryland	Worcester County	MD	12560	39.63	18571	58.6	560	1.77	1.6	4.9	30.1	23.6	7.7	20	12.1	76689	109044
Barnstable County, Massachusetts	Barnstable County	MA	91994	60.72	55311	36.51	4207	2.78	1.5	2.6	21.4	18.5	10	25.2	20.9	90447	124905
Berkshire County, Massachusetts	Berkshire County	MA	51705	72.04	18064	25.17	2002	2.79	2.1	4.5	28.8	18	8.7	20.5	17.5	69744	100641
Bristol County, Massachusetts	Bristol County	MA	153377	54.51	119872	42.6	8115	2.88	7	6.9	30.5	16.7	9.2	19.2	10.5	80628	104738
Dukes County, Massachusetts	Dukes County	MA	9914	77.01	2631	20.44	328	2.55	2.8	3	25.5	17.2	8.3	23.5	19.7	93225	154247
Essex County, Massachusetts	Essex County	MA	267198	62.93	144837	34.11	12564	2.96	5.2	4.8	24.2	15.7	8.3	24.7	17.1	94378	130777
Franklin County, Massachusetts	Franklin County	MA	30030	69.83	11201	26.05	1772	4.12	1.8	4.5	27	16.6	10.3	21.3	18.5	70383	89416
Hampden County, Massachusetts	Hampden County	MA	125948	57.04	87318	39.55	7527	3.41	5.3	8	30.1	18.1	9.8	17.2	11.4	66619	89616
Hampshire County, Massachusetts	Hampshire County	MA	63362	71.73	22281	25.22	2689	3.04	1.7	3.1	20.9	15	8.9	24.7	25.7	84025	110040
Middlesex County, Massachusetts	Middlesex County	MA	617196	71	226956	26.11	25195	2.9	3.3	3.2	17.6	11.6	5.8	28.9	29.6	121304	164118
Nantucket County, Massachusetts	Nantucket County	MA	5241	71.42	1914	26.08	183	2.49	1.8	0.9	17.2	17.3	5.4	35	22.4	135590	176197
Norfolk County, Massachusetts	Norfolk County	MA	273312	66.49	125294	30.48	12436	3.03	2.9	2.8	18	13	7	29.2	27.1	120621	170721
Plymouth County, Massachusetts	Plymouth County	MA	173630	57.14	121227	39.89	9013	2.97	3.2	3.7	26.6	16.8	9.2	25.2	15.3	105387	140463
Suffolk County, Massachusetts	Suffolk County	MA	270522	80.22	58613	17.38	8105	2.4	7.6	5.3	20.4	12.5	5	26.6	22.6	87669	128245
Worcester County, Massachusetts	Worcester County	MA	248773	57.2	171683	39.47	14465	3.33	3.4	5.2	26.7	17.4	9	22.4	16	88524	116031
Alcona County, Michigan	Alcona County	MI	2142	30.32	4848	68.63	74	1.05	2	6.8	38.6	23.1	9.5	12.3	7.6	50295	64847
Alger County, Michigan	Alger County	MI	2053	40.04	3014	58.78	61	1.19	1.9	4.4	42.7	21.9	8.4	14.7	6	55528	64943
Allegan County, Michigan	Allegan County	MI	24449	36.44	41392	61.69	1253	1.87	2.4	5.9	36.5	22.5	8.5	16.1	8.1	75543	93470
Alpena County, Michigan	Alpena County	MI	6000	35.36	10686	62.97	283	1.67	2	5.2	36.2	25.3	14.5	10.3	6.4	49133	68111
Antrim County, Michigan	Antrim County	MI	5960	37.37	9748	61.12	241	1.51	1.8	4	29.2	22.7	9.8	19.9	12.5	68850	87433
Arenac County, Michigan	Arenac County	MI	2774	31.41	5928	67.13	129	1.46	2.2	8.4	37.2	25.5	12.1	9.6	5	53487	65772
Baraga County, Michigan	Baraga County	MI	1478	36.6	2512	62.21	48	1.19	2.2	6.5	39.2	25.7	10.8	10.3	5.2	51911	70068
Barry County, Michigan	Barry County	MI	11797	32.86	23471	65.37	637	1.77	2.1	4.8	36.5	23.8	9.2	16.4	7.2	75182	97693
Bay County, Michigan	Bay County	MI	26151	43.4	33125	54.97	979	1.62	2.2	6.8	33.7	25	12.2	13.9	6.2	57887	75302
Benzie County, Michigan	Benzie County	MI	5480	44.69	6601	53.83	181	1.48	2.1	4.5	29.6	22	9.4	19.7	12.8	71327	92315
Berrien County, Michigan	Berrien County	MI	37438	45.44	43519	52.82	1434	1.74	2.6	5.8	27.7	23.7	10.2	18.4	11.7	60379	86184
Branch County, Michigan	Branch County	MI	6159	29.99	14064	68.48	313	1.52	5.6	5.6	39.7	23.5	9.5	11.3	4.8	60600	76834
Calhoun County, Michigan	Calhoun County	MI	28877	43.57	36221	54.65	1183	1.78	2.5	6.4	35.2	24.1	9.8	14.5	7.6	58191	77674
Cass County, Michigan	Cass County	MI	9130	34.83	16699	63.7	387	1.48	2.6	7.7	33.9	23.4	11.2	13.6	7.5	65183	90773
Charlevoix County, Michigan	Charlevoix County	MI	6939	40.82	9841	57.89	220	1.29	1.2	4.1	27.6	23.3	10.8	20	13	69764	94468
Cheboygan County, Michigan	Cheboygan County	MI	5437	34.26	10186	64.19	245	1.54	1.9	8.4	34.5	22.2	10.4	13.4	9.1	59557	75863
Chippewa County, Michigan	Chippewa County	MI	6648	37.68	10681	60.54	313	1.77	1.9	5.8	34.1	26.2	9.1	14.4	8.4	58408	78556
Clare County, Michigan	Clare County	MI	5199	31.93	10861	66.71	221	1.36	4.5	8.4	40.4	24.2	10.4	7.2	4.9	47816	65699
Clinton County, Michigan	Clinton County	MI	21968	45.84	25098	52.37	861	1.8	1.8	3.1	25.7	24.7	12.5	20.4	11.9	82594	104250
Crawford County, Michigan	Crawford County	MI	2672	33.99	5087	64.71	102	1.3	1.5	7.5	32.2	27	12.3	11.8	7.7	57998	67054
Delta County, Michigan	Delta County	MI	7606	35.96	13207	62.44	338	1.6	1.2	6.5	35.5	22.3	14.8	13.8	5.9	53852	72837
Dickinson County, Michigan	Dickinson County	MI	4744	32.52	9617	65.92	228	1.56	0.6	3.5	32.4	25.9	13.8	16.5	7.4	59651	79478
Eaton County, Michigan	Eaton County	MI	31299	48.66	31798	49.43	1230	1.91	1.7	3.5	26.8	26.6	11.1	20.4	9.9	77158	93124
Emmet County, Michigan	Emmet County	MI	9662	43.57	12135	54.72	380	1.71	0.9	3.5	25.6	21.9	10.2	22.2	15.7	69690	98070
Genesee County, Michigan	Genesee County	MI	119390	53.93	98714	44.59	3256	1.47	2.3	6.7	31.4	25.9	10.9	14.8	8	58594	80414
Gladwin County, Michigan	Gladwin County	MI	4524	30.98	9893	67.75	186	1.27	4.4	6.5	38.2	26.3	10.2	9.4	5	53717	71643
Gogebic County, Michigan	Gogebic County	MI	3570	43.19	4600	55.65	96	1.16	0.8	2.9	32.8	24.3	16.7	14.7	7.6	47913	68140
Grand Traverse County, Michigan	Grand Traverse County	MI	28683	47.62	30502	50.64	1051	1.74	1.5	3.6	22.3	22.9	11	23	15.6	75553	96733
Gratiot County, Michigan	Gratiot County	MI	6693	34.99	12102	63.27	332	1.74	2.4	5.7	40.6	24.4	8.8	12.3	5.8	57934	77560
Hillsdale County, Michigan	Hillsdale County	MI	5883	25.25	17037	73.11	382	1.64	3.6	6.1	40.9	21.4	8.4	11.5	8	59425	75959
Houghton County, Michigan	Houghton County	MI	7750	41.89	10378	56.09	373	2.02	1.8	4	30	19.9	8.5	19	16.7	52736	73321
Huron County, Michigan	Huron County	MI	5490	29.78	12731	69.05	216	1.17	2.5	6.2	42.4	20.8	11.6	11	5.6	54475	71283
Ingham County, Michigan	Ingham County	MI	94212	65.18	47639	32.96	2699	1.87	2.2	4.2	21.4	22.3	9.2	22.4	18.3	62548	85939
Ionia County, Michigan	Ionia County	MI	10901	33.84	20657	64.13	651	2.02	2.4	6.2	39.7	24.5	10.2	12.1	4.7	71720	80108
Iosco County, Michigan	Iosco County	MI	5373	34.97	9759	63.52	231	1.5	1.8	8.4	37.5	25.8	10.3	9.6	6.7	46224	58793
Iron County, Michigan	Iron County	MI	2493	36.72	4216	62.1	80	1.18	1.7	5.6	42.2	20.5	10.1	12.8	7	52241	65979
Isabella County, Michigan	Isabella County	MI	14072	47.83	14815	50.36	534	1.82	2.7	4.7	30.9	22.2	8.9	16.5	14.2	52638	71460
Jackson County, Michigan	Jackson County	MI	31995	39.57	47372	58.58	1494	1.85	1.8	6.2	35.5	23.6	10.5	14.9	7.6	62581	82443
Kalamazoo County, Michigan	Kalamazoo County	MI	83686	58.35	56823	39.62	2905	2.03	1.6	4	22.9	21.7	9.2	24.6	15.9	67905	92248
Kalkaska County, Michigan	Kalkaska County	MI	3002	28.24	7436	69.95	193	1.82	2.5	9.1	38.2	24.7	8.2	10.8	6.5	56380	73664
Kent County, Michigan	Kent County	MI	187915	52.05	165741	45.91	7392	2.05	3.2	4.3	23.9	20.7	9.2	24.9	13.7	76247	100762
Keweenaw County, Michigan	Keweenaw County	MI	672	43.16	862	55.36	23	1.48	1.2	0.7	28.5	19.5	11.8	21.9	16.4	55560	81422
Lake County, Michigan	Lake County	MI	2288	36.19	3946	62.41	89	1.41	4.9	12.9	41.3	22.4	6.4	8.8	3.3	45946	58943
Lapeer County, Michigan	Lapeer County	MI	16367	31.09	35482	67.39	801	1.52	2.3	5.7	36.6	25.5	10.8	12.7	6.4	75402	94615
Leelanau County, Michigan	Leelanau County	MI	8795	52.04	7916	46.84	189	1.12	0.9	2.8	19.5	18.5	9.6	28.1	20.5	82345	116094
Lenawee County, Michigan	Lenawee County	MI	20918	39.19	31541	59.09	916	1.72	2.4	6.5	35.7	22.9	10	14.4	8.1	65484	81943
Livingston County, Michigan	Livingston County	MI	48220	37.91	76982	60.52	1995	1.57	0.9	3	24.9	23.1	9.9	25.8	12.3	96135	119911
Luce County, Michigan	Luce County	MI	842	28.06	2109	70.28	50	1.67	1.8	6.4	40.2	22.6	11.7	10	7.3	51015	63279
Mackinac County, Michigan	Mackinac County	MI	2632	37.52	4304	61.35	79	1.13	2.1	5.3	36.3	22.8	7.8	16	9.7	60620	76023
Macomb County, Michigan	Macomb County	MI	223952	45.31	263863	53.39	6441	1.3	3.4	6	29.2	23.9	10.7	17.3	9.5	73876	93292
Manistee County, Michigan	Manistee County	MI	6107	41.67	8321	56.78	227	1.55	2.3	7.3	32.9	25.1	9.8	15.8	6.7	59467	81418
Marquette County, Michigan	Marquette County	MI	20465	54.63	16286	43.47	711	1.9	0.9	3.7	28.2	22.1	10.4	23.8	10.9	63115	77317
Mason County, Michigan	Mason County	MI	6802	39.42	10207	59.16	245	1.42	1.8	4.7	34.6	21.8	12.9	14.4	9.8	60744	79695
Mecosta County, Michigan	Mecosta County	MI	7375	35.04	13267	63.03	407	1.93	2.4	5.7	37.5	21.7	9	14.8	8.9	54132	68387
Menominee County, Michigan	Menominee County	MI	4316	34.23	8117	64.38	174	1.38	2.3	5	42.4	21.3	12.3	11.1	5.5	54074	69402
Midland County, Michigan	Midland County	MI	20493	41.75	27675	56.38	920	1.87	1.3	3.7	27.8	19.9	11.7	21.3	14.3	73643	99402
Missaukee County, Michigan	Missaukee County	MI	1967	22.47	6648	75.93	140	1.6	2.4	7.3	41.2	21.3	11	11.9	5	57667	74849
Monroe County, Michigan	Monroe County	MI	32975	37.84	52710	60.48	1463	1.68	1.8	6.5	33.4	23.9	11.8	14.5	8.1	72573	92489
Montcalm County, Michigan	Montcalm County	MI	9703	30.23	21815	67.96	582	1.81	3.3	8.5	40.4	23.6	9.9	9.9	4.5	61250	73320
Montmorency County, Michigan	Montmorency County	MI	1628	27.79	4171	71.19	60	1.02	2.1	9.7	39.8	22.8	10.3	10.1	5.1	46345	58223
Muskegon County, Michigan	Muskegon County	MI	45643	49.37	45133	48.82	1668	1.8	2.4	5.5	35.2	24.1	12.1	14.4	6.3	61347	78993
Newaygo County, Michigan	Newaygo County	MI	7873	28.99	18857	69.43	431	1.59	3.1	7.5	40	21.5	9.6	12.4	5.8	59065	74773
Oakland County, Michigan	Oakland County	MI	434148	56.36	325971	42.31	10232	1.33	1.9	3.4	18	18.9	8.3	27.9	21.6	92620	126488
Oceana County, Michigan	Oceana County	MI	4944	35.16	8892	63.23	226	1.61	3.8	6.5	37.9	21.9	10.3	12.5	7.1	60691	73788
Ogemaw County, Michigan	Ogemaw County	MI	3475	29.18	8253	69.31	179	1.5	2	9.8	38	24.2	11.5	9.8	4.8	50377	65133
Ontonagon County, Michigan	Ontonagon County	MI	1391	36.57	2358	61.99	55	1.45	1.1	5.3	42.7	23.9	11.7	10.3	4.9	48316	61107
Osceola County, Michigan	Osceola County	MI	3214	26.07	8928	72.41	187	1.52	3.7	7	39.8	23.3	9.7	11.1	5.5	54875	68119
Oscoda County, Michigan	Oscoda County	MI	1342	27.53	3466	71.11	66	1.35	5.4	9.1	37.7	26.2	7.8	9.4	4.4	48692	59781
Otsego County, Michigan	Otsego County	MI	4743	32.14	9779	66.27	235	1.59	1.7	3.9	32.1	24.9	11.2	17.3	8.9	62865	79912
Ottawa County, Michigan	Ottawa County	MI	64705	38.35	100913	59.81	3095	1.83	2	3.9	26.6	21	10.1	24.2	12.3	83932	106239
Presque Isle County, Michigan	Presque Isle County	MI	2911	34.89	5342	64.02	91	1.09	2.4	5.5	36.8	23.3	12.2	13.5	6.3	55986	73660
Roscommon County, Michigan	Roscommon County	MI	5166	34.4	9670	64.39	182	1.21	2.3	7	33.8	26.6	11.8	10.5	8	49898	70516
Saginaw County, Michigan	Saginaw County	MI	51088	49.43	50785	49.14	1476	1.43	2.3	7.1	32.7	23.5	11.5	14.9	8	56579	79210
Sanilac County, Michigan	Sanilac County	MI	5966	26.58	16194	72.15	286	1.27	3.1	6.1	42.8	22.7	10	10.1	5.2	55740	72456
Schoolcraft County, Michigan	Schoolcraft County	MI	1589	33.49	3090	65.12	66	1.39	3	8.1	38.3	20.2	10.4	13	7.1	55071	72108
Shiawassee County, Michigan	Shiawassee County	MI	15347	39.13	23149	59.02	728	1.86	1.8	6.1	34.4	26.8	11.8	12.8	6.3	62498	79801
St. Clair County, Michigan	St. Clair County	MI	31363	34.07	59185	64.29	1516	1.65	1.8	6.3	33.4	26.2	12.4	12.5	7.4	66887	85544
St. Joseph County, Michigan	St. Joseph County	MI	9262	33.15	18127	64.89	547	1.96	6	6.7	36.1	23.6	10.4	10.7	6.4	62281	76121
Tuscola County, Michigan	Tuscola County	MI	8712	29.59	20297	68.93	436	1.48	1.9	6.6	45.5	20.7	10.1	10.3	5	59815	73290
Van Buren County, Michigan	Van Buren County	MI	16803	43.01	21591	55.27	672	1.72	4.5	7.1	32.7	23.5	10.1	14.2	8	65531	81574
Washtenaw County, Michigan	Washtenaw County	MI	157136	72.61	56241	25.99	3041	1.41	1.4	2.9	14.4	17.2	6.8	26.9	30.6	84245	118384
Wayne County, Michigan	Wayne County	MI	597170	68.45	264553	30.32	10746	1.23	3.9	8.3	29.6	23.2	8.5	16	10.5	57223	81036
Wexford County, Michigan	Wexford County	MI	5838	31.96	12102	66.26	325	1.78	2.6	7.4	36.3	23.7	10.2	13	6.9	58652	74610
Aitkin County, Minnesota	Aitkin County	MN	3607	35.98	6258	62.42	160	1.6	1.6	5.8	37.2	24.9	12.1	12.5	5.8	56406	71757
Anoka County, Minnesota	Anoka County	MN	100893	47.79	104902	49.69	5337	2.53	2.3	3.5	27.4	22.7	12.7	22.7	8.8	95782	113763
Becker County, Minnesota	Becker County	MN	6589	33.96	12438	64.11	374	1.93	2	4.8	28.8	23.4	14.6	18.1	8.2	68683	93555
Beltrami County, Minnesota	Beltrami County	MN	11426	47.24	12188	50.39	575	2.38	1.9	5.7	26.5	21.7	12.8	19.3	12.2	62173	81939
Benton County, Minnesota	Benton County	MN	7280	32.7	14382	64.61	598	2.69	2	6.3	28.8	23.9	15.3	16.5	7.1	70346	87758
Big Stone County, Minnesota	Big Stone County	MN	1053	35.41	1863	62.64	58	1.95	3.2	3.4	38.9	17.9	16.2	12.7	7.7	63024	79511
Blue Earth County, Minnesota	Blue Earth County	MN	18330	50.84	16731	46.41	990	2.75	2	3.1	24.8	20.5	14.4	23.2	12	70906	87952
Brown County, Minnesota	Brown County	MN	4753	32.48	9552	65.27	330	2.25	2.2	4.8	35.2	21.8	12	17	6.9	67038	82692
Carlton County, Minnesota	Carlton County	MN	10098	49.58	9791	48.07	480	2.36	2	3.9	31.6	24	13.5	16.7	8.4	74660	91973
Carver County, Minnesota	Carver County	MN	30774	46.37	34009	51.25	1578	2.38	1.9	1.8	18	17.3	11.2	33	16.8	116308	146881
Cass County, Minnesota	Cass County	MN	6342	34.68	11620	63.54	327	1.79	1.6	4.5	31.7	25.3	12	17.6	7.2	61970	81800
Chippewa County, Minnesota	Chippewa County	MN	2226	33.67	4250	64.29	135	2.04	3.4	5.8	33.3	21.8	15.8	13.2	6.6	62112	76829
Chisago County, Minnesota	Chisago County	MN	11806	34.15	21916	63.4	848	2.45	1	3.8	32.2	24.2	15.3	16.7	6.8	97446	111436
Clay County, Minnesota	Clay County	MN	16357	50.74	15043	46.66	839	2.6	2	3.7	22.7	20.5	14.4	25.1	11.6	75006	92120
Clearwater County, Minnesota	Clearwater County	MN	1260	26.76	3372	71.62	76	1.61	3.6	8.9	36.9	21.4	11	12.9	5.4	62723	81621
Cook County, Minnesota	Cook County	MN	2496	65.58	1203	31.61	107	2.81	0.5	2.3	23.2	18	9.6	28.1	18.3	71937	93044
Cottonwood County, Minnesota	Cottonwood County	MN	1834	30.03	4165	68.2	108	1.77	3.3	5.4	33.9	22.4	12.5	16.9	5.6	63586	79763
Crow Wing County, Minnesota	Crow Wing County	MN	13726	34.17	25676	63.91	771	1.92	1.2	4.5	29	24.9	13.3	17.8	9.3	65975	85233
Dakota County, Minnesota	Dakota County	MN	146155	55.73	109638	41.81	6466	2.47	1.8	2.6	19.8	19.9	11.8	30.1	14	101360	124697
Dodge County, Minnesota	Dodge County	MN	4079	33.47	7783	63.86	325	2.67	1.2	3	29.4	20.4	15.7	22.4	7.9	92890	112345
Douglas County, Minnesota	Douglas County	MN	7868	32.56	15799	65.38	498	2.06	1.4	2.9	30	19.4	17.8	19.8	8.6	72472	95293
Faribault County, Minnesota	Faribault County	MN	2531	31.98	5191	65.59	192	2.43	2	4.8	33.9	23.9	14	16.3	5.1	64000	81221
Fillmore County, Minnesota	Fillmore County	MN	4551	37.48	7301	60.14	289	2.38	3.8	4.3	31.9	21.7	15.1	15.6	7.7	73234	88442
Freeborn County, Minnesota	Freeborn County	MN	6889	40.96	9578	56.95	351	2.09	4.6	6.8	33.4	23.6	14.4	12	5.1	65679	86121
Goodhue County, Minnesota	Goodhue County	MN	11806	41.23	16052	56.06	778	2.72	1.5	4	33.5	20.5	12.7	18.3	9.5	78338	94882
Grant County, Minnesota	Grant County	MN	1300	35.58	2269	62.1	85	2.33	1.6	5.2	31.8	24.2	18.2	14	5.1	67600	86753
Hennepin County, Minnesota	Hennepin County	MN	532623	70.46	205973	27.25	17373	2.3	3.2	2.9	15.3	17.3	8.6	33	19.6	92595	130586
Houston County, Minnesota	Houston County	MN	4853	42.42	6334	55.37	253	2.21	1.2	4	33.4	18.3	16.4	19.9	6.8	71580	90338
Hubbard County, Minnesota	Hubbard County	MN	4462	34.42	8202	63.26	301	2.32	1.2	4.7	28.1	23	13.4	19.4	10.2	67197	88072
Isanti County, Minnesota	Isanti County	MN	7138	29.45	16491	68.05	606	2.5	1.5	6	34.6	26	12.1	14.5	5.2	84063	98379
Itasca County, Minnesota	Itasca County	MN	10786	40.61	15239	57.37	536	2.02	1	4.6	30.4	24.8	14.6	16	8.7	63962	82091
Jackson County, Minnesota	Jackson County	MN	1745	29.99	3948	67.85	126	2.17	1.9	4.6	33.5	21.9	15	17.5	5.6	68368	84048
Kanabec County, Minnesota	Kanabec County	MN	2774	30.02	6278	67.93	190	2.06	2.7	6	38.8	26.9	10.7	9.3	5.7	68995	82961
Kandiyohi County, Minnesota	Kandiyohi County	MN	8440	36.12	14437	61.78	490	2.1	5.5	4.4	26.9	22.3	15.1	18.3	7.6	73285	89005
Kittson County, Minnesota	Kittson County	MN	1006	38.12	1546	58.58	87	3.3	2	2	35.6	22.1	11.1	18.9	8.3	66000	83162
Koochiching County, Minnesota	Koochiching County	MN	2659	38.41	4131	59.68	132	1.91	1.7	5.6	33.3	28.3	14.1	13	4.1	59779	76411
Lac qui Parle County, Minnesota	Lac qui Parle County	MN	1446	35.79	2528	62.57	66	1.63	1.1	4.8	36.9	21.7	14.7	15.7	5	66967	86770
Lake County, Minnesota	Lake County	MN	3647	50.64	3393	47.11	162	2.25	1.4	5.8	30.8	21.8	14.3	17	9	73860	85459
Lake of the Woods County, Minnesota	Lake of the Woods County	MN	671	27.87	1704	70.76	33	1.37	0.4	3.6	32.1	29.7	12.9	16	5.2	61667	77077
Le Sueur County, Minnesota	Le Sueur County	MN	5672	33.73	10775	64.07	371	2.21	1.4	3.7	33.7	21.8	14.8	17.4	7.3	87180	103386
Lincoln County, Minnesota	Lincoln County	MN	937	30.08	2121	68.09	57	1.83	2.7	4	35.8	21.8	13.3	15.7	6.7	64750	82712
Lyon County, Minnesota	Lyon County	MN	4634	35.94	7979	61.89	280	2.17	3.3	3.9	28.1	23.8	13.3	19.8	7.7	68919	88922
Mahnomen County, Minnesota	Mahnomen County	MN	1112	48.26	1142	49.57	50	2.17	3.5	9.5	35.2	25.6	12.4	9.7	4	52739	68803
Marshall County, Minnesota	Marshall County	MN	1295	25.33	3721	72.78	97	1.9	2.2	5.2	39.1	21.2	13.8	14.5	4	69396	83132
Martin County, Minnesota	Martin County	MN	3305	30.02	7480	67.94	224	2.03	1.9	4	34	23.3	13.7	15.4	7.7	61674	78734
McLeod County, Minnesota	McLeod County	MN	6413	30.64	13986	66.81	534	2.55	1.7	4.8	34.4	24.1	16.1	12.4	6.5	73296	93548
Meeker County, Minnesota	Meeker County	MN	3867	28.58	9359	69.18	303	2.24	1.6	4.4	35.4	23	15.7	13.8	6.2	75926	93631
Mille Lacs County, Minnesota	Mille Lacs County	MN	4404	29.98	9952	67.75	333	2.27	2	7.4	36.5	23.8	13.7	11.3	5.4	68088	83413
Morrison County, Minnesota	Morrison County	MN	4367	22.33	14821	75.78	370	1.89	2.3	5.3	39.1	22.3	13.5	12.3	5.1	66264	82157
Mower County, Minnesota	Mower County	MN	8899	46	10025	51.82	421	2.18	4.6	4.4	34.1	20.5	12.4	16	8	66972	86370
Murray County, Minnesota	Murray County	MN	1449	29.6	3363	68.69	84	1.72	3.5	5.3	35.8	21.8	12.1	16.7	4.9	71500	86878
Nicollet County, Minnesota	Nicollet County	MN	9622	50.31	9018	47.15	485	2.54	1.4	3.5	24.7	20.7	14.7	23.3	11.7	79113	106710
Nobles County, Minnesota	Nobles County	MN	2933	33.65	5600	64.26	182	2.09	14.9	5.8	31.2	20.6	10.5	13.2	3.9	62973	80292
Norman County, Minnesota	Norman County	MN	1404	40.8	1953	56.76	84	2.44	2.8	4.3	33.4	21	16.6	17.6	4.3	65278	83804
Olmsted County, Minnesota	Olmsted County	MN	49491	54.16	39692	43.43	2202	2.41	2.5	2.6	19.6	15.8	11.8	26.6	21	90420	122239
Otter Tail County, Minnesota	Otter Tail County	MN	11958	32.85	23800	65.39	641	1.76	2.6	4.2	27.1	23.3	16.2	18.1	8.4	67990	86947
Pennington County, Minnesota	Pennington County	MN	2568	35.29	4532	62.28	177	2.43	1.2	3.5	30.2	22.1	23.4	14.3	5.3	71504	84891
Pine County, Minnesota	Pine County	MN	5419	33.87	10256	64.1	326	2.04	1.9	6.9	40.9	22.6	12.3	10.8	4.6	65059	78804
Pipestone County, Minnesota	Pipestone County	MN	1306	26.44	3553	71.92	81	1.64	2.7	4.6	36.7	22.7	12.7	14.1	6.4	68341	84111
Polk County, Minnesota	Polk County	MN	5439	34.88	9865	63.26	290	1.86	2.6	4	29.2	23.3	14.2	19.5	7.1	69540	83410
Pope County, Minnesota	Pope County	MN	2477	35.27	4417	62.9	128	1.82	2	2.7	30.6	23.2	19	15.2	7.2	71212	89070
Ramsey County, Minnesota	Ramsey County	MN	211620	71.5	77376	26.14	6981	2.36	4.8	4	20.3	17.5	8.7	27.1	17.6	78108	106904
Red Lake County, Minnesota	Red Lake County	MN	691	31.47	1454	66.21	51	2.32	1.8	3.1	36.5	24.5	16.8	14.4	3	73889	83685
Redwood County, Minnesota	Redwood County	MN	2355	28.43	5771	69.66	158	1.91	2.6	4.4	36.2	25.1	11.7	15	5	65617	80890
Renville County, Minnesota	Renville County	MN	2496	30.71	5467	67.26	165	2.03	2.6	6	34.9	24.6	13.9	14.1	3.9	66313	82725
Rice County, Minnesota	Rice County	MN	17402	48.76	17464	48.94	820	2.3	2.9	4.6	32.3	19.1	11.2	18.8	11.1	78214	99972
Rock County, Minnesota	Rock County	MN	1556	29.69	3583	68.38	101	1.93	2.2	3.8	33.4	21.1	12.1	20	7.5	75060	93192
Roseau County, Minnesota	Roseau County	MN	2188	25.98	6065	72.02	168	2	1.9	5.2	37.4	23.5	12	15.9	4.1	70122	87183
Scott County, Minnesota	Scott County	MN	40040	45.52	45872	52.15	2053	2.33	2.3	2.8	20.3	18.4	13.4	30.1	12.7	118268	144751
Sherburne County, Minnesota	Sherburne County	MN	18065	32.48	36222	65.13	1325	2.38	1.6	4	28.4	24.2	14.5	19.4	7.8	99431	114114
Sibley County, Minnesota	Sibley County	MN	2417	28.6	5864	69.38	171	2.02	2.9	3.9	37.6	24.5	13.3	14.3	3.5	74781	92467
St. Louis County, Minnesota	St. Louis County	MN	67704	56.64	49017	41.01	2810	2.35	1.4	3.7	25.4	24.7	13.1	20.1	11.6	66491	86713
Stearns County, Minnesota	Stearns County	MN	31879	37.58	50959	60.07	1997	2.35	3.7	3.6	27.4	22.5	14.4	18.7	9.8	73105	92557
Steele County, Minnesota	Steele County	MN	7917	37.47	12656	59.9	555	2.63	2.3	5.1	30.3	22.5	11.5	18.7	9.7	79722	97853
Stevens County, Minnesota	Stevens County	MN	1922	37.8	3044	59.86	119	2.34	3.5	2.9	30.7	20.8	13.5	20.3	8.3	69737	97998
Swift County, Minnesota	Swift County	MN	1784	34.35	3316	63.86	93	1.79	3.3	3.6	32.3	23.2	14.7	19	3.9	58362	81827
Todd County, Minnesota	Todd County	MN	3286	24.79	9753	73.57	218	1.64	5.5	5.5	40.6	21.5	12.1	10.5	4.4	63216	76266
Traverse County, Minnesota	Traverse County	MN	661	35.46	1172	62.88	31	1.66	2.4	3.7	36.8	21.8	19.1	11.9	4.3	63456	81057
Wabasha County, Minnesota	Wabasha County	MN	4696	35.78	8153	62.13	274	2.09	2.3	3.2	32.5	20.6	14.7	18.4	8.3	75063	93379
Wadena County, Minnesota	Wadena County	MN	2023	26.35	5520	71.9	134	1.75	2.7	4.9	35.3	23	15.8	14.4	3.9	54747	68445
Waseca County, Minnesota	Waseca County	MN	3496	33.65	6624	63.76	269	2.59	1.9	5.1	35.1	21.2	14.6	16.4	5.5	71856	91089
Washington County, Minnesota	Washington County	MN	89165	53.46	73764	44.23	3857	2.31	1.4	2.4	19	18.8	10.4	30.8	17	110828	143126
Watonwan County, Minnesota	Watonwan County	MN	1987	38.2	3103	59.66	111	2.13	7.2	5	34.7	24.5	10.5	13.5	4.7	65197	84276
Wilkin County, Minnesota	Wilkin County	MN	1026	29.91	2328	67.87	76	2.22	1.9	4.7	30.8	21.4	16.9	18.8	5.4	67114	89697
Winona County, Minnesota	Winona County	MN	13333	49.07	13227	48.68	613	2.26	2.2	4.7	26.5	20.2	14.7	21	10.8	66162	83555
Wright County, Minnesota	Wright County	MN	28430	34.49	51973	63.05	2023	2.45	1.4	3.7	28.1	20.8	12.9	23.2	9.9	102980	117983
Yellow Medicine County, Minnesota	Yellow Medicine County	MN	1688	30.54	3734	67.55	106	1.92	2.2	5.2	32.7	23.9	16.6	14.1	5.3	70605	87454
Adams County, Mississippi	Adams County	MS	7917	57.54	5696	41.4	146	1.06	6	11.4	33.1	20.3	8.9	12	8.3	37271	55372
Alcorn County, Mississippi	Alcorn County	MS	2782	17.59	12818	81.06	213	1.35	7	11.1	34.1	21	9.2	11.3	6.3	47716	65607
Amite County, Mississippi	Amite County	MS	2620	36.35	4503	62.48	84	1.17	1.7	10.8	42.3	23.2	12.8	4.4	4.8	34866	50090
Attala County, Mississippi	Attala County	MS	3542	40.1	5178	58.63	112	1.27	5.3	10.6	36.7	20.3	10.9	11.5	4.7	42680	68671
Benton County, Mississippi	Benton County	MS	1679	39.12	2570	59.88	43	1	9.2	12.8	33.8	25	8.2	6.1	4.9	38750	55802
Bolivar County, Mississippi	Bolivar County	MS	8904	64.73	4671	33.96	180	1.31	6.5	11.3	25.4	18.7	11	15	12.2	37845	64115
Calhoun County, Mississippi	Calhoun County	MS	1902	28.84	4625	70.13	68	1.03	6.7	15	34.9	19.8	11.6	7.6	4.4	44505	55856
Carroll County, Mississippi	Carroll County	MS	1729	30.31	3924	68.78	52	0.91	6.6	14.6	31.2	18.6	11	14.1	3.9	42285	61964
Chickasaw County, Mississippi	Chickasaw County	MS	3810	46.76	4175	51.24	163	2	7.9	16	33.8	20.6	10.4	8.4	2.9	40224	52908
Choctaw County, Mississippi	Choctaw County	MS	1185	28.05	3001	71.03	39	0.92	2	11.1	41.6	17.3	10.7	10	7.3	41887	66543
Claiborne County, Mississippi	Claiborne County	MS	3772	84.71	603	13.54	78	1.75	4.8	13.1	29.4	23.5	7	8.4	13.9	34282	51995
Clarke County, Mississippi	Clarke County	MS	2838	34	5417	64.9	92	1.1	3.8	10.5	35.9	23.6	13.5	8.6	4.1	46329	64381
Clay County, Mississippi	Clay County	MS	5844	57.26	4181	40.97	181	1.77	5.3	13	33.4	17.7	12.6	11.3	6.7	37412	56933
Coahoma County, Mississippi	Coahoma County	MS	6020	70.77	2375	27.92	112	1.32	8.4	10.3	24.3	25	12	12.6	7.4	36075	54256
Copiah County, Mississippi	Copiah County	MS	6470	50.17	6250	48.46	177	1.37	5	10.2	31.9	20.1	11.6	15.5	5.8	46889	75649
Covington County, Mississippi	Covington County	MS	3416	36.45	5854	62.47	101	1.08	4.6	12.5	32.3	22.4	12.4	11	4.7	40164	58449
DeSoto County, Mississippi	DeSoto County	MS	28265	37.07	46462	60.94	1521	1.99	3	5.8	28.8	23.7	11.3	18	9.4	79666	94033
Forrest County, Mississippi	Forrest County	MS	13755	43.36	17290	54.5	680	2.14	2.8	7.7	26.2	23.1	11.6	15.3	13.4	49340	71069
Franklin County, Mississippi	Franklin County	MS	1480	33.15	2923	65.48	61	1.37	7.5	8.1	31.4	24.9	11.5	11.8	4.7	43942	62436
George County, Mississippi	George County	MS	1218	11.01	9713	87.79	133	1.2	4.2	9.8	36.2	22.1	11.7	11.7	4.3	51349	68792
Greene County, Mississippi	Greene County	MS	966	16.61	4794	82.43	56	0.96	6.2	12.7	38.2	24	7.6	7.2	4.1	50000	62953
Grenada County, Mississippi	Grenada County	MS	4734	43.36	6081	55.69	104	0.95	4.4	13.6	31.8	18.3	9.8	13.2	8.8	45745	67233
Hancock County, Mississippi	Hancock County	MS	4504	21.49	16132	76.98	321	1.53	2.6	7.1	30.2	25	10.8	13.2	11.2	63623	88522
Harrison County, Mississippi	Harrison County	MS	27728	36.55	46822	61.72	1315	1.73	3.2	7.7	28.6	23.3	12.4	15.3	9.5	55211	75018
Hinds County, Mississippi	Hinds County	MS	73550	73.41	25141	25.09	1500	1.5	3.6	7.4	23	24.5	10.2	17.9	13.5	48596	68871
Holmes County, Mississippi	Holmes County	MS	6588	81.18	1369	16.87	158	1.95	6.4	12.6	35.7	24.6	6	10.7	4.1	28818	49164
Humphreys County, Mississippi	Humphreys County	MS	3016	72	1118	26.69	55	1.31	7.8	17.4	28.7	17.9	9.6	9.2	9.4	31907	61023
Issaquena County, Mississippi	Issaquena County	MS	355	52.51	308	45.56	13	1.92	9.5	26.2	40	13.8	5.4	2.9	2.3	17900	36134
Itawamba County, Mississippi	Itawamba County	MS	1249	11.54	9438	87.18	139	1.28	4.7	10	34.8	25.5	9.7	9	6.3	57252	82383
Jackson County, Mississippi	Jackson County	MS	17375	31.81	36295	66.45	953	1.74	4.3	7	27.7	25.6	11.9	15.4	8.2	60045	79590
Jasper County, Mississippi	Jasper County	MS	4341	49.66	4302	49.21	99	1.13	2.8	8.6	43.5	20.6	9.6	10.7	4.2	43914	58265
Jefferson County, Mississippi	Jefferson County	MS	3327	85.07	531	13.58	53	1.36	10.8	13.3	30.5	21.5	4.2	10.5	9.2	31544	50112
Jefferson Davis County, Mississippi	Jefferson Davis County	MS	3599	57.93	2534	40.79	80	1.29	4.4	10.1	40.1	20.6	10.7	7	7.1	36473	54515
Jones County, Mississippi	Jones County	MS	8517	28.3	21226	70.54	348	1.16	6.1	7.8	31.6	23.2	10.6	12.5	8.2	49451	68431
Kemper County, Mississippi	Kemper County	MS	2887	61.01	1787	37.76	58	1.23	5.8	14.2	32.7	19.9	10.8	8.3	8.2	42947	55545
Lafayette County, Mississippi	Lafayette County	MS	10070	42.89	12949	55.15	462	1.97	2.5	5.7	21.6	16.2	8.9	24.2	20.9	59748	91629
Lamar County, Mississippi	Lamar County	MS	7340	25.73	20704	72.58	482	1.69	3.3	5.5	26	21.4	10.2	21.1	12.5	67972	94973
Lauderdale County, Mississippi	Lauderdale County	MS	12960	41.45	17967	57.46	339	1.08	4.4	11.4	27.5	23.1	13.2	13	7.5	45649	65795
Lawrence County, Mississippi	Lawrence County	MS	2260	34.15	4285	64.76	72	1.09	6.7	10.4	38	19.3	11.7	7.4	6.5	41096	58693
Leake County, Mississippi	Leake County	MS	3897	42.34	5228	56.8	79	0.86	6.5	12.2	36.6	19.3	8.5	10	6.9	46669	66515
Lee County, Mississippi	Lee County	MS	12189	32.94	24207	65.42	607	1.64	3.8	8.9	27	21.5	10.5	18.2	10.1	64479	84321
Leflore County, Mississippi	Leflore County	MS	7648	70.21	3129	28.72	116	1.06	6.6	10.2	33.9	21.2	8.9	9.4	9.8	33115	60870
Lincoln County, Mississippi	Lincoln County	MS	5040	29.97	11596	68.95	182	1.08	3.6	9.1	38	19.2	11	12.4	6.8	47069	65345
Lowndes County, Mississippi	Lowndes County	MS	13087	47.98	13800	50.6	387	1.42	3.9	8.1	32.7	20.5	8.7	16.2	10	53687	72963
Madison County, Mississippi	Madison County	MS	24440	43.38	31091	55.19	804	1.43	2.3	5.2	17.2	18.3	7.5	28.4	21.2	79105	118098
Marion County, Mississippi	Marion County	MS	3787	31.06	8273	67.84	134	1.1	7.2	10	37.6	21	12.9	6.3	5	38399	58278
Marshall County, Mississippi	Marshall County	MS	8057	50.9	7566	47.8	207	1.31	6.1	11.2	37.8	23.7	7.3	8.7	5.3	51431	74061
Monroe County, Mississippi	Monroe County	MS	5874	34	11177	64.69	228	1.32	6.2	8.9	40.3	19.2	9.3	10.5	5.6	51190	67885
Montgomery County, Mississippi	Montgomery County	MS	2121	41.77	2917	57.44	40	0.79	7	17.3	28.9	21.5	8.4	9	7.8	36845	57329
Neshoba County, Mississippi	Neshoba County	MS	3260	27.82	8320	70.99	140	1.19	5.5	12.2	33.5	23.2	10.3	7.5	7.8	47400	64183
Newton County, Mississippi	Newton County	MS	3075	30.18	6997	68.67	117	1.15	4.4	9.8	32.4	21.9	15.2	9.9	6.2	49160	72151
Noxubee County, Mississippi	Noxubee County	MS	4040	75.64	1240	23.22	61	1.14	7	11.9	41.6	14.3	11.8	9.6	3.7	42298	50540
Oktibbeha County, Mississippi	Oktibbeha County	MS	10299	51.98	9004	45.45	509	2.57	3.4	5.7	21.4	16.4	8.7	22.4	22	42953	67684
Panola County, Mississippi	Panola County	MS	7403	47.35	8060	51.55	172	1.1	6.4	11.7	32.2	20.1	13.6	9.8	6.2	47894	67859
Pearl River County, Mississippi	Pearl River County	MS	4148	17.24	19595	81.46	313	1.3	5	8.1	34.9	24.7	11.3	11.3	4.7	54220	70309
Perry County, Mississippi	Perry County	MS	1362	23	4500	75.99	60	1.01	5.6	8.5	42.6	23.8	8.8	6.8	4	48333	61035
Pike County, Mississippi	Pike County	MS	8646	49.8	8479	48.84	235	1.35	4.6	12.7	34.9	20.3	10.8	9.5	7.2	40131	59232
Pontotoc County, Mississippi	Pontotoc County	MS	2614	18.18	11550	80.34	213	1.48	7.9	12.1	28.8	23.6	9.8	10.9	7	54414	70049
Prentiss County, Mississippi	Prentiss County	MS	2153	20.2	8370	78.51	138	1.29	4.7	11.8	31.7	20.2	13.1	11.5	7	51578	71102
Quitman County, Mississippi	Quitman County	MS	2150	66.58	1026	31.77	53	1.64	8.2	16.6	31.1	18.8	10.9	10.2	4.2	31192	43369
Rankin County, Mississippi	Rankin County	MS	18847	26.67	50895	72.03	913	1.29	3.3	6.6	23.6	22.3	11.4	21.1	11.7	76460	95038
Scott County, Mississippi	Scott County	MS	4330	40.3	6285	58.5	129	1.2	10.8	11.5	31.8	27.2	7.6	7.2	3.9	44968	62217
Sharkey County, Mississippi	Sharkey County	MS	1465	67.11	688	31.52	30	1.37	10.1	10.2	39.7	18.1	5.8	11.3	4.8	41000	59008
Simpson County, Mississippi	Simpson County	MS	4037	34.15	7635	64.59	148	1.25	5.8	14.1	32.7	19.5	11.5	11.6	4.9	50867	73080
Smith County, Mississippi	Smith County	MS	1791	21.51	6458	77.55	78	0.94	7.5	10.4	36.8	22.4	8.4	7.6	6.9	51983	63109
Stone County, Mississippi	Stone County	MS	1802	22.87	5964	75.7	112	1.42	4.2	10.2	34.8	23.3	13.2	8.3	6	55894	69312
Sunflower County, Mississippi	Sunflower County	MS	6781	70.03	2799	28.91	103	1.06	6.8	16.2	31	19.6	9.1	10	7.3	37403	54272
Tallahatchie County, Mississippi	Tallahatchie County	MS	3105	54.56	2488	43.72	98	1.72	7.2	14.7	34.4	19.2	12.9	6.8	4.9	35428	50959
Tate County, Mississippi	Tate County	MS	4183	31.93	8707	66.46	211	1.61	6.4	10.1	32.7	21.4	11.4	9.6	8.4	61286	74352
Tippah County, Mississippi	Tippah County	MS	1937	19.17	8054	79.73	111	1.1	6.8	13.9	30.5	22.3	10.7	10	5.9	47968	65718
Tishomingo County, Mississippi	Tishomingo County	MS	1059	11.58	7933	86.73	155	1.69	8.9	9.7	32.3	21.3	13.1	8.1	6.7	45545	60901
Tunica County, Mississippi	Tunica County	MS	2580	72.37	926	25.97	59	1.65	3.7	12.7	41.1	16.5	9.1	12.5	4.4	41676	51004
Union County, Mississippi	Union County	MS	2160	17.03	10373	81.79	150	1.18	6.7	15.7	31.1	17.9	10.8	12.3	5.3	55970	73173
Walthall County, Mississippi	Walthall County	MS	2835	39.81	4220	59.25	67	0.94	6.7	11.8	35.1	18.1	10	11	7.3	37145	59917
Warren County, Mississippi	Warren County	MS	10442	49.59	10365	49.23	249	1.18	3.8	8.5	26.1	21.6	13.1	16.6	10.2	54117	77799
Washington County, Mississippi	Washington County	MS	12503	69.36	5300	29.4	222	1.23	8.1	11.8	31.5	18.8	9.2	13	7.6	38394	56945
Wayne County, Mississippi	Wayne County	MS	3624	36	6307	62.66	135	1.34	7.7	9.9	36.8	18.9	6.9	10	9.8	34875	58691
Webster County, Mississippi	Webster County	MS	1043	19.31	4291	79.43	68	1.26	3.8	11.3	36.9	16.5	13.5	10.8	7.2	55657	65778
Wilkinson County, Mississippi	Wilkinson County	MS	2749	66.56	1324	32.06	57	1.38	3.1	11.6	49	17.1	7.8	7.3	4.2	34928	57637
Winston County, Mississippi	Winston County	MS	4040	43.7	5112	55.3	92	1	5	9.6	36.8	21.9	9.3	12.1	5.3	45516	66607
Yalobusha County, Mississippi	Yalobusha County	MS	2785	42.6	3671	56.15	82	1.25	5.7	9.8	46.1	18.2	7.8	7	5.3	47006	58196
Yazoo County, Mississippi	Yazoo County	MS	5496	52.64	4832	46.28	113	1.08	7.5	15.5	38.3	20.9	5.9	8.7	3.2	41867	58124
Adair County, Missouri	Adair County	MO	3710	35.89	6413	62.05	213	2.06	2.5	5.5	32.2	17.8	7.7	15.4	18.9	51020	79229
Andrew County, Missouri	Andrew County	MO	2351	24.11	7255	74.39	146	1.5	2	3.5	38.7	21.9	7.8	16.5	9.6	68774	83098
Atchison County, Missouri	Atchison County	MO	564	20.04	2199	78.14	51	1.81	3	6.3	42.4	22.9	4	15.8	5.5	58521	72058
Audrain County, Missouri	Audrain County	MO	2704	25.38	7732	72.56	220	2.06	5.6	7.6	41.5	20.6	9.3	10.2	5.1	51745	70321
Barry County, Missouri	Barry County	MO	2948	18.9	12425	79.66	225	1.44	4.3	10.1	41.6	20.4	8.6	9.5	5.4	55592	78014
Barton County, Missouri	Barton County	MO	844	13.89	5168	85.04	65	1.07	3.7	9.7	41.6	18.2	8.5	13.3	5	48105	65736
Bates County, Missouri	Bates County	MO	1672	19.87	6597	78.39	147	1.75	3.1	8.4	48.5	19	7.1	9.2	4.7	54122	69511
Benton County, Missouri	Benton County	MO	2180	20.81	8109	77.41	187	1.79	3.9	8.5	41.1	22.3	9.3	8.3	6.7	50229	67962
Bollinger County, Missouri	Bollinger County	MO	750	12.54	5167	86.36	66	1.1	3.7	12	47.2	20.8	4.6	7.1	4.6	52306	62011
Boone County, Missouri	Boone County	MO	50064	54.91	38646	42.39	2458	2.7	2	3.2	20.6	17.2	7.3	27.9	21.8	66564	91044
Buchanan County, Missouri	Buchanan County	MO	13445	36.74	22450	61.34	703	1.92	3.3	7.1	37.7	22.3	6.2	16.2	7.1	58303	78291
Butler County, Missouri	Butler County	MO	3301	18.2	14602	80.49	238	1.31	4.5	12	40.5	20.6	8.5	8.8	5.1	47245	62781
Caldwell County, Missouri	Caldwell County	MO	897	19.16	3725	79.56	60	1.28	3.3	6.9	44.1	20.4	8.5	11.3	5.6	58269	72708
Callaway County, Missouri	Callaway County	MO	5870	27.76	14815	70.07	459	2.17	1.8	8.1	35.5	21.2	8.7	16.1	8.7	70599	84960
Camden County, Missouri	Camden County	MO	5652	22.78	18850	75.97	310	1.25	1.6	6.6	36.2	24.4	8.6	14.8	7.7	59834	86262
Cape Girardeau County, Missouri	Cape Girardeau County	MO	10760	26.68	28907	71.68	661	1.64	2.7	5.5	31.4	20.8	6	21.5	12.1	65070	82247
Carroll County, Missouri	Carroll County	MO	786	17.34	3706	81.77	40	0.88	2.3	6.4	44	19.1	7.5	13.3	7.4	59101	72283
Carter County, Missouri	Carter County	MO	418	14.43	2451	84.6	28	0.97	2.9	13.7	48.1	14.5	6	9.4	5.4	45737	67440
Cass County, Missouri	Cass County	MO	19052	33.19	37197	64.79	1159	2.02	2.1	3.8	32.7	25.3	8.3	18.4	9.4	82473	99261
Cedar County, Missouri	Cedar County	MO	1145	16.25	5788	82.17	111	1.58	6.2	8	40.1	19.6	8.8	10	7.3	43589	72146
Chariton County, Missouri	Chariton County	MO	916	22.47	3111	76.31	50	1.23	2.2	5.8	44	17.8	8.8	13.7	7.8	61910	73277
Christian County, Missouri	Christian County	MO	11131	23.76	34920	74.55	788	1.68	1.5	5.7	27.4	24.6	8.9	19.1	12.8	75787	94137
Clark County, Missouri	Clark County	MO	678	19.98	2672	78.73	44	1.3	2.2	8.2	46.3	19.2	11.2	8.3	4.6	53362	69018
Clay County, Missouri	Clay County	MO	59400	46.93	64605	51.04	2564	2.03	2	4.2	26.9	23	9	23	12	82264	100619
Clinton County, Missouri	Clinton County	MO	2896	26.6	7799	71.63	193	1.77	1.2	5	43.7	19.9	7.9	15.8	6.5	66494	80042
Cole County, Missouri	Cole County	MO	12694	32.11	26086	65.99	749	1.89	2.4	5.1	29.6	19.3	7.9	23	12.8	70667	87298
Cooper County, Missouri	Cooper County	MO	2249	25.87	6272	72.15	172	1.98	3.4	6.1	38.8	19	9.3	15.7	7.7	62239	74168
Crawford County, Missouri	Crawford County	MO	2113	19.26	8725	79.51	135	1.23	5.6	10.1	38.6	22.2	9.9	9.3	4.3	52367	72370
Dade County, Missouri	Dade County	MO	656	15.93	3414	82.88	49	1.19	2.7	7.9	42.7	24.3	8	11.4	3	46806	68598
Dallas County, Missouri	Dallas County	MO	1380	17.03	6619	81.68	105	1.3	4.2	6.9	48.9	21.6	5.1	7	6.3	46547	62187
Daviess County, Missouri	Daviess County	MO	746	19.07	3102	79.31	63	1.61	6.5	6.4	40.7	19.1	7.3	12.7	7.4	59706	78693
DeKalb County, Missouri	DeKalb County	MO	930	19.2	3828	79.04	85	1.76	4.2	6.5	44.8	21.3	8.6	9.8	4.9	67910	77432
Dent County, Missouri	Dent County	MO	1056	14.79	5987	83.83	99	1.39	3.9	10.5	39.3	21.3	7.7	10.9	6.4	51410	65460
Douglas County, Missouri	Douglas County	MO	1016	14.51	5898	84.26	86	1.23	3.4	11.8	39.9	23.4	5.7	10.9	4.8	47848	67129
Dunklin County, Missouri	Dunklin County	MO	2200	21.12	8135	78.08	84	0.81	6.9	13	42.5	14.8	9.1	7.2	6.4	44868	64879
Franklin County, Missouri	Franklin County	MO	14569	27.14	38058	70.89	1058	1.97	2.8	6.8	34.2	23.5	11.3	13.7	7.7	70111	89064
Gasconade County, Missouri	Gasconade County	MO	1601	20.21	6222	78.53	100	1.26	4.2	6.9	39	21.5	9	12.8	6.5	62638	83256
Gentry County, Missouri	Gentry County	MO	613	18.94	2581	79.73	43	1.33	5.6	6.8	43	16.3	7.2	14.3	6.9	53799	73748
Greene County, Missouri	Greene County	MO	55068	38.83	83630	58.98	3102	2.19	2.3	4.6	28.2	24.5	8	20.4	12	54968	76452
Grundy County, Missouri	Grundy County	MO	799	18.01	3585	80.8	53	1.19	6.2	8.3	38.6	20.3	11.5	10.5	4.5	51045	69032
Harrison County, Missouri	Harrison County	MO	597	15.6	3198	83.59	31	0.81	1.9	7.3	45.9	18.3	9.7	11.3	5.6	51809	60852
Henry County, Missouri	Henry County	MO	2619	24.28	8027	74.41	142	1.32	2.7	8.1	42.1	22.1	9.1	9.4	6.4	54903	74611
Hickory County, Missouri	Hickory County	MO	1056	20.79	3966	78.07	58	1.14	2.9	7.7	48.2	22.3	8.8	7.5	2.5	33302	45556
Holt County, Missouri	Holt County	MO	338	14.43	1976	84.34	29	1.24	1.7	4.6	45.1	21.4	6.1	13.3	7.7	55153	75919
Howard County, Missouri	Howard County	MO	1413	27.75	3553	69.78	126	2.47	3.8	7.7	35	19.4	7.7	15	11.4	59023	77164
Howell County, Missouri	Howell County	MO	3218	17.25	15181	81.4	251	1.35	3.4	10.4	40.7	20.2	7.3	10.7	7.3	46401	60708
Iron County, Missouri	Iron County	MO	945	20.58	3596	78.31	51	1.11	5.9	7.8	37.9	20.8	8.7	11.5	7.3	53401	64708
Jackson County, Missouri	Jackson County	MO	199842	60	126535	37.99	6686	2.01	2.7	5.5	28.4	22.6	7.7	20.7	12.3	65169	86997
Jasper County, Missouri	Jasper County	MO	13549	25.88	37728	72.07	1075	2.05	3.6	8.1	35	21.6	6.9	17.1	7.7	54963	71579
Jefferson County, Missouri	Jefferson County	MO	37523	32.16	77046	66.03	2119	1.82	2.1	6.7	32.2	23.7	12.6	15.3	7.5	77217	92016
Johnson County, Missouri	Johnson County	MO	6974	30.16	15489	66.99	660	2.85	2.8	4.8	33.4	20.4	10.1	16.1	12.4	62503	78854
Laclede County, Missouri	Laclede County	MO	2780	16.55	13762	81.95	251	1.49	3.7	9	41	21.1	8.3	11.7	5.2	49202	68617
Lafayette County, Missouri	Lafayette County	MO	4472	26.22	12273	71.96	310	1.82	2.6	5.7	42.2	19.9	6.8	14.4	8.5	78397	88775
Lawrence County, Missouri	Lawrence County	MO	3214	17.95	14426	80.57	265	1.48	5	9.1	40.1	24.2	6.1	10.9	4.5	52225	67510
Lewis County, Missouri	Lewis County	MO	984	21.35	3553	77.09	72	1.56	3	10.6	44.4	20.5	6.5	10.5	4.5	49779	64497
Lincoln County, Missouri	Lincoln County	MO	6607	22.77	21848	75.29	563	1.94	2.2	7	40.4	22.6	9.4	13.1	5.2	82543	91821
Linn County, Missouri	Linn County	MO	1275	22.27	4363	76.2	88	1.54	2.8	6.8	46.2	16.9	7.7	12.7	6.9	58435	79427
Livingston County, Missouri	Livingston County	MO	1410	20.86	5267	77.94	81	1.2	3.7	8.8	41	17.5	9.5	11.9	7.5	58772	79863
Macon County, Missouri	Macon County	MO	1662	21.21	6076	77.54	98	1.25	2.2	6.6	45.2	19.8	8.8	12.6	4.9	54113	65806
Madison County, Missouri	Madison County	MO	1019	17.95	4584	80.76	73	1.29	2.2	9.5	44.2	18.7	9.2	10.2	5.9	54042	80794
Maries County, Missouri	Maries County	MO	814	17.06	3892	81.58	65	1.36	5.9	7.1	41.6	18.3	8.7	11.6	6.8	56491	71009
Marion County, Missouri	Marion County	MO	3202	23.99	9915	74.28	231	1.73	2.8	7.5	37.5	19.8	7.7	15	9.8	62492	76498
McDonald County, Missouri	McDonald County	MO	1439	15.9	7465	82.46	149	1.65	9.7	11.1	40.5	19.1	7.9	8.7	3.2	46494	61956
Mercer County, Missouri	Mercer County	MO	222	12.48	1541	86.62	16	0.9	2.2	6.8	43.4	19.3	7.8	13.3	7.2	55592	67162
Miller County, Missouri	Miller County	MO	2038	16.46	10176	82.18	168	1.36	2.2	8.7	38.8	20.8	8.4	14.8	6.3	53490	71776
Mississippi County, Missouri	Mississippi County	MO	1178	24.77	3537	74.37	41	0.86	6.7	14	47.7	13	4.9	9.4	4.3	40833	54639
Moniteau County, Missouri	Moniteau County	MO	1308	18.28	5744	80.26	105	1.47	7.1	6.5	42.8	19.7	5.2	13.3	5.3	66792	78611
Monroe County, Missouri	Monroe County	MO	936	20.88	3477	77.56	70	1.56	3.6	6.5	49.2	17.7	6.7	12.4	3.9	50245	67200
Montgomery County, Missouri	Montgomery County	MO	1208	20.93	4465	77.36	99	1.72	3.7	8.6	42.9	19.4	9.5	10.5	5.4	58660	71653
Morgan County, Missouri	Morgan County	MO	1924	20.28	7442	78.44	121	1.28	11.3	9	39.4	18.8	7.7	9.1	4.8	48841	70436
New Madrid County, Missouri	New Madrid County	MO	1748	24.11	5447	75.13	55	0.76	5.3	11.4	46	14.8	9.5	6.9	6.2	44092	62832
Newton County, Missouri	Newton County	MO	5818	20.48	22120	77.87	467	1.64	4.1	6.6	35.2	23.1	8.8	14.8	7.4	60313	85809
Nodaway County, Missouri	Nodaway County	MO	2853	28.84	6865	69.39	175	1.77	1.8	4	38.6	22	7.6	15.8	10.3	53917	69957
Oregon County, Missouri	Oregon County	MO	823	17.37	3847	81.18	69	1.46	6	8.2	45.4	20	6.1	8.1	6.2	41365	52756
Osage County, Missouri	Osage County	MO	1037	13.76	6425	85.22	77	1.02	3	4.3	42.3	15.1	12.2	17.5	5.6	70313	96390
Ozark County, Missouri	Ozark County	MO	752	15.46	4064	83.55	48	0.99	6.7	12.4	41.3	23	6.2	6.6	3.8	39125	60133
Pemiscot County, Missouri	Pemiscot County	MO	1560	27.2	4120	71.84	55	0.96	7.4	10.4	48.1	16.8	5.6	7.6	4.1	37426	59683
Perry County, Missouri	Perry County	MO	1664	17.61	7657	81.05	126	1.33	5.4	8.9	40.9	16.6	7.8	14.4	5.9	61486	77309
Pettis County, Missouri	Pettis County	MO	4783	25.05	13854	72.55	460	2.41	4.9	7.5	34.4	23.4	11.2	10.9	7.6	57581	79159
Phelps County, Missouri	Phelps County	MO	5637	28.81	13480	68.89	451	2.3	2.6	5.6	31.4	21.6	7.1	16.4	15.2	53242	70451
Pike County, Missouri	Pike County	MO	1717	22.31	5863	76.19	115	1.49	2.4	11.1	50.4	15.4	5.3	10.5	4.9	53363	71989
Platte County, Missouri	Platte County	MO	27179	47.46	28917	50.49	1174	2.05	1	2.6	21.7	22.6	7.7	27.6	16.8	92543	117776
Polk County, Missouri	Polk County	MO	2885	19.15	11850	78.66	329	2.18	4.2	7.9	37.4	23	7.2	12.8	7.5	54487	69480
Pulaski County, Missouri	Pulaski County	MO	3740	25.95	10329	71.66	345	2.39	1.8	3.7	30.4	24.3	12.9	17.1	9.8	62541	75918
Putnam County, Missouri	Putnam County	MO	361	15.29	1984	84.03	16	0.68	3.4	3.2	43	23.3	8.7	12.9	5.5	50950	71230
Ralls County, Missouri	Ralls County	MO	1205	21.28	4396	77.64	61	1.08	3.3	5.2	48.8	19.3	7.6	11.3	4.5	62615	75409
Randolph County, Missouri	Randolph County	MO	2485	23.13	8018	74.63	241	2.24	2.8	7.6	41.2	21.3	10.1	12.4	4.7	51480	64831
Ray County, Missouri	Ray County	MO	3109	26.69	8345	71.64	195	1.67	2.8	7.5	45.1	22.4	7	10.7	4.5	69779	87696
Reynolds County, Missouri	Reynolds County	MO	529	16.04	2733	82.87	36	1.09	5.6	15.7	38	19	7.6	11.4	2.8	43856	56608
Ripley County, Missouri	Ripley County	MO	833	14.57	4839	84.64	45	0.79	5.3	12.5	39.1	22.3	8.9	8.2	3.7	42541	55660
Saline County, Missouri	Saline County	MO	2904	30.51	6451	67.77	164	1.72	4.9	7.2	36.6	20.3	6.1	16.9	8.1	55396	72741
Schuyler County, Missouri	Schuyler County	MO	373	18.62	1606	80.18	24	1.2	2.7	5	49.9	16.2	13.9	8.4	4	53728	61438
Scotland County, Missouri	Scotland County	MO	388	19.56	1560	78.63	36	1.81	12.8	3.9	40.8	21.5	6.3	9.8	4.9	58656	77522
Scott County, Missouri	Scott County	MO	3753	21.18	13769	77.71	197	1.11	4.6	9	38.3	20	6.9	14.1	7.1	54621	72346
Shannon County, Missouri	Shannon County	MO	706	18.07	3165	81.03	35	0.9	2.4	11.7	45.2	17	8.9	8.4	6.6	46767	57484
Shelby County, Missouri	Shelby County	MO	592	17.67	2700	80.6	58	1.73	2.9	8.7	44.2	19.6	7.1	12.5	5.1	50387	67242
St. Charles County, Missouri	St. Charles County	MO	89530	40.33	128389	57.83	4098	1.85	1.3	3.3	22.8	21.7	9	26.5	15.5	99596	122330
St. Clair County, Missouri	St. Clair County	MO	988	19.86	3932	79.05	54	1.09	2.3	8.4	43.7	25	8.2	8.5	3.9	43483	57948
St. Francois County, Missouri	St. Francois County	MO	7044	25.16	20511	73.25	446	1.59	3.9	9.2	38.2	24.8	8.3	8.8	6.7	53083	69486
St. Louis County, Missouri	St. Louis County	MO	328151	61.17	199493	37.19	8802	1.64	1.8	4	20.8	19.5	7.8	26.2	19.9	78067	116738
St. Louis city, Missouri	St. Louis city	MO	110089	82.24	21474	16.04	2304	1.72	3.1	6.9	24.7	20.3	6.3	21.5	17.1	52941	74579
Ste. Genevieve County, Missouri	Ste. Genevieve County	MO	2713	28.61	6630	69.91	141	1.49	2.7	5.9	39.3	22.9	12.8	9.4	7	61215	83592
Stoddard County, Missouri	Stoddard County	MO	1819	13.55	11484	85.54	123	0.92	6	12.5	43	16.8	6.7	10.3	4.6	51703	64497
Stone County, Missouri	Stone County	MO	3506	18.97	14800	80.07	177	0.96	2.4	7.3	35.3	25.2	9.2	13.9	6.7	58392	75783
Sullivan County, Missouri	Sullivan County	MO	478	19.34	1974	79.89	19	0.77	5.8	8.4	48.8	15.8	6.7	9.2	5.2	53438	66272
Taney County, Missouri	Taney County	MO	5339	20.31	20508	78.01	441	1.68	2.6	7.6	33.1	25.4	7.6	16.9	6.9	54467	70099
Texas County, Missouri	Texas County	MO	1716	15.17	9478	83.76	121	1.07	4.2	10.9	38.9	23.1	7.6	8.7	6.5	42870	59053
Vernon County, Missouri	Vernon County	MO	1903	20.72	7155	77.9	127	1.38	3.9	7.7	39.6	20.3	10.8	10.9	6.9	53318	66607
Warren County, Missouri	Warren County	MO	4769	25.95	13222	71.96	384	2.09	3.5	8.2	38	22.9	8.2	14.1	5.1	75531	93875
Washington County, Missouri	Washington County	MO	1804	18.08	8047	80.66	125	1.25	4.1	14.3	42.6	19	7.8	7.9	4.3	49364	73374
Wayne County, Missouri	Wayne County	MO	845	14.38	4987	84.84	46	0.78	4.3	13.5	42.1	22.5	6.5	6.9	4.1	42758	55522
Webster County, Missouri	Webster County	MO	3573	19.03	14880	79.24	326	1.74	4.7	7.4	38.7	21.3	9.5	12.2	6.2	65103	78174
Worth County, Missouri	Worth County	MO	215	19.42	877	79.22	15	1.36	2.4	3.6	53.1	18	7.3	10.7	4.9	43536	62637
Wright County, Missouri	Wright County	MO	1168	13.37	7453	85.28	118	1.35	6.6	10.9	41.8	18.9	8.8	8	4.8	43573	56971
Beaverhead County, Montana	Beaverhead County	MT	1608	28.4	3923	69.3	130	2.3	1.7	4	27.2	20.7	10	25.3	11.1	55867	76551
Big Horn County, Montana	Big Horn County	MT	2491	52.07	2207	46.13	86	1.8	2.4	8.3	32.9	24.7	11.9	12.4	7.5	52463	68470
Blaine County, Montana	Blaine County	MT	1589	50.98	1469	47.13	59	1.89	4	6.9	26.7	24.8	13.9	15.3	8.5	58507	68530
Broadwater County, Montana	Broadwater County	MT	835	20.38	3173	77.45	89	2.17	2.4	4.3	27.4	26.5	17.1	17	5.3	61679	78352
Carbon County, Montana	Carbon County	MT	2421	34.09	4468	62.92	212	2.99	1.8	2.4	31.1	25.1	8.2	18.2	13.1	66780	88921
Carter County, Montana	Carter County	MT	74	8.56	775	89.7	15	1.74	0.9	4.8	31	33	9	17.5	3.8	46486	61341
Cascade County, Montana	Cascade County	MT	15456	38.75	23315	58.46	1114	2.79	2.3	4.3	31.9	23.6	10.2	17.6	10	61351	81299
Chouteau County, Montana	Chouteau County	MT	991	33.32	1891	63.58	92	3.09	1.7	6	37.7	20.3	9.8	17.9	6.6	51791	71860
Custer County, Montana	Custer County	MT	1514	25.74	4205	71.48	164	2.79	1.5	4.1	31.6	24.1	12.1	17.5	9.2	61114	82231
Daniels County, Montana	Daniels County	MT	195	19.23	799	78.8	20	1.97	0.9	2.9	32.2	25.5	12.5	18.7	7.3	47378	67209
Dawson County, Montana	Dawson County	MT	962	19.89	3758	77.69	117	2.42	1.4	3.4	23.7	24.8	22	16.4	8.3	68168	86644
Deer Lodge County, Montana	Deer Lodge County	MT	2562	52.38	2186	44.69	143	2.92	3.1	6.4	40.3	23.8	6.1	15.2	5.1	46436	59745
Fallon County, Montana	Fallon County	MT	172	10.92	1375	87.3	28	1.78	1.3	2.2	37.8	21.6	18.9	12.8	5.3	79750	101684
Fergus County, Montana	Fergus County	MT	1496	22.91	4869	74.55	166	2.54	1.8	3.5	29.8	26.9	10.4	22.1	5.4	58321	76228
Flathead County, Montana	Flathead County	MT	20274	33.65	38321	63.59	1663	2.76	0.9	3.5	28	22.9	9.8	23.2	11.7	68025	91345
Gallatin County, Montana	Gallatin County	MT	37044	51.8	31696	44.33	2767	3.87	0.6	1.8	17.8	20	6.8	33.7	19.2	83434	116338
Garfield County, Montana	Garfield County	MT	41	5.04	764	93.97	8	0.98	0.9	2	36.4	29.3	10	15.1	6.3	61786	84569
Glacier County, Montana	Glacier County	MT	3610	64.02	1884	33.41	145	2.57	4.6	8.7	35.2	20.4	10.6	12.5	8	41078	58912
Golden Valley County, Montana	Golden Valley County	MT	78	15.51	414	82.31	11	2.19	3.4	5.4	34.3	28.4	5.2	18.2	5.2	54792	68757
Granite County, Montana	Granite County	MT	638	30.35	1419	67.51	45	2.14	1.3	8.3	30.1	17.9	11	24.6	6.9	53917	79413
Hill County, Montana	Hill County	MT	2981	41.51	3957	55.1	244	3.4	1.9	7.7	32	25.7	9.1	17.3	6.4	58427	72470
Jefferson County, Montana	Jefferson County	MT	2625	32.05	5345	65.25	221	2.7	2.9	3.4	26.9	21.8	11.7	21.4	11.8	73875	101042
Judith Basin County, Montana	Judith Basin County	MT	275	20.46	1040	77.38	29	2.16	2.2	3.6	26.9	23.8	16.3	22.4	4.9	58750	83987
Lake County, Montana	Lake County	MT	6916	41.6	9322	56.07	388	2.33	2.7	5.1	25.6	23.5	11.3	20.8	11.1	58009	78186
Lewis and Clark County, Montana	Lewis and Clark County	MT	19743	46.47	21409	50.39	1333	3.14	1.1	3.8	22.9	19.8	9.7	27.3	15.4	71967	95857
Liberty County, Montana	Liberty County	MT	249	22.99	821	75.81	13	1.2	14.7	8.7	21.6	21.1	6.7	21.1	6.2	48047	85599
Lincoln County, Montana	Lincoln County	MT	2835	24.13	8672	73.82	240	2.04	1.8	5.8	38.9	27.3	8.7	12.2	5.3	44593	64279
Madison County, Montana	Madison County	MT	1771	28.97	4191	68.56	151	2.47	0.7	2.9	28.4	23.3	13	22.3	9.4	61226	80200
McCone County, Montana	McCone County	MT	155	13.74	956	84.75	17	1.51	0.9	2.2	31.6	32.7	11.3	15.4	6	79022	86096
Meagher County, Montana	Meagher County	MT	258	23.24	833	75.05	19	1.71	0.3	2.5	26.4	29.8	4.8	26	10.2	55753	81138
Mineral County, Montana	Mineral County	MT	686	26.77	1828	71.32	49	1.91	2.3	4.7	31.5	26.7	8.9	20.2	5.8	56098	72931
Missoula County, Montana	Missoula County	MT	43357	60.23	26347	36.6	2282	3.17	1.3	2.3	20.8	22.3	8.8	27.9	16.6	66840	92834
Musselshell County, Montana	Musselshell County	MT	413	14.34	2423	84.1	45	1.56	1.6	7.3	35.4	25.4	10.6	14.8	4.9	54875	73212
Park County, Montana	Park County	MT	5280	45.45	6025	51.86	313	2.69	0.6	2.5	26.6	23.4	10.6	25	11.3	67602	94904
Petroleum County, Montana	Petroleum County	MT	39	11.11	298	84.9	14	3.99	0	0.3	43.7	26.3	5.9	17	6.8	57981	69949
Phillips County, Montana	Phillips County	MT	416	17.44	1936	81.14	34	1.42	1.6	5.3	36	30.1	7	15.8	4.3	61250	75183
Pondera County, Montana	Pondera County	MT	903	30.15	2031	67.81	61	2.04	6.8	5.2	29.8	24.3	11.9	17.6	4.2	59861	79051
Powder River County, Montana	Powder River County	MT	154	13.56	970	85.39	12	1.06	0.9	9.8	28.3	27.2	8.3	17.9	7.6	60313	89103
Powell County, Montana	Powell County	MT	752	23.54	2355	73.71	88	2.75	2.2	5.3	45.7	20.2	7.2	13.7	5.6	60994	79002
Prairie County, Montana	Prairie County	MT	126	16.94	603	81.05	15	2.02	4.2	9.6	29.7	22	12.1	13.6	8.8	44107	69469
Ravalli County, Montana	Ravalli County	MT	8763	30.74	19114	67.05	630	2.21	1.7	5.2	29.5	24.1	10.6	17.3	11.5	67424	89504
Richland County, Montana	Richland County	MT	875	15.09	4800	82.79	123	2.12	0.8	3.5	42.2	27.9	11.5	11.3	2.8	67515	85016
Roosevelt County, Montana	Roosevelt County	MT	1910	47.42	1996	49.55	122	3.03	1.8	5	32.9	28.3	12.2	14.2	5.6	51038	61485
Rosebud County, Montana	Rosebud County	MT	1199	31.69	2486	65.7	99	2.62	3.2	7.1	33.5	25	11.7	12.1	7.4	57656	71825
Sanders County, Montana	Sanders County	MT	1820	23.78	5660	73.97	172	2.25	2.7	6.6	38.8	24	9.8	14.1	4	47110	64828
Sheridan County, Montana	Sheridan County	MT	574	28.28	1403	69.11	53	2.61	3	6.6	33.8	24.9	6.2	17.3	8.2	67457	103394
Silver Bow County, Montana	Silver Bow County	MT	10392	55.2	7745	41.14	690	3.66	2.4	4.1	33.8	23.4	8.7	18.5	9.2	56297	79287
Stillwater County, Montana	Stillwater County	MT	1156	20.14	4462	77.72	123	2.14	2.2	4.8	32.5	22.7	8.4	20.6	8.7	78380	103635
Sweet Grass County, Montana	Sweet Grass County	MT	549	22.44	1840	75.22	57	2.33	0.3	3.6	32.1	31.3	9.1	17.5	6.1	64872	86457
Teton County, Montana	Teton County	MT	1007	27.25	2608	70.58	80	2.17	5.3	4.8	31.8	26	6.5	18.1	7.4	65224	77498
Toole County, Montana	Toole County	MT	467	22	1596	75.18	60	2.83	5.4	7.2	38.5	21.7	4.8	12.9	9.3	54040	74475
Treasure County, Montana	Treasure County	MT	78	16.96	373	81.09	9	1.96	0.7	5.2	30.5	22.3	9.1	29	3.2	70096	77659
Valley County, Montana	Valley County	MT	1030	24.11	3135	73.38	107	2.5	1	5.7	29.3	33.2	11.1	16.7	2.9	59725	76011
Wheatland County, Montana	Wheatland County	MT	225	21.07	823	77.06	20	1.87	3.9	3.7	37	25.7	9	14.4	6.3	48272	63128
Wibaux County, Montana	Wibaux County	MT	77	12.88	516	86.29	5	0.84	1.3	3.6	44.4	17.3	10.9	17.1	5.4	58750	74288
Yellowstone County, Montana	Yellowstone County	MT	30679	36.6	50772	60.57	2370	2.83	1.3	3.3	28.6	23.7	8.8	23.9	10.3	72300	98192
Adams County, Nebraska	Adams County	NE	4213	28.75	10085	68.83	355	2.42	3	4.6	27.2	24.8	13.4	16.6	10.4	61502	83765
Antelope County, Nebraska	Antelope County	NE	452	12.62	3093	86.32	38	1.06	1.8	4.5	33.9	21.9	17.3	13.1	7.4	61924	75806
Arthur County, Nebraska	Arthur County	NE	21	7.37	260	91.23	4	1.4	0.6	2.9	21.6	27	16.5	22.2	9.2	66667	87199
Banner County, Nebraska	Banner County	NE	43	10.46	362	88.08	6	1.46	5.9	2.9	16.7	31.4	12.7	21.2	9.2	62375	97729
Blaine County, Nebraska	Blaine County	NE	35	11.04	280	88.33	2	0.63	0.6	9	37.6	17.4	14.6	16.8	4	52083	77028
Boone County, Nebraska	Boone County	NE	499	15.47	2653	82.24	74	2.29	2	4.1	39.5	21	15.5	11.8	6.1	66800	89171
Box Butte County, Nebraska	Box Butte County	NE	1051	20.21	4002	76.96	147	2.83	3	5.1	29.3	33.4	11.2	15	3	67893	73321
Boyd County, Nebraska	Boyd County	NE	135	11.69	1010	87.45	10	0.87	1.4	3.4	44.1	22.4	11.8	9.1	7.8	57120	75221
Brown County, Nebraska	Brown County	NE	191	11.34	1470	87.29	23	1.37	1.5	6.1	33.4	24.6	13.1	12.9	8.5	44267	68043
Buffalo County, Nebraska	Buffalo County	NE	6350	26.78	16640	70.18	721	3.04	2.6	4.9	24.6	23.3	9.5	23.1	12	70093	89555
Burt County, Nebraska	Burt County	NE	1063	28.43	2580	69	96	2.57	1.7	7.3	34.2	21.3	12.1	18.1	5.3	54950	77527
Butler County, Nebraska	Butler County	NE	873	19.32	3542	78.4	103	2.28	3.7	3.9	34.9	18	14.2	20.1	5.2	75690	93344
Cass County, Nebraska	Cass County	NE	4737	30.91	10121	66.04	468	3.05	1.3	3.3	28.4	23.4	12.4	20.4	10.9	87673	105126
Cedar County, Nebraska	Cedar County	NE	725	14.46	4174	83.23	116	2.31	1.8	3.5	37.1	21.2	13.1	16.9	6.4	72035	87555
Chase County, Nebraska	Chase County	NE	226	11.3	1740	87	34	1.7	5.8	6.3	28.1	25.6	9.9	16.8	7.5	57313	84799
Cherry County, Nebraska	Cherry County	NE	373	11.41	2844	87	52	1.59	0.7	1.5	33.8	24.3	13.8	18.5	7.4	62373	78414
Cheyenne County, Nebraska	Cheyenne County	NE	855	17.9	3813	79.84	108	2.26	2	5.7	31.7	23.8	12.9	16.7	7.2	54038	67086
Clay County, Nebraska	Clay County	NE	632	17.7	2848	79.78	90	2.52	2.4	4.4	34.4	21.6	15.7	15.3	6.3	73933	89510
Colfax County, Nebraska	Colfax County	NE	1025	27.51	2636	70.75	65	1.74	17.2	9.7	28.3	19.8	12.1	9.8	3	71205	84258
Cuming County, Nebraska	Cuming County	NE	870	19.51	3507	78.65	82	1.84	3.7	4.2	35.9	20.1	12.1	17.4	6.6	68917	83313
Custer County, Nebraska	Custer County	NE	786	13.08	5090	84.69	134	2.23	1.8	3.6	32	22.8	14.1	19.1	6.7	62288	82921
Dakota County, Nebraska	Dakota County	NE	2744	40.25	3926	57.59	147	2.16	12	9.4	34.2	20.5	9.6	11.1	3.2	66112	85101
Dawes County, Nebraska	Dawes County	NE	1082	26.07	2931	70.61	138	3.32	1	3.3	24.5	26	9.2	18.1	17.9	53760	63774
Dawson County, Nebraska	Dawson County	NE	2497	27.17	6524	70.98	170	1.85	13.6	7.7	31.6	21.4	9.7	11.5	4.5	67462	83671
Deuel County, Nebraska	Deuel County	NE	141	13.64	871	84.24	22	2.13	6.3	3.9	28.6	27.1	13.2	14.7	6.1	58875	85270
Dixon County, Nebraska	Dixon County	NE	651	21.04	2335	75.47	108	3.49	9.5	6.2	32.9	17.1	12.2	16.7	5.6	60568	90696
Dodge County, Nebraska	Dodge County	NE	5544	32.73	10984	64.85	410	2.42	5.2	6.1	35.7	21	10.3	13.9	7.8	66793	81631
Douglas County, Nebraska	Douglas County	NE	150350	54.37	119159	43.09	7031	2.54	4.5	4.1	20.7	21.3	8.1	26.2	15	76083	106413
Dundy County, Nebraska	Dundy County	NE	105	10.47	883	88.04	15	1.5	1.5	4.2	27.1	30	10.8	15	11.3	58977	82194
Fillmore County, Nebraska	Fillmore County	NE	693	22.01	2359	74.94	96	3.05	2.1	3.5	34.4	21.8	15.4	14.9	7.9	72335	100003
Franklin County, Nebraska	Franklin County	NE	276	15.97	1437	83.16	15	0.87	2.3	4.7	32.2	27.9	13.8	12.2	7	55625	79497
Frontier County, Nebraska	Frontier County	NE	189	13.07	1229	84.99	28	1.94	2.2	4	26.5	27.8	16.1	17.3	6.1	62928	69200
Furnas County, Nebraska	Furnas County	NE	399	15.33	2163	83.13	40	1.54	3.6	6.6	30.6	25	12.8	15.9	5.5	58895	73955
Gage County, Nebraska	Gage County	NE	3385	30.44	7445	66.96	289	2.6	1.6	5.9	37.8	21.1	13.6	14.7	5.3	60035	75952
Garden County, Nebraska	Garden County	NE	161	13.42	1016	84.67	23	1.92	1	5.2	32.8	25.1	12.9	15.8	7.2	47139	62115
Garfield County, Nebraska	Garfield County	NE	133	12.36	933	86.71	10	0.93	0.7	3.6	24.4	27.7	11.7	24.3	7.6	64957	74361
Gosper County, Nebraska	Gosper County	NE	215	19.18	893	79.66	13	1.16	0.2	5.9	28.4	22.9	14.5	20.2	7.9	76583	87544
Grant County, Nebraska	Grant County	NE	20	4.98	375	93.28	7	1.74	1.8	6.5	26.7	27.6	10.3	22.5	4.5	65139	77748
Greeley County, Nebraska	Greeley County	NE	229	18.19	1016	80.7	14	1.11	3.7	3.5	38.6	20.1	17	13	4.1	52813	68001
Hall County, Nebraska	Hall County	NE	7681	31.42	16189	66.21	580	2.37	7.8	7.2	31.5	23.3	8.8	14.1	7.2	63553	82737
Hamilton County, Nebraska	Hamilton County	NE	1118	20.09	4309	77.42	139	2.5	0.9	1.9	28.9	28.7	14.6	16.4	8.6	73254	89045
Harlan County, Nebraska	Harlan County	NE	282	14.58	1615	83.51	37	1.91	3.4	4	28.5	24.6	15.1	17.4	7.1	64583	91064
Hayes County, Nebraska	Hayes County	NE	34	6.34	494	92.16	8	1.49	1.6	5.4	34.4	20.9	19.7	16	2.1	59405	77279
Hitchcock County, Nebraska	Hitchcock County	NE	175	11.9	1264	85.99	31	2.11	1.5	5.1	30.6	33.2	10.8	13.7	5.1	49456	69763
Holt County, Nebraska	Holt County	NE	686	12.36	4769	85.93	95	1.71	2.2	3.8	29.9	21.8	14.8	19.8	7.7	66325	86234
Hooker County, Nebraska	Hooker County	NE	59	13.35	376	85.07	7	1.58	2.1	4.8	34.5	23.3	8.1	26	1.2	43333	61776
Howard County, Nebraska	Howard County	NE	648	18.46	2786	79.35	77	2.19	1.9	2.2	38.3	23.8	11.4	18.4	3.9	70766	82304
Jefferson County, Nebraska	Jefferson County	NE	1016	27.24	2616	70.13	98	2.63	2.7	5.3	37.2	22.1	13.5	15	4.3	54494	69943
Johnson County, Nebraska	Johnson County	NE	647	28.97	1518	67.98	68	3.05	3.8	6.8	41.6	18.6	10.3	12	7	64352	77657
Kearney County, Nebraska	Kearney County	NE	701	19.38	2822	78.02	94	2.6	3.7	2.5	27.8	23.3	11.8	24.4	6.4	74276	91602
Keith County, Nebraska	Keith County	NE	763	17.46	3544	81.12	62	1.42	4.3	4.8	28.5	28.4	14	13.9	6	59511	76018
Keya Paha County, Nebraska	Keya Paha County	NE	49	9.25	476	89.81	5	0.94	0.6	1.3	32.2	25.3	11.8	22.1	6.6	63977	91291
Kimball County, Nebraska	Kimball County	NE	268	14.28	1563	83.27	46	2.45	3.9	10.9	36.8	26	11	8.4	3.1	53151	69943
Knox County, Nebraska	Knox County	NE	905	19.22	3721	79.04	82	1.74	2.5	5.5	36	22.5	14.5	13	6	61250	75276
Lancaster County, Nebraska	Lancaster County	NE	82293	52.34	70092	44.58	4830	3.07	2.9	3.8	20.9	19.9	11.6	25.7	15.1	70387	94655
Lincoln County, Nebraska	Lincoln County	NE	3692	21.51	13071	76.16	400	2.33	2.3	4.1	29.9	28.9	14.5	13.2	7	63019	77955
Logan County, Nebraska	Logan County	NE	38	8.44	407	90.44	5	1.11	1.8	0.7	27.2	34.2	10.8	22.9	2.3	69250	98871
Loup County, Nebraska	Loup County	NE	75	16.52	370	81.5	9	1.98	0	1.1	36.2	23	20.2	13.2	6.3	50000	58696
Madison County, Nebraska	Madison County	NE	3478	21.99	11940	75.48	401	2.53	4.1	3	31.9	21.7	14.9	16.9	7.6	61139	84318
McPherson County, Nebraska	McPherson County	NE	17	5.63	275	91.06	10	3.31	1.5	4.7	31.9	17.1	27.4	13.9	3.5	58250	74665
Merrick County, Nebraska	Merrick County	NE	743	17.35	3419	79.85	120	2.8	2.2	4.9	36.9	26.8	11.8	11.2	6.3	57873	73169
Morrill County, Nebraska	Morrill County	NE	386	15.09	2113	82.6	59	2.31	3	7.6	33.9	24.5	11.5	13.9	5.6	57325	72490
Nance County, Nebraska	Nance County	NE	359	19.6	1437	78.44	36	1.97	2.8	5	33.8	23	16.5	12.2	6.8	60054	82284
Nemaha County, Nebraska	Nemaha County	NE	921	26.84	2428	70.75	83	2.42	3.2	6.6	29.4	20.6	9.8	21	9.5	57196	83814
Nuckolls County, Nebraska	Nuckolls County	NE	409	17.74	1857	80.56	39	1.69	1.2	6	30.7	22.9	12.3	18.2	8.6	66000	90147
Otoe County, Nebraska	Otoe County	NE	2490	29.8	5649	67.61	216	2.59	3	4.1	32.3	22.3	12.7	17.7	8	73031	88508
Pawnee County, Nebraska	Pawnee County	NE	322	22.53	1071	74.95	36	2.52	7.9	6.2	40.1	16.3	9.1	12.7	7.7	55833	67189
Perkins County, Nebraska	Perkins County	NE	199	12.88	1321	85.5	25	1.62	5	4.3	26.2	28.3	10.2	22.2	3.7	61786	80784
Phelps County, Nebraska	Phelps County	NE	752	14.98	4157	82.79	112	2.23	1.6	6	27	26.1	12.5	20.2	6.5	65114	89530
Pierce County, Nebraska	Pierce County	NE	480	11.96	3462	86.29	70	1.74	2.7	2.8	32.9	20	19.5	16.5	5.6	65603	81865
Platte County, Nebraska	Platte County	NE	3260	20.74	12186	77.51	275	1.75	5.1	5.2	29.7	21.6	13.8	17.5	7.1	69943	89718
Polk County, Nebraska	Polk County	NE	530	18.36	2291	79.36	66	2.29	1.9	6	36	21.8	15.7	13.5	5	67695	85423
Red Willow County, Nebraska	Red Willow County	NE	811	14.83	4525	82.72	134	2.45	2.6	5.1	30.8	24.8	12.3	17.2	7.2	58344	79828
Richardson County, Nebraska	Richardson County	NE	996	24.09	3073	74.33	65	1.57	1.7	7	40.6	20.3	9.9	15.3	5.1	50321	69224
Rock County, Nebraska	Rock County	NE	84	9.98	744	88.36	14	1.66	1.9	2.9	34.7	23	8.8	22.8	5.8	57566	79736
Saline County, Nebraska	Saline County	NE	1986	34.36	3631	62.82	163	2.82	13.3	6.1	27.9	19.6	11.2	15.4	6.5	71104	87415
Sarpy County, Nebraska	Sarpy County	NE	41206	42.84	51979	54.04	3008	3.13	1.6	2.7	20.4	23.3	10.8	26.2	15	95911	116470
Saunders County, Nebraska	Saunders County	NE	3331	26.05	9108	71.23	347	2.71	1.6	3.1	29.4	22.9	13.8	20	9.1	84474	103516
Scotts Bluff County, Nebraska	Scotts Bluff County	NE	4196	27.03	10952	70.55	376	2.42	4.7	6.2	27.9	25.7	10.3	17.2	8	60137	76466
Seward County, Nebraska	Seward County	NE	2438	26.5	6490	70.55	271	2.95	1.5	4.3	28	20.4	14.8	22.3	8.7	79677	94976
Sheridan County, Nebraska	Sheridan County	NE	340	12.67	2292	85.39	52	1.94	1.9	8.4	30.9	26.6	10.5	16.8	4.9	53609	73631
Sherman County, Nebraska	Sherman County	NE	343	20.18	1322	77.76	35	2.06	2.6	6.5	36.3	25.7	10.1	13.2	5.7	60194	68660
Sioux County, Nebraska	Sioux County	NE	72	9.85	642	87.82	17	2.33	0.1	3.8	26.2	34.4	10.6	18	6.9	50833	66968
Stanton County, Nebraska	Stanton County	NE	532	16.81	2561	80.92	72	2.27	3.1	2.9	30.8	22.7	20.5	14.2	5.9	76035	93643
Thayer County, Nebraska	Thayer County	NE	624	20.88	2308	77.22	57	1.91	2.2	4.4	33.3	24.2	13.4	15.8	6.7	60305	76798
Thomas County, Nebraska	Thomas County	NE	45	10.54	377	88.29	5	1.17	2.6	5.8	22	23.6	21.4	19.2	5.4	70069	82720
Thurston County, Nebraska	Thurston County	NE	1122	47.16	1180	49.6	77	3.24	3.2	7	34	22.8	13.1	14.1	5.7	63459	77536
Valley County, Nebraska	Valley County	NE	412	17.58	1901	81.1	31	1.32	2.2	4.1	31.3	23.8	11.6	19.8	7.1	62321	80829
Washington County, Nebraska	Washington County	NE	3554	28.51	8583	68.85	330	2.65	1.8	3.1	26.3	22.8	11.7	24.1	10.2	89671	109024
Wayne County, Nebraska	Wayne County	NE	1022	24.23	3055	72.43	141	3.34	2.3	2	29.8	19.5	13.7	21	11.6	64951	76450
Webster County, Nebraska	Webster County	NE	335	17.86	1511	80.54	30	1.6	2.2	3.8	33	22.8	16.6	14.4	7.1	62571	81902
Wheeler County, Nebraska	Wheeler County	NE	59	11.73	438	87.08	6	1.19	0.5	1.6	30.4	31.4	11.3	17.8	6.9	59167	77295
York County, Nebraska	York County	NE	1630	22.76	5337	74.53	194	2.71	1.9	4.2	28.8	24.1	15.6	16.9	8.4	72914	97837
Carson City, Nevada	Carson City	NV	12735	42.82	16113	54.18	891	3	4	7.4	25.6	27.7	11	16.4	7.9	67465	91960
Churchill County, Nevada	Churchill County	NV	3051	23.67	9372	72.71	467	3.62	2.5	5.3	33.8	28.4	12.4	12.4	5.3	69922	88441
Clark County, Nevada	Clark County	NV	521852	53.66	430930	44.31	19728	2.03	5.8	7.8	27.8	23.9	8.4	17.4	9	69911	95925
Douglas County, Nevada	Douglas County	NV	11571	33.91	21630	63.38	924	2.71	2.2	4.4	24.4	27.1	10.6	20.4	10.9	84262	114346
Elko County, Nevada	Elko County	NV	4557	20.74	16741	76.21	669	3.05	4.7	6.4	33.8	27.5	10.6	10.5	6.5	87755	103071
Esmeralda County, Nevada	Esmeralda County	NV	74	15.2	400	82.14	13	2.67	4	17.9	22.7	26	5.2	15.2	9	40694	61434
Eureka County, Nevada	Eureka County	NV	105	10.32	895	88	17	1.67	2.3	2.5	42	34.1	3.9	9.7	5.5	73929	88816
Humboldt County, Nevada	Humboldt County	NV	1689	21.73	5877	75.63	205	2.64	5.5	9.1	34.1	21.7	8.8	15.4	5.4	75574	92454
Lander County, Nevada	Lander County	NV	496	17.94	2198	79.49	71	2.57	1	8.7	34.6	25	16.6	6.6	7.4	92388	102279
Lincoln County, Nevada	Lincoln County	NV	330	13.49	2067	84.51	49	2	2.9	8.8	43.4	23.8	5.8	9.2	6.2	67412	81163
Lyon County, Nevada	Lyon County	NV	8473	28.02	20914	69.16	851	2.81	4.4	8.3	31.9	28.1	11.2	11.5	4.6	70026	88275
Mineral County, Nevada	Mineral County	NV	829	35.5	1423	60.94	83	3.55	2.2	7.5	41.6	30.8	3.2	12.7	2	46625	61148
Nye County, Nevada	Nye County	NV	7288	28.72	17528	69.07	562	2.21	4.7	8.6	35.7	30	8.5	8.4	4.2	53602	71428
Pershing County, Nevada	Pershing County	NV	547	23.58	1731	74.61	42	1.81	2.9	13.1	42.5	23	8.5	5.8	4.2	66304	77979
Storey County, Nevada	Storey County	NV	902	31.35	1908	66.32	67	2.33	0.6	7	19.1	32.8	9.2	16.9	14.5	86932	103654
Washoe County, Nevada	Washoe County	NV	128128	50.82	116760	46.31	7254	2.88	5	6.5	23.7	23.8	8.6	19.7	12.8	81531	111026
White Pine County, Nevada	White Pine County	NV	859	19.66	3403	77.89	107	2.45	2.9	7.8	42.4	22.5	11.1	9.9	3.4	71297	81630
Belknap County, New Hampshire	Belknap County	NH	16894	44.01	20899	54.44	598	1.56	1.5	5.1	29.7	20.2	11.5	19	12.9	80719	103369
Carroll County, New Hampshire	Carroll County	NH	16649	50.12	16150	48.61	422	1.27	1.5	3.4	26.9	19.9	10.7	21.6	15.9	77049	106618
Cheshire County, New Hampshire	Cheshire County	NH	25522	57.72	17898	40.47	800	1.81	2	4.2	31.6	18.3	9.5	21.2	13.1	76551	97508
Coos County, New Hampshire	Coos County	NH	7640	46.26	8617	52.18	258	1.56	3.6	7.5	38.2	19.1	11.3	13	7.4	55247	73318
Grafton County, New Hampshire	Grafton County	NH	33180	61.48	19905	36.88	881	1.63	2	4.8	26.1	15.9	7.9	21.2	22.1	79949	112431
Hillsborough County, New Hampshire	Hillsborough County	NH	122344	52.98	104625	45.3	3972	1.72	2.6	4.4	25.7	17.6	9.6	25.2	15	95112	122320
Merrimack County, New Hampshire	Merrimack County	NH	48533	54.04	39711	44.22	1561	1.74	2	4.5	29	16.7	11	21	15.9	88806	112435
Rockingham County, New Hampshire	Rockingham County	NH	100064	50.33	95858	48.22	2876	1.45	1.2	3	25	17.3	9.9	27.1	16.5	110225	138374
Strafford County, New Hampshire	Strafford County	NH	41721	56.69	30489	41.43	1386	1.88	2	3.5	26	18	11.7	24.6	14.1	83212	108377
Sullivan County, New Hampshire	Sullivan County	NH	12390	50.82	11508	47.2	482	1.98	2.7	6.4	36.5	14.1	10.2	18.3	11.8	70788	96859
Atlantic County, New Jersey	Atlantic County	NJ	73808	52.55	64438	45.88	2195	1.56	4.8	6.8	32.5	18.5	7.3	19.8	10.3	73113	101941
Bergen County, New Jersey	Bergen County	NJ	285967	57.49	204417	41.09	7076	1.42	4	3	20.7	14	6.6	30.8	20.8	118714	161998
Burlington County, New Jersey	Burlington County	NJ	154595	58.86	103345	39.35	4710	1.79	1.9	4	26.4	18.7	7.9	26.4	14.6	102615	132928
Camden County, New Jersey	Camden County	NJ	175065	65.91	86207	32.46	4327	1.63	4.5	6.2	29.3	18	7.7	20.8	13.5	82005	109600
Cape May County, New Jersey	Cape May County	NJ	23941	41.33	33158	57.24	834	1.44	2.4	3.7	31.5	19	7.6	22.5	13.4	83870	115264
Cumberland County, New Jersey	Cumberland County	NJ	32742	52.32	28952	46.27	881	1.41	8	10.8	39.2	16.8	7.9	11.6	5.7	62310	90501
Essex County, New Jersey	Essex County	NJ	266820	77.27	75475	21.86	3016	0.87	6.9	6.1	27.8	15.7	6	21.7	15.7	73785	122134
Gloucester County, New Jersey	Gloucester County	NJ	86702	49.99	83340	48.05	3411	1.97	2.2	4.2	31.2	18	9.3	23.2	12	99668	122867
Hudson County, New Jersey	Hudson County	NJ	181452	72.45	65698	26.23	3308	1.32	7.6	5.2	23.3	12.5	4.8	27.4	19.2	86854	126531
Hunterdon County, New Jersey	Hunterdon County	NJ	39457	46.6	43153	50.96	2063	2.44	2	2.3	19.4	14.3	6.5	32.3	23.1	133534	176392
Mercer County, New Jersey	Mercer County	NJ	122532	69.14	51641	29.14	3050	1.72	4.6	5.7	25.4	14.2	6	24	20.2	92697	133816
Middlesex County, New Jersey	Middlesex County	NJ	226250	60.22	143467	38.19	5975	1.59	5.1	5.2	23.5	14.4	6.6	26.4	18.7	105206	132224
Monmouth County, New Jersey	Monmouth County	NJ	181291	47.91	191808	50.69	5291	1.4	2.3	3.4	21.4	15.5	7.5	30.5	19.4	118527	162075
Morris County, New Jersey	Morris County	NJ	153881	51.14	141134	46.9	5902	1.96	2.3	2.6	18.8	13	6.1	33	24.2	130808	178045
Ocean County, New Jersey	Ocean County	NJ	119456	34.85	217740	63.53	5550	1.62	2.5	4.4	33.3	19.1	7.9	21.5	11.4	82379	111549
Passaic County, New Jersey	Passaic County	NJ	129097	57.55	92009	41.02	3224	1.44	8.5	6.3	33.8	16	5.3	20.3	9.8	84465	112562
Salem County, New Jersey	Salem County	NJ	14479	42.53	18827	55.31	736	2.16	3.2	6.6	39.9	18	9.5	15	7.8	73378	94893
Somerset County, New Jersey	Somerset County	NJ	111173	59.49	71996	38.52	3722	1.99	3	3	17.9	12.8	6.1	31.2	26.1	131948	180078
Sussex County, New Jersey	Sussex County	NJ	34481	39.03	51698	58.51	2173	2.46	1.3	3.3	28.7	19.5	8.3	25.1	13.8	111094	138507
Union County, New Jersey	Union County	NJ	170245	67.01	80002	31.49	3794	1.49	7.7	5.5	27.2	15.7	5.6	22.9	15.4	95000	139183
Warren County, New Jersey	Warren County	NJ	24901	40.78	34769	56.95	1387	2.27	2	4.2	32.2	17.3	8.8	23.9	11.6	92620	110838
Bernalillo County, New Mexico	Bernalillo County	NM	193757	61.01	116135	36.57	7698	2.42	3.8	6	22.6	21.9	9.1	19.9	16.7	62220	85783
Catron County, New Mexico	Catron County	NM	595	25.58	1698	73	33	1.42	2.1	1.4	39.2	33.3	9.1	7.4	7.5	44777	55132
Chaves County, New Mexico	Chaves County	NM	6381	28.43	15656	69.76	406	1.81	8.9	9.9	27.1	27.9	8.8	10.9	6.7	49673	70101
Cibola County, New Mexico	Cibola County	NM	4745	53.3	3975	44.65	183	2.06	3.8	11.9	32.8	25.8	10.9	8.2	6.5	49866	63643
Colfax County, New Mexico	Colfax County	NM	2611	43.4	3271	54.37	134	2.23	2	7.5	32.3	26.8	9.4	12.7	9.4	46286	60486
Curry County, New Mexico	Curry County	NM	4307	28.52	10444	69.16	350	2.32	7.8	11.3	25.4	24.3	9.8	13.5	7.9	55427	70128
De Baca County, New Mexico	De Baca County	NM	231	25.64	656	72.81	14	1.55	7.5	7.9	24.9	45.2	5.3	4.7	4.6	34702	55224
Dona Ana County, New Mexico	Dona Ana County	NM	47957	58.03	32802	36.69	1882	2.28	10.2	8.2	22.5	20.6	8.1	17.2	13.2	51232	70278
Eddy County, New Mexico	Eddy County	NM	5424	23.36	17454	75.16	344	1.48	6.5	9.5	29.8	26.3	9.8	11.6	6.6	77458	96185
Grant County, New Mexico	Grant County	NM	7590	52.58	6553	45.4	292	2.02	3.5	7.9	26.9	26.2	9.1	15.5	10.9	44895	67689
Guadalupe County, New Mexico	Guadalupe County	NM	1234	56.37	917	41.89	38	1.74	10.3	9.2	44.3	15.1	7.2	10.2	3.8	38713	84666
Harding County, New Mexico	Harding County	NM	179	35.45	319	63.17	7	1.39	3.6	9.6	30.4	14.6	11.3	15.7	14.9	39489	166731
Hidalgo County, New Mexico	Hidalgo County	NM	823	41.69	1120	56.74	31	1.57	6.8	10.1	36.6	21.8	7.8	11.3	5.6	53651	63759
Lea County, New Mexico	Lea County	NM	4061	19.41	16531	79.03	326	1.56	12.6	11.4	33.1	20.6	7.8	7.6	7	65855	86086
Lincoln County, New Mexico	Lincoln County	NM	3194	30.99	6942	67.36	170	1.65	3.4	6.5	29.3	27.5	9.1	14.3	10	47919	67214
Los Alamos County, New Mexico	Los Alamos County	NM	7554	61.45	4278	34.8	461	3.75	1	1.1	10.2	13.4	4.6	27.9	41.8	135801	165058
Luna County, New Mexico	Luna County	NM	3563	43.97	4408	54.4	132	1.63	11.7	15.1	35.7	19.4	6.3	6.9	5	38241	51973
McKinley County, New Mexico	McKinley County	NM	18029	68.07	7801	29.45	656	2.48	7.1	12.2	35.8	24.8	7.7	7.4	5	44029	60105
Mora County, New Mexico	Mora County	NM	1745	64.97	903	33.62	38	1.41	3.9	2.8	39.5	27.5	5.7	7.6	13	40231	55236
Otero County, New Mexico	Otero County	NM	8485	36	14521	61.61	565	2.4	5.5	7.9	28.8	26.4	10.4	13.8	7.2	50833	67009
Quay County, New Mexico	Quay County	NM	1170	30.21	2634	68.01	69	1.78	2.5	11.3	38	24.4	7.8	10	6.1	38998	53058
Rio Arriba County, New Mexico	Rio Arriba County	NM	10990	66.09	5408	32.52	230	1.38	5.5	9.2	32.8	26.8	7.5	10.6	7.6	52031	69379
Roosevelt County, New Mexico	Roosevelt County	NM	1802	27.27	4634	70.13	172	2.6	6.7	7.6	32.5	26.6	6.3	13	7.4	52644	67904
San Juan County, New Mexico	San Juan County	NM	18083	34.58	32874	62.86	1337	2.56	3.7	10.7	29.3	28.1	12.4	9.2	6.5	50734	69858
San Miguel County, New Mexico	San Miguel County	NM	7888	68.41	3421	29.67	222	1.93	6.6	9.9	24.9	26.2	8.6	14	9.8	43490	59418
Sandoval County, New Mexico	Sandoval County	NM	40588	53.01	34174	44.64	1800	2.35	2.7	5.5	24.9	24	10.8	19.5	12.7	76424	96937
Santa Fe County, New Mexico	Santa Fe County	NM	62530	76.05	18329	22.29	1368	1.66	4.4	4.9	21	20	7.5	21.2	21	70522	99932
Sierra County, New Mexico	Sierra County	NM	2265	38.1	3542	59.58	138	2.32	3.1	6.6	36.2	24.3	10.1	11.7	8	35256	53994
Socorro County, New Mexico	Socorro County	NM	3722	51.98	3255	45.46	183	2.56	8.1	7.1	43.5	17.8	6.6	6.4	10.4	40699	60919
Taos County, New Mexico	Taos County	NM	13121	76.37	3715	21.62	345	2.01	1.6	5	26.4	24.7	7.9	18.9	15.5	55145	81285
Torrance County, New Mexico	Torrance County	NM	2344	32.19	4772	65.54	165	2.27	5	9	36.4	28.6	6.5	9	5.5	50727	63315
Union County, New Mexico	Union County	NM	383	21.41	1388	77.59	18	1.01	3.2	9.3	42.9	23.1	5.9	9.7	5.8	41714	53388
Valencia County, New Mexico	Valencia County	NM	14263	44.19	17364	53.8	650	2.01	5.4	9.8	30.8	23.7	9.2	11.3	9.8	56246	74341
Albany County, New York	Albany County	NY	99474	64.77	51081	33.26	3031	1.97	2.9	4.5	21.7	15.1	11.4	22.5	21.9	78829	103137
Allegany County, New York	Allegany County	NY	6048	29.19	14135	68.23	533	2.57	3.5	5.1	34	18.4	14.4	12.8	11.7	58725	75036
Bronx County, New York	Bronx County	NY	355374	83.44	67740	15.91	2769	0.65	12.6	12.9	28.2	17	8	13.5	7.7	47036	69157
Broome County, New York	Broome County	NY	47010	50.66	43800	47.2	1984	2.14	3	6.5	30	17.6	13.1	15.8	14	58317	81198
Cattaraugus County, New York	Cattaraugus County	NY	11879	34.17	22155	63.74	726	2.09	4.3	6.5	40.2	16.8	12.1	10.9	9.3	56889	72245
Cayuga County, New York	Cayuga County	NY	16149	44.34	19512	53.57	760	2.09	3.4	8.1	32.2	18.5	14.8	13.2	9.7	63227	85431
Chautauqua County, New York	Chautauqua County	NY	23087	39	34853	58.88	1255	2.12	3.7	6.6	33.7	17.6	14.2	13.5	10.8	54625	71588
Chemung County, New York	Chemung County	NY	16636	42.21	21922	55.63	852	2.16	2.6	7.2	34	18.4	13.2	13.5	11.1	61358	81684
Chenango County, New York	Chenango County	NY	8290	37.2	13482	60.51	510	2.29	3	8.5	40.6	17.9	11.8	9.8	8.5	61741	77091
Clinton County, New York	Clinton County	NY	18364	51.82	16514	46.6	559	1.58	3.4	8.7	32.9	16.2	11.6	15.4	11.8	67097	84635
Columbia County, New York	Columbia County	NY	20386	57.39	14464	40.72	672	1.89	2.7	5.2	29.3	13.8	12.6	19	17.4	81741	114994
Cortland County, New York	Cortland County	NY	10369	47.83	10789	49.77	520	2.4	3.4	5.9	30.7	19.6	12.5	15	12.9	65029	79172
Delaware County, New York	Delaware County	NY	9143	39.8	13387	58.28	441	1.92	2.6	7	38.1	15.5	11.8	13.3	11.7	58338	76400
Dutchess County, New York	Dutchess County	NY	81443	54.03	66872	44.36	2430	1.61	2.9	5.5	25.7	16.8	10.1	20.6	18.4	94578	125512
Erie County, New York	Erie County	NY	267174	56.48	197527	41.76	8320	1.76	3	4.8	26.1	17.8	11.9	20.2	16.2	68014	91145
Essex County, New York	Essex County	NY	9947	51.62	8976	46.58	348	1.81	2.2	6.2	32.8	15.6	12.2	17.6	13.6	68090	90052
Franklin County, New York	Franklin County	NY	9253	48.02	9668	50.18	347	1.8	4.1	8.9	35	16.7	13.1	12.3	9.9	60270	76986
Fulton County, New York	Fulton County	NY	7931	33.44	15378	64.84	409	1.72	3.6	8.9	36.2	16.8	15.2	11.5	7.8	60557	78036
Genesee County, New York	Genesee County	NY	9625	32.94	18876	64.61	716	2.45	2.7	4.8	37.1	17.4	14.9	13.5	9.7	68178	83313
Greene County, New York	Greene County	NY	10346	41.16	14271	56.77	520	2.07	4	7.5	34.9	15	11	16.2	11.4	70294	93719
Hamilton County, New York	Hamilton County	NY	1178	34.05	2225	64.31	57	1.65	2.6	11.6	29.8	16	16.7	13.3	10	66891	86309
Herkimer County, New York	Herkimer County	NY	9937	33.89	18870	64.36	512	1.75	2.9	5.7	34.3	18.5	16.2	13.3	9.1	68104	82090
Jefferson County, New York	Jefferson County	NY	17307	39.46	25629	58.44	919	2.1	2.7	5.7	32.2	21.5	12.7	15	10.2	62782	80432
Kings County, New York	Kings County	NY	703310	76.97	202772	22.19	7608	0.83	8.4	7.8	24.8	12.4	6.2	24.1	16.3	74692	114302
Lewis County, New York	Lewis County	NY	3824	29.54	8894	68.71	226	1.75	2.6	6.2	43.4	15	13.6	10.8	8.5	64401	77217
Livingston County, New York	Livingston County	NY	12477	39.73	18182	57.9	742	2.36	2.5	5.2	31.3	17.8	13.6	15.4	14	70443	89669
Madison County, New York	Madison County	NY	14807	43.5	18408	54.08	823	2.42	2	5	34.4	16.7	15.1	14.3	12.5	68869	91798
Monroe County, New York	Monroe County	NY	225746	59.43	145661	38.35	8457	2.23	3.2	5.4	22.9	16	12	22.2	18.3	71450	96131
Montgomery County, New York	Montgomery County	NY	7977	37.74	12745	60.31	412	1.95	4.1	7.1	35.7	19.1	14.2	11.1	8.7	58033	74504
Nassau County, New York	Nassau County	NY	396504	54.24	326716	44.7	7763	1.06	4.5	3.7	21.4	14.4	7.7	26.3	22	137709	180825
New York County, New York	New York County	NY	603040	86.74	85185	12.25	7038	1.01	6.2	5.4	12.3	9.9	3.6	32.4	30.4	99880	184058
Niagara County, New York	Niagara County	NY	46029	44.21	56068	53.85	2026	1.95	2.4	5.9	31.8	18.6	14.2	15.9	11.1	65882	84468
Oneida County, New York	Oneida County	NY	41567	41.26	57180	56.76	1999	1.98	4.7	6.4	30.4	18.3	12.9	15.5	11.8	66402	86787
Onondaga County, New York	Onondaga County	NY	138894	59.17	90619	38.6	5222	2.22	2.8	5.8	25.1	17	12.4	20.2	16.7	71479	94515
Ontario County, New York	Ontario County	NY	29025	48.64	29039	48.66	1610	2.7	2.6	4	25.5	17.1	13.6	19.9	17.4	76603	101686
Orange County, New York	Orange County	NY	84684	49.18	84996	49.36	2516	1.46	3.8	6.5	28.5	19.1	10.5	18.2	13.4	91806	116575
Orleans County, New York	Orleans County	NY	5587	30.78	12126	66.8	441	2.43	4.1	9.7	38.8	18.1	11.4	11.7	6.1	61069	80669
Oswego County, New York	Oswego County	NY	21143	38.8	32138	58.98	1210	2.22	2.6	7.6	37	18.2	13.1	12.7	8.7	65054	84934
Otsego County, New York	Otsego County	NY	12975	46.32	14382	51.35	653	2.33	2	5.4	31.3	16.3	11.4	18	15.7	65778	86624
Putnam County, New York	Putnam County	NY	24953	45.38	29283	53.25	753	1.37	3	3.7	25.1	17	8.3	24.2	18.6	120970	145465
Queens County, New York	Queens County	NY	569038	72.19	212665	26.98	6559	0.83	10.2	7	26	14.2	7.8	21.4	13.4	82431	109287
Rensselaer County, New York	Rensselaer County	NY	40969	51.67	36500	46.04	1817	2.29	2.7	4.9	26.7	16.7	13.7	20.6	14.7	83734	101066
Richmond County, New York	Richmond County	NY	90997	42.07	123320	57.02	1961	0.91	5.2	6.1	29.7	16.3	7.4	21.1	14.2	96185	122431
Rockland County, New York	Rockland County	NY	75802	50.41	73186	48.67	1381	0.92	5.2	6.2	22.1	16.5	7.6	23.5	19	106173	142392
Saratoga County, New York	Saratoga County	NY	68471	51.62	61305	46.21	2879	2.17	1.9	4.1	24.3	15.2	11.1	24.1	19.3	97038	122874
Schenectady County, New York	Schenectady County	NY	42465	56.72	30741	41.06	1656	2.21	3.1	5.2	26.7	18	12.7	18.9	15.3	75056	95776
Schoharie County, New York	Schoharie County	NY	5345	34.08	9903	63.14	437	2.79	2.5	6.4	34.5	19.3	12.4	13.5	11.4	71479	88043
Schuyler County, New York	Schuyler County	NY	3903	40.07	5621	57.71	216	2.22	2.5	5.6	35.5	19.8	12.1	12.6	11.9	61316	81139
Seneca County, New York	Seneca County	NY	6914	44.3	8329	53.36	365	2.34	5.3	10.5	32.5	15.8	13.7	13.5	8.6	64050	83450
St. Lawrence County, New York	St. Lawrence County	NY	19361	43.22	24608	54.93	831	1.85	4.5	6.7	35.5	17.1	12.7	12	11.5	58339	75136
Steuben County, New York	Steuben County	NY	15790	34.19	29474	63.83	915	1.98	3	5.5	34.9	16.6	14.1	12.9	13	62506	82673
Suffolk County, New York	Suffolk County	NY	381021	49.38	381253	49.41	9267	1.2	5	4.5	25.4	16.5	9.6	21.1	17.9	122498	156189
Sullivan County, New York	Sullivan County	NY	15489	44.71	18665	53.87	493	1.42	5.5	7.9	31	17.6	10.2	16.2	11.5	67841	95336
Tioga County, New York	Tioga County	NY	9634	38.48	14791	59.08	611	2.44	2.1	5.8	35.7	16.1	13.9	15.6	10.7	70427	89281
Tompkins County, New York	Tompkins County	NY	33619	73.51	11096	24.26	1020	2.23	1.7	2.6	17	12.6	8.6	24.6	32.9	69995	98898
Ulster County, New York	Ulster County	NY	57970	59.51	37590	38.59	1860	1.91	2.5	6	28.3	17.6	10	19.5	16.1	77197	106932
Warren County, New York	Warren County	NY	17642	48.8	17699	48.96	808	2.24	2.4	5.9	28.4	17.3	12.1	17.8	16	74531	97659
Washington County, New York	Washington County	NY	11565	41.16	15941	56.73	595	2.12	4	6.9	38.9	18	11.1	12.5	8.6	68703	84096
Wayne County, New York	Wayne County	NY	17456	39.03	26204	58.59	1067	2.39	3.7	5.8	31.6	20.4	13.5	15.4	9.6	71007	87951
Westchester County, New York	Westchester County	NY	312371	67.57	144713	31.31	5181	1.12	5.5	5.2	17.9	13	6.7	25.6	26.2	114651	180479
Wyoming County, New York	Wyoming County	NY	5073	26.15	13898	71.64	428	2.21	3.3	9.2	37.9	17.4	14	11	7.2	65066	81765
Yates County, New York	Yates County	NY	4219	39.43	6208	58.01	274	2.56	11.5	4.2	35.6	14.8	9.9	14.2	9.8	63974	84877
Alamance County, North Carolina	Alamance County	NC	38825	45.1	46056	53.5	1210	1.41	4.7	7	27.9	22.1	11	19	8.4	60866	79258
Alexander County, North Carolina	Alexander County	NC	4145	20.48	15888	78.51	203	1	4.4	9.6	40.5	18.9	11.2	11	4.3	62764	79024
Alleghany County, North Carolina	Alleghany County	NC	1486	24.46	4527	74.51	63	1.04	4.5	13.2	30.1	22.5	9	13.4	7.3	42115	70181
Anson County, North Carolina	Anson County	NC	5789	51.72	5321	47.53	84	0.75	4.6	12.9	43.9	17.9	9.3	8.7	2.6	42000	56821
Ashe County, North Carolina	Ashe County	NC	4164	26.33	11451	72.41	199	1.26	3.3	9.7	30.1	23	13.1	12.6	8.2	49176	64973
Avery County, North Carolina	Avery County	NC	2191	23.17	7172	75.83	95	1	4.8	8.2	31	24.6	9	13.6	8.7	53513	79769
Beaufort County, North Carolina	Beaufort County	NC	9633	36.61	16437	62.46	245	0.93	5.3	7.9	31.5	23.9	11.9	12.2	7.2	56081	75433
Bertie County, North Carolina	Bertie County	NC	5939	60.51	3817	38.89	59	0.6	4.6	14.8	36.3	20.1	7.6	10.9	5.7	41652	67133
Bladen County, North Carolina	Bladen County	NC	7326	42.78	9676	56.5	123	0.72	3.5	8.4	33.9	23.8	10.3	14	6.2	40476	62016
Brunswick County, North Carolina	Brunswick County	NC	33310	36.94	55850	61.94	1015	1.13	1.8	4.7	26.8	22.4	11.9	20.4	12	71193	93733
Buncombe County, North Carolina	Buncombe County	NC	96515	59.74	62412	38.63	2642	1.64	3	4.9	23.2	17.2	8.8	25.6	17.5	66531	94799
Burke County, North Carolina	Burke County	NC	13118	29.41	31019	69.55	465	1.04	6.1	9.2	32.4	20.6	12.1	12.4	7.4	53732	73190
Cabarrus County, North Carolina	Cabarrus County	NC	52162	44.5	63237	53.94	1828	1.56	2.8	5.3	26	19.9	9.7	24	12.5	83828	107449
Caldwell County, North Carolina	Caldwell County	NC	10245	23.92	32119	74.99	465	1.09	6	12.1	31.8	22.3	10.5	12.3	4.9	52362	69926
Camden County, North Carolina	Camden County	NC	1537	25.82	4312	72.43	104	1.75	3.4	4.3	30.3	24.6	13	16.4	8	79120	88224
Carteret County, North Carolina	Carteret County	NC	12093	28.32	30028	70.33	574	1.34	1.9	6	23.6	25.1	11.6	19.8	12	66965	87752
Caswell County, North Carolina	Caswell County	NC	4860	40.33	7089	58.82	102	0.85	4.7	11.6	37.1	19.9	11.3	9.9	5.6	56999	69538
Catawba County, North Carolina	Catawba County	NC	25689	30.79	56588	67.83	1148	1.38	4.2	8.4	30	20.2	12.4	17.3	7.5	62070	84380
Chatham County, North Carolina	Chatham County	NC	26787	55.12	21186	43.59	626	1.29	4.7	5.9	18.2	15.8	8.9	24.7	21.8	84222	126028
Cherokee County, North Carolina	Cherokee County	NC	3583	21.82	12628	76.89	212	1.29	2.7	6.1	33	21.9	12.6	15.7	8	49254	63371
Chowan County, North Carolina	Chowan County	NC	3247	41.71	4471	57.44	66	0.85	4.2	9.2	33.6	19.9	8.9	15.1	9.1	51188	70291
Clay County, North Carolina	Clay County	NC	1699	24.65	5112	74.16	82	1.19	3.5	8.2	24.3	22.1	13.1	17.6	11.2	57065	77381
Cleveland County, North Carolina	Cleveland County	NC	16955	33.05	33798	65.87	555	1.08	4.3	9	34.7	19.5	13.2	12.3	7.1	50723	70141
Columbus County, North Carolina	Columbus County	NC	9446	35.72	16832	63.65	168	0.64	4.9	9.4	37.5	22.8	10.8	9.7	4.8	43206	60288
Craven County, North Carolina	Craven County	NC	21148	39.85	31032	58.48	885	1.67	3	6.1	26.8	26.7	11.7	15.1	10.5	61676	80975
Cumberland County, North Carolina	Cumberland County	NC	84469	57.4	60032	40.8	2649	1.8	2.2	5.5	26.5	27.7	11.2	17.4	9.5	55551	72768
Currituck County, North Carolina	Currituck County	NC	4195	25.98	11657	72.19	295	1.83	2.1	5.1	32.6	23.7	9.5	18.6	8.5	82793	101733
Dare County, North Carolina	Dare County	NC	9936	41	13938	57.52	358	1.48	1.3	3.8	21.3	22	9.1	28	14.6	79742	104954
Davidson County, North Carolina	Davidson County	NC	22636	25.57	64658	73.05	1220	1.38	4	9.4	32.7	22.8	10.6	14.4	6	58473	76539
Davie County, North Carolina	Davie County	NC	6713	26.52	18228	72.02	370	1.46	3	7.1	30.4	23.6	9.6	17.4	8.8	69105	88895
Duplin County, North Carolina	Duplin County	NC	8767	38.6	13793	60.72	155	0.68	8.5	11.2	31.5	22.4	10.5	11.4	4.5	49376	63219
Durham County, North Carolina	Durham County	NC	144688	80.42	32459	18.04	2767	1.54	4.9	4.4	17.2	14.3	7.3	27.1	24.8	74927	103151
Edgecombe County, North Carolina	Edgecombe County	NC	16089	63.15	9206	36.13	182	0.71	4.9	9.5	38	21.7	8.1	13	4.8	46370	63926
Forsyth County, North Carolina	Forsyth County	NC	113033	56.16	85064	42.26	3173	1.58	4.2	6.5	24.9	20.2	8.8	21.4	13.9	61229	86880
Franklin County, North Carolina	Franklin County	NC	15879	42.51	20901	55.96	571	1.53	5.6	7.5	29.4	23	10.8	16.2	7.5	70493	85754
Gaston County, North Carolina	Gaston County	NC	40959	35.46	73033	63.23	1506	1.3	3.8	8.6	29.4	22	11.2	17.6	7.4	62628	83359
Gates County, North Carolina	Gates County	NC	2546	42.64	3367	56.39	58	0.97	3.2	6.3	43.4	28.3	9.8	5.3	3.6	55750	67399
Graham County, North Carolina	Graham County	NC	905	19.4	3710	79.53	50	1.07	4.3	11.7	35.6	22.9	11.8	10.1	3.7	46010	62085
Granville County, North Carolina	Granville County	NC	14565	46.09	16647	52.68	386	1.22	5.9	8.2	30.7	21.4	10.1	16.2	7.4	68079	85612
Greene County, North Carolina	Greene County	NC	3832	43.78	4874	55.68	47	0.54	10.4	13.6	33.7	19.1	11.8	8.1	3.4	50320	59360
Guilford County, North Carolina	Guilford County	NC	173086	60.84	107294	37.72	4106	1.44	3.9	6	22.7	20.4	9.1	23.9	14	62880	90034
Halifax County, North Carolina	Halifax County	NC	15545	60.35	10080	39.13	134	0.52	6.1	12.8	36.7	19.8	8.9	10	5.7	41629	59133
Harnett County, North Carolina	Harnett County	NC	22093	37.9	35177	60.35	1023	1.75	4.5	7.3	29	23.6	12.8	15.1	7.6	64992	79400
Haywood County, North Carolina	Haywood County	NC	13144	35.97	22834	62.49	564	1.54	3.2	6.4	27	22.3	12.4	17.6	11.2	56596	77027
Henderson County, North Carolina	Henderson County	NC	27211	39.8	40032	58.55	1128	1.65	3.4	5	25.2	21.7	10.7	21.2	12.7	65508	86842
Hertford County, North Carolina	Hertford County	NC	7097	66.74	3479	32.72	58	0.55	4.7	11.4	35	22.5	10.3	9.4	6.6	46196	63791
Hoke County, North Carolina	Hoke County	NC	11804	54.55	9453	43.69	382	1.77	4.5	6.6	27.9	26.3	14.5	13.7	6.5	57141	77441
Hyde County, North Carolina	Hyde County	NC	1046	41.97	1418	56.9	28	1.12	4.7	14.3	37.9	17.3	11.6	11.5	2.8	43724	49100
Iredell County, North Carolina	Iredell County	NC	33888	33.1	67010	65.46	1473	1.44	3.1	6	26.4	21.4	10.3	22.5	10.2	73103	102803
Jackson County, North Carolina	Jackson County	NC	9591	44.76	11356	53	481	2.24	3.9	6.8	28.4	19.7	11.3	17.3	12.5	51482	74303
Johnston County, North Carolina	Johnston County	NC	41257	37.05	68353	61.38	1747	1.57	4.5	6	27.7	22.1	13.5	19.1	7.1	75288	93586
Jones County, North Carolina	Jones County	NC	2197	39.76	3280	59.37	48	0.87	4.4	9.8	36.8	23.2	10	11.8	3.9	53053	66122
Lee County, North Carolina	Lee County	NC	12143	41.86	16469	56.77	396	1.37	6.2	8.6	26.9	24	13.2	14.7	6.3	60941	77283
Lenoir County, North Carolina	Lenoir County	NC	13605	47.89	14590	51.36	214	0.75	5.4	12.6	33.3	20.8	13	10.4	4.6	43063	60635
Lincoln County, North Carolina	Lincoln County	NC	13274	26.43	36341	72.37	602	1.2	3.3	6.9	30.2	21.9	11.6	18.6	7.5	75672	100518
Macon County, North Carolina	Macon County	NC	6230	30.03	14211	68.51	302	1.46	4.1	6.4	31.9	23	10.1	16	8.4	51042	70954
Madison County, North Carolina	Madison County	NC	4901	37.48	7979	61.02	196	1.5	3.5	7.5	31	19.1	6.6	21.1	11.1	56664	79896
Martin County, North Carolina	Martin County	NC	5911	47.14	6532	52.09	97	0.77	5.8	12.2	30.4	23.7	12.4	11.2	4.3	44799	58379
McDowell County, North Carolina	McDowell County	NC	5832	25.35	16883	73.39	288	1.25	4.1	9.8	34.4	20.9	12.9	12.4	5.5	53532	70427
Mecklenburg County, North Carolina	Mecklenburg County	NC	378107	66.68	179211	31.6	9735	1.72	4.7	4.4	16.4	18.6	8.2	31	16.8	79265	117987
Mitchell County, North Carolina	Mitchell County	NC	1867	20.65	7090	78.42	84	0.93	3.7	6.5	29.8	27	11	13.8	8.3	55534	72863
Montgomery County, North Carolina	Montgomery County	NC	4327	33.68	8411	65.46	111	0.86	4.9	11.2	33.9	19.1	11.2	13.2	6.5	55523	75815
Moore County, North Carolina	Moore County	NC	20779	35.62	36764	63.02	796	1.36	2.8	4.4	20.8	20	12.2	23.6	16.3	77981	100144
Nash County, North Carolina	Nash County	NC	25947	49.64	25827	49.41	497	0.95	4.2	9.3	32.6	20.2	11.8	15.3	6.7	56770	77266
New Hanover County, North Carolina	New Hanover County	NC	66138	50.17	63331	48.04	2361	1.79	2.4	4.1	19.1	20.2	10.8	28.3	15.1	67515	97277
Northampton County, North Carolina	Northampton County	NC	6069	60.04	3989	39.46	51	0.5	5.7	10.8	34	20.5	11.2	10.8	7	45698	66018
Onslow County, North Carolina	Onslow County	NC	24266	33.59	46078	63.79	1891	2.62	2.3	5.6	29.7	26.1	10.6	17.6	8	59976	76084
Orange County, North Carolina	Orange County	NC	63594	74.82	20176	23.74	1227	1.44	3	3.6	12.7	11.9	7.2	27.6	34.1	85785	130452
Pamlico County, North Carolina	Pamlico County	NC	2713	35.55	4849	63.54	69	0.9	3.2	6.7	31.6	24.4	9.6	12.4	12	55867	78395
Pasquotank County, North Carolina	Pasquotank County	NC	9832	49.41	9770	49.1	295	1.48	3.2	7.1	28.5	25.2	9.9	17.2	8.9	61411	80520
Pender County, North Carolina	Pender County	NC	11723	34.31	21956	64.26	490	1.43	3.1	6.6	28.1	22.7	10.8	19.2	9.4	74538	93195
Perquimans County, North Carolina	Perquimans County	NC	2492	33.3	4903	65.51	89	1.19	3.8	9.8	32.3	25.7	8.8	10.9	8.7	59401	73754
Person County, North Carolina	Person County	NC	8465	38.66	13184	60.22	245	1.12	3.6	7.9	35.3	23.5	12.1	12.7	4.9	60688	77763
Pitt County, North Carolina	Pitt County	NC	47252	53.96	38982	44.51	1339	1.53	3.6	6.2	24.6	19.7	12.8	20	13.2	54915	76312
Polk County, North Carolina	Polk County	NC	4518	36.56	7689	62.22	151	1.22	2.2	5.1	26.6	21.7	11.2	21.4	11.9	60465	81177
Randolph County, North Carolina	Randolph County	NC	15618	21.3	56894	77.6	804	1.1	5.8	10.2	35.1	22	10.1	11.9	4.9	56423	72112
Richmond County, North Carolina	Richmond County	NC	8754	42.16	11830	56.98	179	0.86	5.7	11.6	31	22.4	12.1	10.7	6.6	42354	58581
Robeson County, North Carolina	Robeson County	NC	19020	40.31	27806	58.93	362	0.77	6.8	14.9	33.7	19.8	10.2	9.5	5.1	39393	57841
Rockingham County, North Carolina	Rockingham County	NC	15992	33.45	31301	65.47	516	1.08	5	11.3	35	22.7	10.5	10.6	4.9	50737	68574
Rowan County, North Carolina	Rowan County	NC	23114	31.49	49297	67.15	997	1.36	4.3	8.3	33.2	22.5	11.2	14.6	5.9	59717	78418
Rutherford County, North Carolina	Rutherford County	NC	9135	26.53	24891	72.3	403	1.17	4.5	9.6	30.9	23.7	11.5	13	6.8	50512	69897
Sampson County, North Carolina	Sampson County	NC	10966	38.32	17411	60.84	241	0.84	7	10.4	36	20.7	11	10.4	4.5	49963	67874
Scotland County, North Carolina	Scotland County	NC	7186	48.64	7473	50.58	116	0.79	3.3	14.4	35.2	22.2	10.4	9.1	5.4	41948	61126
Stanly County, North Carolina	Stanly County	NC	8129	23.95	25458	75.01	352	1.04	4.4	9.6	32.8	22	12.4	13.2	5.5	60634	80127
Stokes County, North Carolina	Stokes County	NC	5286	20.57	20142	78.37	273	1.06	4.1	8.4	38.2	22.5	10.6	10.5	5.6	57539	75020
Surry County, North Carolina	Surry County	NC	8721	23.8	27538	75.16	379	1.03	7	11	29.2	22.8	11.8	12.2	6	52743	72597
Swain County, North Carolina	Swain County	NC	2780	39.33	4161	58.87	127	1.8	4.5	10.4	32.6	21.1	10.3	12.5	8.6	52818	71082
Transylvania County, North Carolina	Transylvania County	NC	8444	41.38	11636	57.03	324	1.59	1.8	4.4	24	23.1	9.6	23.8	13.3	62056	81444
Tyrrell County, North Carolina	Tyrrell County	NC	758	41.72	1044	57.46	15	0.83	4.4	18.3	37.6	20.5	7	7.8	4.4	55341	59662
Union County, North Carolina	Union County	NC	48725	37.19	80382	61.36	1904	1.45	3.9	5.6	22.9	20.1	9	25.5	13	95533	129144
Vance County, North Carolina	Vance County	NC	12431	59.2	8391	39.96	177	0.84	5	10.3	35.2	22.8	8.8	12.2	5.6	48340	65186
Wake County, North Carolina	Wake County	NC	393336	62.25	226197	35.8	12297	1.95	2.7	3.3	14.6	15.6	8.1	33.8	21.9	96734	128312
Warren County, North Carolina	Warren County	NC	6400	62.18	3752	36.45	141	1.37	3.9	10.7	39.8	18.6	9.7	11.4	5.9	42282	68890
Washington County, North Carolina	Washington County	NC	3396	54.73	2781	44.82	28	0.45	7.3	6.9	33.6	26.8	11.3	10.7	3.4	38927	55923
Watauga County, North Carolina	Watauga County	NC	17122	53.14	14451	44.85	647	2.01	2.9	4.7	21.5	19	7.4	24.1	20.4	50034	75648
Wayne County, North Carolina	Wayne County	NC	24215	43.6	30709	55.29	613	1.1	6.1	8.2	29.7	23.6	12.4	13.9	6.1	54323	74878
Wilkes County, North Carolina	Wilkes County	NC	7511	21.18	27592	77.8	363	1.02	5.9	12.6	32.7	21.1	11.3	11.6	4.8	49119	64650
Wilson County, North Carolina	Wilson County	NC	20754	50.95	19581	48.07	400	0.98	6.8	9.8	33.5	19.5	10	13	7.4	49827	68493
Yadkin County, North Carolina	Yadkin County	NC	3763	18.89	15933	79.97	227	1.14	4.9	8.7	36.2	23.2	12.9	10.7	3.4	57486	78890
Yancey County, North Carolina	Yancey County	NC	3688	32.49	7516	66.21	148	1.3	4.1	7.3	34.5	20.7	11	14.4	8	53103	72533
Adams County, North Dakota	Adams County	ND	258	20.33	981	77.3	30	2.36	2.1	4.6	36.9	25	11	13.3	7.2	57950	79096
Barnes County, North Dakota	Barnes County	ND	1820	32.7	3568	64.12	177	3.18	2	3.1	31.2	20.3	14.8	21.6	7.1	64447	85080
Benson County, North Dakota	Benson County	ND	822	41.92	1094	55.79	45	2.29	2.6	10.2	30.2	19	17.3	14.7	5.9	63220	77560
Billings County, North Dakota	Billings County	ND	72	11.34	541	85.2	22	3.46	1.5	3.3	35.5	13	17.8	19.9	9	74000	92045
Bottineau County, North Dakota	Bottineau County	ND	821	23.65	2575	74.19	75	2.16	1.7	5.6	30.5	22.4	13.4	19.7	6.6	80113	104957
Bowman County, North Dakota	Bowman County	ND	228	13.76	1395	84.19	34	2.05	2.2	8.7	33.4	19.4	14.5	15	6.8	79709	93041
Burke County, North Dakota	Burke County	ND	137	11.86	994	86.06	24	2.08	2.2	5.9	26.5	26.7	14	20.5	4.2	94583	119789
Burleigh County, North Dakota	Burleigh County	ND	14348	28.27	34744	68.46	1661	3.27	2.2	2.9	23.2	18.6	15.9	26.4	10.9	82141	105791
Cass County, North Dakota	Cass County	ND	40311	46.84	42619	49.53	3123	3.63	1.9	2.4	18.9	20.7	13.4	29.1	13.5	73249	101026
Cavalier County, North Dakota	Cavalier County	ND	474	23.47	1499	74.21	47	2.33	3.2	3.5	25.9	28	15.8	20.4	3.1	61174	99327
Dickey County, North Dakota	Dickey County	ND	608	25.08	1742	71.86	74	3.05	3.9	4.7	26.7	19.3	18.7	20.9	5.9	60250	89244
Divide County, North Dakota	Divide County	ND	265	22.05	904	75.21	33	2.75	4.3	5.3	23	27.5	18.6	15	6.3	95938	108282
Dunn County, North Dakota	Dunn County	ND	342	14.63	1951	83.45	45	1.92	5.3	4.1	34.3	21.8	15.5	14.7	4.2	91758	123039
Eddy County, North Dakota	Eddy County	ND	383	30.37	854	67.72	24	1.9	3.6	4.4	29.9	22.3	12.9	19.9	7	50375	73032
Emmons County, North Dakota	Emmons County	ND	237	11.8	1738	86.51	34	1.69	6.4	4.2	35	23.2	13.2	13.1	5	63750	82133
Foster County, North Dakota	Foster County	ND	373	20.98	1362	76.6	43	2.42	2.2	3.4	29.7	23.5	18.7	18.8	3.6	78426	89998
Golden Valley County, North Dakota	Golden Valley County	ND	137	13.35	871	84.89	18	1.75	1.9	3.4	22.5	31.6	17	16.2	7.4	84750	92758
Grand Forks County, North Dakota	Grand Forks County	ND	12880	41.59	16987	54.85	1103	3.56	1.5	2.9	22.2	22.7	14	24.2	12.5	64698	86429
Grant County, North Dakota	Grant County	ND	207	14.99	1145	82.91	29	2.1	5	3.2	32.7	23.8	14.3	17.8	3.3	57069	80418
Griggs County, North Dakota	Griggs County	ND	308	24.64	907	72.56	35	2.8	5.4	3.4	32.2	21.9	10.4	18.9	7.8	66688	98397
Hettinger County, North Dakota	Hettinger County	ND	196	14.94	1091	83.16	25	1.91	6.1	5.9	33.4	26.6	10.3	12.8	4.9	66797	84749
Kidder County, North Dakota	Kidder County	ND	221	15.14	1215	83.22	24	1.64	3.5	6.6	32.9	22.1	16.2	15.4	3.2	57240	69876
LaMoure County, North Dakota	LaMoure County	ND	527	23.75	1645	74.13	47	2.12	5.8	4.1	29.1	25.1	10.6	20.4	4.9	70227	87690
Logan County, North Dakota	Logan County	ND	128	11.9	930	86.43	18	1.67	6	2.7	27.9	20.4	18.7	19.6	4.8	59750	75824
McHenry County, North Dakota	McHenry County	ND	564	18.78	2364	78.72	75	2.5	3.9	5.5	33.1	22.7	15.3	15.7	3.7	78071	90514
McIntosh County, North Dakota	McIntosh County	ND	261	17.94	1153	79.24	41	2.82	8.5	4	35	16.4	19.5	12.4	4.3	64375	78683
McKenzie County, North Dakota	McKenzie County	ND	814	15.02	4482	82.71	123	2.27	1.6	5.7	28	24.6	15.4	19.3	5.3	83813	119287
McLean County, North Dakota	McLean County	ND	1230	22.22	4198	75.83	108	1.95	3.1	3.7	32.2	21.4	17.4	18.2	4	80556	93556
Mercer County, North Dakota	Mercer County	ND	704	15.06	3856	82.48	115	2.46	4.4	6	25.1	25.2	19.3	15.1	4.8	82155	94760
Morton County, North Dakota	Morton County	ND	3872	23.3	12243	73.67	504	3.03	3.2	3.3	28.7	24.3	13.9	21	5.7	79555	104894
Mountrail County, North Dakota	Mountrail County	ND	1256	30.16	2824	67.8	85	2.04	3.7	7.4	31.8	22.8	11.7	15.1	7.6	81886	103354
Nelson County, North Dakota	Nelson County	ND	586	32.98	1141	64.21	50	2.81	2.4	3.5	27.6	22.9	14.9	21.3	7.3	62219	80905
Oliver County, North Dakota	Oliver County	ND	129	12.1	918	86.12	19	1.78	2	3.3	30.9	30.9	11.2	16	5.6	69722	93800
Pembina County, North Dakota	Pembina County	ND	786	23.6	2460	73.85	85	2.55	3.5	4.3	32.7	23.5	14	16.9	5	64243	87245
Pierce County, North Dakota	Pierce County	ND	497	23.36	1585	74.48	46	2.16	2.3	4.6	29.6	20.8	13.4	20.1	9.3	59583	79592
Ramsey County, North Dakota	Ramsey County	ND	1639	30.51	3577	66.59	156	2.9	2.1	5.1	26.8	22.4	18	18.9	6.5	61490	80272
Ransom County, North Dakota	Ransom County	ND	945	38.51	1418	57.78	91	3.71	3.8	5.3	35.5	20.5	13.6	15.8	5.3	71462	85458
Renville County, North Dakota	Renville County	ND	220	16.68	1065	80.74	34	2.58	5.1	3.8	31.4	25.7	11.3	17.8	5	77067	92560
Richland County, North Dakota	Richland County	ND	2510	32.13	5072	64.93	230	2.94	2.2	4.2	24.6	23.8	21.2	19	5	67089	91166
Rolette County, North Dakota	Rolette County	ND	2482	65.25	1257	33.04	65	1.71	3.7	10.9	27.8	24.6	16.8	11	5.2	53806	69053
Sargent County, North Dakota	Sargent County	ND	738	35.65	1266	61.16	66	3.19	1.7	4.1	35.1	23.3	17.4	14.1	4.4	75648	93585
Sheridan County, North Dakota	Sheridan County	ND	104	12.81	688	84.73	20	2.46	2.9	6.6	39.9	24.1	12	13.6	0.8	68684	83864
Sioux County, North Dakota	Sioux County	ND	804	67.79	258	21.75	124	10.46	3.4	10.7	36.2	24.4	13.8	8.7	2.7	41201	59293
Slope County, North Dakota	Slope County	ND	44	10.3	380	88.99	3	0.7	1.7	6.7	34.9	17.2	16.7	19.2	3.6	70625	96181
Stark County, North Dakota	Stark County	ND	2499	16.6	12110	80.47	441	2.93	3	5.1	31.5	22.6	12.6	18.9	6.4	78734	98095
Steele County, North Dakota	Steele County	ND	392	36.03	652	59.93	44	4.04	1	2.8	24.2	31.2	10.8	26.6	3.4	85750	94649
Stutsman County, North Dakota	Stutsman County	ND	2676	26.87	6994	70.23	289	2.9	3.3	5	36.5	20.9	9.9	18	6.4	59167	85575
Towner County, North Dakota	Towner County	ND	317	27	830	70.7	27	2.3	6.5	8.1	28.2	23.1	17.1	13.8	3.3	61250	83939
Traill County, North Dakota	Traill County	ND	1493	36.1	2522	60.98	121	2.93	3.1	3.1	25.9	21.5	15.8	22.1	8.6	81157	99090
Walsh County, North Dakota	Walsh County	ND	1333	27.87	3324	69.5	126	2.63	6.9	6.2	35.5	19.4	14.1	12.5	5.4	68082	87075
Ward County, North Dakota	Ward County	ND	7293	25.82	19974	70.71	979	3.47	2.9	3.1	28.8	23.6	12.3	20.3	9.1	78143	97908
Wells County, North Dakota	Wells County	ND	442	18.62	1893	79.74	39	1.64	4.7	4.1	37.7	21.6	10.3	18.4	3.2	59732	89656
Williams County, North Dakota	Williams County	ND	2169	15.13	11739	81.9	426	2.97	2.3	6.9	31.4	20	14.9	18.1	6.4	86139	113117
Adams County, Ohio	Adams County	OH	2156	17.75	9870	81.27	119	0.98	4	11	44.5	15.6	9.6	8.1	7.2	46234	65728
Allen County, Ohio	Allen County	OH	14149	29.47	33116	68.98	741	1.54	1.9	6.1	40.2	21.3	11.3	11.9	7.2	58976	76592
Ashland County, Ohio	Ashland County	OH	6541	24.77	19407	73.5	457	1.73	2.7	7.4	42.8	16.8	8.5	14.3	7.6	62254	76439
Ashtabula County, Ohio	Ashtabula County	OH	16497	37.37	26890	60.91	760	1.72	4.2	9.2	42.1	20.1	8.7	10.3	5.3	53663	71398
Athens County, Ohio	Athens County	OH	14772	56.69	10862	41.68	425	1.63	1.7	6.6	31.5	17.5	8.4	15.6	18.7	48750	69103
Auglaize County, Ohio	Auglaize County	OH	4651	18.04	20798	80.68	328	1.27	1.5	5.1	42.2	18.4	12.1	12.6	8.1	75231	90018
Belmont County, Ohio	Belmont County	OH	9138	27.62	23560	71.2	390	1.18	1.9	6.6	46.1	16.4	11.5	11.2	6.3	56943	74121
Brown County, Ohio	Brown County	OH	4380	20.76	16480	78.12	236	1.12	2.8	9.7	45.2	18.7	9	9.5	5.1	66677	80682
Butler County, Ohio	Butler County	OH	69613	37.28	114392	61.26	2732	1.46	2.9	5.9	32.5	19	7.9	20.5	11.4	77062	98820
Carroll County, Ohio	Carroll County	OH	3251	22.88	10745	75.61	216	1.52	4.8	6.4	47.1	17.4	10.8	8.4	5	59872	78349
Champaign County, Ohio	Champaign County	OH	5062	25.35	14589	73.05	321	1.61	2	6.6	41.9	22.2	9.1	12.3	5.9	70486	82162
Clark County, Ohio	Clark County	OH	24076	37.49	39032	60.79	1104	1.72	2.4	8.6	37.3	22.6	10.4	11.6	7	58954	74459
Clermont County, Ohio	Clermont County	OH	34092	30.86	74570	67.5	1818	1.65	2.2	6.3	32.5	19.5	9.2	19.1	11.1	79573	102783
Clinton County, Ohio	Clinton County	OH	4697	22.88	15488	75.45	342	1.67	2.3	6.6	39.4	20.6	10.6	12.8	7.8	64210	81302
Columbiana County, Ohio	Columbiana County	OH	13359	26.79	35726	71.65	775	1.55	2.7	7.4	45	17.9	10.5	11	5.5	55473	72493
Coshocton County, Ohio	Coshocton County	OH	4125	24.64	12325	73.63	289	1.73	7.4	8.1	42.9	15.7	9.4	10.7	5.8	52048	67542
Crawford County, Ohio	Crawford County	OH	4916	23.76	15436	74.62	334	1.61	2.8	7.3	46.1	18.7	10.3	9.4	5.4	52486	68161
Cuyahoga County, Ohio	Cuyahoga County	OH	416176	66.52	202699	32.4	6795	1.09	2.7	6.4	27.1	20.4	8.1	20.3	14.9	60074	88627
Darke County, Ohio	Darke County	OH	4731	17.44	22004	81.09	399	1.47	2	7	45.5	20.9	8.4	10.9	5.4	60237	79351
Defiance County, Ohio	Defiance County	OH	5981	30.86	13038	67.27	362	1.87	2.4	5.6	40.4	21.9	10.8	12.1	6.8	69302	83014
Delaware County, Ohio	Delaware County	OH	57735	45.8	66356	52.63	1979	1.57	0.8	2	16.5	16.5	6.7	34.8	22.6	123995	154569
Erie County, Ohio	Erie County	OH	17493	43.37	22160	54.94	682	1.69	1.8	6.4	34	21.9	9.5	17.4	9.1	65171	87691
Fairfield County, Ohio	Fairfield County	OH	31224	37.48	50797	60.97	1290	1.55	1.6	4.6	32.8	21.2	8.8	20.4	10.7	82969	102535
Fayette County, Ohio	Fayette County	OH	2975	23.59	9473	75.11	164	1.3	3.3	11.7	47	16.4	7.9	8.6	5.1	56773	73872
Franklin County, Ohio	Franklin County	OH	409144	64.88	211237	33.5	10196	1.62	3.1	5.4	24	18.8	7	25.6	16	71070	98356
Fulton County, Ohio	Fulton County	OH	6664	29.27	15731	69.09	375	1.65	1.3	4.9	43.1	20.7	11.9	11.6	6.6	71453	88950
Gallia County, Ohio	Gallia County	OH	2990	21.67	10645	77.14	164	1.19	4.7	9	40.7	17	10.5	10.3	7.9	55533	73571
Geauga County, Ohio	Geauga County	OH	21201	37.84	34143	60.95	677	1.21	6.1	2.9	25.6	18.8	7.3	24.9	14.4	97162	131432
Greene County, Ohio	Greene County	OH	34798	39.26	52072	58.74	1773	2	1.6	4.2	22.6	21	9.5	21.1	20.1	81243	105348
Guernsey County, Ohio	Guernsey County	OH	4577	25.11	13407	73.54	246	1.35	4.4	9.3	42.6	18.6	10.1	9.7	5.2	53901	69452
Hamilton County, Ohio	Hamilton County	OH	246266	57.15	177886	41.28	6777	1.57	2.3	5.5	25.6	18	8.2	24.2	16.1	68249	99653
Hancock County, Ohio	Hancock County	OH	11757	30.32	26310	67.86	704	1.82	1.2	5	36.2	20.1	9	18	10.5	67006	88362
Hardin County, Ohio	Hardin County	OH	3062	23.11	9949	75.1	236	1.78	3.4	5.1	47.3	17.9	7.9	11.5	6.9	55876	70948
Harrison County, Ohio	Harrison County	OH	1768	23.1	5792	75.66	95	1.24	4	7.8	48.6	15.6	12.3	7.5	4.2	54056	71972
Henry County, Ohio	Henry County	OH	4062	27.51	10479	70.98	223	1.51	2.4	4.6	42.9	19.7	12.3	12.4	5.7	71616	89777
Highland County, Ohio	Highland County	OH	3799	19.31	15678	79.68	199	1.01	4.8	10.2	41.7	16.8	11.3	9.9	5.3	60522	71753
Hocking County, Ohio	Hocking County	OH	3880	28.07	9737	70.44	207	1.5	4.4	7.7	42.3	19.7	11.2	10.6	4.1	59007	72764
Holmes County, Ohio	Holmes County	OH	1994	15.4	10796	83.39	157	1.21	35.6	6.8	32.3	10.2	4	7.4	3.7	72987	95098
Huron County, Ohio	Huron County	OH	7759	28.54	18956	69.72	475	1.75	3.2	6.6	45.5	19.5	9.7	10.4	5.1	64144	76402
Jackson County, Ohio	Jackson County	OH	3311	22.38	11309	76.44	174	1.18	5.1	7.9	45.9	15.3	9.9	10.8	5.1	56549	73765
Jefferson County, Ohio	Jefferson County	OH	10018	30.03	22828	68.43	516	1.55	2.1	5.3	43.4	17.6	12.1	12.4	7.1	53124	70587
Knox County, Ohio	Knox County	OH	8589	27.36	22340	71.15	469	1.49	3.8	4.7	38.6	20.6	8.6	15.2	8.5	71246	85072
Lake County, Ohio	Lake County	OH	55514	42.54	73278	56.15	1717	1.32	1.7	4.7	31.7	22.4	9.6	19.7	10.2	76835	95217
Lawrence County, Ohio	Lawrence County	OH	7489	26.63	20306	72.19	332	1.18	3.2	7.4	43.3	19	9	11.1	7	51846	72009
Licking County, Ohio	Licking County	OH	33055	35.09	59514	63.17	1641	1.74	1.6	5.2	33.7	20.2	9.7	19.9	9.7	78505	102910
Logan County, Ohio	Logan County	OH	5055	21.63	17964	76.87	349	1.49	1.2	5.8	43.4	19.7	11.1	12.3	6.5	69125	89225
Lorain County, Ohio	Lorain County	OH	75667	48.06	79520	50.51	2250	1.43	2.1	6.7	31.4	22.3	10.3	17.1	10.1	67272	90679
Lucas County, Ohio	Lucas County	OH	115411	57.53	81763	40.75	3449	1.72	2.5	6.7	29.9	22.6	10.4	17.5	10.4	57265	80697
Madison County, Ohio	Madison County	OH	5698	28.7	13835	69.68	322	1.62	2.3	8.9	39.3	21.2	8	14	6.4	77062	91671
Mahoning County, Ohio	Mahoning County	OH	57641	48.45	59903	50.35	1422	1.2	2.5	6.1	36.4	20.5	8.4	16.7	9.5	54279	74565
Marion County, Ohio	Marion County	OH	8269	29.73	19023	68.38	526	1.89	2.7	7.8	43.9	23.4	8.8	9.1	4.4	55106	74694
Medina County, Ohio	Medina County	OH	39800	37.61	64598	61.04	1427	1.35	1.4	3.5	29.6	20.2	9.4	23.5	12.4	89968	112612
Meigs County, Ohio	Meigs County	OH	2492	22.76	8316	75.94	143	1.31	4.1	10.1	45.6	16.7	12	8	3.5	46255	63186
Mercer County, Ohio	Mercer County	OH	4030	16.96	19452	81.87	279	1.17	1.1	5.8	44.1	15.9	12.7	13.7	6.7	73278	87555
Miami County, Ohio	Miami County	OH	15663	27.02	41371	71.36	938	1.62	1.5	5.7	37.1	21	10	15.3	9.4	71440	91306
Monroe County, Ohio	Monroe County	OH	1605	22.45	5463	76.43	80	1.12	3.1	8.1	49.6	16.4	12.2	7.1	3.6	55381	78699
Montgomery County, Ohio	Montgomery County	OH	135064	50.3	129034	48.06	4407	1.64	2.3	6	27.8	23.7	10.2	17.9	12.1	61942	82621
Morgan County, Ohio	Morgan County	OH	1725	25.19	5041	73.62	81	1.18	3	10.5	44.7	18.9	11.8	7.4	3.8	51056	61122
Morrow County, Ohio	Morrow County	OH	4048	21.93	14077	76.27	332	1.8	4.1	6.2	45.3	19.6	7.9	11.8	5.1	70412	84706
Muskingum County, Ohio	Muskingum County	OH	11971	29.58	27867	68.87	627	1.55	2.8	6.8	42.6	18.1	10.3	11.9	7.4	56810	76335
Noble County, Ohio	Noble County	OH	1170	18.45	5135	80.96	38	0.6	3.6	11.6	50.9	13.1	7.7	8.6	4.5	51547	74850
Ottawa County, Ohio	Ottawa County	OH	9008	37.52	14628	60.93	371	1.55	1.4	5.5	35.5	21	9.7	17.2	9.7	69515	97910
Paulding County, Ohio	Paulding County	OH	2213	23.38	7086	74.85	168	1.77	2.3	7.8	44.7	19.6	10.2	10.8	4.6	65331	81757
Perry County, Ohio	Perry County	OH	4098	24.58	12357	74.1	220	1.32	1.9	10.1	45.6	17.6	10	10.2	4.6	62899	76661
Pickaway County, Ohio	Pickaway County	OH	7304	25.84	20593	72.84	374	1.32	2.4	9.8	40.7	19.3	8.1	13.6	6	67600	86737
Pike County, Ohio	Pike County	OH	3110	25.06	9157	73.78	145	1.17	3.8	12.1	47.5	14.5	8.2	9.4	4.6	50832	76012
Portage County, Ohio	Portage County	OH	35661	43.03	45990	55.5	1221	1.47	1.9	5.3	36	17.5	7.6	18.7	13	69796	92344
Preble County, Ohio	Preble County	OH	4493	20.6	17022	78.05	294	1.35	1.7	6.4	44.6	20	8.6	11.6	7.2	66355	81529
Putnam County, Ohio	Putnam County	OH	3195	16.04	16412	82.39	314	1.58	1.8	3.4	37.9	16.4	14.6	17.6	8.3	79453	94801
Richland County, Ohio	Richland County	OH	17640	29.41	41472	69.15	863	1.44	3	7.4	41.8	20.7	9.3	11	6.7	56557	72150
Ross County, Ohio	Ross County	OH	10557	31.7	22278	66.9	464	1.39	3	8.3	45.4	19.7	7.1	10.1	6.5	58048	75219
Sandusky County, Ohio	Sandusky County	OH	10596	35.23	18896	62.83	582	1.94	1.7	5.1	42.4	20.6	11.8	12.6	5.8	60814	79320
Scioto County, Ohio	Scioto County	OH	9080	28.33	22609	70.55	358	1.12	3.3	9.1	43.4	19	7.6	10.7	6.9	46360	63654
Seneca County, Ohio	Seneca County	OH	8266	32.03	17086	66.2	458	1.77	1.3	5.3	43.5	19.7	11.3	12.2	6.6	62476	77866
Shelby County, Ohio	Shelby County	OH	4465	17.68	20422	80.85	371	1.47	1.7	7.1	41.1	17.8	11.6	13.3	7.3	73502	89911
Stark County, Ohio	Stark County	OH	75904	39.97	111097	58.51	2878	1.52	2.1	5.2	38	21.4	9.3	15.5	8.6	63130	82357
Summit County, Ohio	Summit County	OH	151668	54.08	124833	44.51	3972	1.42	2.4	5.1	29.1	20.6	8.3	21.8	12.8	68360	94626
Trumbull County, Ohio	Trumbull County	OH	44519	44.08	55194	54.65	1288	1.28	3.3	7.1	42.9	18.8	7.8	13.2	6.8	53537	70262
Tuscarawas County, Ohio	Tuscarawas County	OH	12889	29.28	30458	69.2	668	1.52	4.8	6.4	44.8	16.1	8.2	13.2	6.5	61953	76914
Union County, Ohio	Union County	OH	11141	33.31	21669	64.79	635	1.9	1	4.1	30.5	18.3	6.8	25.8	13.5	104496	129983
Van Wert County, Ohio	Van Wert County	OH	3067	20.49	11650	77.85	248	1.66	1.5	5.8	44.2	19.6	11.7	10.5	6.7	64841	76259
Vinton County, Ohio	Vinton County	OH	1331	22.07	4632	76.82	67	1.11	3.9	15.9	41.6	14.8	8.4	10.7	4.8	50967	67782
Warren County, Ohio	Warren County	OH	46069	33.85	87988	64.65	2043	1.5	1.6	3.6	24.9	17	8.3	26.7	17.9	103128	135002
Washington County, Ohio	Washington County	OH	9243	28.86	22307	69.64	481	1.5	1.7	6.6	37.9	20.6	12.8	12.8	7.6	59053	79532
Wayne County, Ohio	Wayne County	OH	16660	30.69	36759	67.72	864	1.59	8.2	5.3	39.1	16.3	7.1	14.5	9.6	70320	86188
Williams County, Ohio	Williams County	OH	4842	25.96	13452	72.12	357	1.91	1.4	7.5	43.2	22.4	11.1	9.2	5.2	60632	74139
Wood County, Ohio	Wood County	OH	30617	45.29	35757	52.9	1223	1.81	1.6	3.6	28.3	19.5	9.5	22.3	15.2	70537	95809
Wyandot County, Ohio	Wyandot County	OH	2733	23.99	8462	74.29	195	1.71	1.8	4.2	46.4	16.2	10.2	13.3	7.9	68552	80824
Adair County, Oklahoma	Adair County	OK	1387	19.51	5585	78.57	136	1.91	4.8	13.4	46.6	19.3	5	6.6	4.2	44955	55976
Alfalfa County, Oklahoma	Alfalfa County	OK	232	10.26	1978	87.44	52	2.3	3.7	8.9	37.2	22	7.5	14.2	6.6	75028	84094
Atoka County, Oklahoma	Atoka County	OK	765	14.2	4557	84.56	67	1.24	3.6	13.7	40.8	20.4	6.8	9.8	5	49181	70915
Beaver County, Oklahoma	Beaver County	OK	190	8.72	1968	90.36	20	0.92	8.2	6.3	31	22.3	9.5	16.7	6	62981	80810
Beckham County, Oklahoma	Beckham County	OK	1048	13.19	6767	85.14	133	1.67	3.9	11.3	39.5	21.9	8.2	10.3	4.9	51499	72386
Blaine County, Oklahoma	Blaine County	OK	688	17.64	3136	80.39	77	1.97	7.2	10.2	36.4	22.2	6.1	13.8	4.1	56843	79015
Bryan County, Oklahoma	Bryan County	OK	3323	20.8	12344	77.27	309	1.93	3.7	9	34.2	23.4	5.9	16	7.8	54289	74055
Caddo County, Oklahoma	Caddo County	OK	2670	27.08	7013	71.13	176	1.79	4.5	8.8	45.4	20.8	5.3	11.1	4	52443	65883
Canadian County, Oklahoma	Canadian County	OK	16742	27.03	43550	70.31	1648	2.66	2.9	5.1	27.2	22.9	9.8	22.4	9.7	82364	98921
Carter County, Oklahoma	Carter County	OK	4470	22.95	14699	75.46	310	1.59	3.4	9.2	36.1	23.5	8.3	11.4	8.2	56390	76697
Cherokee County, Oklahoma	Cherokee County	OK	6027	34.02	11223	63.36	464	2.62	3.6	7.9	32	22.4	5.4	18.1	10.4	52410	70490
Choctaw County, Oklahoma	Choctaw County	OK	1082	18.55	4698	80.56	52	0.89	5.1	10.5	38.4	23.5	7.8	9.6	5.1	43252	58649
Cimarron County, Oklahoma	Cimarron County	OK	70	6.64	970	92.03	14	1.33	6	6.5	36.7	16.4	2.7	27.4	4.4	57100	82944
Cleveland County, Oklahoma	Cleveland County	OK	49827	41.6	66677	55.67	3274	2.73	2.2	5.6	25.1	23.4	8.5	20.9	14.3	71757	92471
Coal County, Oklahoma	Coal County	OK	374	14.82	2091	82.84	59	2.34	5.1	11.2	42.4	17.8	6.2	10.4	6.8	47117	66062
Comanche County, Oklahoma	Comanche County	OK	13747	38.58	20905	58.67	979	2.75	2.8	6.9	32.7	26.1	7.8	15	8.8	57150	75979
Cotton County, Oklahoma	Cotton County	OK	393	15.28	2117	82.31	62	2.41	3.6	12.5	38.6	22.8	4.4	12.6	5.5	60208	79699
Craig County, Oklahoma	Craig County	OK	1217	20.18	4686	77.69	129	2.14	3.9	11	40.3	23	8.4	8.4	5	48018	61657
Creek County, Oklahoma	Creek County	OK	6577	21.56	23294	76.36	634	2.08	2	7.7	39.9	23.7	8.8	12.7	5.3	61657	79257
Custer County, Oklahoma	Custer County	OK	2369	22.16	8060	75.39	262	2.45	4.8	7.1	27.4	23.4	6.3	20.8	10.3	58669	81410
Delaware County, Oklahoma	Delaware County	OK	3472	20.13	13557	78.61	216	1.25	4	10.1	37.3	22.3	7.5	12.8	5.9	53290	72688
Dewey County, Oklahoma	Dewey County	OK	214	9.07	2124	90.04	21	0.89	1	5.9	44.4	23.3	5.8	12.9	6.7	61310	86008
Ellis County, Oklahoma	Ellis County	OK	162	8.65	1688	90.12	23	1.23	5.4	8	37.9	24.2	5.5	13.8	5.2	57768	75553
Garfield County, Oklahoma	Garfield County	OK	4919	21.93	16970	75.66	541	2.41	4.5	8.6	36.6	19.1	8.4	15.6	7.1	64165	82388
Garvin County, Oklahoma	Garvin County	OK	1865	17.08	8878	81.29	179	1.64	4.7	8	43.5	22.8	4.6	10.6	5.8	53600	72476
Grady County, Oklahoma	Grady County	OK	4144	17.94	18538	80.25	419	1.81	2.4	7	39.1	21.7	7.6	16.3	5.8	74349	89595
Grant County, Oklahoma	Grant County	OK	280	12.58	1916	86.07	30	1.35	3.3	4.7	37.6	21.8	10.2	15.9	6.4	58980	82552
Greer County, Oklahoma	Greer County	OK	328	16.62	1605	81.35	40	2.03	2.7	15.7	36.2	25.7	10.2	7.7	1.7	55204	61654
Harmon County, Oklahoma	Harmon County	OK	177	18.97	747	80.06	9	0.96	11.1	8.9	33.7	24.9	6.7	10.3	4.5	55729	80947
Harper County, Oklahoma	Harper County	OK	136	9.15	1327	89.24	24	1.61	5.9	4	32	27.9	7.2	17.5	5.5	59934	69105
Haskell County, Oklahoma	Haskell County	OK	783	15.62	4165	83.07	66	1.32	4.2	11.3	40.8	19.2	9.8	10.3	4.3	46239	62912
Hughes County, Oklahoma	Hughes County	OK	919	18.92	3875	79.78	63	1.3	3.9	11.9	41.4	21.7	6.5	9	5.6	44799	64370
Jackson County, Oklahoma	Jackson County	OK	1646	20.02	6392	77.75	183	2.23	6.6	7.5	26.4	23.7	11.5	16	8.2	60954	76831
Jefferson County, Oklahoma	Jefferson County	OK	319	13.38	2026	84.95	40	1.68	4.7	10.6	41.8	21.9	4.3	13.4	3.3	48346	70717
Johnston County, Oklahoma	Johnston County	OK	738	17.36	3441	80.95	72	1.69	3.1	8.8	37	20.8	9.3	14.8	6.1	48476	61719
Kay County, Oklahoma	Kay County	OK	4040	23.42	12834	74.4	375	2.17	2.1	8.5	34.1	25.3	11.9	12.6	5.5	53746	73672
Kingfisher County, Oklahoma	Kingfisher County	OK	854	13.21	5521	85.4	90	1.39	4.3	4.7	43.4	19.4	5.3	16.1	6.8	65167	90444
Kiowa County, Oklahoma	Kiowa County	OK	699	20.4	2673	78	55	1.6	4.6	9.8	32.1	29	6.6	13.2	4.6	42679	58103
Latimer County, Oklahoma	Latimer County	OK	762	17.93	3437	80.89	50	1.18	3	11.5	37.5	19.3	15.8	8.8	4	42735	60758
Le Flore County, Oklahoma	Le Flore County	OK	3299	17.54	15213	80.9	293	1.56	5	10.1	40.2	19.8	9.6	10.3	4.9	46750	61348
Lincoln County, Oklahoma	Lincoln County	OK	2609	17.52	12013	80.69	266	1.79	2.4	8.5	41.5	23.3	8.4	11.3	4.6	57656	76215
Logan County, Oklahoma	Logan County	OK	5455	25.29	15608	72.35	511	2.37	2.2	6	31	22.4	7.7	21.1	9.7	80565	111560
Love County, Oklahoma	Love County	OK	711	17.44	3305	81.08	60	1.47	4.1	12	36.9	26.4	5.3	12.1	3.1	60758	74687
Major County, Oklahoma	Major County	OK	320	9.23	3084	88.95	63	1.82	4.7	4.5	43.2	21.9	7.2	13.2	5.1	67621	81855
Marshall County, Oklahoma	Marshall County	OK	1100	18.14	4891	80.66	73	1.2	7.2	10.9	38.4	20.5	7.4	11.6	4	53734	70508
Mayes County, Oklahoma	Mayes County	OK	3581	21.54	12749	76.68	296	1.78	3.2	7.6	40	24	9.7	11.5	3.9	56552	73224
McClain County, Oklahoma	McClain County	OK	3582	18.62	15295	79.51	359	1.87	2.6	8.5	31.9	23.1	7	18.1	8.7	80150	102199
McCurtain County, Oklahoma	McCurtain County	OK	1858	16.2	9485	82.72	124	1.08	5.2	9.8	42.3	20	7	11.4	4.3	47046	63481
McIntosh County, Oklahoma	McIntosh County	OK	2031	24.37	6172	74.05	132	1.58	4.1	9.5	43.8	22.2	6.9	9.2	4.4	43467	58982
Murray County, Oklahoma	Murray County	OK	1156	19.61	4612	78.25	126	2.14	3.8	9.4	40.9	22.3	6.1	12.9	4.6	60213	81468
Muskogee County, Oklahoma	Muskogee County	OK	8027	32	16526	65.89	528	2.11	3.9	9.2	34.3	22	10.4	14.3	5.9	50289	68798
Noble County, Oklahoma	Noble County	OK	1003	20.31	3821	77.38	114	2.31	3.1	6.6	37.1	24	9.5	13.4	6.3	66813	81586
Nowata County, Oklahoma	Nowata County	OK	712	16.21	3610	82.21	69	1.57	2.4	7.6	41.6	20.7	10.8	12.2	4.6	50960	71019
Okfuskee County, Oklahoma	Okfuskee County	OK	896	22.19	3058	75.73	84	2.08	4.5	12.1	39.8	22.7	8.4	8.2	4.3	45429	62180
Oklahoma County, Oklahoma	Oklahoma County	OK	141724	48.08	145050	49.21	7966	2.7	4.9	6.5	24.2	22.4	7.7	21.6	12.6	62505	90810
Okmulgee County, Oklahoma	Okmulgee County	OK	4357	30.44	9668	67.55	288	2.01	3.1	9.7	35.7	23.2	12.3	11	5	50819	70584
Osage County, Oklahoma	Osage County	OK	6002	29.22	14121	68.76	415	2.02	2.4	8.1	37.1	22.5	9.8	13.6	6.4	58189	76698
Ottawa County, Oklahoma	Ottawa County	OK	2686	23.48	8545	74.71	207	1.81	4	9.3	35.2	25.5	10.6	10.2	5.2	46186	61156
Pawnee County, Oklahoma	Pawnee County	OK	1363	20.09	5267	77.62	156	2.3	3.4	8.9	42.4	21.1	7.8	12.6	3.8	56279	72849
Payne County, Oklahoma	Payne County	OK	10904	36.78	17813	60.09	926	3.12	2.4	4.5	27.8	19.7	7	21.2	17.4	46658	66604
Pittsburg County, Oklahoma	Pittsburg County	OK	3768	21.02	13851	77.28	305	1.7	3.7	9.5	37.2	21.4	9.2	12.6	6.3	53054	70704
Pontotoc County, Oklahoma	Pontotoc County	OK	4117	26.87	10805	70.53	398	2.6	2.2	8.3	33.2	20.2	7.3	17.5	11.2	59457	76961
Pottawatomie County, Oklahoma	Pottawatomie County	OK	7275	25.81	20240	71.81	670	2.38	2.3	9.1	35	24.5	8.3	13.7	7.1	58270	74237
Pushmataha County, Oklahoma	Pushmataha County	OK	668	14.1	4016	84.74	55	1.16	4.8	11.1	44	19.5	6.6	8	6	42274	54980
Roger Mills County, Oklahoma	Roger Mills County	OK	168	9.16	1629	88.82	37	2.02	1.9	5.6	34.3	28.9	7	14.1	8.1	57574	98522
Rogers County, Oklahoma	Rogers County	OK	9589	21.52	34031	76.38	933	2.09	2.3	5.5	33.1	23.3	10.6	17.5	7.7	75312	96448
Seminole County, Oklahoma	Seminole County	OK	2150	25.79	6011	72.1	176	2.11	3.7	10.9	36.5	25.6	8.4	10.5	4.4	43239	57878
Sequoyah County, Oklahoma	Sequoyah County	OK	3035	19.73	12113	78.73	238	1.55	5	11.5	38.4	20	10.1	10.8	4.1	47494	62304
Stephens County, Oklahoma	Stephens County	OK	3154	16.55	15560	81.65	343	1.8	3.1	8.2	42.2	22.5	5.1	12.2	6.7	57065	75598
Texas County, Oklahoma	Texas County	OK	894	16.19	4505	81.6	122	2.21	16.2	8.4	27.8	19.3	3.8	16.1	8.4	55682	64267
Tillman County, Oklahoma	Tillman County	OK	597	22.05	2076	76.66	35	1.29	9.6	10.9	34.5	21.9	5	12.2	5.9	46306	59156
Tulsa County, Oklahoma	Tulsa County	OK	108996	40.87	150574	56.46	7108	2.67	3.9	6.2	25.3	22.4	8.9	21.7	11.5	65229	94060
Wagoner County, Oklahoma	Wagoner County	OK	8464	23.95	26165	74.04	709	2.01	2.8	5.6	30.6	24.8	10.1	17.8	8.3	75082	93296
Washington County, Oklahoma	Washington County	OK	5790	24.64	17076	72.66	635	2.7	2.1	6.4	32.3	21.4	7.1	20.6	10.1	59426	84171
Washita County, Oklahoma	Washita County	OK	598	12.52	4086	85.53	93	1.95	2.2	8.7	40.6	22.8	6.1	12.1	7.5	60600	77457
Woods County, Oklahoma	Woods County	OK	591	16.07	2993	81.38	94	2.56	3	7.1	30.7	23.5	3.6	22.5	9.6	50724	73496
Woodward County, Oklahoma	Woodward County	OK	1005	12.91	6611	84.92	169	2.17	4.3	8.5	40.3	22.9	4.7	13.3	6	61207	81479
Baker County, Oregon	Baker County	OR	2346	23.62	7352	74.02	234	2.36	2	6.6	28.2	26.9	12	17.3	7.1	51657	74409
Benton County, Oregon	Benton County	OR	35827	67.86	14878	28.18	2094	3.97	1.5	2.5	14.6	19.5	8.2	28.4	25.3	72882	97953
Clackamas County, Oregon	Clackamas County	OR	139043	53.96	110509	42.89	8127	3.15	2	3.6	21.6	24.2	9.4	25.2	14	95740	126719
Clatsop County, Oregon	Clatsop County	OR	12916	54.02	10218	42.74	776	3.25	1.3	6.4	27.1	27.5	12	16.4	9.3	68025	86594
Columbia County, Oregon	Columbia County	OR	13835	42.94	17150	53.23	1236	3.84	1.9	7.6	33.4	27.9	10.9	12.2	6.2	83265	98502
Coos County, Oregon	Coos County	OR	14243	38.42	21829	58.88	1003	2.71	2	8	31	28.7	9.8	12.7	7.9	57563	76312
Crook County, Oregon	Crook County	OR	3801	24.61	11287	73.06	360	2.33	2	7.7	31.2	27	11.3	14.6	6.2	74969	92863
Curry County, Oregon	Curry County	OR	6058	40.59	8484	56.84	383	2.57	2.7	6.2	26	32.4	9	14	9.7	64300	81737
Deschutes County, Oregon	Deschutes County	OR	65962	52.67	55646	44.43	3626	2.9	2	3.8	19.2	24	10.3	25.2	15.6	82042	112537
Douglas County, Oregon	Douglas County	OR	19160	29.78	43298	67.29	1891	2.94	2.6	6.2	32.6	29.8	10	12.4	6.5	56440	74494
Gilliam County, Oregon	Gilliam County	OR	324	27.5	834	70.8	20	1.7	1.4	8.7	28.9	30.3	8.7	17.9	4	58409	74044
Grant County, Oregon	Grant County	OR	929	20.21	3545	77.13	122	2.65	2.4	8.5	32.9	29.7	7.3	13.2	6.1	56045	72405
Harney County, Oregon	Harney County	OR	894	19.95	3475	77.55	112	2.5	3	5.8	38.8	26.9	11.4	7.9	6.3	45462	63828
Hood River County, Oregon	Hood River County	OR	8764	66.95	3955	30.21	371	2.83	9.6	6.3	21.1	17.2	7.6	21.9	16.4	80254	112036
Jackson County, Oregon	Jackson County	OR	59478	46.77	63869	50.23	3818	3	2.6	6.4	25.7	26.4	8.9	18.3	11.7	67690	89037
Autauga County, Alabama	Autauga County	AL	7503	27.02	19838	71.44	429	1.54	1.7	7.9	31.1	21	8.7	16.7	12.8	68315	90372
Jefferson County, Oregon	Jefferson County	OR	4393	36.88	7189	60.35	331	2.78	5	7.1	29.2	27.6	9.8	14.7	6.5	69345	85768
Josephine County, Oregon	Josephine County	OR	18451	35.73	31751	61.48	1439	2.79	1.4	7.6	31.1	31.4	9.8	11.9	6.7	56068	78355
Klamath County, Oregon	Klamath County	OR	10388	28.29	25308	68.91	1030	2.8	2.9	7.8	33.7	25.1	9.6	13.4	7.5	57219	75121
Lake County, Oregon	Lake County	OR	792	18.15	3470	79.53	101	2.31	6.4	6.5	32.5	26.6	8.1	13	6.9	54663	67927
Lane County, Oregon	Lane County	OR	134366	60.46	80336	36.15	7551	3.4	2.2	5	22.7	27.2	10	19.5	13.5	65157	87189
Lincoln County, Oregon	Lincoln County	OR	17385	56.58	12460	40.55	881	2.87	2.1	5.1	24.1	30.3	9.6	17.3	11.6	57794	78457
Linn County, Oregon	Linn County	OR	26512	36.5	43486	59.87	2642	3.64	2.6	6.6	29.5	30.8	10.2	13.4	7	69523	82759
Malheur County, Oregon	Malheur County	OR	3260	27.62	8187	69.36	357	3.02	8.2	10.4	31.1	25.8	10	9.8	4.8	48371	63740
Marion County, Oregon	Marion County	OR	80872	48.86	79002	47.73	5660	3.42	7.2	7.1	25.2	25.9	9.6	16.3	8.7	70926	91101
Morrow County, Oregon	Morrow County	OR	1371	26.79	3586	70.07	161	3.15	10.4	12.8	32.7	25.3	7.5	7.1	4.2	64975	86322
Multnomah County, Oregon	Multnomah County	OR	367249	79.21	82995	17.9	13415	2.89	3.5	4.1	16.8	20.4	7.4	28.6	19.1	83668	115049
Polk County, Oregon	Polk County	OR	22917	47.46	23732	49.14	1642	3.4	2.9	5.3	23.1	27.4	10.3	18.9	12.1	77353	102721
Sherman County, Oregon	Sherman County	OR	260	21.52	921	76.24	27	2.24	3.1	8.6	34.6	25.8	11.8	9.6	6.4	57171	74112
Tillamook County, Oregon	Tillamook County	OR	8066	47.76	8354	49.47	468	2.77	2.9	6.4	27.9	29.1	10	15.8	8	63098	81374
Umatilla County, Oregon	Umatilla County	OR	10707	32.41	21270	64.38	1061	3.21	7.1	8.5	31.4	24	10.9	11.5	6.8	70322	84404
Union County, Oregon	Union County	OR	4254	28.47	10298	68.91	392	2.62	1.9	5.3	33.2	27.4	8.4	16.6	7.3	61946	77054
Wallowa County, Oregon	Wallowa County	OR	1625	31.56	3404	66.11	120	2.33	1.6	5.1	27.2	26.6	7.6	20.1	11.9	62238	84003
Wasco County, Oregon	Wasco County	OR	6604	46.74	7035	49.79	491	3.47	5.9	7.6	26.7	26.1	11.6	13.3	8.8	61316	87994
Washington County, Oregon	Washington County	OR	209940	65.54	99073	30.93	11313	3.53	3.8	3.4	17.2	21.2	8.7	28	17.9	100121	127688
Wheeler County, Oregon	Wheeler County	OR	217	22.49	711	73.68	37	3.83	1.2	7.2	32.2	27.8	11.7	11.8	8.2	50774	62698
Yamhill County, Oregon	Yamhill County	OR	27174	46.12	29551	50.15	2198	3.73	3.9	6.2	24.4	27.8	8.4	18.6	10.7	80125	102856
Adams County, Pennsylvania	Adams County	PA	18207	32.1	37523	66.16	984	1.74	3.3	6.4	40.2	17	8.7	13.9	10.5	78975	94922
Allegheny County, Pennsylvania	Allegheny County	PA	430759	59.43	282913	39.03	11128	1.54	1.5	3.3	25.8	15.5	10.1	25.4	18.4	72537	102371
Armstrong County, Pennsylvania	Armstrong County	PA	8457	23.25	27489	75.58	424	1.17	2.2	5.4	48.9	14.6	10.3	12.7	5.9	61011	78221
Beaver County, Pennsylvania	Beaver County	PA	38122	40.5	54759	58.18	1241	1.32	1.4	3.9	36.6	18.6	12.7	18.3	8.4	67194	85850
Bedford County, Pennsylvania	Bedford County	PA	4367	15.84	23025	83.5	182	0.66	2.8	6.9	48.7	15.9	9.6	9.7	6.4	58337	73543
Berks County, Pennsylvania	Berks County	PA	92895	45.2	109736	53.39	2909	1.42	4.8	7.2	36.6	15.4	9.2	17.2	9.7	74617	97622
Blair County, Pennsylvania	Blair County	PA	17636	27.73	45306	71.24	653	1.03	1.9	5.2	44.8	15.6	9.1	15.6	7.8	59386	79100
Bradford County, Pennsylvania	Bradford County	PA	8046	26.68	21600	71.62	513	1.7	2.5	6.9	47.1	14.3	9.2	12.2	7.8	60650	78657
Bucks County, Pennsylvania	Bucks County	PA	204712	51.66	187367	47.29	4155	1.05	1.8	3.5	27.8	15.4	8.2	25.7	17.6	107826	141092
Butler County, Pennsylvania	Butler County	PA	37508	33.1	74359	65.63	1438	1.27	1.1	3.3	32	14.5	10.8	24.1	14.2	82932	108481
Cambria County, Pennsylvania	Cambria County	PA	21730	30.79	48085	68.13	759	1.08	2	5.2	44.4	15	10.7	15.5	7.2	54221	72815
Cameron County, Pennsylvania	Cameron County	PA	634	26.05	1771	72.76	29	1.19	1.6	5.8	51.9	20	9.9	8.7	2.2	46186	57495
Carbon County, Pennsylvania	Carbon County	PA	11212	33.34	21984	65.37	433	1.29	3.1	7.2	44.1	16.5	10.8	12.5	5.8	64538	81615
Centre County, Pennsylvania	Centre County	PA	40055	51.69	36372	46.94	1066	1.38	2.1	3.1	28.7	12.3	7.6	22.5	23.7	70087	95839
Chester County, Pennsylvania	Chester County	PA	182372	57.76	128565	40.72	4816	1.53	2.5	2.8	19.3	13.1	6.2	32.8	23.3	118574	159035
Clarion County, Pennsylvania	Clarion County	PA	4678	24	14578	74.79	237	1.22	3	6.1	46.4	12.2	9.5	14.3	8.5	58690	74681
Clearfield County, Pennsylvania	Clearfield County	PA	9673	24.49	29203	73.94	620	1.57	3.2	7	46.9	13.4	10.4	12.7	6.4	56982	72463
Clinton County, Pennsylvania	Clinton County	PA	5502	31.22	11902	67.53	221	1.25	3.2	7.3	46.1	13.9	9.3	13.1	7.2	59011	75224
Columbia County, Pennsylvania	Columbia County	PA	10532	33.79	20098	64.48	541	1.74	2.3	6.1	44.3	13.5	8.4	15.5	9.9	59457	76713
Crawford County, Pennsylvania	Crawford County	PA	12924	30.77	28559	67.99	521	1.24	3.6	5.8	47.4	14.7	7.9	12.8	7.8	58734	75673
Cumberland County, Pennsylvania	Cumberland County	PA	62245	43.96	77212	54.53	2138	1.51	2.4	4.1	31.3	15.3	8.3	23.6	15	82849	105751
Dauphin County, Pennsylvania	Dauphin County	PA	78983	53.6	66408	45.06	1977	1.34	3.3	5.5	32.3	16.1	9.5	21.2	12.1	71046	95269
Delaware County, Pennsylvania	Delaware County	PA	206423	62.74	118532	36.03	4051	1.23	2.2	4.3	27.6	16.9	8.1	23.4	17.5	86390	121862
Elk County, Pennsylvania	Elk County	PA	4522	26.75	12140	71.81	244	1.44	1.8	5	50.2	12.1	12.4	12.7	5.8	61672	76855
Erie County, Pennsylvania	Erie County	PA	68286	49.81	66869	48.78	1928	1.41	2.3	5.2	37.3	15.5	10.1	18.4	11.1	59396	79353
Fayette County, Pennsylvania	Fayette County	PA	20444	32.9	41227	66.35	468	0.75	2.4	7.7	47.9	14.2	9.1	12.3	6.4	55579	73221
Forest County, Pennsylvania	Forest County	PA	728	27.51	1882	71.13	36	1.36	3.6	10.6	53.2	17.2	3.8	8.6	3	46188	56212
Franklin County, Pennsylvania	Franklin County	PA	22422	27.76	57245	70.86	1116	1.38	2.8	7	43.7	15.2	8.3	14	9	71808	91710
Fulton County, Pennsylvania	Fulton County	PA	1085	13.6	6824	85.55	68	0.85	3.3	7.3	49.5	13.5	10.1	9.6	6.7	63153	77650
Greene County, Pennsylvania	Greene County	PA	4911	27.79	12579	71.19	179	1.01	2.6	8	44.2	15.8	8.3	13.6	7.5	66283	80653
Huntingdon County, Pennsylvania	Huntingdon County	PA	5445	23.89	17061	74.86	286	1.25	3	7	49.9	13.8	8.2	11.9	6.1	61300	78131
Indiana County, Pennsylvania	Indiana County	PA	12634	30.67	28089	68.18	475	1.15	2.8	5.2	40.9	15.4	9.5	14.8	11.4	57170	75448
Jefferson County, Pennsylvania	Jefferson County	PA	4527	19.83	17960	78.69	337	1.48	3.1	5.7	51.3	12.7	10.2	11.1	5.9	56607	72426
Juniata County, Pennsylvania	Juniata County	PA	2253	18.71	9649	80.12	141	1.17	5.6	11.4	48.5	12.2	7.9	9.6	4.7	61915	78975
Lackawanna County, Pennsylvania	Lackawanna County	PA	61991	53.71	52334	45.35	1085	0.94	2.6	5.8	35.5	16	10.1	18.2	11.7	63739	85038
Lancaster County, Pennsylvania	Lancaster County	PA	115847	41.17	160209	56.94	5319	1.89	6.4	6.7	34.5	14.2	7.8	19.5	11	81458	104217
Lawrence County, Pennsylvania	Lawrence County	PA	15978	34.68	29597	64.24	501	1.09	2.1	5.9	42.8	17.3	9.8	15.7	6.3	57585	75513
Lebanon County, Pennsylvania	Lebanon County	PA	23932	33.3	46731	65.03	1195	1.66	4.3	8.1	41.9	14.8	7.9	14.6	8.2	72532	90929
Lehigh County, Pennsylvania	Lehigh County	PA	98288	53.21	84259	45.62	2166	1.17	3.9	5.8	32.2	16.4	9.3	19.9	12.4	74973	102938
Luzerne County, Pennsylvania	Luzerne County	PA	64873	42.31	86929	56.7	1519	0.99	3.6	6	37.8	17.4	10.7	15.1	9.4	60836	79791
Lycoming County, Pennsylvania	Lycoming County	PA	16971	28.64	41462	69.97	821	1.39	2.3	7	38.5	15.9	12	15.8	8.5	63437	80309
McKean County, Pennsylvania	McKean County	PA	5098	26.19	14083	72.35	285	1.46	2.6	4.6	47.2	15.6	10.5	12	7.5	57861	74725
Mercer County, Pennsylvania	Mercer County	PA	21067	36.35	36143	62.36	744	1.28	3.2	6.3	40.9	15.7	9.8	15.4	8.7	57353	75590
Mifflin County, Pennsylvania	Mifflin County	PA	4603	21.41	16670	77.53	229	1.07	4.6	10.6	49.2	14	8.4	8.5	4.7	58012	70553
Monroe County, Pennsylvania	Monroe County	PA	44060	52.56	38726	46.2	1043	1.24	3	7.1	35.3	19	9	16	10.5	80656	98338
Montgomery County, Pennsylvania	Montgomery County	PA	319511	62.63	185460	36.35	5186	1.02	1.9	3.3	22.6	13.5	7.2	29	22.4	107441	148273
Montour County, Pennsylvania	Montour County	PA	3771	38.41	5844	59.53	202	2.06	2.8	4.5	34.7	13	8.5	18.1	18.3	72626	103130
Northampton County, Pennsylvania	Northampton County	PA	85087	49.64	83854	48.92	2458	1.43	2.6	5.4	33.1	16.3	9.7	20.1	12.7	82201	108291
Northumberland County, Pennsylvania	Northumberland County	PA	12677	29.98	28952	68.47	654	1.55	2.7	7.4	48.1	14.5	8.9	12.8	5.7	55952	74086
Perry County, Pennsylvania	Perry County	PA	5950	24.14	18293	74.2	409	1.66	3.3	7.5	46.2	14.5	10.2	12.4	5.8	76103	91535
Philadelphia County, Pennsylvania	Philadelphia County	PA	603790	81.44	132740	17.9	4847	0.65	5	8.1	30.3	16.8	6.1	18.8	14.8	57537	84435
Pike County, Pennsylvania	Pike County	PA	13019	39.99	19213	59.02	322	0.99	1.6	5.3	34	22	9.7	15.6	11.8	76416	98450
Potter County, Pennsylvania	Potter County	PA	1726	19.04	7239	79.87	99	1.09	2.8	7.1	47.3	16.6	9.6	10.8	5.9	56491	70333
Schuylkill County, Pennsylvania	Schuylkill County	PA	20727	29.36	48871	69.22	1005	1.42	2.7	7.7	44.9	15.2	11.1	12.4	6.1	63574	79277
Snyder County, Pennsylvania	Snyder County	PA	4910	25.65	13983	73.06	247	1.29	6.3	8.8	44	11.1	8.8	12.8	8.2	65914	84417
Somerset County, Pennsylvania	Somerset County	PA	8654	21.35	31466	77.61	423	1.04	3.4	6.5	49.1	14.2	9.5	11.2	6.1	57357	76062
Sullivan County, Pennsylvania	Sullivan County	PA	921	25.62	2619	72.85	55	1.53	1.1	8.1	48.6	11.6	11.7	12.8	6	62910	78481
Susquehanna County, Pennsylvania	Susquehanna County	PA	6236	28.67	15207	69.91	309	1.42	1.6	6.8	46.2	16.2	9.2	12.7	7.2	63968	88716
Tioga County, Pennsylvania	Tioga County	PA	4955	23.51	15742	74.7	378	1.79	1.8	6.5	43.9	16.9	9.6	13.1	8.2	59707	74629
Union County, Pennsylvania	Union County	PA	7475	37.16	12356	61.43	284	1.41	4.2	9.5	42.3	11.1	7.9	13.3	11.8	64914	96921
Venango County, Pennsylvania	Venango County	PA	7585	28.59	18569	70	374	1.41	2.9	6.3	46.4	15.1	9.9	12.8	6.6	59278	73406
Warren County, Pennsylvania	Warren County	PA	6066	29.38	14237	68.94	347	1.68	1.8	4.5	46.3	17.2	11.3	12.4	6.5	57925	74092
Washington County, Pennsylvania	Washington County	PA	45088	38.06	72080	60.84	1310	1.11	1.8	4.2	35.9	15.1	10.6	20.7	11.7	74403	100823
Wayne County, Pennsylvania	Wayne County	PA	9191	32.72	18637	66.35	261	0.93	1.8	6.6	44	17.4	9.4	12.2	8.6	59240	77823
Westmoreland County, Pennsylvania	Westmoreland County	PA	72129	35.15	130218	63.46	2836	1.38	1.3	3.4	35.5	16.6	12	19.8	11.4	69454	91343
Wyoming County, Pennsylvania	Wyoming County	PA	4704	31.66	9936	66.87	218	1.47	1.3	5.9	45.6	16.7	9.1	13.9	7.6	67968	87709
York County, Pennsylvania	York County	PA	88114	36.95	146733	61.53	3624	1.52	2.6	6.3	38.5	16.7	9.6	16.6	9.7	79183	97814
Bristol County, Rhode Island	Bristol County	RhodeIsland	18050	63.52	9745	34.3	620	2.18	2.4	4.3	21.2	14.3	6.4	27.4	24	105875	145356
Kent County, Rhode Island	Kent County	RhodeIsland	49113	52.76	42001	45.12	1979	2.13	2.4	4.8	28	20.5	10.6	20.6	13	85732	109772
Newport County, Rhode Island	Newport County	RhodeIsland	29486	63.89	15722	34.07	940	2.04	2.1	3.1	19.8	15.7	7.2	30.2	21.9	96319	133288
Providence County, Rhode Island	Providence County	RhodeIsland	165012	60.52	102551	37.61	5104	1.87	6.7	7	29.2	18.1	7.8	18.9	12.3	72579	95328
Washington County, Rhode Island	Washington County	RhodeIsland	44549	58.57	29818	39.2	1693	2.23	1.2	3.9	20.7	17.4	8.2	26.8	21.8	99510	123968
Abbeville County, South Carolina	Abbeville County	SC	4101	32.98	8215	66.07	117	0.94	4.9	10	39	15.3	11.8	13.5	5.6	49759	75391
Aiken County, South Carolina	Aiken County	SC	32275	37.89	51589	60.56	1321	1.55	3.7	6.8	30.5	20.7	8.8	18.8	10.8	63212	83690
Allendale County, South Carolina	Allendale County	SC	2718	75.65	835	23.24	40	1.11	3.7	17.5	41.9	18.9	7.3	6.2	4.6	37096	49046
Anderson County, South Carolina	Anderson County	SC	27169	28.27	67565	70.31	1359	1.41	3.4	9.4	30.2	19.2	11.6	16.4	9.7	62347	84294
Bamberg County, South Carolina	Bamberg County	SC	4010	61.86	2417	37.29	55	0.85	6.4	16.3	30.8	17.3	11.4	10	7.9	43920	58375
Barnwell County, South Carolina	Barnwell County	SC	4720	45.73	5492	53.21	109	1.06	7.3	9.9	39.3	16.8	12.3	9.1	5.3	42470	59440
Beaufort County, South Carolina	Beaufort County	SC	43419	44.38	53194	54.37	1222	1.25	2.1	4.3	21.3	20.4	8.5	24.9	18.5	81260	115345
Berkeley County, South Carolina	Berkeley County	SC	45223	43.29	57397	54.95	1838	1.76	3.1	6.9	28.8	22.6	10.3	18.3	10	77874	97057
Calhoun County, South Carolina	Calhoun County	SC	3905	47.1	4305	51.92	81	0.98	5.9	7.6	34.9	19.9	12.7	12.6	6.5	55550	72720
Charleston County, South Carolina	Charleston County	SC	121485	55.51	93297	42.63	4075	1.86	2.1	5	19.5	16.9	8.4	29.6	18.4	78795	119687
Cherokee County, South Carolina	Cherokee County	SC	6983	27.63	18043	71.4	244	0.97	4	10.8	37.7	20.3	10	10.2	7	47011	65759
Chester County, South Carolina	Chester County	SC	6941	44.05	8660	54.96	156	0.99	3.6	11.3	41.4	20.3	9.7	8.7	5.2	50022	64095
Chesterfield County, South Carolina	Chesterfield County	SC	7431	39.37	11297	59.85	148	0.78	6.1	12.5	40.1	19.5	8.9	8.1	4.8	46326	64325
Clarendon County, South Carolina	Clarendon County	SC	8250	49.3	8361	49.97	122	0.73	4.4	14.7	36.7	20.1	7.5	10.7	5.8	48677	65427
Colleton County, South Carolina	Colleton County	SC	8602	44.61	10440	54.14	241	1.25	3.7	10.1	40.6	18.8	11.1	10.3	5.4	46795	64470
Darlington County, South Carolina	Darlington County	SC	15220	46.95	16832	51.92	365	1.13	4.7	9.6	36.7	19	11	11.9	7.1	44317	69693
Dillon County, South Carolina	Dillon County	SC	6436	49.13	6582	50.24	83	0.63	6.5	15.2	42.3	16.2	8	7	4.9	42454	56391
Dorchester County, South Carolina	Dorchester County	SC	33824	43.77	41913	54.24	1541	1.99	2.8	6.5	25.4	24.2	11.6	19.2	10.2	73686	95551
Edgefield County, South Carolina	Edgefield County	SC	4953	37.23	8184	61.52	167	1.26	4.8	12.2	34.7	18.4	10	11.8	8	60033	79001
Fairfield County, South Carolina	Fairfield County	SC	7382	60.83	4625	38.11	129	1.06	3.7	12.2	39.6	21	8.9	9.1	5.7	44521	68680
Florence County, South Carolina	Florence County	SC	31153	48.29	32615	50.56	742	1.15	3.4	9.3	33.4	18.9	11.2	14.8	8.9	56088	76763
Georgetown County, South Carolina	Georgetown County	SC	15822	43.15	20487	55.87	359	0.98	2.5	6.7	27	22.2	10.6	19.4	11.6	59782	88858
Greenville County, South Carolina	Greenville County	SC	103030	39.91	150021	58.11	5104	1.98	3.3	6.6	22.9	18.7	9.1	24.9	14.4	71328	99692
Greenwood County, South Carolina	Greenwood County	SC	12145	37.95	19431	60.71	430	1.34	3.9	9.2	32.2	17.2	13.3	15.6	8.7	47553	71476
Hampton County, South Carolina	Hampton County	SC	5323	57.21	3906	41.98	76	0.82	7	12	43.4	17.9	8	7.2	4.3	40157	55601
Horry County, South Carolina	Horry County	SC	59180	32.92	118821	66.11	1743	0.97	2.6	5.9	32.5	23.2	10.6	16.4	8.9	59880	80054
Jasper County, South Carolina	Jasper County	SC	7185	49.92	7078	49.17	131	0.91	3.2	7	36.9	19.9	9.7	16.9	6.3	60452	75441
Kershaw County, South Carolina	Kershaw County	SC	12699	37.76	20471	60.87	459	1.36	3.4	7.7	34.2	22.9	10.5	12.9	8.5	61343	76744
Lancaster County, South Carolina	Lancaster County	SC	18937	37.97	30312	60.78	619	1.24	3.8	7.2	28.2	19.7	11.1	19.4	10.7	72186	97132
Laurens County, South Carolina	Laurens County	SC	10159	33.32	20004	65.61	325	1.07	5.9	11.4	36.1	18.1	10.6	11.9	6.1	52077	69159
Lee County, South Carolina	Lee County	SC	5329	63.21	3008	35.68	94	1.11	6	12.8	41.2	18.2	7.3	9.1	5.3	39099	51559
Lexington County, South Carolina	Lexington County	SC	49301	34.1	92817	64.2	2450	1.69	2.8	5.9	26.6	21.5	10.6	20.6	12	71280	91269
Marion County, South Carolina	Marion County	SC	8872	60.34	5711	38.84	121	0.82	4.6	10.9	50	13.2	7.6	8.6	5.1	35972	51542
Marlboro County, South Carolina	Marlboro County	SC	6290	54.95	5044	44.07	112	0.98	5.2	14.5	49.6	15.4	7.1	5.4	2.9	34275	49740
McCormick County, South Carolina	McCormick County	SC	2687	47.17	2958	51.92	52	0.91	5.1	9.7	34.1	17.1	12.7	14.6	6.7	55569	72282
Newberry County, South Carolina	Newberry County	SC	6958	37.35	11443	61.42	230	1.23	5.2	9.3	32	18.7	12.2	13.4	9.1	56706	76846
Oconee County, South Carolina	Oconee County	SC	10414	25.61	29698	73.03	556	1.37	3.8	9.2	29.5	18.9	10.8	16.5	11.3	56710	82716
Orangeburg County, South Carolina	Orangeburg County	SC	27295	66.24	13603	33.01	307	0.75	4.1	11.7	32.8	18.5	13.8	10.2	9	41020	56740
Pickens County, South Carolina	Pickens County	SC	13645	23.71	42907	74.56	994	1.73	3.5	9.4	30.2	18.5	10.9	14.9	12.5	57628	80800
Richland County, South Carolina	Richland County	SC	132570	68.4	58313	30.09	2939	1.52	2.1	5.7	21.4	21.4	9.2	23.2	17	59850	86621
Saluda County, South Carolina	Saluda County	SC	2963	31.95	6210	66.96	101	1.09	7.3	9.5	37.6	16.4	10	11.1	8.1	51041	68901
Spartanburg County, South Carolina	Spartanburg County	SC	52926	35.6	93560	62.94	2169	1.46	4.4	7.7	31.1	21.1	10.4	15.5	9.7	61955	81483
Sumter County, South Carolina	Sumter County	SC	27379	55.97	21000	42.93	541	1.11	3.3	7.9	31.8	23.1	10.9	13.7	9.4	53970	70528
Union County, South Carolina	Union County	SC	4935	37.23	8183	61.73	139	1.05	5.5	12.9	38.4	19	10.3	10.3	3.6	42305	59118
Williamsburg County, South Carolina	Williamsburg County	SC	10289	64.37	5532	34.61	164	1.03	4.6	12.4	42.3	16.6	8.8	8.8	6.4	40848	54311
York County, South Carolina	York County	SC	59008	40.96	82727	57.43	2315	1.61	2.5	5.3	24	21	10.4	23.5	13.4	80158	105610
Aurora County, South Dakota	Aurora County	SD	317	22.56	1052	74.88	36	2.56	4.6	4.1	36.8	17.7	18.6	13.5	4.8	71490	96992
Beadle County, South Dakota	Beadle County	SD	2107	29.76	4808	67.9	166	2.34	9.4	5.5	33	16.5	10.1	16.6	8.9	63813	81214
Bennett County, South Dakota	Bennett County	SD	466	39.39	694	58.66	23	1.94	3	8.1	34.6	25.2	10.7	15	3.3	44821	66336
Bon Homme County, South Dakota	Bon Homme County	SD	721	24.03	2235	74.48	45	1.5	3.8	7.3	36.9	19.5	12.5	13.9	6.1	57554	76866
Brookings County, South Dakota	Brookings County	SD	6110	41.94	8000	54.92	457	3.14	1.1	2.7	23.2	19	11.6	27.8	14.6	64438	83191
Brown County, South Dakota	Brown County	SD	6538	37.26	10580	60.3	429	2.44	2.2	4.1	30.9	18.2	11.7	24.1	8.7	70379	87751
Brule County, South Dakota	Brule County	SD	673	27.03	1750	70.28	67	2.69	9.5	4.8	34.2	15.5	10.4	19.4	6.3	64821	84452
Buffalo County, South Dakota	Buffalo County	SD	352	64.12	183	33.33	14	2.55	1.1	16.5	44.2	21.3	10.1	5.2	1.6	42917	46912
Butte County, South Dakota	Butte County	SD	939	19.55	3731	77.7	132	2.75	4	6.6	37.8	22.9	10.5	12.7	5.5	58106	85481
Campbell County, South Dakota	Campbell County	SD	117	13.4	747	85.57	9	1.03	5.4	7.4	29.7	20.8	8.4	25	3.3	66932	93912
Charles Mix County, South Dakota	Charles Mix County	SD	1177	31.11	2552	67.46	54	1.43	4.4	6.1	35.3	15.8	13.6	18.6	6.1	60729	76768
Clark County, South Dakota	Clark County	SD	437	23.62	1373	74.22	40	2.16	5.6	3.2	42.8	20.7	8.9	15.7	3	59340	92044
Clay County, South Dakota	Clay County	SD	3083	54.11	2456	43.1	159	2.79	1.9	4.7	28.3	16.9	8.1	21	19	55963	78261
Codington County, South Dakota	Codington County	SD	3837	29.15	8958	68.06	366	2.78	3.4	4.8	39.7	17.9	14	14.1	6.1	65747	82684
Corson County, South Dakota	Corson County	SD	622	48.48	647	50.43	14	1.09	1.7	12.1	37.3	18	13.7	13.9	3.2	48125	64048
Custer County, South Dakota	Custer County	SD	1522	27.7	3852	70.11	120	2.18	3	3.4	32.3	21.7	9.1	18	12.5	75943	97012
Davison County, South Dakota	Davison County	SD	2648	31.32	5613	66.39	193	2.28	3.9	5.8	34.1	21.2	11.7	18.5	4.8	55606	76883
Day County, South Dakota	Day County	SD	1052	35.49	1869	63.06	43	1.45	3.6	4.9	36.3	18.5	14.3	16.7	5.7	57558	78591
Deuel County, South Dakota	Deuel County	SD	609	25.91	1699	72.3	42	1.79	2.4	4.8	35.3	21	12.8	19.3	4.4	76997	85841
Dewey County, South Dakota	Dewey County	SD	1131	57.53	790	40.18	45	2.29	1.5	11.9	38.6	20	10.1	12.4	5.5	55077	66150
Douglas County, South Dakota	Douglas County	SD	216	12.65	1468	86	23	1.35	3.5	5.2	36.1	21.1	13.6	17.1	3.5	75048	94978
Edmunds County, South Dakota	Edmunds County	SD	417	21.01	1538	77.48	30	1.51	4.8	2.6	31.2	20.2	13	21.5	6.7	76806	102116
Fall River County, South Dakota	Fall River County	SD	1053	26.05	2878	71.2	111	2.75	3.2	5.3	34.1	24.6	13	11.9	8	54886	69946
Faulk County, South Dakota	Faulk County	SD	198	16.75	964	81.56	20	1.69	3.5	4.3	29.7	23.9	16.5	13.8	8.4	56734	78630
Grant County, South Dakota	Grant County	SD	1056	28.2	2618	69.91	71	1.9	3.3	5	38.2	16.6	12.5	16.4	8	70851	92894
Gregory County, South Dakota	Gregory County	SD	455	20.15	1771	78.43	32	1.42	2.4	7.2	38.5	22.3	10.5	11.9	7.2	48272	70645
Haakon County, South Dakota	Haakon County	SD	105	9.23	1026	90.24	6	0.53	0.2	3.4	47	22.4	10.3	15.2	1.5	53109	75758
Hamlin County, South Dakota	Hamlin County	SD	647	20.99	2372	76.94	64	2.08	5.3	2.3	39.7	19	11.8	15.8	6.1	76995	88657
Hand County, South Dakota	Hand County	SD	373	20.32	1433	78.05	30	1.63	4.7	2.3	29	19.6	19.1	20.1	5.2	72857	90889
Hanson County, South Dakota	Hanson County	SD	557	23.32	1793	75.08	38	1.59	3.5	1.8	33.9	18.4	21.2	15.8	5.3	86827	94654
Harding County, South Dakota	Harding County	SD	49	6.03	748	92	16	1.97	3.8	2.1	31.2	28.9	6.7	23.4	3.9	71484	105058
Hughes County, South Dakota	Hughes County	SD	2953	33.85	5522	63.3	248	2.84	1.2	2.1	27.3	21	12.9	24.8	10.6	83750	89752
Hutchinson County, South Dakota	Hutchinson County	SD	762	20.23	2944	78.15	61	1.62	4.2	3.8	31.2	21.2	13.8	19.3	6.4	69139	87737
Hyde County, South Dakota	Hyde County	SD	136	19.15	564	79.44	10	1.41	2.8	6.3	31.2	19.3	19.9	16.4	3.9	69712	83831
Jackson County, South Dakota	Jackson County	SD	359	32.2	738	66.19	18	1.61	3.7	9.2	37.3	21	13.1	11.4	4.1	26078	45670
Jerauld County, South Dakota	Jerauld County	SD	270	26.84	721	71.67	15	1.49	3.6	4.7	45.8	15	14	12	4.9	66607	103242
Jones County, South Dakota	Jones County	SD	90	15.03	498	83.14	11	1.84	0	5.1	34.6	16.4	10	25.8	8.1	61250	79336
Kingsbury County, South Dakota	Kingsbury County	SD	819	29.47	1904	68.51	56	2.02	4.6	4.9	37.5	17.7	12.3	16.7	6.3	65964	87571
Lake County, South Dakota	Lake County	SD	2068	35.21	3681	62.68	124	2.11	1.9	4.8	26.7	21.3	10.8	24.9	9.7	74884	105315
Lawrence County, South Dakota	Lawrence County	SD	4537	32.81	8753	63.3	538	3.89	1.9	3.1	26.5	21.4	10.4	24.9	11.8	62977	87697
Lincoln County, South Dakota	Lincoln County	SD	11981	36.98	19617	60.55	798	2.46	1.2	2.7	23.9	17.1	13.3	28.4	13.4	92317	119547
Lyman County, South Dakota	Lyman County	SD	525	32.87	1042	65.25	30	1.88	1.1	7.4	40.8	20.5	7	16.9	6.3	60284	74735
Marshall County, South Dakota	Marshall County	SD	858	39.39	1287	59.09	33	1.52	6.3	3.4	33.8	16.7	16.5	20.1	3.2	74018	104071
McCook County, South Dakota	McCook County	SD	769	26.52	2068	71.31	63	2.17	4.7	2.7	34.4	18	12.4	19.7	8	74873	89299
McPherson County, South Dakota	McPherson County	SD	222	16.77	1075	81.19	27	2.04	12.4	6.4	37.4	13.8	9.4	16.4	4.1	58529	90954
Meade County, South Dakota	Meade County	SD	3285	24.03	9875	72.24	510	3.73	0.9	3.2	28.7	26	13.8	20.8	6.6	70256	84062
Mellette County, South Dakota	Mellette County	SD	298	38.75	449	58.39	22	2.86	5	13	40.7	17.7	11.6	9.2	2.7	41397	51327
Miner County, South Dakota	Miner County	SD	320	28.12	787	69.16	31	2.72	4.9	4.6	43	21.6	9.4	13.5	3	62037	76169
Minnehaha County, South Dakota	Minnehaha County	SD	40482	43.85	49249	53.34	2595	2.81	2.9	4	25.3	20.7	12.9	23.9	10.3	73110	95106
Moody County, South Dakota	Moody County	SD	1179	36.77	1951	60.85	76	2.37	2.7	2.8	31.3	21.9	14.2	17.3	9.7	71469	90537
Oglala Lakota County, South Dakota	Oglala Lakota County	SD	2829	88.41	297	9.28	74	2.31	2.2	23.8	35.2	23.6	6.9	5.7	2.4	32279	47919
Pennington County, South Dakota	Pennington County	SD	20606	35.83	35063	60.96	1849	3.21	2.2	3.7	28	21.4	11.4	21.3	12.1	67823	92323
Perkins County, South Dakota	Perkins County	SD	239	14.32	1401	83.94	29	1.74	2.2	5.6	34.2	22.1	15.7	15.2	5	64410	92552
Potter County, South Dakota	Potter County	SD	227	16.45	1139	82.54	14	1.01	2	1.4	42.2	17.7	12.4	20	4.3	71786	84176
Roberts County, South Dakota	Roberts County	SD	1828	42.44	2404	55.82	75	1.74	2.3	6.6	36.8	21.7	16.1	11.8	4.7	59022	74895
Sanborn County, South Dakota	Sanborn County	SD	257	21.69	905	76.37	23	1.94	2.1	6	40.8	17.9	13.3	14	5.9	65806	85580
Spink County, South Dakota	Spink County	SD	998	31.55	2104	66.52	61	1.93	5.4	3.9	34.2	20.8	10.5	20.3	4.8	65795	90232
Stanley County, South Dakota	Stanley County	SD	421	25.48	1203	72.82	28	1.69	1.8	3.9	35.8	18.5	13.1	17	9.9	82298	106276
Sully County, South Dakota	Sully County	SD	185	19.89	726	78.06	19	2.04	0.4	3.4	38.5	21	15.2	18.4	3.1	66875	94785
Todd County, South Dakota	Todd County	SD	1963	77.31	532	20.95	44	1.73	5.3	14.9	28	31.5	5.5	9.2	5.6	33792	44378
Tripp County, South Dakota	Tripp County	SD	495	18.36	2161	80.16	40	1.48	2.6	7.6	41.1	20.8	10.8	13.6	3.5	56758	71707
Turner County, South Dakota	Turner County	SD	1139	25.04	3290	72.34	119	2.62	3.3	5.4	32.3	18.9	13.7	20	6.5	72312	89041
Union County, South Dakota	Union County	SD	2725	30.77	5944	67.13	186	2.1	2.1	3.4	27.5	19.2	12.3	22.1	13.4	82036	113111
Walworth County, South Dakota	Walworth County	SD	565	21.9	1966	76.2	49	1.9	3.7	5.1	34.2	16.4	12.9	19.7	7.9	57697	80047
Yankton County, South Dakota	Yankton County	SD	4016	36.84	6581	60.38	303	2.78	2.4	4.5	35.3	18.5	12	17.4	9.9	68847	88162
Ziebach County, South Dakota	Ziebach County	SD	481	53.09	404	44.59	21	2.32	1.1	9.3	41.9	21.2	11.6	12	2.9	46023	78898
Anderson County, Tennessee	Anderson County	TN	11741	33.01	23184	65.18	645	1.81	3.5	5.7	33.5	23.5	9.3	13.5	11	60633	79591
Bedford County, Tennessee	Bedford County	TN	4453	23.33	14354	75.2	281	1.47	5.6	9.3	41.6	21.1	5.2	12	5.1	59955	76520
Benton County, Tennessee	Benton County	TN	1529	21.06	5668	78.07	63	0.87	5.9	9.4	46.2	20.1	7.2	6.3	4.8	47737	62079
Bledsoe County, Tennessee	Bledsoe County	TN	971	16.86	4725	82.06	62	1.08	7.1	14.8	46	16.1	5.7	6.4	4	51783	65017
Blount County, Tennessee	Blount County	TN	17932	26.92	47369	71.12	1308	1.96	3.2	6.3	35.5	20.2	8.7	16.5	9.5	70935	89542
Bradley County, Tennessee	Bradley County	TN	9851	21.48	35204	76.76	810	1.77	4.2	7.6	31.2	23.2	10	14.8	9.1	60692	79443
Campbell County, Tennessee	Campbell County	TN	2441	16.35	12331	82.58	161	1.08	6.6	12.2	41.3	20.6	6.3	7.6	5.4	48258	63315
Cannon County, Tennessee	Cannon County	TN	1261	19.23	5190	79.15	106	1.62	4.6	9.8	41.9	19	7.2	11.7	5.8	57651	71694
Carroll County, Tennessee	Carroll County	TN	2559	21.5	9205	77.32	141	1.18	4.6	6.7	42.8	19	7.2	11.9	8	49700	67574
Carter County, Tennessee	Carter County	TN	4529	18.49	19584	79.96	379	1.55	4.2	8.3	36.7	21.4	8.2	13.5	7.6	47994	62879
Cheatham County, Tennessee	Cheatham County	TN	5514	27.22	14438	71.26	308	1.52	4.3	6.7	38.4	20.5	7.1	15	7.9	77014	92149
Chester County, Tennessee	Chester County	TN	1412	18.62	5952	78.48	220	2.9	3.3	11.1	41.2	23.3	4.7	10	6.3	57471	65443
Claiborne County, Tennessee	Claiborne County	TN	2202	17.01	10604	81.92	139	1.07	8.2	9.7	38.3	16.2	8.9	10.9	7.9	42406	59276
Clay County, Tennessee	Clay County	TN	735	20.96	2733	77.95	38	1.08	7.4	7.6	48.5	18	6.2	7.9	4.4	39572	55909
Cocke County, Tennessee	Cocke County	TN	2533	17.05	12162	81.85	164	1.1	6.7	8.9	48.3	17.8	6.7	7.7	4	45110	59679
Coffee County, Tennessee	Coffee County	TN	5705	23.49	17883	73.65	694	2.86	3.8	8.8	37.7	18.7	7.7	13.8	9.5	57424	72491
Crockett County, Tennessee	Crockett County	TN	1382	22.6	4673	76.43	59	0.96	5.1	9.2	41.4	21.4	7.4	10.5	5.1	59136	75827
Cumberland County, Tennessee	Cumberland County	TN	6728	20.84	25168	77.97	383	1.19	3.9	6.8	40.7	22.2	8.3	11	7.2	56002	69901
Davidson County, Tennessee	Davidson County	TN	199703	64.49	100218	32.36	9737	3.14	3.8	5.9	20.7	17.7	5.9	28.4	17.5	71863	105799
DeKalb County, Tennessee	DeKalb County	TN	1750	20.56	6672	78.37	91	1.07	6.9	12	39.6	16.9	4.2	14	6.4	46907	65911
Decatur County, Tennessee	Decatur County	TN	904	17.25	4229	80.69	108	2.06	5.1	9.8	45.9	15.8	7.7	12.6	3	48466	68881
Dickson County, Tennessee	Dickson County	TN	6106	25.1	17643	72.54	574	2.36	3.8	7.8	39.1	21.5	8.5	12.3	7	68492	86922
Dyer County, Tennessee	Dyer County	TN	3158	20.94	11768	78.04	153	1.01	4.2	7.6	39	19.9	7.7	13.1	8.6	53150	92632
Fayette County, Tennessee	Fayette County	TN	7027	30.57	15690	68.26	267	1.16	2.6	7.2	32.9	23.5	8.2	17.4	8.3	81074	101659
Fentress County, Tennessee	Fentress County	TN	1214	13.91	7441	85.24	74	0.85	11.4	7.7	38.8	18.8	6.9	11.3	5	47884	56432
Franklin County, Tennessee	Franklin County	TN	4864	25.42	13987	73.11	281	1.47	3.7	6.3	41.6	19	7.6	13.2	8.6	57933	77091
Gibson County, Tennessee	Gibson County	TN	5771	25.84	16259	72.8	305	1.37	4.3	8.1	40.8	22.3	6	11.5	7	55455	69347
Giles County, Tennessee	Giles County	TN	3298	24.98	9784	74.1	121	0.92	3.9	8	43.5	18.3	7.3	12.3	6.6	56877	78627
Grainger County, Tennessee	Grainger County	TN	1467	14.48	8565	84.52	102	1.01	7.7	11.3	41.9	19.1	5.9	8	6.1	47098	64393
Greene County, Tennessee	Greene County	TN	5199	18.51	22259	79.25	629	2.24	5.2	8.3	43.1	18.8	6.5	11.2	6.8	51975	68249
Grundy County, Tennessee	Grundy County	TN	988	16.87	4802	82.02	65	1.11	8	12.5	44.1	15.7	6.3	6.9	6.7	47948	64023
Hamblen County, Tennessee	Hamblen County	TN	5500	22.33	18811	76.37	320	1.3	6	7.6	39.9	20.1	7.6	11.9	6.9	49656	68152
Hamilton County, Tennessee	Hamilton County	TN	75522	44.14	92108	53.83	3483	2.04	3.6	5.7	23.8	22.6	8.8	22.4	13.1	69069	98703
Hancock County, Tennessee	Hancock County	TN	362	13.19	2372	86.44	10	0.36	9.2	11	44	22.6	3.3	4	5.9	31809	54601
Hardeman County, Tennessee	Hardeman County	TN	4180	41.54	5760	57.24	123	1.22	4.3	14.8	42	22.4	6.1	7	3.4	43566	58636
Hardin County, Tennessee	Hardin County	TN	1775	15.38	9559	82.85	204	1.77	4.7	10	44.1	18.9	6.6	11	4.8	46902	61894
Hawkins County, Tennessee	Hawkins County	TN	4083	16.45	20405	82.2	336	1.35	4.9	8.9	42.4	19.9	7.2	11.3	5.5	53647	69193
Haywood County, Tennessee	Haywood County	TN	4012	53.93	3343	44.94	84	1.13	6.2	11.6	45	19.2	5.9	7.2	5	44890	61642
Henderson County, Tennessee	Henderson County	TN	2092	17.4	9797	81.51	131	1.09	4	8.1	49	17.7	7.3	9.4	4.4	51576	64570
Henry County, Tennessee	Henry County	TN	3548	23.58	11239	74.69	260	1.73	5.3	7.6	44.5	18.5	5.1	12.4	6.6	48025	65627
Hickman County, Tennessee	Hickman County	TN	2130	21.66	7577	77.06	125	1.27	6	11.5	42.2	19.6	8.3	8.8	3.6	54669	73975
Houston County, Tennessee	Houston County	TN	871	23.63	2718	73.74	97	2.63	5.4	10.5	46.1	15.6	10.9	7.1	4.3	51544	63800
Humphreys County, Tennessee	Humphreys County	TN	2017	24.49	6120	74.31	99	1.2	3.7	9	45.4	16.2	8.8	10.8	6.1	54185	73417
Jackson County, Tennessee	Jackson County	TN	1135	21.32	4118	77.36	70	1.32	8.3	10.4	45.9	15.4	6.1	11.2	2.7	42357	59307
Jefferson County, Tennessee	Jefferson County	TN	4654	19.71	18651	78.98	311	1.32	4.5	7.5	36.5	21.2	9.3	13	8.1	60393	81062
Johnson County, Tennessee	Johnson County	TN	1246	15.97	6468	82.91	87	1.12	5.8	11.8	39.6	20.4	7.4	9.7	5.2	47571	65146
Knox County, Tennessee	Knox County	TN	91422	41.45	124540	56.47	4594	2.08	2.6	5	25	19.2	9	23.9	15.2	68580	95220
Lake County, Tennessee	Lake County	TN	526	25.86	1492	73.35	16	0.79	8.2	17.6	42.2	17.3	4	6.4	4.4	32064	53918
Lauderdale County, Tennessee	Lauderdale County	TN	3193	35.62	5674	63.29	98	1.09	4.7	13.4	47	18	6.5	6.4	4.1	46702	61805
Lawrence County, Tennessee	Lawrence County	TN	3195	17.07	15334	81.92	189	1.01	7.1	7.1	43.3	19.5	7.3	9.4	6.2	51038	68335
Lewis County, Tennessee	Lewis County	TN	1072	19.11	4474	79.76	63	1.12	7.4	8.3	42.5	24.3	8.3	6.6	2.8	44613	62863
Lincoln County, Tennessee	Lincoln County	TN	2919	18.7	12281	78.68	408	2.61	3.2	8.7	43.8	17.1	7.9	11.6	7.7	61374	77234
Loudon County, Tennessee	Loudon County	TN	6948	23.68	21713	73.99	686	2.34	4.5	7.7	31.2	20.6	7.6	17.9	10.5	75008	96654
Macon County, Tennessee	Macon County	TN	1307	13.78	8096	85.34	84	0.89	8.2	13.8	47.2	14.9	6.1	6.5	3.4	51215	66681
Madison County, Tennessee	Madison County	TN	18390	42.82	23943	55.75	617	1.44	2.8	7.5	33.8	22.6	7.4	15.7	10.3	55280	76310
Marion County, Tennessee	Marion County	TN	3177	23.97	9911	74.77	168	1.27	6.8	12.3	37.8	20.5	7.4	9.3	5.9	58139	72133
Marshall County, Tennessee	Marshall County	TN	3605	24.23	11043	74.22	230	1.55	3.5	7.3	37.1	21.6	9.6	14.4	6.4	65325	81903
Maury County, Tennessee	Maury County	TN	14418	30.9	31464	67.44	775	1.66	3.3	4.9	32.9	22.3	10.7	17.6	8.3	71500	89976
McMinn County, Tennessee	McMinn County	TN	4361	19.09	18198	79.66	285	1.25	5.1	8.5	38.4	21.2	9.4	11.3	6.1	57982	75745
McNairy County, Tennessee	McNairy County	TN	1943	17.23	9093	80.65	239	2.12	4.4	9.3	47.7	19.6	7.6	6.6	4.9	46920	63615
Meigs County, Tennessee	Meigs County	TN	1008	18.22	4467	80.75	57	1.03	6.4	11.5	42.6	22	6	7.3	4.2	59434	67011
Monroe County, Tennessee	Monroe County	TN	3764	18.1	16783	80.7	250	1.2	6.6	7.7	40.7	21.4	8	10.7	4.9	52123	66201
Montgomery County, Tennessee	Montgomery County	TN	32472	42.3	42187	54.96	2099	2.73	1.8	4.1	27.1	24.8	11.9	19.4	11	67890	83123
Moore County, Tennessee	Moore County	TN	573	16.19	2888	81.6	78	2.2	5.6	8.3	39.2	14.5	9.3	15.3	7.9	69250	86601
Morgan County, Tennessee	Morgan County	TN	1167	14.18	6930	84.22	131	1.59	6.5	12.1	43.7	17.7	7.6	7.3	5.1	51971	73910
Obion County, Tennessee	Obion County	TN	2589	19.15	10790	79.8	142	1.05	5.5	9.7	45.2	17.7	4.8	10.9	6.4	50638	68079
Overton County, Tennessee	Overton County	TN	2033	20.26	7918	78.89	86	0.86	8.4	9.4	45.5	17.9	4.9	8.9	4.9	46580	72062
Perry County, Tennessee	Perry County	TN	615	17.94	2775	80.95	38	1.11	12	8	45.4	15.7	8.2	7.1	3.6	55978	82094
Pickett County, Tennessee	Pickett County	TN	525	17.91	2381	81.24	25	0.85	6.3	12.2	39	19.6	4.7	11.9	6.3	44317	57684
Polk County, Tennessee	Polk County	TN	1492	17.85	6792	81.24	76	0.91	7.2	8.2	38	21.5	11.9	8.2	5.1	53775	73916
Putnam County, Tennessee	Putnam County	TN	9185	27.34	23759	70.73	649	1.93	4.6	6.2	34.7	20.8	6.1	17.4	10.2	54371	72137
Rhea County, Tennessee	Rhea County	TN	2369	17.37	11050	81.03	218	1.6	4.8	11.9	40.5	19.6	6.1	11.7	5.4	55568	70017
Roane County, Tennessee	Roane County	TN	6043	23.32	19230	74.2	644	2.48	3.4	6.7	37.1	21.6	9.4	13	8.9	66460	87984
Robertson County, Tennessee	Robertson County	TN	8692	25.78	24536	72.77	489	1.45	4	7.3	39.2	20.3	8.1	15.6	5.4	74440	92227
Rutherford County, Tennessee	Rutherford County	TN	59341	41.24	81480	56.63	3057	2.12	2.8	4.5	27.9	23.1	8.3	23	10.4	78291	95579
Scott County, Tennessee	Scott County	TN	986	10.89	8004	88.42	62	0.68	6.4	13.2	45.9	17.5	6.7	6.2	4.1	39744	54308
Sequatchie County, Tennessee	Sequatchie County	TN	1298	17.9	5855	80.74	99	1.37	4.9	11.1	38.4	20.1	6.9	12.2	6.4	53038	67774
Sevier County, Tennessee	Sevier County	TN	8721	20.03	33783	77.6	1031	2.37	4.2	8.1	35.9	23.2	8.4	13.4	6.7	60103	80070
Shelby County, Tennessee	Shelby County	TN	246105	64.42	129815	33.98	6135	1.61	3.5	6.9	27.6	21.7	6.6	20.2	13.6	59621	90500
Smith County, Tennessee	Smith County	TN	1802	19.91	7136	78.84	113	1.25	4	9.4	42.5	20.2	7	11.5	5.4	57677	80955
Stewart County, Tennessee	Stewart County	TN	1232	19.57	4950	78.62	114	1.81	4.3	7.2	45.7	18.3	7.8	12.1	4.7	57257	70516
Sullivan County, Tennessee	Sullivan County	TN	17272	23.23	55860	75.12	1225	1.65	3.8	6.9	32.9	20.2	10	17.4	8.9	54357	77959
Sumner County, Tennessee	Sumner County	TN	27680	29.88	63454	68.5	1496	1.62	3	5.6	29.2	22	8.9	21.2	10.1	81883	104078
Tipton County, Tennessee	Tipton County	TN	6837	25.04	20070	73.49	401	1.47	3.6	7.4	36	23.5	9.9	12.4	7.2	70674	85338
Trousdale County, Tennessee	Trousdale County	TN	1012	25.31	2936	73.44	50	1.25	4	10.1	49.2	20.4	6.6	5.4	4.4	62018	71397
Unicoi County, Tennessee	Unicoi County	TN	1615	19.44	6599	79.44	93	1.12	4.1	7.9	37.9	25.5	7.3	11.6	5.7	49855	64470
Union County, Tennessee	Union County	TN	1249	15.38	6803	83.75	71	0.87	8	11.6	42.4	16.5	8.4	7	6.1	57094	72397
Van Buren County, Tennessee	Van Buren County	TN	544	18.62	2342	80.18	35	1.2	9.4	10	47.5	15.5	7.3	5.8	4.4	44730	60231
Warren County, Tennessee	Warren County	TN	4126	24.72	12323	73.83	243	1.46	5.8	10.5	47.4	15.8	6.5	9.7	4.3	52948	68082
Washington County, Tennessee	Washington County	TN	18638	30.96	40444	67.18	1121	1.86	3	5.9	28.7	21.6	7.4	19.2	14.2	58507	83142
Wayne County, Tennessee	Wayne County	TN	820	12.3	5795	86.89	54	0.81	6.3	11.4	44.5	19.3	6.3	8.4	3.8	49360	69064
Weakley County, Tennessee	Weakley County	TN	3020	21.99	10396	75.69	319	2.32	4.8	7.6	45.4	17.1	4.9	12.6	7.5	47769	64752
White County, Tennessee	White County	TN	2143	18.02	9606	80.76	146	1.23	7.1	11.2	40	20.4	7.8	9	4.6	48220	64405
Williamson County, Tennessee	Williamson County	TN	50161	36.08	86469	62.2	2386	1.72	1.7	2.2	13.6	13.9	6.5	39.2	22.7	125943	169404
Wilson County, Tennessee	Wilson County	TN	22254	29.94	50296	67.67	1780	2.39	2.6	4.3	28.9	19.3	8.1	24.5	12.3	89462	114341
Anderson County, Texas	Anderson County	TX	3955	20.57	15110	78.59	162	0.84	5.5	9.7	38.2	24.3	9.1	9.1	4	57445	72139
Andrews County, Texas	Andrews County	TX	850	14.5	4943	84.31	70	1.19	14.5	11.7	29.2	17.3	7.6	14.8	4.9	86458	112085
Angelina County, Texas	Angelina County	TX	9143	26.44	25076	72.53	355	1.03	7.4	8.6	32.2	24.5	8.6	11.8	6.8	57055	73244
Aransas County, Texas	Aransas County	TX	2916	23.73	9239	75.17	135	1.1	5.4	6	31.8	25.5	7.1	15.7	8.4	58168	87039
Archer County, Texas	Archer County	TX	446	9.3	4300	89.66	50	1.04	2.4	6.4	37.3	21	7.7	17	8.2	69954	94115
Armstrong County, Texas	Armstrong County	TX	75	6.74	1035	93.08	2	0.18	4	3.2	33.1	24.5	9.2	17.7	8.3	70417	81158
Atascosa County, Texas	Atascosa County	TX	5876	32.43	12039	66.45	203	1.12	8.5	11	39.8	21	5.3	11	3.5	67442	81385
Austin County, Texas	Austin County	TX	2951	20.28	11447	78.65	156	1.07	5.9	6.2	32.5	24.4	6.8	17.9	6.2	73556	92446
Bailey County, Texas	Bailey County	TX	409	21.99	1434	77.1	17	0.91	10.1	16.7	33.6	18.8	5.4	11.1	4.2	69830	82529
Bandera County, Texas	Bandera County	TX	2505	19.7	10057	79.1	153	1.2	2.7	5.3	29.6	24.3	10.7	17.1	10.2	70965	93223
Bastrop County, Texas	Bastrop County	TX	15474	42.2	20516	55.96	675	1.84	9.3	7.7	30.4	23.6	6	15.7	7.4	80151	97636
Baylor County, Texas	Baylor County	TX	183	10.75	1494	87.78	25	1.47	2.3	10.7	36.7	19.9	7.1	19.5	3.8	52716	71186
Bee County, Texas	Bee County	TX	3288	34.9	6006	63.76	126	1.34	7.8	12	33.3	26.9	8.5	6.8	4.7	50283	72582
Bell County, Texas	Bell County	TX	57014	44.76	67893	53.3	2468	1.94	3.5	5.7	25.8	27.8	10.4	17.6	9.1	62858	83348
Bexar County, Texas	Bexar County	TX	448452	58.32	308618	40.13	11882	1.55	6.6	7.5	24.6	22.4	8.5	18.8	11.6	67275	90894
Blanco County, Texas	Blanco County	TX	1911	25.68	5443	73.15	87	1.17	5	4.7	27	23.7	9	23.9	6.8	79717	106901
Borden County, Texas	Borden County	TX	16	3.85	397	95.43	3	0.72	2.3	3.2	21.2	25.7	8.2	29.2	10.3	80625	122340
Bosque County, Texas	Bosque County	TX	1561	17.1	7469	81.84	96	1.05	4.5	7.8	32.1	27.4	9.2	13.5	5.5	63868	81933
Bowie County, Texas	Bowie County	TX	10747	28.09	27116	70.87	398	1.04	3.4	6.6	35.3	24.3	8.1	14.1	8.2	56628	78971
Brazoria County, Texas	Brazoria County	TX	62228	40.15	90433	58.35	2323	1.5	5	6.2	24.6	23.7	9	20.2	11.2	91972	115494
Brazos County, Texas	Brazos County	TX	35349	41.56	47530	55.88	2182	2.57	5.1	5.6	21.1	18.3	6.7	23.5	19.7	57562	84652
Brewster County, Texas	Brewster County	TX	2258	46.83	2461	51.04	103	2.14	4.2	6.9	16.5	21.5	3.2	28.5	19.2	47747	69449
Briscoe County, Texas	Briscoe County	TX	78	10.76	639	88.14	8	1.1	7.8	7.7	34.6	22.6	11.7	9.6	6.1	35446	58194
Brooks County, Texas	Brooks County	TX	1470	59.18	998	40.18	16	0.64	12.6	17.3	31	19.2	0.9	14.1	5	30566	46187
Brown County, Texas	Brown County	TX	2107	13.19	13698	85.78	164	1.03	3.9	8.7	33.3	26.8	7.4	14.7	5.2	53792	73932
Burleson County, Texas	Burleson County	TX	1788	20.77	6743	78.33	78	0.91	5.4	10.9	34	20.4	6.9	16.3	6.1	71745	92851
Burnet County, Texas	Burnet County	TX	5639	22.81	18767	75.93	311	1.26	6.4	5.1	29.4	24.5	6.4	19.4	8.7	71482	104304
Caldwell County, Texas	Caldwell County	TX	6672	44.56	8031	53.64	270	1.8	7.4	12.3	37.6	21.7	4.3	11.9	4.8	66779	83491
Calhoun County, Texas	Calhoun County	TX	2148	27.34	5641	71.8	67	0.85	7.6	8.1	34.7	24.3	9.1	10.1	6.1	62267	81858
Callahan County, Texas	Callahan County	TX	734	10.74	6012	88	86	1.26	1.9	6	36.1	25.1	7.9	17.5	5.4	63906	77474
Cameron County, Texas	Cameron County	TX	64063	56.11	49032	42.94	1079	0.95	16.6	12.6	26	17.9	7.5	13.5	6	47435	65655
Camp County, Texas	Camp County	TX	1394	27.55	3626	71.66	40	0.79	6.8	6	37.8	21.8	6.9	14.7	6	53968	75130
Carson County, Texas	Carson County	TX	297	9.51	2779	89.01	46	1.47	2	5.6	32.9	25.1	9.1	17.4	7.8	83199	100407
Cass County, Texas	Cass County	TX	2795	20.07	11033	79.22	99	0.71	3.4	8.9	42.3	20.5	7.6	12.3	4.9	54303	71369
Castro County, Texas	Castro County	TX	466	22.37	1602	76.91	15	0.72	18.4	6.5	33.5	17	5.2	14.9	4.6	59886	73212
Chambers County, Texas	Chambers County	TX	3997	18.46	17353	80.15	302	1.39	5.6	5.2	26.8	29.9	9.8	15.9	6.9	106103	123951
Cherokee County, Texas	Cherokee County	TX	4210	21.58	15101	77.41	197	1.01	9.2	11.9	32.4	22.6	7.7	10.2	5.9	56971	75104
Childress County, Texas	Childress County	TX	310	13.6	1943	85.26	26	1.14	6.1	11.9	37.5	24.1	5.7	10.5	4.1	56063	76358
Clay County, Texas	Clay County	TX	614	10.7	5069	88.29	58	1.01	2.8	4.3	35.5	26.9	7.3	16.3	6.9	75227	84703
Cochran County, Texas	Cochran County	TX	177	17.7	809	80.9	14	1.4	20.4	10.2	34	16	10.9	6.1	2.4	41597	59334
Coke County, Texas	Coke County	TX	178	10.01	1586	89.15	15	0.84	5.5	8.4	32.5	27.5	6.5	12.4	7.1	40230	59150
Coleman County, Texas	Coleman County	TX	451	10.94	3641	88.29	32	0.78	7.2	4.7	29.4	31.5	6.7	15.7	5	51034	73573
Collin County, Texas	Collin County	TX	230945	46.92	252318	51.26	8953	1.82	3	2.7	14.7	17.9	7.5	33.8	20.5	113255	144818
Collingsworth County, Texas	Collingsworth County	TX	155	12.73	1048	86.04	15	1.23	8.6	13.6	23.1	19.1	10.3	20.1	5.1	52045	87624
Colorado County, Texas	Colorado County	TX	2420	24.26	7472	74.91	83	0.83	8.2	7.3	34.9	21.3	6.1	15.8	6.4	63352	88293
Comal County, Texas	Comal County	TX	24826	27.94	62740	70.6	1297	1.46	2.5	3.9	23.2	21.9	8	26.2	14.4	93744	121798
Comanche County, Texas	Comanche County	TX	853	14.02	5177	85.06	56	0.92	6.8	8.5	33.1	23.8	8.8	12.6	6.3	57383	77697
Concho County, Texas	Concho County	TX	197	15.54	1058	83.44	13	1.03	14	11.1	36.9	21.3	5.1	8.7	2.8	55750	67435
Cooke County, Texas	Cooke County	TX	3210	16.91	15596	82.14	182	0.96	5	6.3	31.3	25.4	8.8	15.6	7.6	66374	93118
Coryell County, Texas	Coryell County	TX	7565	32.21	15438	65.72	487	2.07	3.8	6.2	28.5	33.7	10.5	12	5.3	63281	77044
Cottle County, Texas	Cottle County	TX	113	17.07	540	81.57	9	1.36	7	11.1	28.7	27	7.8	11.8	6.6	47625	63160
Crane County, Texas	Crane County	TX	241	16.03	1247	82.97	15	1	18.9	6.1	37.7	19.3	2.3	11	4.6	71364	83614
Crockett County, Texas	Crockett County	TX	344	21.86	1220	77.51	10	0.64	12.5	15.5	28.2	26.1	2	9.2	6.4	64103	80443
Crosby County, Texas	Crosby County	TX	527	26.98	1396	71.48	30	1.54	9.6	12.6	37.8	19.3	6.7	11.5	2.5	50268	78614
Culberson County, Texas	Culberson County	TX	438	50.69	415	48.03	11	1.27	18.8	4.8	50.3	15.5	0.1	9.7	0.8	35924	48200
Dallam County, Texas	Dallam County	TX	197	12.24	1389	86.33	23	1.43	18.7	3.2	39.6	21.5	2.7	12.5	1.8	71969	83617
Dallas County, Texas	Dallas County	TX	598576	64.95	307076	33.32	15986	1.73	10.3	8.6	22.6	18.6	6.1	21	12.9	70732	104220
Dawson County, Texas	Dawson County	TX	808	21.32	2951	77.88	30	0.79	14.5	15.3	34.1	17.4	5.2	11.5	2	45268	66869
DeWitt County, Texas	DeWitt County	TX	1494	18.4	6567	80.89	57	0.7	6.6	9.3	42.5	19.3	8.2	10.1	4	61100	82939
Deaf Smith County, Texas	Deaf Smith County	TX	1264	27.42	3294	71.45	52	1.13	16.3	11.5	41.1	15.6	3.7	8.8	3	51942	70209
Delta County, Texas	Delta County	TX	403	15.55	2162	83.41	27	1.04	4.7	6.1	35.1	22.4	10.2	14.9	6.6	68491	87624
Denton County, Texas	Denton County	TX	188695	45.15	222480	53.23	6789	1.62	3.1	3.6	16.9	20.6	7.9	31.7	16.2	104180	135221
Dickens County, Texas	Dickens County	TX	130	13.16	853	86.34	5	0.51	5.9	8.6	39.8	18.1	7.4	13.5	6.6	46638	68840
Dimmit County, Texas	Dimmit County	TX	2264	61.76	1384	37.75	18	0.49	19.5	7.8	34.9	20.6	2.7	8.1	6.5	27374	58081
Donley County, Texas	Donley County	TX	198	12.01	1438	87.26	12	0.73	3.9	11.7	34.1	27.7	9.1	8.9	4.6	51711	64460
Duval County, Texas	Duval County	TX	2575	50.96	2443	48.35	35	0.69	13.7	12.9	34.7	23.8	7.1	4.5	3.4	50697	61341
Eastland County, Texas	Eastland County	TX	983	11.85	7237	87.28	72	0.87	5.3	9.3	30	24.3	8.2	15	7.8	52902	75893
Ector County, Texas	Ector County	TX	11367	25.5	32697	73.34	517	1.16	10.2	13	29.7	22.5	8.1	11.3	5.3	70566	92876
Edwards County, Texas	Edwards County	TX	168	15.76	893	83.77	5	0.47	15.6	10	18	27.6	9.9	15	4	40809	59314
El Paso County, Texas	El Paso County	TX	178126	66.66	84331	31.56	4758	1.78	11.7	8.3	24.3	21.7	9	16.9	8.1	55417	73912
Ellis County, Texas	Ellis County	TX	27565	32.24	56717	66.34	1211	1.42	5.2	6.5	27.2	24.9	8.4	19.1	8.8	93248	111815
Erath County, Texas	Erath County	TX	2916	17.3	13684	81.2	253	1.5	6.3	6.6	26.4	20.2	8.2	22	10.4	59654	83514
Falls County, Texas	Falls County	TX	1899	30.96	4177	68.11	57	0.93	6	11.5	33.5	27.8	7.7	8.8	4.6	45172	67718
Fannin County, Texas	Fannin County	TX	2655	17.7	12171	81.12	178	1.19	5.7	8.6	35	23.5	6.7	13.3	7.3	65835	91939
Fayette County, Texas	Fayette County	TX	2661	20.56	10171	78.6	109	0.84	5	5.1	39.7	19	7.1	17.7	6.4	72881	95174
Fisher County, Texas	Fisher County	TX	352	19.28	1448	79.3	26	1.42	7.7	6.1	34.4	20.4	11.4	13.5	6.4	60461	73425
Floyd County, Texas	Floyd County	TX	438	21.48	1584	77.69	17	0.83	13.3	15.5	28.2	20	7	12.3	3.7	49321	75402
Foard County, Texas	Foard County	TX	99	17.97	445	80.76	7	1.27	8	11.6	24.5	29.1	10.7	11.6	4.4	41944	59312
Fort Bend County, Texas	Fort Bend County	TX	195552	54.7	157718	44.12	4244	1.19	4.7	3.9	17.9	18	7	29.2	19.4	109987	138115
Franklin County, Texas	Franklin County	TX	804	16.05	4161	83.07	44	0.88	3.5	5	28	25.5	7.3	19.9	10.8	67915	100612
Freestone County, Texas	Freestone County	TX	1635	18.77	6991	80.25	85	0.98	5.2	9.8	34.5	22.5	10.7	11.9	5.5	55902	75009
Frio County, Texas	Frio County	TX	2422	45.88	2823	53.48	34	0.64	12.1	17.9	39	16.4	6.1	5.2	3.3	56042	69861
Gaines County, Texas	Gaines County	TX	576	9.61	5355	89.32	64	1.07	28.7	10.9	33.1	10.6	6.3	8.2	2.2	73299	89014
Galveston County, Texas	Galveston County	TX	58842	37.95	93911	60.56	2307	1.49	4.2	6	23.4	23.2	9.3	22.7	11.1	83913	110116
Garza County, Texas	Garza County	TX	231	13.97	1413	85.48	9	0.54	15.6	14.5	32.8	21.3	2.6	7.5	5.7	56215	72497
Gillespie County, Texas	Gillespie County	TX	3176	20.04	12514	78.97	156	0.98	6	5.3	25.2	20.5	7.8	22	13.2	70162	99768
Glasscock County, Texas	Glasscock County	TX	39	5.97	611	93.57	3	0.46	9.9	4.1	16.4	29.4	2.6	29.4	8.4	112188	133127
Goliad County, Texas	Goliad County	TX	877	21.99	3085	77.36	26	0.65	8.9	6.7	31	24.7	10.9	13.1	4.8	58125	91740
Gonzales County, Texas	Gonzales County	TX	1948	25.47	5627	73.58	72	0.94	9.3	13.3	43.4	15	5.9	9.2	3.9	64255	87246
Gray County, Texas	Gray County	TX	829	10.65	6840	87.9	113	1.45	8.6	9.8	32.3	24.4	8.8	12.3	3.8	54563	77997
Grayson County, Texas	Grayson County	TX	14506	24.4	44163	74.3	770	1.3	3.9	5.7	30.2	26.5	11	15.2	7.6	66608	88868
Gregg County, Texas	Gregg County	TX	14796	30.84	32493	67.72	693	1.44	5.7	7.9	28.7	26.5	8.8	15.2	7.2	63811	84850
Grimes County, Texas	Grimes County	TX	2833	22.82	9432	75.98	148	1.19	7	12.2	31.2	23.1	7	12	7.4	63484	84809
Guadalupe County, Texas	Guadalupe County	TX	28805	37.12	47553	61.29	1234	1.59	4.5	6.4	29.5	20.8	9.2	19.6	9.9	88111	104433
Hale County, Texas	Hale County	TX	2279	23.78	7177	74.89	128	1.34	13.8	11.4	33	20.2	6.8	9.2	5.6	50721	67058
Hall County, Texas	Hall County	TX	168	14.38	995	85.19	5	0.43	6.7	11.5	33.6	18.9	11.2	14	4.2	43873	66562
Hamilton County, Texas	Hamilton County	TX	641	14.74	3616	83.15	92	2.12	4	6.6	35.9	19.7	8.7	17.9	7.2	54890	88744
Hansford County, Texas	Hansford County	TX	166	8.11	1849	90.33	32	1.56	12.6	15.2	22.3	15.1	5.1	24.8	4.8	62350	77865
Hardeman County, Texas	Hardeman County	TX	241	15.25	1330	84.18	9	0.57	5.1	9.9	34.2	25.2	8.1	13.2	4.2	60455	73097
Hardin County, Texas	Hardin County	TX	3474	12.57	23858	86.33	303	1.1	3	8.1	38.6	23.3	8.5	14.1	4.3	70164	87881
Harris County, Texas	Harris County	TX	918193	55.96	700630	42.7	21995	1.34	10.4	7.5	22.9	19	7.1	20.8	12.4	70789	104780
Harrison County, Texas	Harrison County	TX	7908	26.62	21466	72.25	336	1.13	3.4	7.2	32.8	25.8	8.6	15.1	7.1	63427	81428
Hartley County, Texas	Hartley County	TX	195	9.38	1868	89.89	15	0.72	7.8	8.1	35.2	17.9	5.8	14.5	10.7	78065	98638
Haskell County, Texas	Haskell County	TX	353	15.94	1840	83.11	21	0.95	8.3	12.2	36	18.2	5.2	11.9	8.3	52786	91530
Hays County, Texas	Hays County	TX	59524	54.43	47680	43.6	2153	1.97	4.4	4.7	22.3	21.7	6.6	26.3	14.1	79990	104935
Hemphill County, Texas	Hemphill County	TX	206	11.98	1486	86.4	28	1.63	7.1	4.2	35.4	20.8	9.2	18.1	5.2	67798	100738
Henderson County, Texas	Henderson County	TX	7060	19.44	28911	79.62	339	0.93	4.6	8.7	33.8	25.6	8.2	13.1	5.9	59778	81990
Hill County, Texas	Hill County	TX	2860	19.15	11926	79.87	145	0.97	5.7	8.7	34.2	23.7	10.1	12	5.5	60669	78273
Hockley County, Texas	Hockley County	TX	1482	18.31	6536	80.74	77	0.95	9.8	10.7	28.8	24	9.6	11.3	5.9	53283	73311
Hood County, Texas	Hood County	TX	5648	17.36	26496	81.42	397	1.22	2.7	5	28	25.2	7.6	21.4	10.3	80013	103961
Hopkins County, Texas	Hopkins County	TX	3046	19.11	12719	79.8	174	1.09	5.5	9.6	34.5	21.5	7.3	14.8	6.7	63766	84614
Houston County, Texas	Houston County	TX	2314	24.52	7060	74.81	63	0.67	6	11.6	39.2	21.1	7.3	10.5	4.2	51043	71244
Howard County, Texas	Howard County	TX	2069	20.21	8054	78.65	117	1.14	8.1	10.9	34.7	25	7.5	9.4	4.4	67243	86876
Hudspeth County, Texas	Hudspeth County	TX	371	31.85	779	66.87	15	1.29	27.9	17.2	25.3	15.2	4.1	9.5	0.9	35163	45286
Hunt County, Texas	Hunt County	TX	8906	23.09	29163	75.6	505	1.31	3.9	8.4	35.1	24	7.3	14.6	6.7	66885	84800
Hutchinson County, Texas	Hutchinson County	TX	965	11	7681	87.57	125	1.43	5.4	8.7	33	27.5	9.8	11.4	4.2	62211	79929
Irion County, Texas	Irion County	TX	120	13.5	759	85.38	10	1.12	6.7	4.5	24.1	36.5	9.8	16.2	2.1	54708	68513
Jack County, Texas	Jack County	TX	331	8.75	3418	90.38	33	0.87	6.6	13.8	32.9	24.3	6.9	11.6	3.9	58861	78534
Jackson County, Texas	Jackson County	TX	1033	16.29	5231	82.51	76	1.2	9.2	10.2	34.6	24.9	8	10.5	2.5	67176	82005
Jasper County, Texas	Jasper County	TX	2954	18.93	12542	80.36	112	0.72	3.5	9.3	47.2	20.7	7.1	8.4	3.8	48818	75809
Jeff Davis County, Texas	Jeff Davis County	TX	501	38.39	784	60.08	20	1.53	9.7	4.6	19.3	30.1	8.4	12.5	15.4	38125	71740
Jefferson County, Texas	Jefferson County	TX	46073	48.63	47570	50.21	1096	1.16	7.3	7.9	31.7	23.8	9.3	13.9	6.1	57294	81574
Jim Hogg County, Texas	Jim Hogg County	TX	1197	58.79	833	40.91	6	0.29	9.1	12.3	42.7	21.2	2	8.6	4.2	42292	59372
Jim Wells County, Texas	Jim Wells County	TX	6119	44.77	7453	54.52	97	0.71	8.6	13.1	36.5	20.4	6	12	3.2	46626	69066
Johnson County, Texas	Johnson County	TX	16464	22.87	54628	75.87	913	1.27	4.9	8.8	34.6	22.9	7.5	14.8	6.5	77058	94395
Jones County, Texas	Jones County	TX	999	14.82	5660	83.96	82	1.22	5.5	13.7	38.7	22.9	8.1	8.8	2.4	59361	70243
Karnes County, Texas	Karnes County	TX	1234	23.51	3968	75.6	47	0.9	8.9	15	37	16.8	6	11.4	4.8	57798	86219
Kaufman County, Texas	Kaufman County	TX	18405	32.46	37624	66.35	674	1.19	5.2	8.4	29.1	24.5	8.9	17	6.8	84075	99652
Kendall County, Texas	Kendall County	TX	6020	22.77	20083	75.96	335	1.27	4.1	3.4	15.4	21.2	7.4	30.9	17.6	104196	152380
Kenedy County, Texas	Kenedy County	TX	65	33.51	127	65.46	2	1.03	47.1	19.5	21.8	3.4	0	5.7	2.3	45455	56413
Kent County, Texas	Kent County	TX	47	10.17	411	88.96	4	0.87	4.6	6.9	29	26.8	4.9	14.2	13.7	68553	77335
Kerr County, Texas	Kerr County	TX	6524	23.51	20879	75.25	342	1.23	4.3	6	28.8	23.6	7.6	18.4	11.4	66713	91321
Kimble County, Texas	Kimble County	TX	284	12.39	1987	86.69	21	0.92	5.4	9.4	27.9	25	4.5	18.9	8.9	62386	94800
King County, Texas	King County	TX	8	5.03	151	94.97	0	0	18.1	3.1	33.1	15	0	25.6	5	59375	67984
Kinney County, Texas	Kinney County	TX	446	27.82	1144	71.37	13	0.81	8.6	6.8	24.5	39.6	7.2	6.9	6.4	52386	64114
Kleberg County, Texas	Kleberg County	TX	5314	48.56	5504	50.29	126	1.15	9.4	8.2	34.7	19.5	5.2	14.9	8.1	52487	67464
Knox County, Texas	Knox County	TX	265	18.2	1180	81.04	11	0.76	9.9	8.3	33.1	26	8.6	8.4	5.7	48750	64145
La Salle County, Texas	La Salle County	TX	1052	43.72	1335	55.49	19	0.79	13.9	23.7	43.6	11.1	2.3	3.2	2.2	62798	63787
Lamar County, Texas	Lamar County	TX	4458	20.81	16760	78.25	200	0.93	5.2	7.2	33.7	23.2	9.8	13.9	7	58246	73449
Lamb County, Texas	Lamb County	TX	840	19.06	3521	79.88	47	1.07	12.9	10.4	36.9	19.3	7.6	9.8	3.1	54519	70219
Lampasas County, Texas	Lampasas County	TX	2144	20.62	8086	77.76	169	1.63	4.4	5.3	30.4	28.4	11.3	14.1	6.1	73269	89550
Lavaca County, Texas	Lavaca County	TX	1333	13.07	8804	86.34	60	0.59	8.1	6.5	37.7	20.7	7.4	13.8	5.8	58530	83239
Lee County, Texas	Lee County	TX	1750	21.64	6255	77.36	81	1	6.3	7.2	39.3	23.3	7.4	11.8	4.8	66448	76825
Leon County, Texas	Leon County	TX	1072	12.36	7523	86.73	79	0.91	6.3	9.1	38.8	25	5.8	10.5	4.5	57363	83691
Liberty County, Texas	Liberty County	TX	5785	19.72	23302	79.44	247	0.84	9.6	12	39.3	21.9	6.6	7.7	2.8	59605	80392
Limestone County, Texas	Limestone County	TX	2213	24.33	6789	74.65	93	1.02	6.5	8.9	34.7	24.1	8.8	12	4.8	53102	68452
Lipscomb County, Texas	Lipscomb County	TX	131	9.68	1205	89.06	17	1.26	8.5	6.4	31.4	21.8	7.1	20.2	4.5	71625	89221
Live Oak County, Texas	Live Oak County	TX	819	16.2	4199	83.08	36	0.71	10.2	14.4	30	27	4.8	7.6	5.9	55949	75029
Llano County, Texas	Llano County	TX	2465	19.47	10079	79.61	116	0.92	2.4	6.1	26.6	25.9	7.2	22.2	9.6	64241	107193
Loving County, Texas	Loving County	TX	4	6.06	60	90.91	2	3.03	0	3.2	15.9	30.2	50.8	0	0	0	103993
Lubbock County, Texas	Lubbock County	TX	40017	33.13	78861	65.3	1893	1.57	4.9	6.8	25.4	22.6	7.7	20	12.6	61911	85341
Lynn County, Texas	Lynn County	TX	428	18.67	1853	80.81	12	0.52	8.1	10.5	28.7	20.1	8	17.2	7.4	52996	81171
Madison County, Texas	Madison County	TX	1088	20.54	4169	78.7	40	0.76	4.9	16.2	37.5	21.4	5.9	10.2	3.9	65768	76169
Marion County, Texas	Marion County	TX	1339	27.53	3470	71.34	55	1.13	3.6	9.6	40.5	21.6	8.4	13.5	2.8	48040	63070
Martin County, Texas	Martin County	TX	288	13.33	1857	85.97	15	0.69	9.9	5.9	40.2	25	2.1	9.7	7.2	70217	97852
Mason County, Texas	Mason County	TX	457	18.47	1991	80.48	26	1.05	6.6	8.5	21.5	20.8	4.7	26.1	11.9	77583	93741
Matagorda County, Texas	Matagorda County	TX	3733	27.2	9845	71.73	148	1.08	9.9	8.6	28.4	24	8.2	14	6.9	56412	73260
Maverick County, Texas	Maverick County	TX	8332	54.29	6881	44.84	133	0.87	19.8	15.6	26.4	16.5	5.9	11.6	4.2	48497	65116
McCulloch County, Texas	McCulloch County	TX	490	14.26	2904	84.52	42	1.22	9.8	10.3	31.5	24.4	5.5	12.7	5.8	53214	68736
McLennan County, Texas	McLennan County	TX	36688	37.52	59543	60.9	1540	1.58	5.1	7.9	26.9	22.8	10.2	16.4	10.5	59781	82845
McMullen County, Texas	McMullen County	TX	53	10.27	460	89.15	3	0.58	4.6	6.5	45.1	20.4	7.6	11.8	3.9	60313	80275
Medina County, Texas	Medina County	TX	6773	29.91	15642	69.08	229	1.01	5.6	8.3	32.6	22.2	9	13.3	8.9	73060	91847
Menard County, Texas	Menard County	TX	197	19.16	823	80.06	8	0.78	8.9	13.2	25.8	20.1	8.1	15	8.9	40945	63484
Midland County, Texas	Midland County	TX	12329	20.95	45624	77.52	903	1.53	7.5	8.1	23.2	23.8	8	20.6	8.9	90123	122370
Milam County, Texas	Milam County	TX	2496	23.6	7984	75.49	96	0.91	6.9	7.3	39	21.1	7.4	12.6	5.7	56985	80180
Mills County, Texas	Mills County	TX	271	10.82	2217	88.5	17	0.68	5.4	6.7	31.4	21.5	6.5	18.5	9.9	59315	86246
Mitchell County, Texas	Mitchell County	TX	397	15.39	2170	84.14	12	0.47	7	9.2	41	27.6	5.6	7.2	2.4	49869	80812
Montague County, Texas	Montague County	TX	1097	11.18	8615	87.78	102	1.04	4.7	7.4	38.6	24.6	8.1	12.8	3.9	63336	78500
Montgomery County, Texas	Montgomery County	TX	74377	27.4	193382	71.24	3692	1.36	4.3	5.9	22.9	21.5	7.7	25	12.8	95946	133619
Moore County, Texas	Moore County	TX	1062	19.28	4359	79.14	87	1.58	21.4	10.7	31.1	17.5	7.5	7.9	3.9	59041	77084
Morris County, Texas	Morris County	TX	1669	29.87	3872	69.3	46	0.82	4.4	8	39.7	27.4	7	7.9	5.7	51532	62261
Motley County, Texas	Motley County	TX	46	7.06	604	92.64	2	0.31	4.5	9.6	31.2	27.3	7.2	15.2	5.2	66528	71800
Nacogdoches County, Texas	Nacogdoches County	TX	9000	33.63	17378	64.93	385	1.44	7.4	7.5	29.3	24.5	5.9	15.9	9.4	51153	72697
Navarro County, Texas	Navarro County	TX	5101	26.68	13800	72.17	220	1.15	9.9	9.6	30.3	24.4	8.8	11.4	5.6	56261	76660
Newton County, Texas	Newton County	TX	1173	19.25	4882	80.11	39	0.64	4.5	13.5	45.7	22.7	6.7	4.9	1.9	38871	58462
Nolan County, Texas	Nolan County	TX	1162	21.7	4131	77.13	63	1.18	6.9	9.3	34.6	25.4	10	9.2	4.8	47437	75043
Nueces County, Texas	Nueces County	TX	60925	47.85	64617	50.75	1772	1.39	6.6	8.9	29.2	23.7	9.1	14.4	8.1	64027	85253
Ochiltree County, Texas	Ochiltree County	TX	302	9.57	2812	89.1	42	1.33	12.4	11.3	33.5	19	5.2	12.3	6.3	62240	80514
Oldham County, Texas	Oldham County	TX	81	8.03	917	90.88	11	1.09	9.4	7.1	27	21.9	10.8	17.2	6.7	71103	89702
Orange County, Texas	Orange County	TX	6357	17.66	29186	81.09	451	1.25	2.5	8.2	35.8	24.8	11.6	12.8	4.3	71910	93395
Palo Pinto County, Texas	Palo Pinto County	TX	2178	17.44	10179	81.53	128	1.03	5.1	7.4	39.2	22.5	7.7	11.9	6.1	65242	84036
Panola County, Texas	Panola County	TX	2057	17.96	9326	81.44	68	0.59	4.5	11.8	29.1	29.2	9.2	11.7	4.4	58205	84446
Parker County, Texas	Parker County	TX	13017	17.1	62045	81.5	1066	1.4	3.4	6.3	26.9	22.5	10	20.2	10.7	95721	120085
Parmer County, Texas	Parmer County	TX	488	18.42	2135	80.57	27	1.02	19	9.9	24.9	18.5	9.2	13.7	4.7	65575	83695
Pecos County, Texas	Pecos County	TX	1382	29.61	3215	68.87	71	1.52	10.3	13.8	36.7	22.6	5.2	6.9	4.5	59325	85884
Polk County, Texas	Polk County	TX	5387	22.28	18573	76.81	221	0.91	6.8	11.8	37.3	24.7	6.2	8.8	4.4	57315	74127
Potter County, Texas	Potter County	TX	9921	29.77	22820	68.49	580	1.74	11.2	11.7	30.9	21.7	7.6	11.9	5.1	47974	70497
Presidio County, Texas	Presidio County	TX	1463	65.99	721	32.52	33	1.49	31.6	6.7	17.6	14.4	8.4	15	6.2	29012	59503
Rains County, Texas	Rains County	TX	842	13.91	5155	85.16	56	0.93	5.7	6.9	35.9	24.8	6.2	14.6	5.9	60291	91470
Randall County, Texas	Randall County	TX	12802	19.79	50796	78.54	1076	1.66	2.2	4	23.4	27.7	10.1	21.7	11	78038	99601
Reagan County, Texas	Reagan County	TX	172	15.3	942	83.81	10	0.89	1.5	10.4	52.8	17.2	6.1	7.3	4.7	70319	83863
Real County, Texas	Real County	TX	320	16.15	1643	82.9	19	0.96	7.2	3.8	36.9	26.6	4.6	16.1	4.9	46842	72231
Red River County, Texas	Red River County	TX	1246	21.46	4517	77.8	43	0.74	5.4	9.5	40	24.2	6.9	9.3	4.7	44583	58759
Reeves County, Texas	Reeves County	TX	1395	37.84	2254	61.13	38	1.03	13.7	15.5	36.2	18.2	6.6	7.8	2	57487	74058
Refugio County, Texas	Refugio County	TX	1108	32.92	2210	65.66	48	1.43	5.8	10.4	43.7	22.5	6.4	8.2	3	54304	67596
Roberts County, Texas	Roberts County	TX	17	3.09	529	96.18	4	0.73	0	8.2	37.7	21.6	13.2	14.2	5	62667	77618
Robertson County, Texas	Robertson County	TX	2374	29.31	5646	69.71	79	0.98	5.2	9.5	38.4	20.2	8.4	12.6	5.8	59410	79074
Rockwall County, Texas	Rockwall County	TX	16412	30.45	36726	68.15	753	1.4	2.5	3.2	18.5	22.5	9.4	27.9	16	121303	154691
Runnels County, Texas	Runnels County	TX	552	12.52	3807	86.35	50	1.13	9.2	7.9	35.8	22.1	6.7	13	5.3	55424	75022
Rusk County, Texas	Rusk County	TX	4629	21.66	16534	77.38	205	0.96	5	10.9	33	25.9	9.4	10.4	5.4	61661	84856
Sabine County, Texas	Sabine County	TX	669	12.19	4784	87.19	34	0.62	4.2	8.9	35.6	24.3	9.1	9.5	8.4	47061	73675
San Augustine County, Texas	San Augustine County	TX	980	24.49	3007	75.14	15	0.37	4.9	12.8	45.1	21	3.5	7.5	5.3	45888	59266
San Jacinto County, Texas	San Jacinto County	TX	2337	18.49	10161	80.4	140	1.11	5.8	8.6	39.7	24.2	5.6	8.9	7.1	54839	76309
San Patricio County, Texas	San Patricio County	TX	8988	34.72	16516	63.8	384	1.48	8.2	9.5	33.2	23.8	7.7	11.9	5.7	63842	85477
San Saba County, Texas	San Saba County	TX	287	11.03	2308	88.7	7	0.27	6.2	8	39.5	22.6	4.3	14	5.4	54087	71975
Schleicher County, Texas	Schleicher County	TX	211	18.21	940	81.1	8	0.69	9.8	8.2	29.7	32.7	6	9.8	3.7	53774	70578
Scurry County, Texas	Scurry County	TX	818	13.94	4983	84.9	68	1.16	7.9	7.7	32.9	24.7	8.3	13.5	5	58932	82991
Shackelford County, Texas	Shackelford County	TX	130	7.99	1484	91.15	14	0.86	0.5	6	23.8	29.4	7.9	26.3	6.1	60924	76415
Shelby County, Texas	Shelby County	TX	2068	20.51	7975	79.09	41	0.41	8.2	10.1	36.9	25.2	5.7	10	3.9	49231	69370
Sherman County, Texas	Sherman County	TX	91	9.18	886	89.4	14	1.41	13.7	14.2	23.2	21.5	5.6	16.7	5.1	66169	116652
Smith County, Texas	Smith County	TX	29615	29.59	69080	69.03	1380	1.38	5.5	6.9	24.9	25.1	10.3	18.1	9.3	69053	92062
Somervell County, Texas	Somervell County	TX	768	15.52	4105	82.98	74	1.5	2.3	4.9	32.1	26	6.1	21.3	7.3	87899	97659
Starr County, Texas	Starr County	TX	9123	52.06	8247	47.06	155	0.88	26	13.1	26.6	17.1	4.5	9.2	3.6	35979	53913
Stephens County, Texas	Stephens County	TX	397	10.45	3385	89.08	18	0.47	6.7	10.1	34.6	23.9	6.3	13.9	4.5	44712	68486
Sterling County, Texas	Sterling County	TX	51	7.98	584	91.39	4	0.63	2.3	7.6	42.1	21.5	3.2	14.6	8.8	63558	98668
Stonewall County, Texas	Stonewall County	TX	116	15.76	615	83.56	5	0.68	9	10.1	44.1	20.2	1.6	7.4	7.7	66591	75657
Sutton County, Texas	Sutton County	TX	322	20.68	1222	78.48	13	0.83	10.2	9.8	37.2	23.7	3.7	7.9	7.4	56778	69544
Swisher County, Texas	Swisher County	TX	478	20.3	1845	78.34	32	1.36	13.6	8.5	34.2	16	8.4	15.7	3.6	40290	55431
Tarrant County, Texas	Tarrant County	TX	411567	49.31	409741	49.09	13389	1.6	6.1	6.8	23.8	21.4	7.9	22.4	11.5	78872	107434
Taylor County, Texas	Taylor County	TX	14588	26.47	39547	71.76	977	1.77	3.9	6.1	29.5	22.8	9	18.4	10.3	61806	82300
Terrell County, Texas	Terrell County	TX	119	25.98	334	72.93	5	1.09	2.2	4	39.6	21.7	2.9	19.9	9.6	52813	66441
Terry County, Texas	Terry County	TX	757	20.96	2812	77.85	43	1.19	14.7	9.3	33.8	24.9	6.3	8.1	2.9	42694	67747
Throckmorton County, Texas	Throckmorton County	TX	82	9.12	806	89.66	11	1.22	6.2	3.6	38.9	25.1	6	15.1	5.1	55221	66570
Titus County, Texas	Titus County	TX	2856	27.1	7570	71.83	113	1.07	12.6	9.8	37.3	17.3	7.6	10.8	4.6	57634	72023
Tom Green County, Texas	Tom Green County	TX	12239	27.07	32313	71.47	658	1.46	6.2	7.2	28.4	26.2	7.4	16.4	8.3	67215	86111
Travis County, Texas	Travis County	TX	435860	71.41	161337	26.43	13152	2.15	5.3	3.8	15	16.5	5.6	33.4	20.3	92731	130157
Trinity County, Texas	Trinity County	TX	1323	19.07	5579	80.41	36	0.52	5.3	8.3	38.9	26	6.6	11.3	3.5	51165	71207
Tyler County, Texas	Tyler County	TX	1403	14.52	8194	84.82	63	0.65	5.8	11.6	41.6	22.9	4.9	8.7	4.4	50898	80667
Upshur County, Texas	Upshur County	TX	2877	15.23	15809	83.7	201	1.06	4.3	9.2	33.1	26.6	9.9	12.2	4.8	60456	80248
Upton County, Texas	Upton County	TX	170	12.43	1178	86.11	20	1.46	11.5	9.5	43.8	18.9	6.6	6.7	2.9	55284	69047
Uvalde County, Texas	Uvalde County	TX	4073	39.38	6174	59.7	95	0.92	12.4	11.5	27.1	21.2	8.7	14.2	4.9	55000	72307
Val Verde County, Texas	Val Verde County	TX	6771	44.34	8284	54.24	217	1.42	16.1	10.4	27.4	17.4	8.5	12.2	8	57250	71313
Van Zandt County, Texas	Van Zandt County	TX	3516	13.53	22270	85.67	208	0.8	4.2	9.8	33.3	27.4	8.3	12.2	4.9	62334	85932
Victoria County, Texas	Victoria County	TX	10380	30.36	23358	68.32	450	1.32	6.7	9.5	30.3	24.6	9.7	13.9	5.3	66308	83950
Walker County, Texas	Walker County	TX	7884	33.39	15375	65.12	353	1.5	5.9	8.8	38.2	21.2	6.5	12.5	6.8	47193	65076
Waller County, Texas	Waller County	TX	8191	36.03	14260	62.73	283	1.24	6.7	6.6	31.3	25.6	4.9	18.3	6.6	71643	102547
Ward County, Texas	Ward County	TX	764	18.82	3241	79.83	55	1.35	10.1	9.6	37.7	25.5	5.7	8.6	2.7	70771	89224
Washington County, Texas	Washington County	TX	4261	24.46	12959	74.4	198	1.14	4.1	6.2	31.5	21.7	7.6	19.1	9.7	70043	96797
Webb County, Texas	Webb County	TX	41820	61.14	25898	37.86	679	0.99	15.9	15	21.9	18.8	7.8	14.7	5.9	59984	78814
Wharton County, Texas	Wharton County	TX	4694	28.01	11926	71.15	141	0.84	8.4	10.3	31.1	21.6	10.4	12.9	5.2	59712	78675
Wheeler County, Texas	Wheeler County	TX	168	7.19	2159	92.38	10	0.43	6.9	7.3	39.7	23.4	5.5	14.5	2.7	58158	75121
Wichita County, Texas	Wichita County	TX	13161	28.59	32069	69.67	800	1.74	5.5	7	31.8	23.5	8.3	15.1	8.7	58862	78508
Wilbarger County, Texas	Wilbarger County	TX	956	21.13	3524	77.9	44	0.97	8.7	12.9	33.2	22.7	6	12.7	4	50769	62488
Willacy County, Texas	Willacy County	TX	3108	56.01	2441	43.99	0	0	17.1	15.5	37	14.6	5.3	7.7	2.8	42839	59226
Williamson County, Texas	Williamson County	TX	143795	49.7	139729	48.3	5788	2	2.8	3.1	18.1	20.8	8.9	29.9	16.4	102851	126077
Wilson County, Texas	Wilson County	TX	6350	25.39	18463	73.81	200	0.8	4.7	4.5	32.7	23.6	9.1	18.1	7.3	89708	116008
Winkler County, Texas	Winkler County	TX	358	16.84	1753	82.46	15	0.71	12.5	15.1	36.3	21.1	5.9	7.5	1.6	89155	91621
Wise County, Texas	Wise County	TX	4973	15.37	27032	83.53	357	1.1	5.7	7.3	33.9	24.5	7.8	14.9	5.9	85385	104830
Wood County, Texas	Wood County	TX	3509	15.4	19049	83.63	221	0.97	5.3	8.6	31.7	26.3	7	12.8	8.3	61748	83609
Yoakum County, Texas	Yoakum County	TX	420	15.96	2174	82.63	37	1.41	19.2	12.3	28.1	25.6	5.1	8.6	1.1	80317	98866
Young County, Texas	Young County	TX	1034	12.55	7110	86.3	95	1.15	5.2	6.7	32.8	24.7	8	16.1	6.4	65565	83470
Zapata County, Texas	Zapata County	TX	1826	47.13	2033	52.48	15	0.39	19.7	14.7	29.6	18.4	6.2	9.1	2.2	35061	56419
Zavala County, Texas	Zavala County	TX	2864	65.4	1490	34.03	25	0.57	16.5	11	28.2	21.8	8.8	10.1	3.7	49243	60004
Beaver County, Utah	Beaver County	UT	357	11.52	2695	86.94	48	1.55	3.2	4.6	27.4	23.6	13.7	21.8	5.8	80268	86270
Box Elder County, Utah	Box Elder County	UT	4473	16.55	21548	79.73	1006	3.72	2.1	4.5	32.2	26	9.4	18.6	7.2	72769	91694
Cache County, Utah	Cache County	UT	16650	28.92	38032	66.06	2889	5.02	2.4	3.4	20.1	26.4	7.7	25.4	14.6	72719	92460
Carbon County, Utah	Carbon County	UT	2392	25.53	6693	71.44	284	3.03	2.4	5.6	29.3	29.9	16.1	11.8	5	53734	66194
Daggett County, Utah	Daggett County	UT	111	17.93	496	80.13	12	1.94	0.7	6.5	29.4	36.6	8.6	12.4	5.8	61250	73434
Davis County, Utah	Davis County	UT	57411	33.79	104135	61.29	8349	4.91	1.4	2.9	21.2	25.5	10.6	25.5	12.9	101285	123102
Duchesne County, Utah	Duchesne County	UT	843	9.89	7513	88.14	168	1.97	2.2	8.7	39.2	26.5	9.1	9.8	4.5	70821	86012
Emery County, Utah	Emery County	UT	572	11.76	4207	86.47	86	1.77	2.1	4.6	31.1	30.1	16.5	9.1	6.5	67056	78765
Garfield County, Utah	Garfield County	UT	514	18.81	2158	78.99	60	2.2	1.4	2.7	29.1	24.5	12	21	9.4	56481	72278
Grand County, Utah	Grand County	UT	2806	54.12	2248	43.36	131	2.53	1.9	3.6	23.1	28.7	11	21.5	10.2	59171	80818
Iron County, Utah	Iron County	UT	4892	19.65	18989	76.29	1009	4.05	2	5	23.9	27.7	11.1	20.3	10	63005	80860
Juab County, Utah	Juab County	UT	645	11	5087	86.72	134	2.28	1.3	5.1	34.1	27	11.1	14.7	6.7	88048	99208
Kane County, Utah	Kane County	UT	1083	25.91	2998	71.72	99	2.37	1.5	4.1	26.4	25.7	9.8	22.1	10.3	70327	89463
Millard County, Utah	Millard County	UT	624	10.13	5404	87.73	132	2.14	3.2	6.2	32.5	24.4	10.1	18	5.5	69403	82688
Morgan County, Utah	Morgan County	UT	1086	16.68	5181	79.56	245	3.76	0.6	1.1	22.9	26.1	11.6	24	13.6	120854	145747
Piute County, Utah	Piute County	UT	86	9.87	773	88.75	12	1.38	4.6	6.5	34.6	23.7	11	13.9	5.8	33359	49356
Rich County, Utah	Rich County	UT	180	13.21	1157	84.89	26	1.91	1.9	2.3	21.3	35.1	12.5	16.4	10.5	69250	81732
Salt Lake County, Utah	Salt Lake County	UT	289906	53.57	230174	42.53	21095	3.9	3.3	4.9	22.3	22.6	9.2	24.3	13.4	90011	115832
San Juan County, Utah	San Juan County	UT	3113	45.26	3535	51.4	230	3.34	6	6.2	31	27.4	10.3	12.9	6.1	52108	75391
Sanpete County, Utah	Sanpete County	UT	1794	14.2	10459	82.8	378	2.99	3.8	6.4	31.2	25.3	10.9	13.2	9.1	64356	81805
Sevier County, Utah	Sevier County	UT	1084	10.46	9052	87.35	227	2.19	2.7	5.3	31.4	26.3	11.5	15.3	7.5	66972	81543
Summit County, Utah	Summit County	UT	15244	58.43	10252	39.3	592	2.27	1.6	2.3	15.2	18.3	5.1	35.8	21.6	126392	194835
Tooele County, Utah	Tooele County	UT	8943	28.37	21014	66.67	1561	4.95	2.1	5.3	31.8	27	11.3	14.8	7.8	95545	112291
Uintah County, Utah	Uintah County	UT	1663	10.86	13261	86.63	383	2.5	1.3	10	34.2	27.2	9.4	13.4	4.5	67983	84449
Utah County, Utah	Utah County	UT	76033	26.73	192812	67.78	15635	5.5	1.8	3	16.8	25.4	10.2	29.8	13	91263	116214
Wasatch County, Utah	Wasatch County	UT	6187	35.19	10795	61.4	599	3.41	2.6	1.9	18.9	20.7	9.2	30.8	15.9	104855	152417
Washington County, Utah	Washington County	UT	20530	22.69	67294	74.38	2652	2.93	1.7	3.9	21.1	27.3	13.2	20.6	12.2	71976	99534
Wayne County, Utah	Wayne County	UT	365	22.52	1229	75.82	27	1.67	0.6	6.3	23.6	29.3	17.9	15.3	6.9	64870	78610
Weber County, Utah	Weber County	UT	40695	36.52	65949	59.18	4798	4.31	2.6	5.1	29.1	26.3	9.8	18.8	8.2	82291	99422
Addison County, Vermont	Addison County	VT	15089	66.73	6567	29.04	955	4.22	1.4	4.2	29.1	15.8	7.7	24.3	17.5	85870	103237
Bennington County, Vermont	Bennington County	VT	11858	61.26	6724	34.74	775	4	1.9	4	28.1	18.4	8.2	21.4	18	68558	94727
Caledonia County, Vermont	Caledonia County	VT	8529	56.27	5924	39.08	705	4.65	1.9	4.4	33.3	21.4	7.6	19.2	12.3	62964	84309
Chittenden County, Vermont	Chittenden County	VT	72938	75.38	20104	20.78	3713	3.84	1.6	3.1	16.8	14.2	8.6	32.1	23.6	89494	114146
Essex County, Vermont	Essex County	VT	1890	44.61	2164	51.07	183	4.32	2.7	8.4	43.1	18	7.6	11.3	8.9	55247	71462
Franklin County, Vermont	Franklin County	VT	13612	52.21	11274	43.24	1186	4.55	2.9	5.2	37.5	17.2	9.9	17.5	9.9	73633	88809
Grand Isle County, Vermont	Grand Isle County	VT	3346	57.87	2194	37.95	242	4.19	1	3	31.7	13.5	8.3	25.1	17.5	86639	113302
Lamoille County, Vermont	Lamoille County	VT	10773	68.71	4171	26.6	735	4.69	1.3	4.5	23	20	8.4	27.2	15.6	69886	98575
Orange County, Vermont	Orange County	VT	8351	56.14	5782	38.87	743	4.99	1.8	4.2	33.4	14.3	11.1	19.1	16.1	74534	89027
Orleans County, Vermont	Orleans County	VT	7757	50.23	7086	45.89	599	3.88	3	5.4	37.6	16.6	9.5	17.3	10.4	63981	79444
Rutland County, Vermont	Rutland County	VT	18746	53.91	14625	42.06	1401	4.03	1.8	4.6	33.9	17.1	9.5	20	13	62641	83665
Washington County, Vermont	Washington County	VT	25101	71.06	8707	24.65	1517	4.29	1.6	3.2	25.7	16.1	7.1	27.1	19.1	77278	98630
Windham County, Vermont	Windham County	VT	20057	70.49	7251	25.49	1144	4.02	1	4.7	30.3	16.5	7	21.2	19.2	65473	90021
Windsor County, Vermont	Windsor County	VT	24779	68.25	10135	27.91	1394	3.84	1.5	3.6	28.9	16.4	8.8	24.1	16.7	69492	98098
Accomack County, Virginia	Accomack County	VA	7578	44.68	9172	54.07	212	1.25	6.5	11.9	33	18.8	8.4	12.2	9.2	52694	73075
Albemarle County, Virginia	Albemarle County	VA	42466	65.68	20804	32.18	1387	2.15	2.3	3.8	14.7	13.3	5.8	30.1	30.1	97708	137904
Alexandria city, Virginia	Alexandria city	VA	66240	80.28	14544	17.63	1724	2.09	3.5	2.8	10.5	12	5.2	31.7	34.3	113179	156781
Alleghany County, Virginia	Alleghany County	VA	2243	27.34	5859	71.43	101	1.23	3.4	8.4	43.4	22.1	7.4	8.7	6.6	52546	68475
Amelia County, Virginia	Amelia County	VA	2411	30.55	5390	68.29	92	1.17	5.2	8.4	45.3	15.5	7.9	12.8	5	63438	83253
Amherst County, Virginia	Amherst County	VA	5672	33.35	11041	64.93	292	1.72	4.3	8	37.9	18.1	9.8	13.4	8.4	64454	84089
Appomattox County, Virginia	Appomattox County	VA	2418	26.09	6702	72.31	148	1.6	3.8	6.3	39.7	23.5	7.4	14.2	5.1	60041	74825
Arlington County, Virginia	Arlington County	VA	105344	80.6	22318	17.08	3037	2.32	3	1.7	7.3	8	3.3	35.7	41.1	137387	180199
Augusta County, Virginia	Augusta County	VA	10840	25.64	30714	72.65	724	1.71	3.7	6.5	40.3	18.9	7.4	15.6	7.6	76124	89194
Bath County, Virginia	Bath County	VA	646	25.83	1834	73.33	21	0.84	6.5	7.5	36.6	24	7	12.7	5.7	55699	74381
Bedford County, Virginia	Bedford County	VA	12176	25.02	35600	73.15	893	1.83	2.5	5	29.4	21.5	9	19.9	12.7	74773	98237
Bland County, Virginia	Bland County	VA	532	15.29	2903	83.44	44	1.26	2.1	6	45.5	22.1	7.9	11.3	5.1	59901	74177
Botetourt County, Virginia	Botetourt County	VA	5700	26.99	15099	71.49	321	1.52	2.5	4	35.1	18.8	12	17.2	10.5	77680	99520
Bristol city, Virginia	Bristol city	VA	2313	29.63	5347	68.5	146	1.87	2.6	11.1	30.6	24.7	8.1	11.8	11	45250	66716
Brunswick County, Virginia	Brunswick County	VA	4552	57.27	3357	42.24	39	0.49	6.6	16.9	34.5	19.2	6.8	9.9	6.1	52678	67794
Buchanan County, Virginia	Buchanan County	VA	1587	15.94	8311	83.5	55	0.55	10.2	15.5	39.4	16.9	7	5.5	5.4	39591	55860
Buckingham County, Virginia	Buckingham County	VA	3471	42.71	4544	55.92	111	1.37	6.7	9.2	45.3	20.4	6.3	7.8	4.3	59894	73274
Buena Vista city, Virginia	Buena Vista city	VA	825	29.72	1863	67.11	88	3.17	5.6	13.2	32.7	19.5	7.7	13.1	8.3	48783	81044
Campbell County, Virginia	Campbell County	VA	8070	27	21245	71.07	577	1.93	3.5	6.1	34.3	22.5	9	16.4	8.2	59022	76036
Caroline County, Virginia	Caroline County	VA	7657	47.01	8336	51.18	295	1.81	2.7	7.9	40	19.3	7.7	13.8	8.5	83562	100056
Carroll County, Virginia	Carroll County	VA	2842	18.16	12659	80.88	150	0.96	6.8	10.1	38.1	17.7	11.3	11.3	4.6	49113	63652
Charles City County, Virginia	Charles City County	VA	2624	59.09	1761	39.65	56	1.26	3.5	11.6	40.1	20.9	7.8	11.8	4.4	65573	85855
Charlotte County, Virginia	Charlotte County	VA	2317	37.43	3815	61.62	59	0.95	4.5	11	38	19.7	10.1	9.7	7	51548	65796
Charlottesville city, Virginia	Charlottesville city	VA	20696	85.5	3094	12.78	415	1.71	3.1	4.9	15.7	12.3	5	28	30.9	67177	104674
Chesapeake city, Virginia	Chesapeake city	VA	66377	52.22	58180	45.77	2551	2.01	2.5	4.2	23.5	24	10.1	22.2	13.6	92703	114454
Chesterfield County, Virginia	Chesterfield County	VA	106935	52.45	93326	45.77	3623	1.78	3.1	4.3	22.3	19.4	8.6	25.9	16.4	95757	120588
Clarke County, Virginia	Clarke County	VA	3920	41.98	5192	55.61	225	2.41	1.8	4.5	29.5	21.6	8.2	22.2	12.3	107475	125848
Colonial Heights city, Virginia	Colonial Heights city	VA	2972	32.5	6007	65.68	167	1.83	4.2	4.3	31	22.6	9.8	16.9	11.2	72216	87287
Covington city, Virginia	Covington city	VA	964	37.03	1580	60.7	59	2.27	2.6	8.8	48	22.1	7.1	7.4	4	45737	55199
Craig County, Virginia	Craig County	VA	587	18.52	2536	80.03	46	1.45	2.8	9.2	41.7	19.2	11	10.9	5.1	66286	83740
Culpeper County, Virginia	Culpeper County	VA	10617	39.15	16012	59.05	487	1.8	3.6	7	34	19.4	9.1	17.6	9.3	92359	112583
Cumberland County, Virginia	Cumberland County	VA	2227	41.94	3019	56.85	64	1.21	5.8	8.1	34.7	22.1	10.8	9.8	8.8	56497	91502
Danville city, Virginia	Danville city	VA	11710	60.4	7428	38.31	251	1.29	4.8	10.7	38.4	18.5	8.9	11.6	7	41484	59489
Dickenson County, Virginia	Dickenson County	VA	1503	20.58	5748	78.71	52	0.71	7.2	11.5	39.3	21.2	9.4	9.3	2.1	40143	56343
Dinwiddie County, Virginia	Dinwiddie County	VA	6224	41.24	8695	57.61	173	1.15	3.5	7	39.5	20.9	11.3	11	6.8	77225	92305
Emporia city, Virginia	Emporia city	VA	1612	67.7	754	31.67	15	0.63	8.4	14.7	35.2	15.6	9.7	9.6	6.9	41442	61212
Essex County, Virginia	Essex County	VA	3038	49.17	3075	49.77	65	1.05	5.8	11.6	36.3	25.9	5	10.1	5.2	52335	67229
Fairfax County, Virginia	Fairfax County	VA	419943	69.89	168401	28.03	12479	2.08	3.5	3	12.2	11.7	5.5	31.8	32.3	145165	185205
Fairfax city, Virginia	Fairfax city	VA	9174	68.04	4007	29.72	302	2.24	3.7	4.1	14.1	12.1	5.9	31	29	128708	160337
Falls Church city, Virginia	Falls Church city	VA	7146	81.03	1490	16.9	183	2.08	1.5	1.1	7.1	9.2	2.2	30.6	48.3	164536	209659
Fauquier County, Virginia	Fauquier County	VA	17565	40.23	25106	57.5	990	2.27	2.9	4.8	24.3	21.6	6.9	24.1	15.3	122785	151544
Floyd County, Virginia	Floyd County	VA	3004	31.93	6225	66.17	179	1.9	3.6	5.6	38	17.3	12.4	13.6	9.6	57146	71387
Fluvanna County, Virginia	Fluvanna County	VA	7414	46.81	8155	51.48	271	1.71	1.7	5	25	24	8.5	22.5	13.3	90766	125295
Franklin County, Virginia	Franklin County	VA	8381	28.22	20895	70.35	426	1.43	3.7	6.6	34.5	21.5	9.8	15.3	8.5	66275	89849
Franklin city, Virginia	Franklin city	VA	2525	62.22	1487	36.64	46	1.13	4	11.8	32.4	20.3	8.3	13	10.2	57537	70700
Frederick County, Virginia	Frederick County	VA	17207	35.33	30558	62.74	938	1.93	4.3	7.1	31.2	20.9	7.5	17	12	92443	114214
Fredericksburg city, Virginia	Fredericksburg city	VA	8517	66.22	4037	31.39	308	2.39	3.8	3.7	21.5	22.6	5	24.9	18.6	83445	110066
Galax city, Virginia	Galax city	VA	777	29.45	1838	69.67	23	0.87	7.3	12.5	25.7	26.3	10.8	10.2	7.2	44612	73068
Giles County, Virginia	Giles County	VA	2156	23.5	6876	74.93	144	1.57	3.3	6.3	40.8	21.9	8.4	11.3	7.9	61987	73546
Gloucester County, Virginia	Gloucester County	VA	6964	31.25	14875	66.76	443	1.99	2.6	7.5	30.4	24.9	9.2	16	9.5	83750	100712
Goochland County, Virginia	Goochland County	VA	6685	39.44	9966	58.8	299	1.76	2	3.8	23.2	18.8	7.7	25	19.5	105600	159778
Grayson County, Virginia	Grayson County	VA	1535	18.88	6529	80.3	67	0.82	5.8	11.2	39.5	16.9	12.5	10.3	3.8	43348	62651
Greene County, Virginia	Greene County	VA	4163	36.8	6866	60.7	282	2.49	3	7.6	32.3	20.4	8.7	17.3	10.6	81338	105126
Greensville County, Virginia	Greensville County	VA	2627	57.43	1914	41.85	33	0.72	7.9	12.4	39.2	19.9	7.1	8.7	4.7	51823	74132
Halifax County, Virginia	Halifax County	VA	7666	42.01	10418	57.09	164	0.9	7.3	10.6	36.1	19.5	9.5	11.4	5.7	49145	63524
Hampton city, Virginia	Hampton city	VA	46220	70.14	18430	27.97	1251	1.9	2.4	4.9	29.2	24.7	11.1	16.8	10.8	64430	81921
Hanover County, Virginia	Hanover County	VA	25307	35.66	44318	62.45	1342	1.89	2	3.6	24.3	19.9	8.3	26.5	15.4	104678	129282
Harrisonburg city, Virginia	Harrisonburg city	VA	11022	64.51	5591	32.72	473	2.77	9.2	7.2	25.7	14.6	8	19.8	15.4	56050	75009
Henrico County, Virginia	Henrico County	VA	116572	63.65	63440	34.64	3140	1.71	2.7	4.4	21.7	19	6.8	26.7	18.7	82424	115885
Henry County, Virginia	Henry County	VA	9127	34.96	16725	64.07	253	0.97	7.6	11.1	36	19.7	11.1	9.3	5.1	43694	58729
Highland County, Virginia	Highland County	VA	417	27.2	1092	71.23	24	1.57	4.2	5.8	37.5	17.8	4.1	20.2	10.5	57070	71672
Hopewell city, Virginia	Hopewell city	VA	5430	56.52	4020	41.84	158	1.64	4.6	8.6	42.1	24.4	9.2	7.3	3.8	50661	63460
Isle of Wight County, Virginia	Isle of Wight County	VA	9399	40.07	13707	58.44	350	1.49	2	6.8	28.8	22.8	9.9	17.7	12.1	91680	112926
James City County, Virginia	James City County	VA	25553	51.5	23153	46.66	916	1.85	1.5	2.8	19.3	17.6	8.8	26.2	23.8	100711	124982
King George County, Virginia	King George County	VA	5404	37.99	8446	59.38	374	2.63	3.6	6.1	27.6	20.5	7.4	20.5	14.3	103264	119720
King William County, Virginia	King William County	VA	3260	30.37	7320	68.18	156	1.45	1.1	5.4	35.1	25.7	7.9	18.6	6.2	79398	91000
King and Queen County, Virginia	King and Queen County	VA	1590	38.64	2450	59.54	75	1.82	2.9	10.7	33.1	21.7	9.1	16.8	5.8	70147	89188
Lancaster County, Virginia	Lancaster County	VA	3368	47.09	3697	51.69	87	1.22	3.8	9.8	28.9	16.9	8.3	18.3	14	62674	93271
Lee County, Virginia	Lee County	VA	1489	14.97	8365	84.1	92	0.92	8.4	9.9	36.7	26.2	7.3	8.5	3.1	41619	58254
Lexington city, Virginia	Lexington city	VA	1791	64.84	906	32.8	65	2.35	1.5	2.3	22.8	8.7	4.5	30.9	29.3	93651	90644
Loudoun County, Virginia	Loudoun County	VA	138372	61.54	82088	36.51	4402	1.96	2.8	2.9	11.3	13.5	6.1	35.7	27.8	170463	201590
Louisa County, Virginia	Louisa County	VA	8269	37.73	13294	60.66	352	1.61	4	7.3	33.8	21.4	7.6	14.7	11.1	76594	103128
Lunenburg County, Virginia	Lunenburg County	VA	2418	40.3	3537	58.95	45	0.75	7.9	13.4	36.4	24.1	7.1	7.4	3.7	54438	65633
Lynchburg city, Virginia	Lynchburg city	VA	18048	49.63	17097	47.02	1218	3.35	3.2	6.5	23.8	20.8	7.7	22.7	15.3	56243	74955
Madison County, Virginia	Madison County	VA	2698	33.19	5300	65.2	131	1.61	3.6	9.4	34.8	20.6	7.1	12.7	11.8	74586	91898
Manassas Park city, Virginia	Manassas Park city	VA	3992	65.58	1979	32.51	116	1.91	12.5	7.4	31.6	16.7	6.8	17.1	8	91673	116336
Manassas city, Virginia	Manassas city	VA	10356	61.03	6256	36.87	356	2.1	7.9	6.2	29	15.2	7.1	22	12.6	110559	131779
Martinsville city, Virginia	Martinsville city	VA	3766	62.63	2165	36.01	82	1.36	5.5	8	31.4	19.2	15.6	12.7	7.6	39127	60505
Mathews County, Virginia	Mathews County	VA	1825	31.33	3901	66.96	100	1.72	0.5	5.3	31.4	23.5	9.6	21.7	8.1	79054	106779
Mecklenburg County, Virginia	Mecklenburg County	VA	6803	41.98	9266	57.18	135	0.83	5.3	8.2	34.3	20.4	10.3	13.1	8.4	51265	70108
Middlesex County, Virginia	Middlesex County	VA	2491	36.71	4196	61.84	98	1.44	3.2	7.4	28.6	22.8	8.4	20	9.6	69389	87623
Montgomery County, Virginia	Montgomery County	VA	23218	51.55	20629	45.8	1190	2.64	1.6	3.5	23.6	17.8	7	21.7	24.8	65270	85496
Nelson County, Virginia	Nelson County	VA	4327	46.45	4812	51.65	177	1.9	3.5	9.9	35.1	14.9	6.1	18.2	12.2	64028	98854
New Kent County, Virginia	New Kent County	VA	4621	31.95	9631	66.59	211	1.46	1.1	4.8	29.3	22.1	9.1	23.6	10	113120	131067
Newport News city, Virginia	Newport News city	VA	53099	65.39	26377	32.48	1727	2.13	2.9	5.4	29.6	23.1	10.4	17.5	11.2	63355	83733
Norfolk city, Virginia	Norfolk city	VA	64440	71.69	23443	26.08	1998	2.22	3.2	7.5	24.4	24.2	8.5	19.2	13	60998	84497
Northampton County, Virginia	Northampton County	VA	3667	54.47	2955	43.89	110	1.63	5.9	7.2	31	19.2	7.3	17.5	11.8	54693	83258
Northumberland County, Virginia	Northumberland County	VA	3252	41.61	4485	57.39	78	1	4.1	6.7	27.9	19.3	8.2	18.9	14.9	64655	98655
Norton city, Virginia	Norton city	VA	464	28.98	1109	69.27	28	1.75	3.7	6.1	34.8	26.8	9.1	10.9	8.5	36974	57800
Nottoway County, Virginia	Nottoway County	VA	2971	41.98	4027	56.89	80	1.13	5.7	10.5	39.5	20.5	7.7	11.7	4.4	62366	78347
Orange County, Virginia	Orange County	VA	7995	38.54	12426	59.91	321	1.55	3.5	6.7	35.4	19.8	7.3	16.7	10.6	87309	108040
Page County, Virginia	Page County	VA	3007	24.03	9345	74.68	162	1.29	5.9	11.7	45.5	16.6	5.6	8.2	6.5	56760	70963
Patrick County, Virginia	Patrick County	VA	1954	20.5	7485	78.51	95	1	7.6	8.7	36	20.3	11.1	11.3	5	49180	73580
Petersburg city, Virginia	Petersburg city	VA	12389	87.75	1584	11.22	145	1.03	5.3	8.3	35.9	20.9	7.9	13.5	8.3	46930	59456
Pittsylvania County, Virginia	Pittsylvania County	VA	10115	29.55	23751	69.39	361	1.05	5.5	10.3	38.1	21.6	9.6	10.4	4.6	52619	67427
Poquoson city, Virginia	Poquoson city	VA	2054	26.14	5605	71.34	198	2.52	1.4	2.4	27.3	20.9	9.5	20.7	17.8	114503	129071
Portsmouth city, Virginia	Portsmouth city	VA	30948	69.42	12755	28.61	879	1.97	2.5	8	32	26.8	9.4	13.5	7.7	57154	74426
Powhatan County, Virginia	Powhatan County	VA	5320	26.96	14055	71.24	355	1.8	2	6.5	27.6	21.8	9.4	23.5	9.3	108089	125037
Prince Edward County, Virginia	Prince Edward County	VA	4973	51.94	4434	46.31	167	1.74	4.7	6.9	35.3	20.5	5.7	16.4	10.5	57304	73707
Prince George County, Virginia	Prince George County	VA	7103	40.75	10103	57.96	226	1.3	3.1	7.5	30.8	24.6	9.9	16.7	7.4	80318	94603
Prince William County, Virginia	Prince William County	VA	142863	62.64	81222	35.61	3971	1.74	5.7	4.4	19.9	18.4	7.9	25.7	18	123193	149608
Pulaski County, Virginia	Pulaski County	VA	4925	28.34	12127	69.79	324	1.86	3.3	6.3	34.3	24.6	10.2	12.7	8.5	59740	79535
Radford city, Virginia	Radford city	VA	3358	53.13	2786	44.08	176	2.78	2.9	3.7	18.3	23.1	7.1	21.4	23.4	51039	69105
Rappahannock County, Virginia	Rappahannock County	VA	2096	42.11	2812	56.49	70	1.41	3.6	5.8	29.8	19.8	7.2	18.5	15.3	98663	138115
Richmond County, Virginia	Richmond County	VA	1513	36.88	2547	62.09	42	1.02	8.6	16.3	35.3	12.6	9.4	11.3	6.5	62708	82387
Richmond city, Virginia	Richmond city	VA	92175	82.92	16603	14.94	2381	2.14	4.4	6.8	20.6	18.7	5.4	25.7	18.4	59606	90543
Roanoke County, Virginia	Roanoke County	VA	21801	38.12	34268	59.93	1115	1.95	2.6	4.1	27.1	19.2	9.5	24.1	13.4	80872	103662
Roanoke city, Virginia	Roanoke city	VA	26773	61.8	15607	36.02	943	2.18	3.4	7.5	34.4	18.9	7.3	17.7	10.7	51523	73683
Rockbridge County, Virginia	Rockbridge County	VA	4086	33.02	8088	65.37	199	1.61	3.6	5.8	34.3	20	6.2	15.6	14.5	61903	85003
Rockingham County, Virginia	Rockingham County	VA	12644	28.86	30349	69.27	818	1.87	5.2	7.7	36.4	15.4	6.6	17	11.8	73232	95210
Russell County, Virginia	Russell County	VA	2373	17.73	10879	81.27	134	1	8.7	8.4	40.8	19.2	10.4	8.6	4	44088	60359
Salem city, Virginia	Salem city	VA	5148	39.45	7683	58.87	220	1.69	2.1	4	27.1	21.3	13.1	19.2	13.3	68402	93744
Scott County, Virginia	Scott County	VA	1692	15.57	9063	83.38	114	1.05	8.1	8.9	36.8	21.7	10.6	9.1	4.8	44535	60731
Shenandoah County, Virginia	Shenandoah County	VA	6836	28.86	16463	69.51	385	1.63	3.9	7.5	40.4	18.7	8.7	12.2	8.5	62149	83715
Smyth County, Virginia	Smyth County	VA	3008	21.28	10963	77.55	165	1.17	5	10.3	38.5	18.1	10.6	11.2	6.3	45061	60341
Southampton County, Virginia	Southampton County	VA	3969	40.56	5730	58.55	87	0.89	4.3	8.9	33	26.5	8.4	12.9	6.1	67813	81318
Spotsylvania County, Virginia	Spotsylvania County	VA	34307	45.55	39411	52.33	1599	2.12	3.3	5.7	27.7	22.4	7.7	20.1	13.2	105068	125123
Stafford County, Virginia	Stafford County	VA	40245	50.54	37636	47.27	1744	2.19	3.1	4	22	20	7.8	25.9	17.2	128036	148272
Staunton city, Virginia	Staunton city	VA	6981	53.74	5695	43.84	314	2.42	2.1	5.3	30.5	21.7	6.8	18.6	15	59731	80307
Suffolk city, Virginia	Suffolk city	VA	28676	57.77	20082	40.45	884	1.78	3.3	5.5	26.4	23.7	9	19.6	12.4	87758	112379
Surry County, Virginia	Surry County	VA	2397	53.61	2025	45.29	49	1.1	3.1	9.2	32.6	24.8	6.7	17.5	6	68655	83680
Sussex County, Virginia	Sussex County	VA	2827	55.56	2219	43.61	42	0.83	4	14.7	37.7	21	7.2	9.8	5.6	59195	76942
Tazewell County, Virginia	Tazewell County	VA	3205	15.92	16731	83.1	198	0.98	5.8	7.8	38.9	21	10.5	10.7	5.2	46508	65927
Virginia Beach city, Virginia	Virginia Beach city	VA	117393	51.59	105087	46.18	5081	2.23	1.8	3.6	20.7	23.4	10.6	24.7	15.1	87544	113388
Warren County, Virginia	Warren County	VA	6603	31.22	14069	66.53	475	2.25	3.9	7.2	34.4	24.4	7.6	14.8	7.7	79313	98262
Washington County, Virginia	Washington County	VA	6617	23.07	21679	75.58	389	1.36	4.1	6.6	35.8	18.9	10	15.7	8.8	59116	80206
Waynesboro city, Virginia	Waynesboro city	VA	4961	46.29	5507	51.39	249	2.32	4.6	7.2	34.9	18.5	7.6	16.4	10.8	52519	68820
Westmoreland County, Virginia	Westmoreland County	VA	4501	45.31	5318	53.54	114	1.15	7.1	11.1	40.1	17.3	6.9	10	7.7	56647	82653
Williamsburg city, Virginia	Williamsburg city	VA	4790	69.59	1963	28.52	130	1.89	2.4	4.3	16.2	16.8	9.7	26.9	23.7	66815	107778
Winchester city, Virginia	Winchester city	VA	6610	54.6	5221	43.13	275	2.27	5.5	7.5	27.8	20.3	6.7	18.9	13.3	62495	85752
Wise County, Virginia	Wise County	VA	3110	18.72	13366	80.45	139	0.84	6.9	12.7	34.5	19.8	9.8	9.7	6.5	47541	58817
Wythe County, Virginia	Wythe County	VA	3143	20.85	11733	77.85	196	1.3	2.9	7	35.7	22.9	11.4	12	8.1	53921	71117
York County, Virginia	York County	VA	17683	45.59	20241	52.19	863	2.22	1.8	2.9	17.1	18.6	10.1	27	22.5	105154	124748
Adams County, Washington	Adams County	WA	1814	30.95	3907	66.65	141	2.41	21.7	7.3	31.3	18.3	6.6	9	5.7	63105	77207
Asotin County, Washington	Asotin County	WA	4250	35.56	7319	61.24	382	3.2	1.5	5.5	31.3	25.6	13	14.4	8.7	63724	85734
Benton County, Washington	Benton County	WA	38706	37.57	60365	58.59	3962	3.85	5.1	4.8	23.3	23.7	10.8	19.7	12.6	83778	106330
Chelan County, Washington	Chelan County	WA	19349	44.68	22746	52.52	1211	2.8	8.1	6.5	24.7	21.2	10	19.2	10.3	71876	99583
Clallam County, Washington	Clallam County	WA	24721	50.18	23062	46.81	1481	3.01	2.1	5	24.2	26.3	11.6	18.2	12.6	66108	84791
Clark County, Washington	Clark County	WA	140324	50.95	126303	45.86	8776	3.19	2.3	4.7	24.9	25.1	10.8	20.5	11.7	90115	114497
Columbia County, Washington	Columbia County	WA	668	26.77	1754	70.3	73	2.93	3.2	6.9	20.1	29.4	13.7	16	10.7	68825	88854
Cowlitz County, Washington	Cowlitz County	WA	23938	39.71	34424	57.11	1918	3.18	3.3	6.6	31.8	28.9	12.7	11.3	5.3	70912	89300
Douglas County, Washington	Douglas County	WA	7811	36.66	12955	60.8	542	2.54	10	8.2	27.6	23.2	9.2	15.6	6.2	79422	109082
Ferry County, Washington	Ferry County	WA	1486	34.03	2771	63.45	110	2.52	2.1	6.5	31.9	29	12.4	11.6	6.5	50424	70873
Franklin County, Washington	Franklin County	WA	13340	41.17	18039	55.67	1025	3.16	14.9	9.3	26	20.7	9.2	12.3	7.7	77877	100234
Garfield County, Washington	Garfield County	WA	366	24.58	1069	71.79	54	3.63	1.7	5.5	24.5	27.2	14.2	15.9	11.1	57958	70817
Grant County, Washington	Grant County	WA	11819	31.37	24764	65.72	1097	2.91	11	8.6	28.5	24.1	10.1	12.9	4.8	66387	83535
Grays Harbor County, Washington	Grays Harbor County	WA	17354	45.14	19877	51.71	1210	3.15	3.5	6.5	35.3	25.8	11.8	11.1	6.1	59105	77581
Island County, Washington	Island County	WA	29213	54.17	22746	42.18	1966	3.65	1.3	3.1	21.6	27	11.7	20.9	14.4	82850	105640
Jefferson County, Washington	Jefferson County	WA	17204	69.39	6931	27.96	657	2.65	0.6	2.4	20.6	24.6	8.4	23.8	19.7	64796	89660
King County, Washington	King County	WA	907310	74.95	269167	22.24	34030	2.81	3.2	3	14.7	16.5	7.7	32	22.9	116340	161206
Kitsap County, Washington	Kitsap County	WA	90277	56.9	61563	38.8	6832	4.31	1.5	3.3	21.4	26.7	11.8	23.1	12.2	93675	119452
Kittitas County, Washington	Kittitas County	WA	11421	43.32	14105	53.5	838	3.18	1.6	5.3	26.5	22.9	7.7	23	13	66800	91848
Klickitat County, Washington	Klickitat County	WA	5959	43.95	7237	53.37	364	2.68	4	6.6	26.7	21.9	10	17.2	13.6	66581	88585
Lewis County, Washington	Lewis County	WA	14520	32.05	29391	64.87	1398	3.09	3.5	7	30.4	27.2	12.2	12.8	7	67247	83595
Lincoln County, Washington	Lincoln County	WA	1713	24.36	5150	73.23	170	2.42	1.7	5.8	26.9	30.1	12.4	15.3	7.7	68172	87756
Mason County, Washington	Mason County	WA	17269	46.29	18710	50.16	1324	3.55	2.7	6.8	30.2	26.3	12.5	13.4	8	74388	92313
Okanogan County, Washington	Okanogan County	WA	8900	41.82	11840	55.63	542	2.55	6.8	7.1	29.6	22.9	10.8	13.9	8.8	58218	73238
Pacific County, Washington	Pacific County	WA	6794	48.31	6953	49.44	317	2.25	3.2	5.5	29.5	28.6	9.5	16.9	6.8	58889	78637
Pend Oreille County, Washington	Pend Oreille County	WA	2593	30.32	5728	66.97	232	2.71	1.4	5.2	32.1	28.7	11.2	14.1	7.3	59353	81442
Pierce County, Washington	Pierce County	WA	249506	53.76	197730	42.61	16845	3.63	2.6	5.1	26.4	25	11.6	18.8	10.5	91486	114432
San Juan County, Washington	San Juan County	WA	9725	73.69	3057	23.16	415	3.14	1.3	2.9	15.9	20.6	6.7	30.1	22.5	76745	123128
Skagit County, Washington	Skagit County	WA	38252	52.1	32762	44.62	2409	3.28	3.6	5.6	25.7	25.4	11.1	18	10.7	82029	103551
Skamania County, Washington	Skamania County	WA	3192	43.65	3885	53.13	235	3.21	1.4	5.2	31.3	26.8	8.9	15.9	10.4	84500	101765
Snohomish County, Washington	Snohomish County	WA	256728	58.51	166428	37.93	15640	3.56	2.8	4.5	22.9	23.8	10.7	23.4	12	104083	129761
Spokane County, Washington	Spokane County	WA	135765	45.96	148576	50.29	11089	3.75	1.9	3.9	23.4	25.8	13	20.5	11.4	70394	93640
Stevens County, Washington	Stevens County	WA	7839	27.57	19808	69.67	783	2.75	1.7	6.2	33.6	26.1	11.4	12.8	8.1	62381	82246
Thurston County, Washington	Thurston County	WA	96608	57.46	65277	38.82	6249	3.72	1.8	3.9	22	24.7	11.2	22.6	13.8	88895	105913
Wahkiakum County, Washington	Wahkiakum County	WA	1165	39.08	1741	58.4	75	2.52	3.9	4	28	27.6	14.3	14.7	7.5	59167	73542
Walla Walla County, Washington	Walla Walla County	WA	13690	43.79	16400	52.46	1171	3.75	4.6	6.5	21.9	25.4	11.8	16.9	12.9	66635	89381
Whatcom County, Washington	Whatcom County	WA	83660	60.35	50489	36.42	4471	3.23	2.1	4.6	21.9	23.6	10.7	22.3	14.7	77581	99746
Whitman County, Washington	Whitman County	WA	11184	52.94	9067	42.92	875	4.14	1.2	3	14.3	20.7	10	27	23.9	49345	75687
Yakima County, Washington	Yakima County	WA	43179	44.89	50555	52.56	2459	2.56	13.9	10.4	28.4	20.3	8.7	11.7	6.5	64910	80759
Barbour County, West Virginia	Barbour County	WV	1457	21.82	5116	76.62	104	1.56	3.6	8.5	54	15.7	6.5	6.9	4.9	44341	59463
Berkeley County, West Virginia	Berkeley County	WV	17186	33.35	33279	64.58	1070	2.08	3	6.5	36.3	20.7	9.2	16	8.3	73619	90429
Boone County, West Virginia	Boone County	WV	2041	22.65	6816	75.63	155	1.72	5.2	10.3	47.5	16.1	9.1	6.4	5.3	56182	66394
Braxton County, West Virginia	Braxton County	WV	1457	25.72	4120	72.74	87	1.54	6.2	11.2	52	14.8	4	8.6	3.1	42245	53962
Brooke County, West Virginia	Brooke County	WV	2947	27.66	7545	70.81	164	1.54	1.9	5.6	42.3	18.8	9.5	13.8	8.1	51963	67088
Cabell County, West Virginia	Cabell County	WV	14994	40.13	21721	58.14	645	1.73	3.2	7	31.2	19.8	8.5	16.8	13.5	48944	70233
Calhoun County, West Virginia	Calhoun County	WV	568	19.12	2364	79.57	39	1.31	5	8.2	55	19.4	4	5.2	3.1	39031	52368
Clay County, West Virginia	Clay County	WV	641	19.05	2679	79.61	45	1.34	7.1	9.6	52.1	11.9	6.7	6.5	6.1	41530	58827
Doddridge County, West Virginia	Doddridge County	WV	435	14.03	2619	84.46	47	1.52	5.2	12.9	44.2	17.5	8.3	9.1	2.9	56587	86668
Fayette County, West Virginia	Fayette County	WV	5063	30.03	11580	68.68	219	1.3	4.7	10.3	44.6	17	7.6	10.8	5	50090	60852
Gilmer County, West Virginia	Gilmer County	WV	599	22.5	2012	75.58	51	1.92	4.7	12.3	47.3	11.3	4.1	11.8	8.4	51552	62586
Grant County, West Virginia	Grant County	WV	607	11.02	4871	88.42	31	0.56	5.3	7	52.8	16.3	5.5	8.3	4.9	52877	65368
Greenbrier County, West Virginia	Greenbrier County	WV	4655	29.37	10925	68.93	270	1.7	3.7	8.2	40.9	18	8.4	12.2	8.7	45519	66046
Hampshire County, West Virginia	Hampshire County	WV	1939	19.22	8033	79.65	114	1.13	4.1	8.2	47	18.6	7.5	9.7	4.8	55222	69037
Hancock County, West Virginia	Hancock County	WV	3790	27.46	9806	71.06	204	1.48	3.2	6.3	39.6	19.8	11.9	13.3	5.8	57515	75334
Hardy County, West Virginia	Hardy County	WV	1381	21.81	4859	76.75	91	1.44	4.8	8.8	47.5	16.8	7.3	7.5	7.4	49205	72439
Harrison County, West Virginia	Harrison County	WV	9215	30.25	20683	67.89	567	1.86	2.2	9.2	39	17.3	7.7	14.8	9.8	56184	77982
Jackson County, West Virginia	Jackson County	WV	3207	23.74	10093	74.72	208	1.54	5.2	4.4	40.2	19.2	12.4	12.1	6.5	55173	80874
Jefferson County, West Virginia	Jefferson County	WV	12127	43.78	15033	54.26	543	1.96	2.9	6.8	29.6	20.4	8.2	20.1	12.1	93744	112637
Kanawha County, West Virginia	Kanawha County	WV	34344	41.76	46398	56.42	1502	1.83	2.9	6.5	36.1	19.1	7.2	16.6	11.5	55226	79069
Lewis County, West Virginia	Lewis County	WV	1538	20.62	5782	77.54	137	1.84	4.4	7.9	46.5	17	6.6	11	6.6	50552	75282
Lincoln County, West Virginia	Lincoln County	WV	1711	21.85	6012	76.78	107	1.37	6.7	11.1	47.3	18.5	8.3	5.3	2.8	50985	65505
Logan County, West Virginia	Logan County	WV	2333	17.91	10534	80.87	159	1.22	4.9	14	43.9	16.8	7.1	7	6.2	42194	64626
Marion County, West Virginia	Marion County	WV	8901	34.51	16300	63.19	593	2.3	2.6	6	39.9	18.3	8.2	15.8	9.3	59974	75300
Marshall County, West Virginia	Marshall County	WV	3455	24.54	10435	74.11	190	1.35	0.9	6.7	41.8	20.2	11.4	12.3	6.7	58129	78581
Mason County, West Virginia	Mason County	WV	2526	22.55	8491	75.79	186	1.66	5.6	8.8	42.3	16.5	11.3	10.4	5.1	53058	76285
McDowell County, West Virginia	McDowell County	WV	1333	20.42	5148	78.87	46	0.7	8.1	14.4	53.2	13.9	3.7	4.8	1.8	28235	40173
Mercer County, West Virginia	Mercer County	WV	5556	22.11	19237	76.54	341	1.36	4.5	9.1	38.4	20.1	7.3	13.5	7.1	46409	64284
Mineral County, West Virginia	Mineral County	WV	2660	20.67	10040	78	172	1.34	0.9	5.2	44.4	15.6	10.9	12.2	10.9	64728	81555
Mingo County, West Virginia	Mingo County	WV	1397	13.94	8544	85.25	81	0.81	7.9	15.4	44.5	16	6.6	5.6	3.9	38305	52853
Monongalia County, West Virginia	Monongalia County	WV	20282	48.21	20803	49.45	987	2.35	1.8	4.3	24.8	14.2	6.6	21.9	26.4	60893	90976
Monroe County, West Virginia	Monroe County	WV	1345	20.72	5068	78.09	77	1.19	5.2	6.2	51.3	16.3	5.6	9.8	5.4	52392	63766
Morgan County, West Virginia	Morgan County	WV	1998	22.98	6537	75.18	160	1.84	2.9	8.9	42.8	18.4	8.2	9.9	8.8	61021	76466
Nicholas County, West Virginia	Nicholas County	WV	2226	20.94	8279	77.88	125	1.18	3.4	7.5	46.2	18.2	6.2	9.2	9.2	48826	66459
Ohio County, West Virginia	Ohio County	WV	7223	36.3	12354	62.09	321	1.61	1.5	5.4	32.5	18.6	8.7	20.4	12.8	55521	83215
Pendleton County, West Virginia	Pendleton County	WV	820	22.41	2782	76.03	57	1.56	6.3	10.6	47.9	12.1	3.8	14.5	4.7	52458	64715
Pleasants County, West Virginia	Pleasants County	WV	699	20.02	2742	78.54	50	1.43	3.2	9.1	49.6	19.1	7	6.3	5.8	59666	103290
Pocahontas County, West Virginia	Pocahontas County	WV	1047	26.12	2895	72.23	66	1.65	3.4	13.5	47.4	14	7	8.5	6.2	41680	58395
Preston County, West Virginia	Preston County	WV	3163	21.71	11190	76.79	219	1.5	4.5	8.7	46.6	17.9	4.7	11.2	6.4	60136	74118
Putnam County, West Virginia	Putnam County	WV	7878	27.64	20034	70.29	589	2.07	2.2	4.2	35	19.9	9.2	17.9	11.7	75725	95296
Raleigh County, West Virginia	Raleigh County	WV	7982	24.11	24673	74.53	451	1.36	4.1	10.7	37.6	19.6	7.6	12.3	8.3	47975	67591
Randolph County, West Virginia	Randolph County	WV	3362	27.56	8673	71.09	165	1.35	4.5	7.8	50.3	14.6	5.1	12.2	5.4	51186	64793
Ritchie County, West Virginia	Ritchie County	WV	586	13.68	3649	85.2	48	1.12	7.2	9.3	49	14.6	7.6	9.5	2.8	48973	69916
Roane County, West Virginia	Roane County	WV	1455	25.25	4213	73.1	95	1.65	6.8	12.6	47.7	12.9	6.3	9.1	4.5	41299	59890
Summers County, West Virginia	Summers County	WV	1448	25.93	4074	72.95	63	1.13	8	9.2	41.9	20.2	4.1	10.4	6.1	42991	57446
Taylor County, West Virginia	Taylor County	WV	1796	24.33	5477	74.18	110	1.49	2.9	10.1	41.4	20.4	6.8	12.4	5.9	52946	72801
Tucker County, West Virginia	Tucker County	WV	938	24.4	2841	73.91	65	1.69	3.9	7.2	40.2	18	5.9	13.7	11.1	54053	70765
Tyler County, West Virginia	Tyler County	WV	631	16.09	3226	82.25	65	1.66	4.6	4.5	46.9	17.6	10	11.1	5.3	59167	73976
Upshur County, West Virginia	Upshur County	WV	2256	22.07	7771	76.03	194	1.9	4.8	7.9	50.4	13.9	6.3	9.5	7.1	49663	68587
Wayne County, West Virginia	Wayne County	WV	4088	24.12	12585	74.26	274	1.62	4.1	11.7	37.3	19.5	9.1	10.3	8.1	52694	72830
Webster County, West Virginia	Webster County	WV	610	17.93	2759	81.1	33	0.97	10.3	9.8	49	15.6	3.9	8.9	2.6	43409	57479
Wetzel County, West Virginia	Wetzel County	WV	1539	23.08	4993	74.89	135	2.02	2.8	7.2	48.4	18.1	10	9.1	4.3	50715	67016
Wirt County, West Virginia	Wirt County	WV	466	17.57	2134	80.44	53	2	5	9.2	45.4	19.4	5.9	10.3	4.9	52776	65551
Wood County, West Virginia	Wood County	WV	10926	28.19	27202	70.18	634	1.64	2.5	6.7	35.3	22.2	11.4	13.5	8.6	54350	73395
Wyoming County, West Virginia	Wyoming County	WV	1157	13.47	7353	85.58	82	0.95	7.8	15.8	46.6	12.4	6	6.1	5.3	44510	57403
Adams County, Wisconsin	Adams County	WI	4329	36.63	7362	62.29	127	1.07	2.5	9.2	40.9	23.2	8.6	11.4	4.2	55223	69989
Ashland County, Wisconsin	Ashland County	WI	4801	54.82	3841	43.86	115	1.31	1.1	3.8	36	23.9	14.4	13.1	7.5	57000	71624
Barron County, Wisconsin	Barron County	WI	9194	36.27	15803	62.35	349	1.38	3.5	5.9	35.5	19.7	14.7	14	6.7	59379	79658
Bayfield County, Wisconsin	Bayfield County	WI	6147	56.5	4617	42.44	116	1.07	1	3.2	27.2	22.3	12.7	20.9	12.6	67266	85328
Brown County, Wisconsin	Brown County	WI	65511	45.49	75871	52.68	2635	1.83	3	4.1	29.5	19.1	12.5	22.2	9.5	74066	95087
Buffalo County, Wisconsin	Buffalo County	WI	2860	36.59	4834	61.85	122	1.56	2	6.1	40.3	17.1	13.5	15.1	5.9	64238	77627
Burnett County, Wisconsin	Burnett County	WI	3569	35.19	6462	63.72	110	1.08	1.6	5.7	38.2	21.3	11.1	15.1	7	60466	79906
Calumet County, Wisconsin	Calumet County	WI	12116	39.37	18156	59	502	1.63	1.6	3.5	31.3	18.1	13.8	22.8	8.9	84151	103701
Chippewa County, Wisconsin	Chippewa County	WI	13983	38.91	21317	59.32	638	1.78	2.2	5.2	34.5	20.5	14.5	17	6.2	69815	88362
Columbia County, Wisconsin	Columbia County	WI	16410	48.45	16927	49.98	532	1.57	2	4.1	32	24.7	13	16.7	7.5	79271	95895
Crawford County, Wisconsin	Crawford County	WI	3953	45.46	4620	53.13	122	1.4	2.3	5.9	41.1	20.8	12.4	12.6	4.9	60823	75690
Dane County, Wisconsin	Dane County	WI	260185	75.46	78800	22.85	5806	1.68	1.6	2.4	17.5	15.5	9	32.5	21.5	84297	113021
Dodge County, Wisconsin	Dodge County	WI	16356	33.77	31355	64.73	725	1.5	2.4	5.4	40.6	20.8	11.3	13.9	5.7	71747	85560
Door County, Wisconsin	Door County	WI	10044	49.93	9752	48.48	321	1.6	1.1	3.1	27.1	24.1	9.3	23	12.3	68257	94903
Douglas County, Wisconsin	Douglas County	WI	13218	53.56	10923	44.26	536	2.17	1.2	4.4	29.3	23.7	14.2	19.1	8.1	64682	80450
Dunn County, Wisconsin	Dunn County	WI	9897	42.07	13173	56	454	1.93	1.6	4.3	32.7	20.1	12.7	18.5	10.1	69721	85967
Eau Claire County, Wisconsin	Eau Claire County	WI	31620	54.26	25341	43.49	1314	2.25	1.6	2.3	26.1	19.5	15.1	23.1	12.3	70127	92896
Florence County, Wisconsin	Florence County	WI	781	26.56	2133	72.55	26	0.88	2.2	6.4	36.1	22.1	10.7	16.9	5.6	58049	75950
Fond du Lac County, Wisconsin	Fond du Lac County	WI	20588	35.96	35754	62.45	909	1.59	2.1	5.5	37	20.5	12.6	15	7.3	70368	87987
Forest County, Wisconsin	Forest County	WI	1721	34.06	3285	65.01	47	0.93	2	7.8	39.4	24.3	10.8	12.5	3.2	55552	70095
Grant County, Wisconsin	Grant County	WI	10998	42.95	14142	55.22	468	1.83	3.8	3.7	33.7	19.8	14.8	15	9.2	63497	81183
Green County, Wisconsin	Green County	WI	10851	50.69	10169	47.51	386	1.8	2.3	4.5	33.8	20.3	13.1	17.5	8.7	76080	93729
Green Lake County, Wisconsin	Green Lake County	WI	3344	31.34	7168	67.17	159	1.49	2.9	6	37.6	22.1	8.9	14.6	7.9	66395	83262
Iowa County, Wisconsin	Iowa County	WI	7828	55.95	5909	42.23	255	1.82	1.5	3	33.5	21.7	12.5	19	8.8	79226	93598
Iron County, Wisconsin	Iron County	WI	1533	38.23	2438	60.8	39	0.97	0.5	3.2	33	24.8	14.7	16.7	7	55777	69652
Jackson County, Wisconsin	Jackson County	WI	4256	41.79	5791	56.86	137	1.35	2.4	5.8	43.8	20.8	11.3	10.6	5.3	64630	81771
Jefferson County, Wisconsin	Jefferson County	WI	19904	41.48	27208	56.71	867	1.81	3.2	4.1	32.7	21.7	10.5	19.5	8.3	77018	94400
Juneau County, Wisconsin	Juneau County	WI	4746	34.62	8749	63.82	214	1.56	2.1	8.5	39.7	22.1	11.5	11.3	4.9	63455	76575
Kenosha County, Wisconsin	Kenosha County	WI	42193	47.55	44972	50.68	1573	1.77	3.7	5	28	23.5	10.4	18.7	10.7	76583	96154
Kewaunee County, Wisconsin	Kewaunee County	WI	3976	32.87	7927	65.54	192	1.59	2.1	3.8	39.3	19.8	14.8	14.4	5.9	77610	91551
La Crosse County, Wisconsin	La Crosse County	WI	37846	55.75	28684	42.25	1354	1.99	1.5	2.2	25.2	22.1	13.2	21.9	14	68731	92644
Lafayette County, Wisconsin	Lafayette County	WI	3647	42.63	4821	56.35	87	1.02	4.3	4.5	40.2	19.1	12	13.7	6.1	69293	83219
Langlade County, Wisconsin	Langlade County	WI	3704	33.18	7330	65.65	131	1.17	2.7	7.6	41.6	21	11.3	11.1	4.7	55091	73590
Lincoln County, Wisconsin	Lincoln County	WI	6261	37.95	10017	60.72	219	1.33	2.7	5.1	42.5	19.6	11.3	12.7	6	64314	78353
Manitowoc County, Wisconsin	Manitowoc County	WI	16818	37.52	27218	60.72	793	1.77	2.6	4.9	37.1	20.5	11.9	16.3	6.8	66412	82650
Marathon County, Wisconsin	Marathon County	WI	30808	40.14	44624	58.14	1319	1.72	3.1	4.2	33	18.9	13.7	18.6	8.4	73248	93251
Marinette County, Wisconsin	Marinette County	WI	7366	32.06	15304	66.6	309	1.34	2.5	5.2	38.6	22.1	13.7	12.1	5.7	60347	74619
Marquette County, Wisconsin	Marquette County	WI	3239	35.73	5719	63.09	107	1.18	1.9	6.6	43.9	22.9	10.3	10.5	3.9	59748	75357
Menominee County, Wisconsin	Menominee County	WI	1303	81.95	278	17.48	9	0.57	1.5	3	43	22.2	11.3	12.3	6.6	62194	81490
Milwaukee County, Wisconsin	Milwaukee County	WI	317270	69.13	134357	29.27	7344	1.6	3.9	6.6	28.3	19.9	8.2	21	12.1	59319	81770
Monroe County, Wisconsin	Monroe County	WI	8433	37.3	13775	60.92	403	1.78	4.5	4.6	36.9	22.1	11.8	13.8	6.3	66451	82567
Oconto County, Wisconsin	Oconto County	WI	6715	28.93	16226	69.89	274	1.18	1.7	5.9	40.9	20.2	14	13.3	4	73611	86394
Oneida County, Wisconsin	Oneida County	WI	10105	41.83	13671	56.59	383	1.59	0.9	3.7	30.8	25.1	12.4	16.9	10.2	66111	88384
Outagamie County, Wisconsin	Outagamie County	WI	47667	44.13	58385	54.05	1970	1.82	2	3.7	30.8	18.8	13.1	22.3	9.3	78705	104983
Ozaukee County, Wisconsin	Ozaukee County	WI	26517	43.13	33912	55.15	1057	1.72	0.6	1.7	21.7	18	8.2	30.8	19	92258	132648
Pepin County, Wisconsin	Pepin County	WI	1489	35.93	2584	62.36	71	1.71	2.6	3.6	37.4	20.6	13	16.8	6	70833	90108
Pierce County, Wisconsin	Pierce County	WI	9796	42.01	12815	54.96	706	3.03	0.8	3.6	30.6	21.4	12.5	20.8	10.2	82996	101794
Polk County, Wisconsin	Polk County	WI	9370	35.53	16611	62.99	390	1.48	1.3	5.3	35.3	22.1	13.2	15.8	6.9	74142	89208
Portage County, Wisconsin	Portage County	WI	20428	50.31	19299	47.53	876	2.16	1.7	3.6	30.8	17.4	12.8	23.5	10.1	71301	89135
Price County, Wisconsin	Price County	WI	3032	35.48	5394	63.12	120	1.4	1.4	5.7	42	21.4	13.4	11.3	4.8	55822	70010
Racine County, Wisconsin	Racine County	WI	50159	47.12	54479	51.18	1813	1.7	2.9	5.8	29.3	23.1	10.9	18.8	9.2	72658	94057
Richland County, Wisconsin	Richland County	WI	3995	44.32	4871	54.04	148	1.64	4	4.9	42	18.3	10.9	13.7	6.2	61985	77816
Rock County, Wisconsin	Rock County	WI	46658	54.66	37138	43.51	1564	1.83	2.4	5.3	34.2	22.1	11.6	16.4	8	70630	85333
Rusk County, Wisconsin	Rusk County	WI	2517	31.92	5257	66.66	112	1.42	2.3	6.6	41.1	19.2	13.7	12	5.2	57473	70178
Sauk County, Wisconsin	Sauk County	WI	18108	50.02	17493	48.32	602	1.66	2.6	5.2	33.4	21.2	12.4	17.7	7.5	72930	88938
Sawyer County, Wisconsin	Sawyer County	WI	4498	42.8	5909	56.22	103	0.98	1.7	5.5	32.6	22.2	11.1	17.1	9.8	57519	77748
Shawano County, Wisconsin	Shawano County	WI	7131	31.53	15173	67.09	311	1.38	2.4	5.5	43	18.1	12.8	12.5	5.7	65493	83014
Sheboygan County, Wisconsin	Sheboygan County	WI	27101	41.06	37609	56.97	1301	1.97	2	4.2	34	21	12.2	17.9	8.8	68969	87894
St. Croix County, Wisconsin	St. Croix County	WI	23190	40.89	32199	56.78	1318	2.32	0.9	2.9	24.5	20.5	13.4	26.4	11.4	97950	116715
Taylor County, Wisconsin	Taylor County	WI	2693	25.2	7657	71.65	336	3.14	3.7	6.9	44.6	18.6	10.3	11.4	4.5	61360	80225
Trempealeau County, Wisconsin	Trempealeau County	WI	6285	40.86	8833	57.43	262	1.7	3.4	4.9	38.2	18.7	15.3	13.7	6	68474	85033
Vernon County, Wisconsin	Vernon County	WI	7457	46.83	8218	51.61	248	1.56	5.7	4	35.1	18.9	12	16	8.3	65177	80469
Vilas County, Wisconsin	Vilas County	WI	5903	38.41	9261	60.26	205	1.33	1	3.6	31.5	24.2	10.6	18.9	10.2	63726	84774
Walworth County, Wisconsin	Walworth County	WI	22789	39.56	33851	58.77	960	1.67	2.8	5.3	30.4	21.3	9.4	20.5	10.3	75172	98901
Washburn County, Wisconsin	Washburn County	WI	3867	37.26	6334	61.03	177	1.71	2.1	4.7	34.7	23.2	12.3	16.2	6.9	58504	76892
Washington County, Wisconsin	Washington County	WI	26650	30.26	60237	68.4	1183	1.34	1	3.8	29.4	19.7	12.2	23.2	10.7	91915	109392
Waukesha County, Wisconsin	Waukesha County	WI	103906	38.77	159649	59.57	4441	1.66	0.9	2.2	20.9	19	9.8	31.2	15.9	101639	132680
Waupaca County, Wisconsin	Waupaca County	WI	9703	33.31	18952	65.06	475	1.63	1.9	5.3	43.8	18.7	10.9	13.9	5.6	69198	89128
Waushara County, Wisconsin	Waushara County	WI	4388	32.34	9016	66.45	164	1.21	3.6	7.2	42	21.2	9.5	11.3	5.2	61033	79620
Winnebago County, Wisconsin	Winnebago County	WI	44060	46.86	47796	50.83	2176	2.31	1.7	4.1	32	20.6	12.4	20.2	9.1	70041	88231
Wood County, Wisconsin	Wood County	WI	16365	39.63	24308	58.86	625	1.51	1.9	4.8	38.2	19.6	14.1	14.3	7	63273	83766
Albany County, Wyoming	Albany County	WY	9092	48.84	8579	46.08	946	5.08	1.2	2.3	14.4	18.2	8.1	28.8	27.2	55887	80218
Big Horn County, Wyoming	Big Horn County	WY	788	13.7	4806	83.55	158	2.75	3.6	8.3	28.3	27.3	12.1	14.4	6.1	61262	75613
Campbell County, Wyoming	Campbell County	WY	1935	9.89	16975	86.76	656	3.35	3.2	4.8	33.5	25.5	11.1	13.9	8	93315	104257
Carbon County, Wyoming	Carbon County	WY	1427	21.41	5014	75.24	223	3.35	3.2	6.7	37.3	22.6	9.1	16.2	4.9	65196	80524
Converse County, Wyoming	Converse County	WY	861	12.35	5917	84.89	192	2.75	2.9	4.8	33.8	23.8	12.7	13	9	79235	92879
Crook County, Wyoming	Crook County	WY	378	9.18	3651	88.64	90	2.18	0.4	5.5	29.3	27.2	14.3	20.2	3.1	68876	82651
Fremont County, Wyoming	Fremont County	WY	5519	30.47	12007	66.3	585	3.23	1	5.8	31.4	25.8	11.6	15.2	9.1	60030	77246
Goshen County, Wyoming	Goshen County	WY	1203	19.28	4878	78.16	160	2.56	2.5	4.2	27.7	28.8	12.9	15.4	8.6	62356	75763
Hot Springs County, Wyoming	Hot Springs County	WY	482	18.7	1999	77.57	96	3.73	0.8	4.1	26.2	27.7	13	20.6	7.6	64031	74052
Johnson County, Wyoming	Johnson County	WY	897	18.25	3881	78.98	136	2.77	3.5	3.8	24.9	27.3	8.7	19.3	12.5	60667	81448
Laramie County, Wyoming	Laramie County	WY	15217	33.83	27891	62	1874	4.17	1.8	3.8	24.9	25.4	13.6	19.3	11.2	76282	97662
Lincoln County, Wyoming	Lincoln County	WY	1509	14.42	8643	82.57	316	3.02	1.2	4.7	30.4	27.7	12.9	15.5	7.6	83033	98906
Natrona County, Wyoming	Natrona County	WY	8530	24.23	25271	71.79	1401	3.98	1.5	4.4	27.8	27.1	12.7	16.3	10.2	69104	94128
Niobrara County, Wyoming	Niobrara County	WY	155	11.85	1118	85.47	35	2.68	2.9	5.2	38	27	6.9	17.7	2.3	54375	67412
Park County, Wyoming	Park County	WY	3410	20.4	12813	76.65	494	2.96	1.1	3.5	25.5	21.5	15.6	21.7	11	66754	85040
Platte County, Wyoming	Platte County	WY	890	18.08	3898	79.18	135	2.74	2.1	4.3	33.3	26.4	11.7	12	10.1	64753	85301
Sheridan County, Wyoming	Sheridan County	WY	4043	24.61	11843	72.09	542	3.3	1.1	2.6	31.1	23.8	9.3	18.9	13.2	68898	89453
Baldwin County, Alabama	Baldwin County	AL	24578	22.41	83544	76.17	1557	1.42	2	6.4	27.8	21.7	9.6	20	12.5	71039	96027
Barbour County, Alabama	Barbour County	AL	4816	45.79	5622	53.45	80	0.76	7.3	16.2	36.8	19.9	7.9	6.6	5.3	39712	60128
Bibb County, Alabama	Bibb County	AL	1986	20.7	7525	78.43	84	0.88	6.4	14.7	40.9	19.1	8	6.6	4.3	50669	65131
Blount County, Alabama	Blount County	AL	2640	9.57	24711	89.57	237	0.86	7.1	11.1	35.3	20.7	11	9.4	5.3	57440	75954
Bullock County, Alabama	Bullock County	AL	3446	74.7	1146	24.84	21	0.46	9.9	16.7	41.3	19.5	3.2	6.9	2.5	36136	52269
Butler County, Alabama	Butler County	AL	3965	41.79	5458	57.53	65	0.69	3.9	8.5	48	19.1	7.4	7.8	5.3	44429	65988
Calhoun County, Alabama	Calhoun County	AL	15216	29.85	35101	68.85	666	1.31	4.4	10.5	34.6	23.2	8.1	11.5	7.6	54339	69213
Yolo County, California	Yolo County	CA	67598	69.5	27292	28.06	2374	2.44	7	5.1	18	19.1	7.5	22.4	20.9	85097	117611
Knox County, Missouri	Knox County	MO	340	18.34	1486	80.15	28	1.51	6.8	8	43.5	16.1	9.6	9.8	6.2	49167	63736
Hidalgo County, Texas	Hidalgo County	TX	128199	58.04	90527	40.98	2158	0.98	18.4	13	24.8	18.3	5.3	14	6.1	49371	68145
Chambers County, Alabama	Chambers County	AL	6365	41.64	8753	57.27	166	1.09	5.8	10.8	39.5	20.3	10.9	9.2	3.5	48805	64377
Cherokee County, Alabama	Cherokee County	AL	1624	13.2	10583	86.03	94	0.76	6.6	11.5	36.1	19.3	12	8.3	6.3	46621	65664
Chilton County, Alabama	Chilton County	AL	3073	15.91	16085	83.3	152	0.79	5.9	11.9	41.6	19.1	7.5	8.2	5.8	62471	73650
Choctaw County, Alabama	Choctaw County	AL	3127	41.89	4296	57.56	41	0.55	6.4	11.2	38.2	21.5	9.7	9.6	3.4	43299	61685
Clarke County, Alabama	Clarke County	AL	5755	43.81	7324	55.76	56	0.43	4.9	13.7	41	19.6	7	8.4	5.4	47549	71413
Clay County, Alabama	Clay County	AL	1267	18.28	5601	80.82	62	0.89	5	11.6	37.4	21.3	11.8	9.2	3.6	48074	69549
Cleburne County, Alabama	Cleburne County	AL	675	9.34	6484	89.72	68	0.94	5.2	12.3	39	19.5	7.6	11	5.5	51553	71645
Coffee County, Alabama	Coffee County	AL	5076	22.79	16899	75.87	300	1.35	4.5	8.9	28.9	23	13.1	13.1	8.5	62199	78477
Colbert County, Alabama	Colbert County	AL	8343	29.92	19203	68.86	340	1.22	3.6	10.1	36.6	23.3	8.4	11.2	6.8	56149	71460
Conecuh County, Alabama	Conecuh County	AL	2966	46.05	3442	53.44	33	0.51	2.9	7.7	48.3	19.8	8.1	7.7	5.7	39888	56230
Coosa County, Alabama	Coosa County	AL	1796	32.78	3631	66.27	52	0.95	3.7	12.8	41.4	22.1	9.3	7.2	3.5	52279	69810
Covington County, Alabama	Covington County	AL	2721	15.61	14586	83.68	123	0.71	4.4	9.8	36.3	21.4	11.8	9.8	6.5	48772	69704
Crenshaw County, Alabama	Crenshaw County	AL	1700	25.69	4864	73.51	53	0.8	6.8	11.1	42.5	14.4	8	11.9	5.3	48557	78621
Cullman County, Alabama	Cullman County	AL	4478	10.7	36880	88.12	493	1.18	4.6	10.8	31.4	23.6	11.4	12.1	6.2	58119	75873
Dale County, Alabama	Dale County	AL	5170	26.19	14303	72.46	265	1.34	4.5	9.8	31.3	25.1	10.1	12.9	6.2	52813	67432
Dallas County, Alabama	Dallas County	AL	12230	68.46	5524	30.92	110	0.62	3.4	11.2	39.7	19.4	10.6	10.1	5.6	37180	53213
DeKalb County, Alabama	DeKalb County	AL	4281	14.58	24767	84.37	308	1.05	11.1	11.1	31.8	20.6	11.2	8.3	5.9	47920	64545
Elmore County, Alabama	Elmore County	AL	10367	25.27	30164	73.52	499	1.22	3.4	8.1	33.8	20.7	9.9	15.8	8.4	73258	90524
Ohio County, Kentucky	Ohio County	KY	2404	21.6	8582	77.11	143	1.28	8.3	9.9	39.8	18	9.6	8.1	6.3	52474	67297
Clark County, Wisconsin	Clark County	WI	4524	30.37	10002	67.14	372	2.5	11.4	6.4	39.1	18.9	11	9.5	3.6	63187	79900
Sublette County, Wyoming	Sublette County	WY	882	17.75	3957	79.62	131	2.64	0.4	3.7	28	31.2	11.1	19.3	6.3	85960	126919
Sweetwater County, Wyoming	Sweetwater County	WY	3823	23.03	12229	73.66	551	3.32	2.4	4.6	32.7	25.8	14.6	12.4	7.6	79375	99929
Teton County, Wyoming	Teton County	WY	9848	67.1	4341	29.58	488	3.32	2.4	1.7	16.7	16.7	2.3	38.9	21.4	108279	182050
Uinta County, Wyoming	Uinta County	WY	1591	16.92	7496	79.73	315	3.35	2.1	3.5	36.3	27.4	11.5	13.5	5.6	78164	85497
Washakie County, Wyoming	Washakie County	WY	651	16.23	3245	80.88	116	2.89	1.4	3.9	28.5	34.6	10.6	13.3	7.9	61875	74491
Weston County, Wyoming	Weston County	WY	360	10.16	3107	87.72	75	2.12	2	6.9	36.9	23.1	13.5	12.8	4.8	71800	92279
\.


--
-- Data for Name: fips; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fips (fips, name, state) FROM stdin;
1000	ALABAMA	NA
1001	Autauga County	AL
1003	Baldwin County	AL
1005	Barbour County	AL
1007	Bibb County	AL
1009	Blount County	AL
1011	Bullock County	AL
1013	Butler County	AL
1015	Calhoun County	AL
1017	Chambers County	AL
1019	Cherokee County	AL
1021	Chilton County	AL
1023	Choctaw County	AL
1025	Clarke County	AL
1027	Clay County	AL
1029	Cleburne County	AL
1031	Coffee County	AL
1033	Colbert County	AL
1035	Conecuh County	AL
1037	Coosa County	AL
1039	Covington County	AL
1041	Crenshaw County	AL
1043	Cullman County	AL
1045	Dale County	AL
1047	Dallas County	AL
1049	DeKalb County	AL
1051	Elmore County	AL
1053	Escambia County	AL
1055	Etowah County	AL
1057	Fayette County	AL
1059	Franklin County	AL
1061	Geneva County	AL
1063	Greene County	AL
1065	Hale County	AL
1067	Henry County	AL
1069	Houston County	AL
1071	Jackson County	AL
1073	Jefferson County	AL
1075	Lamar County	AL
1077	Lauderdale County	AL
1079	Lawrence County	AL
1081	Lee County	AL
1083	Limestone County	AL
1085	Lowndes County	AL
1087	Macon County	AL
1089	Madison County	AL
1091	Marengo County	AL
1093	Marion County	AL
1095	Marshall County	AL
1097	Mobile County	AL
1099	Monroe County	AL
1101	Montgomery County	AL
1103	Morgan County	AL
1105	Perry County	AL
1107	Pickens County	AL
1109	Pike County	AL
1111	Randolph County	AL
1113	Russell County	AL
1115	St. Clair County	AL
1117	Shelby County	AL
1119	Sumter County	AL
1121	Talladega County	AL
1123	Tallapoosa County	AL
1125	Tuscaloosa County	AL
1127	Walker County	AL
1129	Washington County	AL
1131	Wilcox County	AL
1133	Winston County	AL
2000	ALASKA	NA
2013	Aleutians East Borough	AK
2016	Aleutians West Census Area	AK
2020	Anchorage Municipality	AK
2050	Bethel Census Area	AK
2060	Bristol Bay Borough	AK
2068	Denali Borough	AK
2070	Dillingham Census Area	AK
2090	Fairbanks North Star Borough	AK
2100	Haines Borough	AK
2105	Hoonah-Angoon Census Area	AK
2110	Juneau City and Borough	AK
2122	Kenai Peninsula Borough	AK
2130	Ketchikan Gateway Borough	AK
2150	Kodiak Island Borough	AK
2164	Lake and Peninsula Borough	AK
2170	Matanuska-Susitna Borough	AK
2180	Nome Census Area	AK
2185	North Slope Borough	AK
2188	Northwest Arctic Borough	AK
2195	Petersburg Borough	AK
2198	Prince of Wales-Hyder Census Area	AK
2220	Sitka City and Borough	AK
2230	Skagway Municipality	AK
2240	Southeast Fairbanks Census Area	AK
2261	Valdez-Cordova Census Area	AK
2158	Kusilvak Census Area	AK
2275	Wrangell City and Borough	AK
2282	Yakutat City and Borough	AK
2290	Yukon-Koyukuk Census Area	AK
4000	ARIZONA	NA
4001	Apache County	AZ
4003	Cochise County	AZ
4005	Coconino County	AZ
4007	Gila County	AZ
4009	Graham County	AZ
4011	Greenlee County	AZ
4012	La Paz County	AZ
4013	Maricopa County	AZ
4015	Mohave County	AZ
4017	Navajo County	AZ
4019	Pima County	AZ
4021	Pinal County	AZ
4023	Santa Cruz County	AZ
4025	Yavapai County	AZ
4027	Yuma County	AZ
5000	ARKANSAS	NA
5001	Arkansas County	AR
5003	Ashley County	AR
5005	Baxter County	AR
5007	Benton County	AR
5009	Boone County	AR
5011	Bradley County	AR
5013	Calhoun County	AR
5015	Carroll County	AR
5017	Chicot County	AR
5019	Clark County	AR
5021	Clay County	AR
5023	Cleburne County	AR
5025	Cleveland County	AR
5027	Columbia County	AR
5029	Conway County	AR
5031	Craighead County	AR
5033	Crawford County	AR
5035	Crittenden County	AR
5037	Cross County	AR
5039	Dallas County	AR
5041	Desha County	AR
5043	Drew County	AR
5045	Faulkner County	AR
5047	Franklin County	AR
5049	Fulton County	AR
5051	Garland County	AR
5053	Grant County	AR
5055	Greene County	AR
5057	Hempstead County	AR
5059	Hot Spring County	AR
5061	Howard County	AR
5063	Independence County	AR
5065	Izard County	AR
5067	Jackson County	AR
5069	Jefferson County	AR
5071	Johnson County	AR
5073	Lafayette County	AR
5075	Lawrence County	AR
5077	Lee County	AR
5079	Lincoln County	AR
5081	Little River County	AR
5083	Logan County	AR
5085	Lonoke County	AR
5087	Madison County	AR
5089	Marion County	AR
5091	Miller County	AR
5093	Mississippi County	AR
5095	Monroe County	AR
5097	Montgomery County	AR
5099	Nevada County	AR
5101	Newton County	AR
5103	Ouachita County	AR
5105	Perry County	AR
5107	Phillips County	AR
5109	Pike County	AR
5111	Poinsett County	AR
5113	Polk County	AR
5115	Pope County	AR
5117	Prairie County	AR
5119	Pulaski County	AR
5121	Randolph County	AR
5123	St. Francis County	AR
5125	Saline County	AR
5127	Scott County	AR
5129	Searcy County	AR
5131	Sebastian County	AR
5133	Sevier County	AR
5135	Sharp County	AR
5137	Stone County	AR
5139	Union County	AR
5141	Van Buren County	AR
5143	Washington County	AR
5145	White County	AR
5147	Woodruff County	AR
5149	Yell County	AR
6000	CALIFORNIA	NA
6001	Alameda County	CA
6003	Alpine County	CA
6005	Amador County	CA
6007	Butte County	CA
6009	Calaveras County	CA
6011	Colusa County	CA
6013	Contra Costa County	CA
6015	Del Norte County	CA
6017	El Dorado County	CA
6019	Fresno County	CA
6021	Glenn County	CA
6023	Humboldt County	CA
6025	Imperial County	CA
6027	Inyo County	CA
6029	Kern County	CA
6031	Kings County	CA
6033	Lake County	CA
6035	Lassen County	CA
6037	Los Angeles County	CA
6039	Madera County	CA
6041	Marin County	CA
6043	Mariposa County	CA
6045	Mendocino County	CA
6047	Merced County	CA
6049	Modoc County	CA
6051	Mono County	CA
6053	Monterey County	CA
6055	Napa County	CA
6057	Nevada County	CA
6059	Orange County	CA
6061	Placer County	CA
6063	Plumas County	CA
6065	Riverside County	CA
6067	Sacramento County	CA
6069	San Benito County	CA
6071	San Bernardino County	CA
6073	San Diego County	CA
6075	San Francisco County	CA
6077	San Joaquin County	CA
6079	San Luis Obispo County	CA
6081	San Mateo County	CA
6083	Santa Barbara County	CA
6085	Santa Clara County	CA
6087	Santa Cruz County	CA
6089	Shasta County	CA
6091	Sierra County	CA
6093	Siskiyou County	CA
6095	Solano County	CA
6097	Sonoma County	CA
6099	Stanislaus County	CA
6101	Sutter County	CA
6103	Tehama County	CA
6105	Trinity County	CA
6107	Tulare County	CA
6109	Tuolumne County	CA
6111	Ventura County	CA
6113	Yolo County	CA
6115	Yuba County	CA
8000	COLORADO	NA
8001	Adams County	CO
8003	Alamosa County	CO
8005	Arapahoe County	CO
8007	Archuleta County	CO
8009	Baca County	CO
8011	Bent County	CO
8013	Boulder County	CO
8014	Broomfield County	CO
8015	Chaffee County	CO
8017	Cheyenne County	CO
8019	Clear Creek County	CO
8021	Conejos County	CO
8023	Costilla County	CO
8025	Crowley County	CO
8027	Custer County	CO
8029	Delta County	CO
8031	Denver County	CO
8033	Dolores County	CO
8035	Douglas County	CO
8037	Eagle County	CO
8039	Elbert County	CO
8041	El Paso County	CO
8043	Fremont County	CO
8045	Garfield County	CO
8047	Gilpin County	CO
8049	Grand County	CO
8051	Gunnison County	CO
8053	Hinsdale County	CO
8055	Huerfano County	CO
8057	Jackson County	CO
8059	Jefferson County	CO
8061	Kiowa County	CO
8063	Kit Carson County	CO
8065	Lake County	CO
8067	La Plata County	CO
8069	Larimer County	CO
8071	Las Animas County	CO
8073	Lincoln County	CO
8075	Logan County	CO
8077	Mesa County	CO
8079	Mineral County	CO
8081	Moffat County	CO
8083	Montezuma County	CO
8085	Montrose County	CO
8087	Morgan County	CO
8089	Otero County	CO
8091	Ouray County	CO
8093	Park County	CO
8095	Phillips County	CO
8097	Pitkin County	CO
8099	Prowers County	CO
8101	Pueblo County	CO
8103	Rio Blanco County	CO
8105	Rio Grande County	CO
8107	Routt County	CO
8109	Saguache County	CO
8111	San Juan County	CO
8113	San Miguel County	CO
8115	Sedgwick County	CO
8117	Summit County	CO
8119	Teller County	CO
8121	Washington County	CO
8123	Weld County	CO
8125	Yuma County	CO
9000	CONNECTICUT	NA
9001	Fairfield County	CT
9003	Hartford County	CT
9005	Litchfield County	CT
9007	Middlesex County	CT
9009	New Haven County	CT
9011	New London County	CT
9013	Tolland County	CT
9015	Windham County	CT
10000	DELAWARE	NA
10001	Kent County	DE
10003	New Castle County	DE
10005	Sussex County	DE
11000	DISTRICT OF COLUMBIA	NA
11001	District of Columbia	DC
12000	FLORIDA	NA
12001	Alachua County	FL
12003	Baker County	FL
12005	Bay County	FL
12007	Bradford County	FL
12009	Brevard County	FL
12011	Broward County	FL
12013	Calhoun County	FL
12015	Charlotte County	FL
12017	Citrus County	FL
12019	Clay County	FL
12021	Collier County	FL
12023	Columbia County	FL
12027	DeSoto County	FL
12029	Dixie County	FL
12031	Duval County	FL
12033	Escambia County	FL
12035	Flagler County	FL
12037	Franklin County	FL
12039	Gadsden County	FL
12041	Gilchrist County	FL
12043	Glades County	FL
12045	Gulf County	FL
12047	Hamilton County	FL
12049	Hardee County	FL
12051	Hendry County	FL
12053	Hernando County	FL
12055	Highlands County	FL
12057	Hillsborough County	FL
12059	Holmes County	FL
12061	Indian River County	FL
12063	Jackson County	FL
12065	Jefferson County	FL
12067	Lafayette County	FL
12069	Lake County	FL
12071	Lee County	FL
12073	Leon County	FL
12075	Levy County	FL
12077	Liberty County	FL
12079	Madison County	FL
12081	Manatee County	FL
12083	Marion County	FL
12085	Martin County	FL
12086	Miami-Dade County	FL
12087	Monroe County	FL
12089	Nassau County	FL
12091	Okaloosa County	FL
12093	Okeechobee County	FL
12095	Orange County	FL
12097	Osceola County	FL
12099	Palm Beach County	FL
12101	Pasco County	FL
12103	Pinellas County	FL
12105	Polk County	FL
12107	Putnam County	FL
12109	St. Johns County	FL
12111	St. Lucie County	FL
12113	Santa Rosa County	FL
12115	Sarasota County	FL
12117	Seminole County	FL
12119	Sumter County	FL
12121	Suwannee County	FL
12123	Taylor County	FL
12125	Union County	FL
12127	Volusia County	FL
12129	Wakulla County	FL
12131	Walton County	FL
12133	Washington County	FL
13000	GEORGIA	NA
13001	Appling County	GA
13003	Atkinson County	GA
13005	Bacon County	GA
13007	Baker County	GA
13009	Baldwin County	GA
13011	Banks County	GA
13013	Barrow County	GA
13015	Bartow County	GA
13017	Ben Hill County	GA
13019	Berrien County	GA
13021	Bibb County	GA
13023	Bleckley County	GA
13025	Brantley County	GA
13027	Brooks County	GA
13029	Bryan County	GA
13031	Bulloch County	GA
13033	Burke County	GA
13035	Butts County	GA
13037	Calhoun County	GA
13039	Camden County	GA
13043	Candler County	GA
13045	Carroll County	GA
13047	Catoosa County	GA
13049	Charlton County	GA
13051	Chatham County	GA
13053	Chattahoochee County	GA
13055	Chattooga County	GA
13057	Cherokee County	GA
13059	Clarke County	GA
13061	Clay County	GA
13063	Clayton County	GA
13065	Clinch County	GA
13067	Cobb County	GA
13069	Coffee County	GA
13071	Colquitt County	GA
13073	Columbia County	GA
13075	Cook County	GA
13077	Coweta County	GA
13079	Crawford County	GA
13081	Crisp County	GA
13083	Dade County	GA
13085	Dawson County	GA
13087	Decatur County	GA
13089	DeKalb County	GA
13091	Dodge County	GA
13093	Dooly County	GA
13095	Dougherty County	GA
13097	Douglas County	GA
13099	Early County	GA
13101	Echols County	GA
13103	Effingham County	GA
13105	Elbert County	GA
13107	Emanuel County	GA
13109	Evans County	GA
13111	Fannin County	GA
13113	Fayette County	GA
13115	Floyd County	GA
13117	Forsyth County	GA
13119	Franklin County	GA
13121	Fulton County	GA
13123	Gilmer County	GA
13125	Glascock County	GA
13127	Glynn County	GA
13129	Gordon County	GA
13131	Grady County	GA
13133	Greene County	GA
13135	Gwinnett County	GA
13137	Habersham County	GA
13139	Hall County	GA
13141	Hancock County	GA
13143	Haralson County	GA
13145	Harris County	GA
13147	Hart County	GA
13149	Heard County	GA
13151	Henry County	GA
13153	Houston County	GA
13155	Irwin County	GA
13157	Jackson County	GA
13159	Jasper County	GA
13161	Jeff Davis County	GA
13163	Jefferson County	GA
13165	Jenkins County	GA
13167	Johnson County	GA
13169	Jones County	GA
13171	Lamar County	GA
13173	Lanier County	GA
13175	Laurens County	GA
13177	Lee County	GA
13179	Liberty County	GA
13181	Lincoln County	GA
13183	Long County	GA
13185	Lowndes County	GA
13187	Lumpkin County	GA
13189	McDuffie County	GA
13191	McIntosh County	GA
13193	Macon County	GA
13195	Madison County	GA
13197	Marion County	GA
13199	Meriwether County	GA
13201	Miller County	GA
13205	Mitchell County	GA
13207	Monroe County	GA
13209	Montgomery County	GA
13211	Morgan County	GA
13213	Murray County	GA
13215	Muscogee County	GA
13217	Newton County	GA
13219	Oconee County	GA
13221	Oglethorpe County	GA
13223	Paulding County	GA
13225	Peach County	GA
13227	Pickens County	GA
13229	Pierce County	GA
13231	Pike County	GA
13233	Polk County	GA
13235	Pulaski County	GA
13237	Putnam County	GA
13239	Quitman County	GA
13241	Rabun County	GA
13243	Randolph County	GA
13245	Richmond County	GA
13247	Rockdale County	GA
13249	Schley County	GA
13251	Screven County	GA
13253	Seminole County	GA
13255	Spalding County	GA
13257	Stephens County	GA
13259	Stewart County	GA
13261	Sumter County	GA
13263	Talbot County	GA
13265	Taliaferro County	GA
13267	Tattnall County	GA
13269	Taylor County	GA
13271	Telfair County	GA
13273	Terrell County	GA
13275	Thomas County	GA
13277	Tift County	GA
13279	Toombs County	GA
13281	Towns County	GA
13283	Treutlen County	GA
13285	Troup County	GA
13287	Turner County	GA
13289	Twiggs County	GA
13291	Union County	GA
13293	Upson County	GA
13295	Walker County	GA
13297	Walton County	GA
13299	Ware County	GA
13301	Warren County	GA
13303	Washington County	GA
13305	Wayne County	GA
13307	Webster County	GA
13309	Wheeler County	GA
13311	White County	GA
13313	Whitfield County	GA
13315	Wilcox County	GA
13317	Wilkes County	GA
13319	Wilkinson County	GA
13321	Worth County	GA
15000	HAWAII	NA
15001	Hawaii County	HI
15003	Honolulu County	HI
15007	Kauai County	HI
15009	Maui County	HI
16000	IDAHO	NA
16001	Ada County	ID
16003	Adams County	ID
16005	Bannock County	ID
16007	Bear Lake County	ID
16009	Benewah County	ID
16011	Bingham County	ID
16013	Blaine County	ID
16015	Boise County	ID
16017	Bonner County	ID
16019	Bonneville County	ID
16021	Boundary County	ID
16023	Butte County	ID
16025	Camas County	ID
16027	Canyon County	ID
16029	Caribou County	ID
16031	Cassia County	ID
16033	Clark County	ID
16035	Clearwater County	ID
16037	Custer County	ID
16039	Elmore County	ID
16041	Franklin County	ID
16043	Fremont County	ID
16045	Gem County	ID
16047	Gooding County	ID
16049	Idaho County	ID
16051	Jefferson County	ID
16053	Jerome County	ID
16055	Kootenai County	ID
16057	Latah County	ID
16059	Lemhi County	ID
16061	Lewis County	ID
16063	Lincoln County	ID
16065	Madison County	ID
16067	Minidoka County	ID
16069	Nez Perce County	ID
16071	Oneida County	ID
16073	Owyhee County	ID
16075	Payette County	ID
16077	Power County	ID
16079	Shoshone County	ID
16081	Teton County	ID
16083	Twin Falls County	ID
16085	Valley County	ID
16087	Washington County	ID
17000	ILLINOIS	NA
17001	Adams County	IL
17003	Alexander County	IL
17005	Bond County	IL
17007	Boone County	IL
17009	Brown County	IL
17011	Bureau County	IL
17013	Calhoun County	IL
17015	Carroll County	IL
17017	Cass County	IL
17019	Champaign County	IL
17021	Christian County	IL
17023	Clark County	IL
17025	Clay County	IL
17027	Clinton County	IL
17029	Coles County	IL
17031	Cook County	IL
17033	Crawford County	IL
17035	Cumberland County	IL
17037	DeKalb County	IL
17039	De Witt County	IL
17041	Douglas County	IL
17043	DuPage County	IL
17045	Edgar County	IL
17047	Edwards County	IL
17049	Effingham County	IL
17051	Fayette County	IL
17053	Ford County	IL
17055	Franklin County	IL
17057	Fulton County	IL
17059	Gallatin County	IL
17061	Greene County	IL
17063	Grundy County	IL
17065	Hamilton County	IL
17067	Hancock County	IL
17069	Hardin County	IL
17071	Henderson County	IL
17073	Henry County	IL
17075	Iroquois County	IL
17077	Jackson County	IL
17079	Jasper County	IL
17081	Jefferson County	IL
17083	Jersey County	IL
17085	Jo Daviess County	IL
17087	Johnson County	IL
17089	Kane County	IL
17091	Kankakee County	IL
17093	Kendall County	IL
17095	Knox County	IL
17097	Lake County	IL
17099	LaSalle County	IL
17101	Lawrence County	IL
17103	Lee County	IL
17105	Livingston County	IL
17107	Logan County	IL
17109	McDonough County	IL
17111	McHenry County	IL
17113	McLean County	IL
17115	Macon County	IL
17117	Macoupin County	IL
17119	Madison County	IL
17121	Marion County	IL
17123	Marshall County	IL
17125	Mason County	IL
17127	Massac County	IL
17129	Menard County	IL
17131	Mercer County	IL
17133	Monroe County	IL
17135	Montgomery County	IL
17137	Morgan County	IL
17139	Moultrie County	IL
17141	Ogle County	IL
17143	Peoria County	IL
17145	Perry County	IL
17147	Piatt County	IL
17149	Pike County	IL
17151	Pope County	IL
17153	Pulaski County	IL
17155	Putnam County	IL
17157	Randolph County	IL
17159	Richland County	IL
17161	Rock Island County	IL
17163	St. Clair County	IL
17165	Saline County	IL
17167	Sangamon County	IL
17169	Schuyler County	IL
17171	Scott County	IL
17173	Shelby County	IL
17175	Stark County	IL
17177	Stephenson County	IL
17179	Tazewell County	IL
17181	Union County	IL
17183	Vermilion County	IL
17185	Wabash County	IL
17187	Warren County	IL
17189	Washington County	IL
17191	Wayne County	IL
17193	White County	IL
17195	Whiteside County	IL
17197	Will County	IL
17199	Williamson County	IL
17201	Winnebago County	IL
17203	Woodford County	IL
18000	INDIANA	NA
18001	Adams County	IN
18003	Allen County	IN
18005	Bartholomew County	IN
18007	Benton County	IN
18009	Blackford County	IN
18011	Boone County	IN
18013	Brown County	IN
18015	Carroll County	IN
18017	Cass County	IN
18019	Clark County	IN
18021	Clay County	IN
18023	Clinton County	IN
18025	Crawford County	IN
18027	Daviess County	IN
18029	Dearborn County	IN
18031	Decatur County	IN
18033	DeKalb County	IN
18035	Delaware County	IN
18037	Dubois County	IN
18039	Elkhart County	IN
18041	Fayette County	IN
18043	Floyd County	IN
18045	Fountain County	IN
18047	Franklin County	IN
18049	Fulton County	IN
18051	Gibson County	IN
18053	Grant County	IN
18055	Greene County	IN
18057	Hamilton County	IN
18059	Hancock County	IN
18061	Harrison County	IN
18063	Hendricks County	IN
18065	Henry County	IN
18067	Howard County	IN
18069	Huntington County	IN
18071	Jackson County	IN
18073	Jasper County	IN
18075	Jay County	IN
18077	Jefferson County	IN
18079	Jennings County	IN
18081	Johnson County	IN
18083	Knox County	IN
18085	Kosciusko County	IN
18087	LaGrange County	IN
18089	Lake County	IN
18091	LaPorte County	IN
18093	Lawrence County	IN
18095	Madison County	IN
18097	Marion County	IN
18099	Marshall County	IN
18101	Martin County	IN
18103	Miami County	IN
18105	Monroe County	IN
18107	Montgomery County	IN
18109	Morgan County	IN
18111	Newton County	IN
18113	Noble County	IN
18115	Ohio County	IN
18117	Orange County	IN
18119	Owen County	IN
18121	Parke County	IN
18123	Perry County	IN
18125	Pike County	IN
18127	Porter County	IN
18129	Posey County	IN
18131	Pulaski County	IN
18133	Putnam County	IN
18135	Randolph County	IN
18137	Ripley County	IN
18139	Rush County	IN
18141	St. Joseph County	IN
18143	Scott County	IN
18145	Shelby County	IN
18147	Spencer County	IN
18149	Starke County	IN
18151	Steuben County	IN
18153	Sullivan County	IN
18155	Switzerland County	IN
18157	Tippecanoe County	IN
18159	Tipton County	IN
18161	Union County	IN
18163	Vanderburgh County	IN
18165	Vermillion County	IN
18167	Vigo County	IN
18169	Wabash County	IN
18171	Warren County	IN
18173	Warrick County	IN
18175	Washington County	IN
18177	Wayne County	IN
18179	Wells County	IN
18181	White County	IN
18183	Whitley County	IN
19000	IOWA	NA
19001	Adair County	IA
19003	Adams County	IA
19005	Allamakee County	IA
19007	Appanoose County	IA
19009	Audubon County	IA
19011	Benton County	IA
19013	Black Hawk County	IA
19015	Boone County	IA
19017	Bremer County	IA
19019	Buchanan County	IA
19021	Buena Vista County	IA
19023	Butler County	IA
19025	Calhoun County	IA
19027	Carroll County	IA
19029	Cass County	IA
19031	Cedar County	IA
19033	Cerro Gordo County	IA
19035	Cherokee County	IA
19037	Chickasaw County	IA
19039	Clarke County	IA
19041	Clay County	IA
19043	Clayton County	IA
19045	Clinton County	IA
19047	Crawford County	IA
19049	Dallas County	IA
19051	Davis County	IA
19053	Decatur County	IA
19055	Delaware County	IA
19057	Des Moines County	IA
19059	Dickinson County	IA
19061	Dubuque County	IA
19063	Emmet County	IA
19065	Fayette County	IA
19067	Floyd County	IA
19069	Franklin County	IA
19071	Fremont County	IA
19073	Greene County	IA
19075	Grundy County	IA
19077	Guthrie County	IA
19079	Hamilton County	IA
19081	Hancock County	IA
19083	Hardin County	IA
19085	Harrison County	IA
19087	Henry County	IA
19089	Howard County	IA
19091	Humboldt County	IA
19093	Ida County	IA
19095	Iowa County	IA
19097	Jackson County	IA
19099	Jasper County	IA
19101	Jefferson County	IA
19103	Johnson County	IA
19105	Jones County	IA
19107	Keokuk County	IA
19109	Kossuth County	IA
19111	Lee County	IA
19113	Linn County	IA
19115	Louisa County	IA
19117	Lucas County	IA
19119	Lyon County	IA
19121	Madison County	IA
19123	Mahaska County	IA
19125	Marion County	IA
19127	Marshall County	IA
19129	Mills County	IA
19131	Mitchell County	IA
19133	Monona County	IA
19135	Monroe County	IA
19137	Montgomery County	IA
19139	Muscatine County	IA
19141	O'Brien County	IA
19143	Osceola County	IA
19145	Page County	IA
19147	Palo Alto County	IA
19149	Plymouth County	IA
19151	Pocahontas County	IA
19153	Polk County	IA
19155	Pottawattamie County	IA
19157	Poweshiek County	IA
19159	Ringgold County	IA
19161	Sac County	IA
19163	Scott County	IA
19165	Shelby County	IA
19167	Sioux County	IA
19169	Story County	IA
19171	Tama County	IA
19173	Taylor County	IA
19175	Union County	IA
19177	Van Buren County	IA
19179	Wapello County	IA
19181	Warren County	IA
19183	Washington County	IA
19185	Wayne County	IA
19187	Webster County	IA
19189	Winnebago County	IA
19191	Winneshiek County	IA
19193	Woodbury County	IA
19195	Worth County	IA
19197	Wright County	IA
20000	KANSAS	NA
20001	Allen County	KS
20003	Anderson County	KS
20005	Atchison County	KS
20007	Barber County	KS
20009	Barton County	KS
20011	Bourbon County	KS
20013	Brown County	KS
20015	Butler County	KS
20017	Chase County	KS
20019	Chautauqua County	KS
20021	Cherokee County	KS
20023	Cheyenne County	KS
20025	Clark County	KS
20027	Clay County	KS
20029	Cloud County	KS
20031	Coffey County	KS
20033	Comanche County	KS
20035	Cowley County	KS
20037	Crawford County	KS
20039	Decatur County	KS
20041	Dickinson County	KS
20043	Doniphan County	KS
20045	Douglas County	KS
20047	Edwards County	KS
20049	Elk County	KS
20051	Ellis County	KS
20053	Ellsworth County	KS
20055	Finney County	KS
20057	Ford County	KS
20059	Franklin County	KS
20061	Geary County	KS
20063	Gove County	KS
20065	Graham County	KS
20067	Grant County	KS
20069	Gray County	KS
20071	Greeley County	KS
20073	Greenwood County	KS
20075	Hamilton County	KS
20077	Harper County	KS
20079	Harvey County	KS
20081	Haskell County	KS
20083	Hodgeman County	KS
20085	Jackson County	KS
20087	Jefferson County	KS
20089	Jewell County	KS
20091	Johnson County	KS
20093	Kearny County	KS
20095	Kingman County	KS
20097	Kiowa County	KS
20099	Labette County	KS
20101	Lane County	KS
20103	Leavenworth County	KS
20105	Lincoln County	KS
20107	Linn County	KS
20109	Logan County	KS
20111	Lyon County	KS
20113	McPherson County	KS
20115	Marion County	KS
20117	Marshall County	KS
20119	Meade County	KS
20121	Miami County	KS
20123	Mitchell County	KS
20125	Montgomery County	KS
20127	Morris County	KS
20129	Morton County	KS
20131	Nemaha County	KS
20133	Neosho County	KS
20135	Ness County	KS
20137	Norton County	KS
20139	Osage County	KS
20141	Osborne County	KS
20143	Ottawa County	KS
20145	Pawnee County	KS
20147	Phillips County	KS
20149	Pottawatomie County	KS
20151	Pratt County	KS
20153	Rawlins County	KS
20155	Reno County	KS
20157	Republic County	KS
20159	Rice County	KS
20161	Riley County	KS
20163	Rooks County	KS
20165	Rush County	KS
20167	Russell County	KS
20169	Saline County	KS
20171	Scott County	KS
20173	Sedgwick County	KS
20175	Seward County	KS
20177	Shawnee County	KS
20179	Sheridan County	KS
20181	Sherman County	KS
20183	Smith County	KS
20185	Stafford County	KS
20187	Stanton County	KS
20189	Stevens County	KS
20191	Sumner County	KS
20193	Thomas County	KS
20195	Trego County	KS
20197	Wabaunsee County	KS
20199	Wallace County	KS
20201	Washington County	KS
20203	Wichita County	KS
20205	Wilson County	KS
20207	Woodson County	KS
20209	Wyandotte County	KS
21000	KENTUCKY	NA
21001	Adair County	KY
21003	Allen County	KY
21005	Anderson County	KY
21007	Ballard County	KY
21009	Barren County	KY
21011	Bath County	KY
21013	Bell County	KY
21015	Boone County	KY
21017	Bourbon County	KY
21019	Boyd County	KY
21021	Boyle County	KY
21023	Bracken County	KY
21025	Breathitt County	KY
21027	Breckinridge County	KY
21029	Bullitt County	KY
21031	Butler County	KY
21033	Caldwell County	KY
21035	Calloway County	KY
21037	Campbell County	KY
21039	Carlisle County	KY
21041	Carroll County	KY
21043	Carter County	KY
21045	Casey County	KY
21047	Christian County	KY
21049	Clark County	KY
21051	Clay County	KY
21053	Clinton County	KY
21055	Crittenden County	KY
21057	Cumberland County	KY
21059	Daviess County	KY
21061	Edmonson County	KY
21063	Elliott County	KY
21065	Estill County	KY
21067	Fayette County	KY
21069	Fleming County	KY
21071	Floyd County	KY
21073	Franklin County	KY
21075	Fulton County	KY
21077	Gallatin County	KY
21079	Garrard County	KY
21081	Grant County	KY
21083	Graves County	KY
21085	Grayson County	KY
21087	Green County	KY
21089	Greenup County	KY
21091	Hancock County	KY
21093	Hardin County	KY
21095	Harlan County	KY
21097	Harrison County	KY
21099	Hart County	KY
21101	Henderson County	KY
21103	Henry County	KY
21105	Hickman County	KY
21107	Hopkins County	KY
21109	Jackson County	KY
21111	Jefferson County	KY
21113	Jessamine County	KY
21115	Johnson County	KY
21117	Kenton County	KY
21119	Knott County	KY
21121	Knox County	KY
21123	Larue County	KY
21125	Laurel County	KY
21127	Lawrence County	KY
21129	Lee County	KY
21131	Leslie County	KY
21133	Letcher County	KY
21135	Lewis County	KY
21137	Lincoln County	KY
21139	Livingston County	KY
21141	Logan County	KY
21143	Lyon County	KY
21145	McCracken County	KY
21147	McCreary County	KY
21149	McLean County	KY
21151	Madison County	KY
21153	Magoffin County	KY
21155	Marion County	KY
21157	Marshall County	KY
21159	Martin County	KY
21161	Mason County	KY
21163	Meade County	KY
21165	Menifee County	KY
21167	Mercer County	KY
21169	Metcalfe County	KY
21171	Monroe County	KY
21173	Montgomery County	KY
21175	Morgan County	KY
21177	Muhlenberg County	KY
21179	Nelson County	KY
21181	Nicholas County	KY
21183	Ohio County	KY
21185	Oldham County	KY
21187	Owen County	KY
21189	Owsley County	KY
21191	Pendleton County	KY
21193	Perry County	KY
21195	Pike County	KY
21197	Powell County	KY
21199	Pulaski County	KY
21201	Robertson County	KY
21203	Rockcastle County	KY
21205	Rowan County	KY
21207	Russell County	KY
21209	Scott County	KY
21211	Shelby County	KY
21213	Simpson County	KY
21215	Spencer County	KY
21217	Taylor County	KY
21219	Todd County	KY
21221	Trigg County	KY
21223	Trimble County	KY
21225	Union County	KY
21227	Warren County	KY
21229	Washington County	KY
21231	Wayne County	KY
21233	Webster County	KY
21235	Whitley County	KY
21237	Wolfe County	KY
21239	Woodford County	KY
22000	LOUISIANA	NA
22001	Acadia Parish	LA
22003	Allen Parish	LA
22005	Ascension Parish	LA
22007	Assumption Parish	LA
22009	Avoyelles Parish	LA
22011	Beauregard Parish	LA
22013	Bienville Parish	LA
22015	Bossier Parish	LA
22017	Caddo Parish	LA
22019	Calcasieu Parish	LA
22021	Caldwell Parish	LA
22023	Cameron Parish	LA
22025	Catahoula Parish	LA
22027	Claiborne Parish	LA
22029	Concordia Parish	LA
22031	De Soto Parish	LA
22033	East Baton Rouge Parish	LA
22035	East Carroll Parish	LA
22037	East Feliciana Parish	LA
22039	Evangeline Parish	LA
22041	Franklin Parish	LA
22043	Grant Parish	LA
22045	Iberia Parish	LA
22047	Iberville Parish	LA
22049	Jackson Parish	LA
22051	Jefferson Parish	LA
22053	Jefferson Davis Parish	LA
22055	Lafayette Parish	LA
22057	Lafourche Parish	LA
22059	La Salle Parish	LA
22061	Lincoln Parish	LA
22063	Livingston Parish	LA
22065	Madison Parish	LA
22067	Morehouse Parish	LA
22069	Natchitoches Parish	LA
22071	Orleans Parish	LA
22073	Ouachita Parish	LA
22075	Plaquemines Parish	LA
22077	Pointe Coupee Parish	LA
22079	Rapides Parish	LA
22081	Red River Parish	LA
22083	Richland Parish	LA
22085	Sabine Parish	LA
22087	St. Bernard Parish	LA
22089	St. Charles Parish	LA
22091	St. Helena Parish	LA
22093	St. James Parish	LA
22095	St. John the Baptist Parish	LA
22097	St. Landry Parish	LA
22099	St. Martin Parish	LA
22101	St. Mary Parish	LA
22103	St. Tammany Parish	LA
22105	Tangipahoa Parish	LA
22107	Tensas Parish	LA
22109	Terrebonne Parish	LA
22111	Union Parish	LA
22113	Vermilion Parish	LA
22115	Vernon Parish	LA
22117	Washington Parish	LA
22119	Webster Parish	LA
22121	West Baton Rouge Parish	LA
22123	West Carroll Parish	LA
22125	West Feliciana Parish	LA
22127	Winn Parish	LA
23000	MAINE	NA
23001	Androscoggin County	ME
23003	Aroostook County	ME
23005	Cumberland County	ME
23007	Franklin County	ME
23009	Hancock County	ME
23011	Kennebec County	ME
23013	Knox County	ME
23015	Lincoln County	ME
23017	Oxford County	ME
23019	Penobscot County	ME
23021	Piscataquis County	ME
23023	Sagadahoc County	ME
23025	Somerset County	ME
23027	Waldo County	ME
23029	Washington County	ME
23031	York County	ME
24000	MARYLAND	NA
24001	Allegany County	MD
24003	Anne Arundel County	MD
24005	Baltimore County	MD
24009	Calvert County	MD
24011	Caroline County	MD
24013	Carroll County	MD
24015	Cecil County	MD
24017	Charles County	MD
24019	Dorchester County	MD
24021	Frederick County	MD
24023	Garrett County	MD
24025	Harford County	MD
24027	Howard County	MD
24029	Kent County	MD
24031	Montgomery County	MD
24033	Prince George's County	MD
24035	Queen Anne's County	MD
24037	St. Mary's County	MD
24039	Somerset County	MD
24041	Talbot County	MD
24043	Washington County	MD
24045	Wicomico County	MD
24047	Worcester County	MD
24510	Baltimore city	MD
25000	MASSACHUSETTS	NA
25001	Barnstable County	MA
25003	Berkshire County	MA
25005	Bristol County	MA
25007	Dukes County	MA
25009	Essex County	MA
25011	Franklin County	MA
25013	Hampden County	MA
25015	Hampshire County	MA
25017	Middlesex County	MA
25019	Nantucket County	MA
25021	Norfolk County	MA
25023	Plymouth County	MA
25025	Suffolk County	MA
25027	Worcester County	MA
26000	MICHIGAN	NA
26001	Alcona County	MI
26003	Alger County	MI
26005	Allegan County	MI
26007	Alpena County	MI
26009	Antrim County	MI
26011	Arenac County	MI
26013	Baraga County	MI
26015	Barry County	MI
26017	Bay County	MI
26019	Benzie County	MI
26021	Berrien County	MI
26023	Branch County	MI
26025	Calhoun County	MI
26027	Cass County	MI
26029	Charlevoix County	MI
26031	Cheboygan County	MI
26033	Chippewa County	MI
26035	Clare County	MI
26037	Clinton County	MI
26039	Crawford County	MI
26041	Delta County	MI
26043	Dickinson County	MI
26045	Eaton County	MI
26047	Emmet County	MI
26049	Genesee County	MI
26051	Gladwin County	MI
26053	Gogebic County	MI
26055	Grand Traverse County	MI
26057	Gratiot County	MI
26059	Hillsdale County	MI
26061	Houghton County	MI
26063	Huron County	MI
26065	Ingham County	MI
26067	Ionia County	MI
26069	Iosco County	MI
26071	Iron County	MI
26073	Isabella County	MI
26075	Jackson County	MI
26077	Kalamazoo County	MI
26079	Kalkaska County	MI
26081	Kent County	MI
26083	Keweenaw County	MI
26085	Lake County	MI
26087	Lapeer County	MI
26089	Leelanau County	MI
26091	Lenawee County	MI
26093	Livingston County	MI
26095	Luce County	MI
26097	Mackinac County	MI
26099	Macomb County	MI
26101	Manistee County	MI
26103	Marquette County	MI
26105	Mason County	MI
26107	Mecosta County	MI
26109	Menominee County	MI
26111	Midland County	MI
26113	Missaukee County	MI
26115	Monroe County	MI
26117	Montcalm County	MI
26119	Montmorency County	MI
26121	Muskegon County	MI
26123	Newaygo County	MI
26125	Oakland County	MI
26127	Oceana County	MI
26129	Ogemaw County	MI
26131	Ontonagon County	MI
26133	Osceola County	MI
26135	Oscoda County	MI
26137	Otsego County	MI
26139	Ottawa County	MI
26141	Presque Isle County	MI
26143	Roscommon County	MI
26145	Saginaw County	MI
26147	St. Clair County	MI
26149	St. Joseph County	MI
26151	Sanilac County	MI
26153	Schoolcraft County	MI
26155	Shiawassee County	MI
26157	Tuscola County	MI
26159	Van Buren County	MI
26161	Washtenaw County	MI
26163	Wayne County	MI
26165	Wexford County	MI
27000	MINNESOTA	NA
27001	Aitkin County	MN
27003	Anoka County	MN
27005	Becker County	MN
27007	Beltrami County	MN
27009	Benton County	MN
27011	Big Stone County	MN
27013	Blue Earth County	MN
27015	Brown County	MN
27017	Carlton County	MN
27019	Carver County	MN
27021	Cass County	MN
27023	Chippewa County	MN
27025	Chisago County	MN
27027	Clay County	MN
27029	Clearwater County	MN
27031	Cook County	MN
27033	Cottonwood County	MN
27035	Crow Wing County	MN
27037	Dakota County	MN
27039	Dodge County	MN
27041	Douglas County	MN
27043	Faribault County	MN
27045	Fillmore County	MN
27047	Freeborn County	MN
27049	Goodhue County	MN
27051	Grant County	MN
27053	Hennepin County	MN
27055	Houston County	MN
27057	Hubbard County	MN
27059	Isanti County	MN
27061	Itasca County	MN
27063	Jackson County	MN
27065	Kanabec County	MN
27067	Kandiyohi County	MN
27069	Kittson County	MN
27071	Koochiching County	MN
27073	Lac qui Parle County	MN
27075	Lake County	MN
27077	Lake of the Woods County	MN
27079	Le Sueur County	MN
27081	Lincoln County	MN
27083	Lyon County	MN
27085	McLeod County	MN
27087	Mahnomen County	MN
27089	Marshall County	MN
27091	Martin County	MN
27093	Meeker County	MN
27095	Mille Lacs County	MN
27097	Morrison County	MN
27099	Mower County	MN
27101	Murray County	MN
27103	Nicollet County	MN
27105	Nobles County	MN
27107	Norman County	MN
27109	Olmsted County	MN
27111	Otter Tail County	MN
27113	Pennington County	MN
27115	Pine County	MN
27117	Pipestone County	MN
27119	Polk County	MN
27121	Pope County	MN
27123	Ramsey County	MN
27125	Red Lake County	MN
27127	Redwood County	MN
27129	Renville County	MN
27131	Rice County	MN
27133	Rock County	MN
27135	Roseau County	MN
27137	St. Louis County	MN
27139	Scott County	MN
27141	Sherburne County	MN
27143	Sibley County	MN
27145	Stearns County	MN
27147	Steele County	MN
27149	Stevens County	MN
27151	Swift County	MN
27153	Todd County	MN
27155	Traverse County	MN
27157	Wabasha County	MN
27159	Wadena County	MN
27161	Waseca County	MN
27163	Washington County	MN
27165	Watonwan County	MN
27167	Wilkin County	MN
27169	Winona County	MN
27171	Wright County	MN
27173	Yellow Medicine County	MN
28000	MISSISSIPPI	NA
28001	Adams County	MS
28003	Alcorn County	MS
28005	Amite County	MS
28007	Attala County	MS
28009	Benton County	MS
28011	Bolivar County	MS
28013	Calhoun County	MS
28015	Carroll County	MS
28017	Chickasaw County	MS
28019	Choctaw County	MS
28021	Claiborne County	MS
28023	Clarke County	MS
28025	Clay County	MS
28027	Coahoma County	MS
28029	Copiah County	MS
28031	Covington County	MS
28033	DeSoto County	MS
28035	Forrest County	MS
28037	Franklin County	MS
28039	George County	MS
28041	Greene County	MS
28043	Grenada County	MS
28045	Hancock County	MS
28047	Harrison County	MS
28049	Hinds County	MS
28051	Holmes County	MS
28053	Humphreys County	MS
28055	Issaquena County	MS
28057	Itawamba County	MS
28059	Jackson County	MS
28061	Jasper County	MS
28063	Jefferson County	MS
28065	Jefferson Davis County	MS
28067	Jones County	MS
28069	Kemper County	MS
28071	Lafayette County	MS
28073	Lamar County	MS
28075	Lauderdale County	MS
28077	Lawrence County	MS
28079	Leake County	MS
28081	Lee County	MS
28083	Leflore County	MS
28085	Lincoln County	MS
28087	Lowndes County	MS
28089	Madison County	MS
28091	Marion County	MS
28093	Marshall County	MS
28095	Monroe County	MS
28097	Montgomery County	MS
28099	Neshoba County	MS
28101	Newton County	MS
28103	Noxubee County	MS
28105	Oktibbeha County	MS
28107	Panola County	MS
28109	Pearl River County	MS
28111	Perry County	MS
28113	Pike County	MS
28115	Pontotoc County	MS
28117	Prentiss County	MS
28119	Quitman County	MS
28121	Rankin County	MS
28123	Scott County	MS
28125	Sharkey County	MS
28127	Simpson County	MS
28129	Smith County	MS
28131	Stone County	MS
28133	Sunflower County	MS
28135	Tallahatchie County	MS
28137	Tate County	MS
28139	Tippah County	MS
28141	Tishomingo County	MS
28143	Tunica County	MS
28145	Union County	MS
28147	Walthall County	MS
28149	Warren County	MS
28151	Washington County	MS
28153	Wayne County	MS
28155	Webster County	MS
28157	Wilkinson County	MS
28159	Winston County	MS
28161	Yalobusha County	MS
28163	Yazoo County	MS
29000	MISSOURI	NA
29001	Adair County	MO
29003	Andrew County	MO
29005	Atchison County	MO
29007	Audrain County	MO
29009	Barry County	MO
29011	Barton County	MO
29013	Bates County	MO
29015	Benton County	MO
29017	Bollinger County	MO
29019	Boone County	MO
29021	Buchanan County	MO
29023	Butler County	MO
29025	Caldwell County	MO
29027	Callaway County	MO
29029	Camden County	MO
29031	Cape Girardeau County	MO
29033	Carroll County	MO
29035	Carter County	MO
29037	Cass County	MO
29039	Cedar County	MO
29041	Chariton County	MO
29043	Christian County	MO
29045	Clark County	MO
29047	Clay County	MO
29049	Clinton County	MO
29051	Cole County	MO
29053	Cooper County	MO
29055	Crawford County	MO
29057	Dade County	MO
29059	Dallas County	MO
29061	Daviess County	MO
29063	DeKalb County	MO
29065	Dent County	MO
29067	Douglas County	MO
29069	Dunklin County	MO
29071	Franklin County	MO
29073	Gasconade County	MO
29075	Gentry County	MO
29077	Greene County	MO
29079	Grundy County	MO
29081	Harrison County	MO
29083	Henry County	MO
29085	Hickory County	MO
29087	Holt County	MO
29089	Howard County	MO
29091	Howell County	MO
29093	Iron County	MO
29095	Jackson County	MO
29097	Jasper County	MO
29099	Jefferson County	MO
29101	Johnson County	MO
29103	Knox County	MO
29105	Laclede County	MO
29107	Lafayette County	MO
29109	Lawrence County	MO
29111	Lewis County	MO
29113	Lincoln County	MO
29115	Linn County	MO
29117	Livingston County	MO
29119	McDonald County	MO
29121	Macon County	MO
29123	Madison County	MO
29125	Maries County	MO
29127	Marion County	MO
29129	Mercer County	MO
29131	Miller County	MO
29133	Mississippi County	MO
29135	Moniteau County	MO
29137	Monroe County	MO
29139	Montgomery County	MO
29141	Morgan County	MO
29143	New Madrid County	MO
29145	Newton County	MO
29147	Nodaway County	MO
29149	Oregon County	MO
29151	Osage County	MO
29153	Ozark County	MO
29155	Pemiscot County	MO
29157	Perry County	MO
29159	Pettis County	MO
29161	Phelps County	MO
29163	Pike County	MO
29165	Platte County	MO
29167	Polk County	MO
29169	Pulaski County	MO
29171	Putnam County	MO
29173	Ralls County	MO
29175	Randolph County	MO
29177	Ray County	MO
29179	Reynolds County	MO
29181	Ripley County	MO
29183	St. Charles County	MO
29185	St. Clair County	MO
29186	Ste. Genevieve County	MO
29187	St. Francois County	MO
29189	St. Louis County	MO
29195	Saline County	MO
29197	Schuyler County	MO
29199	Scotland County	MO
29201	Scott County	MO
29203	Shannon County	MO
29205	Shelby County	MO
29207	Stoddard County	MO
29209	Stone County	MO
29211	Sullivan County	MO
29213	Taney County	MO
29215	Texas County	MO
29217	Vernon County	MO
29219	Warren County	MO
29221	Washington County	MO
29223	Wayne County	MO
29225	Webster County	MO
29227	Worth County	MO
29229	Wright County	MO
29510	St. Louis city	MO
30000	MONTANA	NA
30001	Beaverhead County	MT
30003	Big Horn County	MT
30005	Blaine County	MT
30007	Broadwater County	MT
30009	Carbon County	MT
30011	Carter County	MT
30013	Cascade County	MT
30015	Chouteau County	MT
30017	Custer County	MT
30019	Daniels County	MT
30021	Dawson County	MT
30023	Deer Lodge County	MT
30025	Fallon County	MT
30027	Fergus County	MT
30029	Flathead County	MT
30031	Gallatin County	MT
30033	Garfield County	MT
30035	Glacier County	MT
30037	Golden Valley County	MT
30039	Granite County	MT
30041	Hill County	MT
30043	Jefferson County	MT
30045	Judith Basin County	MT
30047	Lake County	MT
30049	Lewis and Clark County	MT
30051	Liberty County	MT
30053	Lincoln County	MT
30055	McCone County	MT
30057	Madison County	MT
30059	Meagher County	MT
30061	Mineral County	MT
30063	Missoula County	MT
30065	Musselshell County	MT
30067	Park County	MT
30069	Petroleum County	MT
30071	Phillips County	MT
30073	Pondera County	MT
30075	Powder River County	MT
30077	Powell County	MT
30079	Prairie County	MT
30081	Ravalli County	MT
30083	Richland County	MT
30085	Roosevelt County	MT
30087	Rosebud County	MT
30089	Sanders County	MT
30091	Sheridan County	MT
30093	Silver Bow County	MT
30095	Stillwater County	MT
30097	Sweet Grass County	MT
30099	Teton County	MT
30101	Toole County	MT
30103	Treasure County	MT
30105	Valley County	MT
30107	Wheatland County	MT
30109	Wibaux County	MT
30111	Yellowstone County	MT
31000	NEBRASKA	NA
31001	Adams County	NE
31003	Antelope County	NE
31005	Arthur County	NE
31007	Banner County	NE
31009	Blaine County	NE
31011	Boone County	NE
31013	Box Butte County	NE
31015	Boyd County	NE
31017	Brown County	NE
31019	Buffalo County	NE
31021	Burt County	NE
31023	Butler County	NE
31025	Cass County	NE
31027	Cedar County	NE
31029	Chase County	NE
31031	Cherry County	NE
31033	Cheyenne County	NE
31035	Clay County	NE
31037	Colfax County	NE
31039	Cuming County	NE
31041	Custer County	NE
31043	Dakota County	NE
31045	Dawes County	NE
31047	Dawson County	NE
31049	Deuel County	NE
31051	Dixon County	NE
31053	Dodge County	NE
31055	Douglas County	NE
31057	Dundy County	NE
31059	Fillmore County	NE
31061	Franklin County	NE
31063	Frontier County	NE
31065	Furnas County	NE
31067	Gage County	NE
31069	Garden County	NE
31071	Garfield County	NE
31073	Gosper County	NE
31075	Grant County	NE
31077	Greeley County	NE
31079	Hall County	NE
31081	Hamilton County	NE
31083	Harlan County	NE
31085	Hayes County	NE
31087	Hitchcock County	NE
31089	Holt County	NE
31091	Hooker County	NE
31093	Howard County	NE
31095	Jefferson County	NE
31097	Johnson County	NE
31099	Kearney County	NE
31101	Keith County	NE
31103	Keya Paha County	NE
31105	Kimball County	NE
31107	Knox County	NE
31109	Lancaster County	NE
31111	Lincoln County	NE
31113	Logan County	NE
31115	Loup County	NE
31117	McPherson County	NE
31119	Madison County	NE
31121	Merrick County	NE
31123	Morrill County	NE
31125	Nance County	NE
31127	Nemaha County	NE
31129	Nuckolls County	NE
31131	Otoe County	NE
31133	Pawnee County	NE
31135	Perkins County	NE
31137	Phelps County	NE
31139	Pierce County	NE
31141	Platte County	NE
31143	Polk County	NE
31145	Red Willow County	NE
31147	Richardson County	NE
31149	Rock County	NE
31151	Saline County	NE
31153	Sarpy County	NE
31155	Saunders County	NE
31157	Scotts Bluff County	NE
31159	Seward County	NE
31161	Sheridan County	NE
31163	Sherman County	NE
31165	Sioux County	NE
31167	Stanton County	NE
31169	Thayer County	NE
31171	Thomas County	NE
31173	Thurston County	NE
31175	Valley County	NE
31177	Washington County	NE
31179	Wayne County	NE
31181	Webster County	NE
31183	Wheeler County	NE
31185	York County	NE
32000	NEVADA	NA
32001	Churchill County	NV
32003	Clark County	NV
32005	Douglas County	NV
32007	Elko County	NV
32009	Esmeralda County	NV
32011	Eureka County	NV
32013	Humboldt County	NV
32015	Lander County	NV
32017	Lincoln County	NV
32019	Lyon County	NV
32021	Mineral County	NV
32023	Nye County	NV
32027	Pershing County	NV
32029	Storey County	NV
32031	Washoe County	NV
32033	White Pine County	NV
32510	Carson City	NV
33000	NEW HAMPSHIRE	NA
33001	Belknap County	NH
33003	Carroll County	NH
33005	Cheshire County	NH
33007	Coos County	NH
33009	Grafton County	NH
33011	Hillsborough County	NH
33013	Merrimack County	NH
33015	Rockingham County	NH
33017	Strafford County	NH
33019	Sullivan County	NH
34000	NEW JERSEY	NA
34001	Atlantic County	NJ
34003	Bergen County	NJ
34005	Burlington County	NJ
34007	Camden County	NJ
34009	Cape May County	NJ
34011	Cumberland County	NJ
34013	Essex County	NJ
34015	Gloucester County	NJ
34017	Hudson County	NJ
34019	Hunterdon County	NJ
34021	Mercer County	NJ
34023	Middlesex County	NJ
34025	Monmouth County	NJ
34027	Morris County	NJ
34029	Ocean County	NJ
34031	Passaic County	NJ
34033	Salem County	NJ
34035	Somerset County	NJ
34037	Sussex County	NJ
34039	Union County	NJ
34041	Warren County	NJ
35000	NEW MEXICO	NA
35001	Bernalillo County	NM
35003	Catron County	NM
35005	Chaves County	NM
35006	Cibola County	NM
35007	Colfax County	NM
35009	Curry County	NM
35011	De Baca County	NM
35013	Do̱a Ana County	NM
35015	Eddy County	NM
35017	Grant County	NM
35019	Guadalupe County	NM
35021	Harding County	NM
35023	Hidalgo County	NM
35025	Lea County	NM
35027	Lincoln County	NM
35028	Los Alamos County	NM
35029	Luna County	NM
35031	McKinley County	NM
35033	Mora County	NM
35035	Otero County	NM
35037	Quay County	NM
35039	Rio Arriba County	NM
35041	Roosevelt County	NM
35043	Sandoval County	NM
35045	San Juan County	NM
35047	San Miguel County	NM
35049	Santa Fe County	NM
35051	Sierra County	NM
35053	Socorro County	NM
35055	Taos County	NM
35057	Torrance County	NM
35059	Union County	NM
35061	Valencia County	NM
36000	NEW YORK	NA
36001	Albany County	NY
36003	Allegany County	NY
36005	Bronx County	NY
36007	Broome County	NY
36009	Cattaraugus County	NY
36011	Cayuga County	NY
36013	Chautauqua County	NY
36015	Chemung County	NY
36017	Chenango County	NY
36019	Clinton County	NY
36021	Columbia County	NY
36023	Cortland County	NY
36025	Delaware County	NY
36027	Dutchess County	NY
36029	Erie County	NY
36031	Essex County	NY
36033	Franklin County	NY
36035	Fulton County	NY
36037	Genesee County	NY
36039	Greene County	NY
36041	Hamilton County	NY
36043	Herkimer County	NY
36045	Jefferson County	NY
36047	Kings County	NY
36049	Lewis County	NY
36051	Livingston County	NY
36053	Madison County	NY
36055	Monroe County	NY
36057	Montgomery County	NY
36059	Nassau County	NY
36061	New York County	NY
36063	Niagara County	NY
36065	Oneida County	NY
36067	Onondaga County	NY
36069	Ontario County	NY
36071	Orange County	NY
36073	Orleans County	NY
36075	Oswego County	NY
36077	Otsego County	NY
36079	Putnam County	NY
36081	Queens County	NY
36083	Rensselaer County	NY
36085	Richmond County	NY
36087	Rockland County	NY
36089	St. Lawrence County	NY
36091	Saratoga County	NY
36093	Schenectady County	NY
36095	Schoharie County	NY
36097	Schuyler County	NY
36099	Seneca County	NY
36101	Steuben County	NY
36103	Suffolk County	NY
36105	Sullivan County	NY
36107	Tioga County	NY
36109	Tompkins County	NY
36111	Ulster County	NY
36113	Warren County	NY
36115	Washington County	NY
36117	Wayne County	NY
36119	Westchester County	NY
36121	Wyoming County	NY
36123	Yates County	NY
37000	NORTH CAROLINA	NA
37001	Alamance County	NC
37003	Alexander County	NC
37005	Alleghany County	NC
37007	Anson County	NC
37009	Ashe County	NC
37011	Avery County	NC
37013	Beaufort County	NC
37015	Bertie County	NC
37017	Bladen County	NC
37019	Brunswick County	NC
37021	Buncombe County	NC
37023	Burke County	NC
37025	Cabarrus County	NC
37027	Caldwell County	NC
37029	Camden County	NC
37031	Carteret County	NC
37033	Caswell County	NC
37035	Catawba County	NC
37037	Chatham County	NC
37039	Cherokee County	NC
37041	Chowan County	NC
37043	Clay County	NC
37045	Cleveland County	NC
37047	Columbus County	NC
37049	Craven County	NC
37051	Cumberland County	NC
37053	Currituck County	NC
37055	Dare County	NC
37057	Davidson County	NC
37059	Davie County	NC
37061	Duplin County	NC
37063	Durham County	NC
37065	Edgecombe County	NC
37067	Forsyth County	NC
37069	Franklin County	NC
37071	Gaston County	NC
37073	Gates County	NC
37075	Graham County	NC
37077	Granville County	NC
37079	Greene County	NC
37081	Guilford County	NC
37083	Halifax County	NC
37085	Harnett County	NC
37087	Haywood County	NC
37089	Henderson County	NC
37091	Hertford County	NC
37093	Hoke County	NC
37095	Hyde County	NC
37097	Iredell County	NC
37099	Jackson County	NC
37101	Johnston County	NC
37103	Jones County	NC
37105	Lee County	NC
37107	Lenoir County	NC
37109	Lincoln County	NC
37111	McDowell County	NC
37113	Macon County	NC
37115	Madison County	NC
37117	Martin County	NC
37119	Mecklenburg County	NC
37121	Mitchell County	NC
37123	Montgomery County	NC
37125	Moore County	NC
37127	Nash County	NC
37129	New Hanover County	NC
37131	Northampton County	NC
37133	Onslow County	NC
37135	Orange County	NC
37137	Pamlico County	NC
37139	Pasquotank County	NC
37141	Pender County	NC
37143	Perquimans County	NC
37145	Person County	NC
37147	Pitt County	NC
37149	Polk County	NC
37151	Randolph County	NC
37153	Richmond County	NC
37155	Robeson County	NC
37157	Rockingham County	NC
37159	Rowan County	NC
37161	Rutherford County	NC
37163	Sampson County	NC
37165	Scotland County	NC
37167	Stanly County	NC
37169	Stokes County	NC
37171	Surry County	NC
37173	Swain County	NC
37175	Transylvania County	NC
37177	Tyrrell County	NC
37179	Union County	NC
37181	Vance County	NC
37183	Wake County	NC
37185	Warren County	NC
37187	Washington County	NC
37189	Watauga County	NC
37191	Wayne County	NC
37193	Wilkes County	NC
37195	Wilson County	NC
37197	Yadkin County	NC
37199	Yancey County	NC
38000	NORTH DAKOTA	NA
38001	Adams County	ND
38003	Barnes County	ND
38005	Benson County	ND
38007	Billings County	ND
38009	Bottineau County	ND
38011	Bowman County	ND
38013	Burke County	ND
38015	Burleigh County	ND
38017	Cass County	ND
38019	Cavalier County	ND
38021	Dickey County	ND
38023	Divide County	ND
38025	Dunn County	ND
38027	Eddy County	ND
38029	Emmons County	ND
38031	Foster County	ND
38033	Golden Valley County	ND
38035	Grand Forks County	ND
38037	Grant County	ND
38039	Griggs County	ND
38041	Hettinger County	ND
38043	Kidder County	ND
38045	LaMoure County	ND
38047	Logan County	ND
38049	McHenry County	ND
38051	McIntosh County	ND
38053	McKenzie County	ND
38055	McLean County	ND
38057	Mercer County	ND
38059	Morton County	ND
38061	Mountrail County	ND
38063	Nelson County	ND
38065	Oliver County	ND
38067	Pembina County	ND
38069	Pierce County	ND
38071	Ramsey County	ND
38073	Ransom County	ND
38075	Renville County	ND
38077	Richland County	ND
38079	Rolette County	ND
38081	Sargent County	ND
38083	Sheridan County	ND
38085	Sioux County	ND
38087	Slope County	ND
38089	Stark County	ND
38091	Steele County	ND
38093	Stutsman County	ND
38095	Towner County	ND
38097	Traill County	ND
38099	Walsh County	ND
38101	Ward County	ND
38103	Wells County	ND
38105	Williams County	ND
39000	OHIO	NA
39001	Adams County	OH
39003	Allen County	OH
39005	Ashland County	OH
39007	Ashtabula County	OH
39009	Athens County	OH
39011	Auglaize County	OH
39013	Belmont County	OH
39015	Brown County	OH
39017	Butler County	OH
39019	Carroll County	OH
39021	Champaign County	OH
39023	Clark County	OH
39025	Clermont County	OH
39027	Clinton County	OH
39029	Columbiana County	OH
39031	Coshocton County	OH
39033	Crawford County	OH
39035	Cuyahoga County	OH
39037	Darke County	OH
39039	Defiance County	OH
39041	Delaware County	OH
39043	Erie County	OH
39045	Fairfield County	OH
39047	Fayette County	OH
39049	Franklin County	OH
39051	Fulton County	OH
39053	Gallia County	OH
39055	Geauga County	OH
39057	Greene County	OH
39059	Guernsey County	OH
39061	Hamilton County	OH
39063	Hancock County	OH
39065	Hardin County	OH
39067	Harrison County	OH
39069	Henry County	OH
39071	Highland County	OH
39073	Hocking County	OH
39075	Holmes County	OH
39077	Huron County	OH
39079	Jackson County	OH
39081	Jefferson County	OH
39083	Knox County	OH
39085	Lake County	OH
39087	Lawrence County	OH
39089	Licking County	OH
39091	Logan County	OH
39093	Lorain County	OH
39095	Lucas County	OH
39097	Madison County	OH
39099	Mahoning County	OH
39101	Marion County	OH
39103	Medina County	OH
39105	Meigs County	OH
39107	Mercer County	OH
39109	Miami County	OH
39111	Monroe County	OH
39113	Montgomery County	OH
39115	Morgan County	OH
39117	Morrow County	OH
39119	Muskingum County	OH
39121	Noble County	OH
39123	Ottawa County	OH
39125	Paulding County	OH
39127	Perry County	OH
39129	Pickaway County	OH
39131	Pike County	OH
39133	Portage County	OH
39135	Preble County	OH
39137	Putnam County	OH
39139	Richland County	OH
39141	Ross County	OH
39143	Sandusky County	OH
39145	Scioto County	OH
39147	Seneca County	OH
39149	Shelby County	OH
39151	Stark County	OH
39153	Summit County	OH
39155	Trumbull County	OH
39157	Tuscarawas County	OH
39159	Union County	OH
39161	Van Wert County	OH
39163	Vinton County	OH
39165	Warren County	OH
39167	Washington County	OH
39169	Wayne County	OH
39171	Williams County	OH
39173	Wood County	OH
39175	Wyandot County	OH
40000	OKLAHOMA	NA
40001	Adair County	OK
40003	Alfalfa County	OK
40005	Atoka County	OK
40007	Beaver County	OK
40009	Beckham County	OK
40011	Blaine County	OK
40013	Bryan County	OK
40015	Caddo County	OK
40017	Canadian County	OK
40019	Carter County	OK
40021	Cherokee County	OK
40023	Choctaw County	OK
40025	Cimarron County	OK
40027	Cleveland County	OK
40029	Coal County	OK
40031	Comanche County	OK
40033	Cotton County	OK
40035	Craig County	OK
40037	Creek County	OK
40039	Custer County	OK
40041	Delaware County	OK
40043	Dewey County	OK
40045	Ellis County	OK
40047	Garfield County	OK
40049	Garvin County	OK
40051	Grady County	OK
40053	Grant County	OK
40055	Greer County	OK
40057	Harmon County	OK
40059	Harper County	OK
40061	Haskell County	OK
40063	Hughes County	OK
40065	Jackson County	OK
40067	Jefferson County	OK
40069	Johnston County	OK
40071	Kay County	OK
40073	Kingfisher County	OK
40075	Kiowa County	OK
40077	Latimer County	OK
40079	Le Flore County	OK
40081	Lincoln County	OK
40083	Logan County	OK
40085	Love County	OK
40087	McClain County	OK
40089	McCurtain County	OK
40091	McIntosh County	OK
40093	Major County	OK
40095	Marshall County	OK
40097	Mayes County	OK
40099	Murray County	OK
40101	Muskogee County	OK
40103	Noble County	OK
40105	Nowata County	OK
40107	Okfuskee County	OK
40109	Oklahoma County	OK
40111	Okmulgee County	OK
40113	Osage County	OK
40115	Ottawa County	OK
40117	Pawnee County	OK
40119	Payne County	OK
40121	Pittsburg County	OK
40123	Pontotoc County	OK
40125	Pottawatomie County	OK
40127	Pushmataha County	OK
40129	Roger Mills County	OK
40131	Rogers County	OK
40133	Seminole County	OK
40135	Sequoyah County	OK
40137	Stephens County	OK
40139	Texas County	OK
40141	Tillman County	OK
40143	Tulsa County	OK
40145	Wagoner County	OK
40147	Washington County	OK
40149	Washita County	OK
40151	Woods County	OK
40153	Woodward County	OK
41000	OREGON	NA
41001	Baker County	OR
41003	Benton County	OR
41005	Clackamas County	OR
41007	Clatsop County	OR
41009	Columbia County	OR
41011	Coos County	OR
41013	Crook County	OR
41015	Curry County	OR
41017	Deschutes County	OR
41019	Douglas County	OR
41021	Gilliam County	OR
41023	Grant County	OR
41025	Harney County	OR
41027	Hood River County	OR
41029	Jackson County	OR
41031	Jefferson County	OR
41033	Josephine County	OR
41035	Klamath County	OR
41037	Lake County	OR
41039	Lane County	OR
41041	Lincoln County	OR
41043	Linn County	OR
41045	Malheur County	OR
41047	Marion County	OR
41049	Morrow County	OR
41051	Multnomah County	OR
41053	Polk County	OR
41055	Sherman County	OR
41057	Tillamook County	OR
41059	Umatilla County	OR
41061	Union County	OR
41063	Wallowa County	OR
41065	Wasco County	OR
41067	Washington County	OR
41069	Wheeler County	OR
41071	Yamhill County	OR
42000	PENNSYLVANIA	NA
42001	Adams County	PA
42003	Allegheny County	PA
42005	Armstrong County	PA
42007	Beaver County	PA
42009	Bedford County	PA
42011	Berks County	PA
42013	Blair County	PA
42015	Bradford County	PA
42017	Bucks County	PA
42019	Butler County	PA
42021	Cambria County	PA
42023	Cameron County	PA
42025	Carbon County	PA
42027	Centre County	PA
42029	Chester County	PA
42031	Clarion County	PA
42033	Clearfield County	PA
42035	Clinton County	PA
42037	Columbia County	PA
42039	Crawford County	PA
42041	Cumberland County	PA
42043	Dauphin County	PA
42045	Delaware County	PA
42047	Elk County	PA
42049	Erie County	PA
42051	Fayette County	PA
42053	Forest County	PA
42055	Franklin County	PA
42057	Fulton County	PA
42059	Greene County	PA
42061	Huntingdon County	PA
42063	Indiana County	PA
42065	Jefferson County	PA
42067	Juniata County	PA
42069	Lackawanna County	PA
42071	Lancaster County	PA
42073	Lawrence County	PA
42075	Lebanon County	PA
42077	Lehigh County	PA
42079	Luzerne County	PA
42081	Lycoming County	PA
42083	McKean County	PA
42085	Mercer County	PA
42087	Mifflin County	PA
42089	Monroe County	PA
42091	Montgomery County	PA
42093	Montour County	PA
42095	Northampton County	PA
42097	Northumberland County	PA
42099	Perry County	PA
42101	Philadelphia County	PA
42103	Pike County	PA
42105	Potter County	PA
42107	Schuylkill County	PA
42109	Snyder County	PA
42111	Somerset County	PA
42113	Sullivan County	PA
42115	Susquehanna County	PA
42117	Tioga County	PA
42119	Union County	PA
42121	Venango County	PA
42123	Warren County	PA
42125	Washington County	PA
42127	Wayne County	PA
42129	Westmoreland County	PA
42131	Wyoming County	PA
42133	York County	PA
44000	RHODE ISLAND	NA
44001	Bristol County	RI
44003	Kent County	RI
44005	Newport County	RI
44007	Providence County	RI
44009	Washington County	RI
45000	SOUTH CAROLINA	NA
45001	Abbeville County	SC
45003	Aiken County	SC
45005	Allendale County	SC
45007	Anderson County	SC
45009	Bamberg County	SC
45011	Barnwell County	SC
45013	Beaufort County	SC
45015	Berkeley County	SC
45017	Calhoun County	SC
45019	Charleston County	SC
45021	Cherokee County	SC
45023	Chester County	SC
45025	Chesterfield County	SC
45027	Clarendon County	SC
45029	Colleton County	SC
45031	Darlington County	SC
45033	Dillon County	SC
45035	Dorchester County	SC
45037	Edgefield County	SC
45039	Fairfield County	SC
45041	Florence County	SC
45043	Georgetown County	SC
45045	Greenville County	SC
45047	Greenwood County	SC
45049	Hampton County	SC
45051	Horry County	SC
45053	Jasper County	SC
45055	Kershaw County	SC
45057	Lancaster County	SC
45059	Laurens County	SC
45061	Lee County	SC
45063	Lexington County	SC
45065	McCormick County	SC
45067	Marion County	SC
45069	Marlboro County	SC
45071	Newberry County	SC
45073	Oconee County	SC
45075	Orangeburg County	SC
45077	Pickens County	SC
45079	Richland County	SC
45081	Saluda County	SC
45083	Spartanburg County	SC
45085	Sumter County	SC
45087	Union County	SC
45089	Williamsburg County	SC
45091	York County	SC
46000	SOUTH DAKOTA	NA
46003	Aurora County	SD
46005	Beadle County	SD
46007	Bennett County	SD
46009	Bon Homme County	SD
46011	Brookings County	SD
46013	Brown County	SD
46015	Brule County	SD
46017	Buffalo County	SD
46019	Butte County	SD
46021	Campbell County	SD
46023	Charles Mix County	SD
46025	Clark County	SD
46027	Clay County	SD
46029	Codington County	SD
46031	Corson County	SD
46033	Custer County	SD
46035	Davison County	SD
46037	Day County	SD
46039	Deuel County	SD
46041	Dewey County	SD
46043	Douglas County	SD
46045	Edmunds County	SD
46047	Fall River County	SD
46049	Faulk County	SD
46051	Grant County	SD
46053	Gregory County	SD
46055	Haakon County	SD
46057	Hamlin County	SD
46059	Hand County	SD
46061	Hanson County	SD
46063	Harding County	SD
46065	Hughes County	SD
46067	Hutchinson County	SD
46069	Hyde County	SD
46071	Jackson County	SD
46073	Jerauld County	SD
46075	Jones County	SD
46077	Kingsbury County	SD
46079	Lake County	SD
46081	Lawrence County	SD
46083	Lincoln County	SD
46085	Lyman County	SD
46087	McCook County	SD
46089	McPherson County	SD
46091	Marshall County	SD
46093	Meade County	SD
46095	Mellette County	SD
46097	Miner County	SD
46099	Minnehaha County	SD
46101	Moody County	SD
46103	Pennington County	SD
46105	Perkins County	SD
46107	Potter County	SD
46109	Roberts County	SD
46111	Sanborn County	SD
46102	Oglala Lakota County	SD
46115	Spink County	SD
46117	Stanley County	SD
46119	Sully County	SD
46121	Todd County	SD
46123	Tripp County	SD
46125	Turner County	SD
46127	Union County	SD
46129	Walworth County	SD
46135	Yankton County	SD
46137	Ziebach County	SD
47000	TENNESSEE	NA
47001	Anderson County	TN
47003	Bedford County	TN
47005	Benton County	TN
47007	Bledsoe County	TN
47009	Blount County	TN
47011	Bradley County	TN
47013	Campbell County	TN
47015	Cannon County	TN
47017	Carroll County	TN
47019	Carter County	TN
47021	Cheatham County	TN
47023	Chester County	TN
47025	Claiborne County	TN
47027	Clay County	TN
47029	Cocke County	TN
47031	Coffee County	TN
47033	Crockett County	TN
47035	Cumberland County	TN
47037	Davidson County	TN
47039	Decatur County	TN
47041	DeKalb County	TN
47043	Dickson County	TN
47045	Dyer County	TN
47047	Fayette County	TN
47049	Fentress County	TN
47051	Franklin County	TN
47053	Gibson County	TN
47055	Giles County	TN
47057	Grainger County	TN
47059	Greene County	TN
47061	Grundy County	TN
47063	Hamblen County	TN
47065	Hamilton County	TN
47067	Hancock County	TN
47069	Hardeman County	TN
47071	Hardin County	TN
47073	Hawkins County	TN
47075	Haywood County	TN
47077	Henderson County	TN
47079	Henry County	TN
47081	Hickman County	TN
47083	Houston County	TN
47085	Humphreys County	TN
47087	Jackson County	TN
47089	Jefferson County	TN
47091	Johnson County	TN
47093	Knox County	TN
47095	Lake County	TN
47097	Lauderdale County	TN
47099	Lawrence County	TN
47101	Lewis County	TN
47103	Lincoln County	TN
47105	Loudon County	TN
47107	McMinn County	TN
47109	McNairy County	TN
47111	Macon County	TN
47113	Madison County	TN
47115	Marion County	TN
47117	Marshall County	TN
47119	Maury County	TN
47121	Meigs County	TN
47123	Monroe County	TN
47125	Montgomery County	TN
47127	Moore County	TN
47129	Morgan County	TN
47131	Obion County	TN
47133	Overton County	TN
47135	Perry County	TN
47137	Pickett County	TN
47139	Polk County	TN
47141	Putnam County	TN
47143	Rhea County	TN
47145	Roane County	TN
47147	Robertson County	TN
47149	Rutherford County	TN
47151	Scott County	TN
47153	Sequatchie County	TN
47155	Sevier County	TN
47157	Shelby County	TN
47159	Smith County	TN
47161	Stewart County	TN
47163	Sullivan County	TN
47165	Sumner County	TN
47167	Tipton County	TN
47169	Trousdale County	TN
47171	Unicoi County	TN
47173	Union County	TN
47175	Van Buren County	TN
47177	Warren County	TN
47179	Washington County	TN
47181	Wayne County	TN
47183	Weakley County	TN
47185	White County	TN
47187	Williamson County	TN
47189	Wilson County	TN
48000	TEXAS	NA
48001	Anderson County	TX
48003	Andrews County	TX
48005	Angelina County	TX
48007	Aransas County	TX
48009	Archer County	TX
48011	Armstrong County	TX
48013	Atascosa County	TX
48015	Austin County	TX
48017	Bailey County	TX
48019	Bandera County	TX
48021	Bastrop County	TX
48023	Baylor County	TX
48025	Bee County	TX
48027	Bell County	TX
48029	Bexar County	TX
48031	Blanco County	TX
48033	Borden County	TX
48035	Bosque County	TX
48037	Bowie County	TX
48039	Brazoria County	TX
48041	Brazos County	TX
48043	Brewster County	TX
48045	Briscoe County	TX
48047	Brooks County	TX
48049	Brown County	TX
48051	Burleson County	TX
48053	Burnet County	TX
48055	Caldwell County	TX
48057	Calhoun County	TX
48059	Callahan County	TX
48061	Cameron County	TX
48063	Camp County	TX
48065	Carson County	TX
48067	Cass County	TX
48069	Castro County	TX
48071	Chambers County	TX
48073	Cherokee County	TX
48075	Childress County	TX
48077	Clay County	TX
48079	Cochran County	TX
48081	Coke County	TX
48083	Coleman County	TX
48085	Collin County	TX
48087	Collingsworth County	TX
48089	Colorado County	TX
48091	Comal County	TX
48093	Comanche County	TX
48095	Concho County	TX
48097	Cooke County	TX
48099	Coryell County	TX
48101	Cottle County	TX
48103	Crane County	TX
48105	Crockett County	TX
48107	Crosby County	TX
48109	Culberson County	TX
48111	Dallam County	TX
48113	Dallas County	TX
48115	Dawson County	TX
48117	Deaf Smith County	TX
48119	Delta County	TX
48121	Denton County	TX
48123	DeWitt County	TX
48125	Dickens County	TX
48127	Dimmit County	TX
48129	Donley County	TX
48131	Duval County	TX
48133	Eastland County	TX
48135	Ector County	TX
48137	Edwards County	TX
48139	Ellis County	TX
48141	El Paso County	TX
48143	Erath County	TX
48145	Falls County	TX
48147	Fannin County	TX
48149	Fayette County	TX
48151	Fisher County	TX
48153	Floyd County	TX
48155	Foard County	TX
48157	Fort Bend County	TX
48159	Franklin County	TX
48161	Freestone County	TX
48163	Frio County	TX
48165	Gaines County	TX
48167	Galveston County	TX
48169	Garza County	TX
48171	Gillespie County	TX
48173	Glasscock County	TX
48175	Goliad County	TX
48177	Gonzales County	TX
48179	Gray County	TX
48181	Grayson County	TX
48183	Gregg County	TX
48185	Grimes County	TX
48187	Guadalupe County	TX
48189	Hale County	TX
48191	Hall County	TX
48193	Hamilton County	TX
48195	Hansford County	TX
48197	Hardeman County	TX
48199	Hardin County	TX
48201	Harris County	TX
48203	Harrison County	TX
48205	Hartley County	TX
48207	Haskell County	TX
48209	Hays County	TX
48211	Hemphill County	TX
48213	Henderson County	TX
48215	Hidalgo County	TX
48217	Hill County	TX
48219	Hockley County	TX
48221	Hood County	TX
48223	Hopkins County	TX
48225	Houston County	TX
48227	Howard County	TX
48229	Hudspeth County	TX
48231	Hunt County	TX
48233	Hutchinson County	TX
48235	Irion County	TX
48237	Jack County	TX
48239	Jackson County	TX
48241	Jasper County	TX
48243	Jeff Davis County	TX
48245	Jefferson County	TX
48247	Jim Hogg County	TX
48249	Jim Wells County	TX
48251	Johnson County	TX
48253	Jones County	TX
48255	Karnes County	TX
48257	Kaufman County	TX
48259	Kendall County	TX
48261	Kenedy County	TX
48263	Kent County	TX
48265	Kerr County	TX
48267	Kimble County	TX
48269	King County	TX
48271	Kinney County	TX
48273	Kleberg County	TX
48275	Knox County	TX
48277	Lamar County	TX
48279	Lamb County	TX
48281	Lampasas County	TX
48283	La Salle County	TX
48285	Lavaca County	TX
48287	Lee County	TX
48289	Leon County	TX
48291	Liberty County	TX
48293	Limestone County	TX
48295	Lipscomb County	TX
48297	Live Oak County	TX
48299	Llano County	TX
48301	Loving County	TX
48303	Lubbock County	TX
48305	Lynn County	TX
48307	McCulloch County	TX
48309	McLennan County	TX
48311	McMullen County	TX
48313	Madison County	TX
48315	Marion County	TX
48317	Martin County	TX
48319	Mason County	TX
48321	Matagorda County	TX
48323	Maverick County	TX
48325	Medina County	TX
48327	Menard County	TX
48329	Midland County	TX
48331	Milam County	TX
48333	Mills County	TX
48335	Mitchell County	TX
48337	Montague County	TX
48339	Montgomery County	TX
48341	Moore County	TX
48343	Morris County	TX
48345	Motley County	TX
48347	Nacogdoches County	TX
48349	Navarro County	TX
48351	Newton County	TX
48353	Nolan County	TX
48355	Nueces County	TX
48357	Ochiltree County	TX
48359	Oldham County	TX
48361	Orange County	TX
48363	Palo Pinto County	TX
48365	Panola County	TX
48367	Parker County	TX
48369	Parmer County	TX
48371	Pecos County	TX
48373	Polk County	TX
48375	Potter County	TX
48377	Presidio County	TX
48379	Rains County	TX
48381	Randall County	TX
48383	Reagan County	TX
48385	Real County	TX
48387	Red River County	TX
48389	Reeves County	TX
48391	Refugio County	TX
48393	Roberts County	TX
48395	Robertson County	TX
48397	Rockwall County	TX
48399	Runnels County	TX
48401	Rusk County	TX
48403	Sabine County	TX
48405	San Augustine County	TX
48407	San Jacinto County	TX
48409	San Patricio County	TX
48411	San Saba County	TX
48413	Schleicher County	TX
48415	Scurry County	TX
48417	Shackelford County	TX
48419	Shelby County	TX
48421	Sherman County	TX
48423	Smith County	TX
48425	Somervell County	TX
48427	Starr County	TX
48429	Stephens County	TX
48431	Sterling County	TX
48433	Stonewall County	TX
48435	Sutton County	TX
48437	Swisher County	TX
48439	Tarrant County	TX
48441	Taylor County	TX
48443	Terrell County	TX
48445	Terry County	TX
48447	Throckmorton County	TX
48449	Titus County	TX
48451	Tom Green County	TX
48453	Travis County	TX
48455	Trinity County	TX
48457	Tyler County	TX
48459	Upshur County	TX
48461	Upton County	TX
48463	Uvalde County	TX
48465	Val Verde County	TX
48467	Van Zandt County	TX
48469	Victoria County	TX
48471	Walker County	TX
48473	Waller County	TX
48475	Ward County	TX
48477	Washington County	TX
48479	Webb County	TX
48481	Wharton County	TX
48483	Wheeler County	TX
48485	Wichita County	TX
48487	Wilbarger County	TX
48489	Willacy County	TX
48491	Williamson County	TX
48493	Wilson County	TX
48495	Winkler County	TX
48497	Wise County	TX
48499	Wood County	TX
48501	Yoakum County	TX
48503	Young County	TX
48505	Zapata County	TX
48507	Zavala County	TX
49000	UTAH	NA
49001	Beaver County	UT
49003	Box Elder County	UT
49005	Cache County	UT
49007	Carbon County	UT
49009	Daggett County	UT
49011	Davis County	UT
49013	Duchesne County	UT
49015	Emery County	UT
49017	Garfield County	UT
49019	Grand County	UT
49021	Iron County	UT
49023	Juab County	UT
49025	Kane County	UT
49027	Millard County	UT
49029	Morgan County	UT
49031	Piute County	UT
49033	Rich County	UT
49035	Salt Lake County	UT
49037	San Juan County	UT
49039	Sanpete County	UT
49041	Sevier County	UT
49043	Summit County	UT
49045	Tooele County	UT
49047	Uintah County	UT
49049	Utah County	UT
49051	Wasatch County	UT
49053	Washington County	UT
49055	Wayne County	UT
49057	Weber County	UT
50000	VERMONT	NA
50001	Addison County	VT
50003	Bennington County	VT
50005	Caledonia County	VT
50007	Chittenden County	VT
50009	Essex County	VT
50011	Franklin County	VT
50013	Grand Isle County	VT
50015	Lamoille County	VT
50017	Orange County	VT
50019	Orleans County	VT
50021	Rutland County	VT
50023	Washington County	VT
50025	Windham County	VT
50027	Windsor County	VT
51000	VIRGINIA	NA
51001	Accomack County	VA
51003	Albemarle County	VA
51005	Alleghany County	VA
51007	Amelia County	VA
51009	Amherst County	VA
51011	Appomattox County	VA
51013	Arlington County	VA
51015	Augusta County	VA
51017	Bath County	VA
51019	Bedford County	VA
51021	Bland County	VA
51023	Botetourt County	VA
51025	Brunswick County	VA
51027	Buchanan County	VA
51029	Buckingham County	VA
51031	Campbell County	VA
51033	Caroline County	VA
51035	Carroll County	VA
51036	Charles City County	VA
51037	Charlotte County	VA
51041	Chesterfield County	VA
51043	Clarke County	VA
51045	Craig County	VA
51047	Culpeper County	VA
51049	Cumberland County	VA
51051	Dickenson County	VA
51053	Dinwiddie County	VA
51057	Essex County	VA
51059	Fairfax County	VA
51061	Fauquier County	VA
51063	Floyd County	VA
51065	Fluvanna County	VA
51067	Franklin County	VA
51069	Frederick County	VA
51071	Giles County	VA
51073	Gloucester County	VA
51075	Goochland County	VA
51077	Grayson County	VA
51079	Greene County	VA
51081	Greensville County	VA
51083	Halifax County	VA
51085	Hanover County	VA
51087	Henrico County	VA
51089	Henry County	VA
51091	Highland County	VA
51093	Isle of Wight County	VA
51095	James City County	VA
51097	King and Queen County	VA
51099	King George County	VA
51101	King William County	VA
51103	Lancaster County	VA
51105	Lee County	VA
51107	Loudoun County	VA
51109	Louisa County	VA
51111	Lunenburg County	VA
51113	Madison County	VA
51115	Mathews County	VA
51117	Mecklenburg County	VA
51119	Middlesex County	VA
51121	Montgomery County	VA
51125	Nelson County	VA
51127	New Kent County	VA
51131	Northampton County	VA
51133	Northumberland County	VA
51135	Nottoway County	VA
51137	Orange County	VA
51139	Page County	VA
51141	Patrick County	VA
51143	Pittsylvania County	VA
51145	Powhatan County	VA
51147	Prince Edward County	VA
51149	Prince George County	VA
51153	Prince William County	VA
51155	Pulaski County	VA
51157	Rappahannock County	VA
51159	Richmond County	VA
51161	Roanoke County	VA
51163	Rockbridge County	VA
51165	Rockingham County	VA
51167	Russell County	VA
51169	Scott County	VA
51171	Shenandoah County	VA
51173	Smyth County	VA
51175	Southampton County	VA
51177	Spotsylvania County	VA
51179	Stafford County	VA
51181	Surry County	VA
51183	Sussex County	VA
51185	Tazewell County	VA
51187	Warren County	VA
51191	Washington County	VA
51193	Westmoreland County	VA
51195	Wise County	VA
51197	Wythe County	VA
51199	York County	VA
51510	Alexandria city	VA
51520	Bristol city	VA
51530	Buena Vista city	VA
51540	Charlottesville city	VA
51550	Chesapeake city	VA
51570	Colonial Heights city	VA
51580	Covington city	VA
51590	Danville city	VA
51595	Emporia city	VA
51600	Fairfax city	VA
51610	Falls Church city	VA
51620	Franklin city	VA
51630	Fredericksburg city	VA
51640	Galax city	VA
51650	Hampton city	VA
51660	Harrisonburg city	VA
51670	Hopewell city	VA
51678	Lexington city	VA
51680	Lynchburg city	VA
51683	Manassas city	VA
51685	Manassas Park city	VA
51690	Martinsville city	VA
51700	Newport News city	VA
51710	Norfolk city	VA
51720	Norton city	VA
51730	Petersburg city	VA
51735	Poquoson city	VA
51740	Portsmouth city	VA
51750	Radford city	VA
51760	Richmond city	VA
51770	Roanoke city	VA
51775	Salem city	VA
51790	Staunton city	VA
51800	Suffolk city	VA
51810	Virginia Beach city	VA
51820	Waynesboro city	VA
51830	Williamsburg city	VA
51840	Winchester city	VA
53000	WASHINGTON	NA
53001	Adams County	WA
53003	Asotin County	WA
53005	Benton County	WA
53007	Chelan County	WA
53009	Clallam County	WA
53011	Clark County	WA
53013	Columbia County	WA
53015	Cowlitz County	WA
53017	Douglas County	WA
53019	Ferry County	WA
53021	Franklin County	WA
53023	Garfield County	WA
53025	Grant County	WA
53027	Grays Harbor County	WA
53029	Island County	WA
53031	Jefferson County	WA
53033	King County	WA
53035	Kitsap County	WA
53037	Kittitas County	WA
53039	Klickitat County	WA
53041	Lewis County	WA
53043	Lincoln County	WA
53045	Mason County	WA
53047	Okanogan County	WA
53049	Pacific County	WA
53051	Pend Oreille County	WA
53053	Pierce County	WA
53055	San Juan County	WA
53057	Skagit County	WA
53059	Skamania County	WA
53061	Snohomish County	WA
53063	Spokane County	WA
53065	Stevens County	WA
53067	Thurston County	WA
53069	Wahkiakum County	WA
53071	Walla Walla County	WA
53073	Whatcom County	WA
53075	Whitman County	WA
53077	Yakima County	WA
54000	WEST VIRGINIA	NA
54001	Barbour County	WV
54003	Berkeley County	WV
54005	Boone County	WV
54007	Braxton County	WV
54009	Brooke County	WV
54011	Cabell County	WV
54013	Calhoun County	WV
54015	Clay County	WV
54017	Doddridge County	WV
54019	Fayette County	WV
54021	Gilmer County	WV
54023	Grant County	WV
54025	Greenbrier County	WV
54027	Hampshire County	WV
54029	Hancock County	WV
54031	Hardy County	WV
54033	Harrison County	WV
54035	Jackson County	WV
54037	Jefferson County	WV
54039	Kanawha County	WV
54041	Lewis County	WV
54043	Lincoln County	WV
54045	Logan County	WV
54047	McDowell County	WV
54049	Marion County	WV
54051	Marshall County	WV
54053	Mason County	WV
54055	Mercer County	WV
54057	Mineral County	WV
54059	Mingo County	WV
54061	Monongalia County	WV
54063	Monroe County	WV
54065	Morgan County	WV
54067	Nicholas County	WV
54069	Ohio County	WV
54071	Pendleton County	WV
54073	Pleasants County	WV
54075	Pocahontas County	WV
54077	Preston County	WV
54079	Putnam County	WV
54081	Raleigh County	WV
54083	Randolph County	WV
54085	Ritchie County	WV
54087	Roane County	WV
54089	Summers County	WV
54091	Taylor County	WV
54093	Tucker County	WV
54095	Tyler County	WV
54097	Upshur County	WV
54099	Wayne County	WV
54101	Webster County	WV
54103	Wetzel County	WV
54105	Wirt County	WV
54107	Wood County	WV
54109	Wyoming County	WV
55000	WISCONSIN	NA
55001	Adams County	WI
55003	Ashland County	WI
55005	Barron County	WI
55007	Bayfield County	WI
55009	Brown County	WI
55011	Buffalo County	WI
55013	Burnett County	WI
55015	Calumet County	WI
55017	Chippewa County	WI
55019	Clark County	WI
55021	Columbia County	WI
55023	Crawford County	WI
55025	Dane County	WI
55027	Dodge County	WI
55029	Door County	WI
55031	Douglas County	WI
55033	Dunn County	WI
55035	Eau Claire County	WI
55037	Florence County	WI
55039	Fond du Lac County	WI
55041	Forest County	WI
55043	Grant County	WI
55045	Green County	WI
55047	Green Lake County	WI
55049	Iowa County	WI
55051	Iron County	WI
55053	Jackson County	WI
55055	Jefferson County	WI
55057	Juneau County	WI
55059	Kenosha County	WI
55061	Kewaunee County	WI
55063	La Crosse County	WI
55065	Lafayette County	WI
55067	Langlade County	WI
55069	Lincoln County	WI
55071	Manitowoc County	WI
55073	Marathon County	WI
55075	Marinette County	WI
55077	Marquette County	WI
55078	Menominee County	WI
55079	Milwaukee County	WI
55081	Monroe County	WI
55083	Oconto County	WI
55085	Oneida County	WI
55087	Outagamie County	WI
55089	Ozaukee County	WI
55091	Pepin County	WI
55093	Pierce County	WI
55095	Polk County	WI
55097	Portage County	WI
55099	Price County	WI
55101	Racine County	WI
55103	Richland County	WI
55105	Rock County	WI
55107	Rusk County	WI
55109	St. Croix County	WI
55111	Sauk County	WI
55113	Sawyer County	WI
55115	Shawano County	WI
55117	Sheboygan County	WI
55119	Taylor County	WI
55121	Trempealeau County	WI
55123	Vernon County	WI
55125	Vilas County	WI
55127	Walworth County	WI
55129	Washburn County	WI
55131	Washington County	WI
55133	Waukesha County	WI
55135	Waupaca County	WI
55137	Waushara County	WI
55139	Winnebago County	WI
55141	Wood County	WI
56000	WYOMING	NA
56001	Albany County	WY
56003	Big Horn County	WY
56005	Campbell County	WY
56007	Carbon County	WY
56009	Converse County	WY
56011	Crook County	WY
56013	Fremont County	WY
56015	Goshen County	WY
56017	Hot Springs County	WY
56019	Johnson County	WY
56021	Laramie County	WY
56023	Lincoln County	WY
56025	Natrona County	WY
56027	Niobrara County	WY
56029	Park County	WY
56031	Platte County	WY
56033	Sheridan County	WY
56035	Sublette County	WY
56037	Sweetwater County	WY
56039	Teton County	WY
56041	Uinta County	WY
56043	Washakie County	WY
56045	Weston County	WY
\.


--
-- Data for Name: unemployment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.unemployment (fips_code, area_name, civilian_labor_force_2020, employed_2020, unemployed_2020, unemployment_rate_2020) FROM stdin;
1007	Bibb County, AL	8640	8067	573	6.6
1009	Blount County, AL	24661	23653	1008	4.1
1021	Chilton County, AL	19592	18618	974	5
1073	Jefferson County, AL	315957	296282	19675	6.2
1115	St. Clair County, AL	40132	38146	1986	4.9
1117	Shelby County, AL	114048	109646	4402	3.9
1127	Walker County, AL	24877	23431	1446	5.8
4013	Maricopa County, AZ	2331628	2159267	172361	7.4
4021	Pinal County, AZ	191074	176674	14400	7.5
5035	Crittenden County, AR	21209	19459	1750	8.3
6001	Alameda County, CA	813807	742411	71396	8.8
6013	Contra Costa County, CA	541256	493236	48020	8.9
6017	El Dorado County, CA	90752	83262	7490	8.3
6037	Los Angeles County, CA	4921499	4291688	629811	12.8
6041	Marin County, CA	130138	121476	8662	6.7
6059	Orange County, CA	1553301	1416738	136563	8.8
6061	Placer County, CA	184892	171319	13573	7.3
6065	Riverside County, CA	1107723	997725	109998	9.9
6067	Sacramento County, CA	707182	641624	65558	9.3
6069	San Benito County, CA	31528	28409	3119	9.9
6071	San Bernardino County, CA	966206	874911	91295	9.4
6073	San Diego County, CA	1538361	1396547	141814	9.2
6075	San Francisco County/city, CA	556056	512531	43525	7.8
6081	San Mateo County, CA	433876	404128	29748	6.9
6085	Santa Clara County, CA	1020693	949353	71340	7
6113	Yolo County, CA	105026	97111	7915	7.5
8001	Adams County, CO	274498	252469	22029	8
8005	Arapahoe County, CO	366768	337943	28825	7.9
8014	Broomfield County/city, CO	40226	37556	2670	6.6
8019	Clear Creek County, CO	6151	5628	523	8.5
8031	Denver County/city, CO	423824	388924	34900	8.2
8035	Douglas County, CO	194649	183412	11237	5.8
8039	Elbert County, CO	14961	14264	697	4.7
8047	Gilpin County, CO	4016	3562	454	11.3
8059	Jefferson County, CO	333682	310057	23625	7.1
8093	Park County, CO	11114	10480	634	5.7
9003	Hartford County, CT	476115	437433	38682	8.1
9007	Middlesex County, CT	92221	86211	6010	6.5
9013	Tolland County, CT	84598	79362	5236	6.2
10003	New Castle County, DE	298640	275601	23039	7.7
11001	District of Columbia	409734	376839	32895	8
12003	Baker County, FL	11759	11179	580	4.9
12011	Broward County, FL	1020586	930297	90289	8.8
12019	Clay County, FL	105658	100004	5654	5.4
12031	Duval County, FL	485114	452481	32633	6.7
12053	Hernando County, FL	71534	65765	5769	8.1
12057	Hillsborough County, FL	754552	700764	53788	7.1
12069	Lake County, FL	154028	140383	13645	8.9
12086	Miami-Dade County, FL	1291854	1188173	103681	8
12089	Nassau County, FL	41338	38991	2347	5.7
12095	Orange County, FL	737546	659050	78496	10.6
12097	Osceola County, FL	185793	160638	25155	13.5
12099	Palm Beach County, FL	717379	662945	54434	7.6
12101	Pasco County, FL	238327	221185	17142	7.2
12103	Pinellas County, FL	484330	450266	34064	7
12109	St. Johns County, FL	133843	126772	7071	5.3
12117	Seminole County, FL	237769	220602	17167	7.2
13013	Barrow County, GA	40112	38057	2055	5.1
13015	Bartow County, GA	49719	46612	3107	6.2
13035	Butts County, GA	10739	10075	664	6.2
13045	Carroll County, GA	54475	51009	3466	6.4
13057	Cherokee County, GA	133045	126581	6464	4.9
13063	Clayton County, GA	139790	125357	14433	10.3
13067	Cobb County, GA	414357	389904	24453	5.9
13077	Coweta County, GA	73981	69397	4584	6.2
13085	Dawson County, GA	12319	11735	584	4.7
13089	DeKalb County, GA	395683	364209	31474	8
13097	Douglas County, GA	72297	66930	5367	7.4
13113	Fayette County, GA	56444	53389	3055	5.4
13117	Forsyth County, GA	120904	115371	5533	4.6
13121	Fulton County, GA	557232	512593	44639	8
13135	Gwinnett County, GA	481453	450909	30544	6.3
13143	Haralson County, GA	12245	11525	720	5.9
13149	Heard County, GA	5132	4798	334	6.5
13151	Henry County, GA	115352	106831	8521	7.4
13159	Jasper County, GA	6756	6422	334	4.9
13171	Lamar County, GA	7980	7476	504	6.3
13199	Meriwether County, GA	8816	8061	755	8.6
13211	Morgan County, GA	9142	8645	497	5.4
13217	Newton County, GA	51901	48202	3699	7.1
13223	Paulding County, GA	85313	80718	4595	5.4
13227	Pickens County, GA	14927	14210	717	4.8
13231	Pike County, GA	8705	8273	432	5
13247	Rockdale County, GA	43989	40657	3332	7.6
13255	Spalding County, GA	28305	26156	2149	7.6
13297	Walton County, GA	44917	42476	2441	5.4
17005	Bond County, IL	7484	6972	512	6.8
17013	Calhoun County, IL	2228	2059	169	7.6
17027	Clinton County, IL	19796	18642	1154	5.8
17031	Cook County, IL	2539907	2258453	281454	11.1
17037	DeKalb County, IL	53031	48678	4353	8.2
17043	DuPage County, IL	484215	445824	38391	7.9
17063	Grundy County, IL	24269	22138	2131	8.8
17083	Jersey County, IL	10678	9883	795	7.4
17089	Kane County, IL	261649	237738	23911	9.1
17093	Kendall County, IL	66386	60839	5547	8.4
17097	Lake County, IL	364544	335133	29411	8.1
17111	McHenry County, IL	158406	145249	13157	8.3
17117	Macoupin County, IL	22119	20596	1523	6.9
17119	Madison County, IL	131452	121270	10182	7.7
17133	Monroe County, IL	18386	17363	1023	5.6
17163	St. Clair County, IL	125155	113836	11319	9
17197	Will County, IL	344335	311763	32572	9.5
18011	Boone County, IN	35586	34064	1522	4.3
18013	Brown County, IN	7568	7062	506	6.7
18019	Clark County, IN	61138	56726	4412	7.2
18029	Dearborn County, IN	25224	23482	1742	6.9
18043	Floyd County, IN	41093	38422	2671	6.5
18057	Hamilton County, IN	182979	174455	8524	4.7
18059	Hancock County, IN	40363	38084	2279	5.6
18061	Harrison County, IN	19874	18626	1248	6.3
18063	Hendricks County, IN	89386	84885	4501	5
18073	Jasper County, IN	15583	14490	1093	7
18081	Johnson County, IN	82335	77712	4623	5.6
18089	Lake County, IN	225185	201989	23196	10.3
18095	Madison County, IN	58758	54137	4621	7.9
18097	Marion County, IN	495063	456145	38918	7.9
18109	Morgan County, IN	35605	33693	1912	5.4
18111	Newton County, IN	6591	6139	452	6.9
18115	Ohio County, IN	3157	2924	233	7.4
18127	Porter County, IN	83987	77220	6767	8.1
18133	Putnam County, IN	16336	15318	1018	6.2
18143	Scott County, IN	10484	9606	878	8.4
18145	Shelby County, IN	23086	21443	1643	7.1
18161	Union County, IN	3443	3254	189	5.5
18175	Washington County, IN	13465	12533	932	6.9
20091	Johnson County, KS	342146	324544	17602	5.1
20103	Leavenworth County, KS	36746	34611	2135	5.8
20107	Linn County, KS	4379	4073	306	7
20121	Miami County, KS	17681	16793	888	5
20209	Wyandotte County, KS	78392	72303	6089	7.8
21015	Boone County, KY	70071	66280	3791	5.4
21023	Bracken County, KY	3744	3511	233	6.2
21029	Bullitt County, KY	42031	39359	2672	6.4
21037	Campbell County, KY	49647	46886	2761	5.6
21077	Gallatin County, KY	4012	3771	241	6
21081	Grant County, KY	11525	10707	818	7.1
21103	Henry County, KY	8071	7611	460	5.7
21111	Jefferson County, KY	390487	363770	26717	6.8
21117	Kenton County, KY	86062	81077	4985	5.8
21185	Oldham County, KY	32438	30867	1571	4.8
21191	Pendleton County, KY	6803	6447	356	5.2
21211	Shelby County, KY	25191	23817	1374	5.5
21215	Spencer County, KY	10254	9662	592	5.8
21223	Trimble County, KY	3789	3533	256	6.8
22051	Jefferson Parish, LA	211563	191934	19629	9.3
22071	Orleans Parish, LA	181868	159734	22134	12.2
22075	Plaquemines Parish, LA	9649	8971	678	7
22087	St. Bernard Parish, LA	20022	17984	2038	10.2
22089	St. Charles Parish, LA	24644	22715	1929	7.8
22093	St. James Parish, LA	9058	8176	882	9.7
22095	St. John the Baptist Parish, LA	19473	17294	2179	11.2
22103	St. Tammany Parish, LA	116466	108590	7876	6.8
24003	Anne Arundel County, MD	310413	292309	18104	5.8
24005	Baltimore County, MD	445695	415263	30432	6.8
24009	Calvert County, MD	48543	46006	2537	5.2
24013	Carroll County, MD	93073	88333	4740	5.1
24015	Cecil County, MD	52083	48988	3095	5.9
24017	Charles County, MD	86099	80309	5790	6.7
24021	Frederick County, MD	132867	124969	7898	5.9
24025	Harford County, MD	138337	130336	8001	5.8
24027	Howard County, MD	184474	174916	9558	5.2
24031	Montgomery County, MD	548398	513663	34735	6.3
24033	Prince George's County, MD	504276	462879	41397	8.2
24035	Queen Anne's County, MD	27202	25712	1490	5.5
24510	Baltimore city, MD	281187	256482	24705	8.8
25005	Bristol County, MA	293532	263456	30076	10.2
25009	Essex County, MA	414660	374075	40585	9.8
25017	Middlesex County, MA	882398	818205	64193	7.3
25021	Norfolk County, MA	380061	348328	31733	8.3
25023	Plymouth County, MA	276733	250579	26154	9.5
25025	Suffolk County, MA	446558	403388	43170	9.7
26087	Lapeer County, MI	40138	35123	5015	12.5
26093	Livingston County, MI	99598	90819	8779	8.8
26099	Macomb County, MI	439510	386942	52568	12
26125	Oakland County, MI	648742	588572	60170	9.3
26147	St. Clair County, MI	73897	65042	8855	12
26163	Wayne County, MI	796974	686888	110086	13.8
27003	Anoka County, MN	198304	185714	12590	6.3
27019	Carver County, MN	58673	55626	3047	5.2
27025	Chisago County, MN	30083	28103	1980	6.6
27037	Dakota County, MN	242394	227375	15019	6.2
27053	Hennepin County, MN	710270	663738	46532	6.6
27059	Isanti County, MN	21430	19976	1454	6.8
27079	Le Sueur County, MN	16186	15092	1094	6.8
27095	Mille Lacs County, MN	12937	11847	1090	8.4
27123	Ramsey County, MN	290181	270117	20064	6.9
27139	Scott County, MN	83897	78940	4957	5.9
27141	Sherburne County, MN	52434	49247	3187	6.1
27143	Sibley County, MN	8373	7912	461	5.5
27163	Washington County, MN	143583	135509	8074	5.6
27171	Wright County, MN	75721	71523	4198	5.5
28009	Benton County, MS	2995	2745	250	8.3
28033	DeSoto County, MS	90498	85029	5469	6
28093	Marshall County, MS	14119	13053	1066	7.6
28137	Tate County, MS	11990	11070	920	7.7
28143	Tunica County, MS	4590	3908	682	14.9
29013	Bates County, MO	7662	7255	407	5.3
29025	Caldwell County, MO	4279	4050	229	5.4
29037	Cass County, MO	54079	51203	2876	5.3
29047	Clay County, MO	136568	128194	8374	6.1
29049	Clinton County, MO	10564	9936	628	5.9
29071	Franklin County, MO	52661	49396	3265	6.2
29095	Jackson County, MO	360213	334471	25742	7.1
29099	Jefferson County, MO	116774	109655	7119	6.1
29107	Lafayette County, MO	16582	15711	871	5.3
29113	Lincoln County, MO	28723	26926	1797	6.3
29165	Platte County, MO	58458	55275	3183	5.4
29177	Ray County, MO	10966	10213	753	6.9
29183	St. Charles County, MO	224521	212786	11735	5.2
29189	St. Louis County, MO	524721	491901	32820	6.3
29219	Warren County, MO	18207	17150	1057	5.8
29510	St. Louis city, MO	152292	139334	12958	8.5
32003	Clark County, NV	1123582	958069	165513	14.7
33015	Rockingham County, NH	185979	172832	13147	7.1
33017	Strafford County, NH	73223	68613	4610	6.3
34003	Bergen County, NJ	477892	432189	45703	9.6
34005	Burlington County, NJ	230784	211788	18996	8.2
34007	Camden County, NJ	256048	230287	25761	10.1
34013	Essex County, NJ	373943	330269	43674	11.7
34015	Gloucester County, NJ	151080	137052	14028	9.3
34017	Hudson County, NJ	360498	322277	38221	10.6
34019	Hunterdon County, NJ	63295	58730	4565	7.2
34023	Middlesex County, NJ	436329	398298	38031	8.7
34025	Monmouth County, NJ	327712	298748	28964	8.8
34027	Morris County, NJ	252588	232958	19630	7.8
34029	Ocean County, NJ	278413	252016	26397	9.5
34031	Passaic County, NJ	245187	214293	30894	12.6
34033	Salem County, NJ	29532	26715	2817	9.5
34035	Somerset County, NJ	167938	154873	13065	7.8
34037	Sussex County, NJ	73836	66900	6936	9.4
34039	Union County, NJ	276211	248871	27340	9.9
36005	Bronx County, NY	589087	494651	94436	16
36027	Dutchess County, NY	142061	131173	10888	7.7
36029	Erie County, NY	439291	397536	41755	9.5
36047	Kings County, NY	1151130	1006852	144278	12.5
36051	Livingston County, NY	29831	27727	2104	7.1
36055	Monroe County, NY	359299	328525	30774	8.6
36059	Nassau County, NY	698942	640035	58907	8.4
36061	New York County, NY	859618	777583	82035	9.5
36063	Niagara County, NY	98105	87906	10199	10.4
36069	Ontario County, NY	54401	50447	3954	7.3
36071	Orange County, NY	183265	167957	15308	8.4
36073	Orleans County, NY	17146	15713	1433	8.4
36079	Putnam County, NY	50079	46294	3785	7.6
36081	Queens County, NY	1098937	961214	137723	12.5
36085	Richmond County, NY	211064	188608	22456	10.6
36087	Rockland County, NY	152903	140547	12356	8.1
36103	Suffolk County, NY	764564	699613	64951	8.5
36117	Wayne County, NY	42921	39749	3172	7.4
36119	Westchester County, NY	477959	437772	40187	8.4
36123	Yates County, NY	11546	10794	752	6.5
37025	Cabarrus County, NC	108444	100873	7571	7
37053	Currituck County, NC	13851	12976	875	6.3
37069	Franklin County, NC	31029	28909	2120	6.8
37071	Gaston County, NC	109526	100744	8782	8
37073	Gates County, NC	5069	4779	290	5.7
37097	Iredell County, NC	88855	82336	6519	7.3
37101	Johnston County, NC	98297	92056	6241	6.3
37109	Lincoln County, NC	43262	40410	2852	6.6
37119	Mecklenburg County, NC	617543	569616	47927	7.8
37159	Rowan County, NC	65083	59909	5174	7.9
37179	Union County, NC	121173	113926	7247	6
37183	Wake County, NC	584088	546490	37598	6.4
39015	Brown County, OH	19407	17806	1601	8.2
39017	Butler County, OH	194077	180029	14048	7.2
39025	Clermont County, OH	106237	98953	7284	6.9
39035	Cuyahoga County, OH	592890	531193	61697	10.4
39041	Delaware County, OH	111352	105395	5957	5.3
39045	Fairfield County, OH	78604	73406	5198	6.6
39049	Franklin County, OH	705149	652631	52518	7.4
39055	Geauga County, OH	46329	43210	3119	6.7
39061	Hamilton County, OH	415866	383560	32306	7.8
39073	Hocking County, OH	12961	12002	959	7.4
39085	Lake County, OH	120876	110740	10136	8.4
39089	Licking County, OH	90688	84753	5935	6.5
39093	Lorain County, OH	149061	134333	14728	9.9
39097	Madison County, OH	20834	19598	1236	5.9
39103	Medina County, OH	93378	86254	7124	7.6
39117	Morrow County, OH	16890	15686	1204	7.1
39127	Perry County, OH	15961	14622	1339	8.4
39129	Pickaway County, OH	26523	24726	1797	6.8
39159	Union County, OH	29408	27702	1706	5.8
39165	Warren County, OH	118838	111257	7581	6.4
40017	Canadian County, OK	76026	71482	4544	6
40027	Cleveland County, OK	142684	134700	7984	5.6
40051	Grady County, OK	26633	25011	1622	6.1
40081	Lincoln County, OK	15609	14740	869	5.6
40083	Logan County, OK	22207	21068	1139	5.1
40087	McClain County, OK	19882	18783	1099	5.5
40109	Oklahoma County, OK	385860	361100	24760	6.4
41005	Clackamas County, OR	218040	202243	15797	7.2
41009	Columbia County, OR	24061	22155	1906	7.9
41051	Multnomah County, OR	457372	418070	39302	8.6
41067	Washington County, OR	321579	300742	20837	6.5
41071	Yamhill County, OR	54221	50557	3664	6.8
42003	Allegheny County, PA	635957	578590	57367	9
42005	Armstrong County, PA	31451	28377	3074	9.8
42007	Beaver County, PA	82963	74445	8518	10.3
42017	Bucks County, PA	338801	310681	28120	8.3
42019	Butler County, PA	97152	89514	7638	7.9
42029	Chester County, PA	280096	262061	18035	6.4
42045	Delaware County, PA	294706	267759	26947	9.1
42051	Fayette County, PA	56337	49743	6594	11.7
42091	Montgomery County, PA	446961	412925	34036	7.6
42101	Philadelphia County/city, PA	723938	634409	89529	12.4
42103	Pike County, PA	24852	22213	2639	10.6
42125	Washington County, PA	105089	95218	9871	9.4
42129	Westmoreland County, PA	176723	160646	16077	9.1
44001	Bristol County, RI	24895	22999	1896	7.6
44003	Kent County, RI	88283	80562	7721	8.7
44005	Newport County, RI	42502	39038	3464	8.2
44007	Providence County, RI	320264	287648	32616	10.2
44009	Washington County, RI	65736	60597	5139	7.8
45023	Chester County, SC	13646	12426	1220	8.9
45057	Lancaster County, SC	42533	39610	2923	6.9
45091	York County, SC	143890	135143	8747	6.1
47015	Cannon County, TN	6506	6083	423	6.5
47021	Cheatham County, TN	21313	20113	1200	5.6
47037	Davidson County, TN	402058	369787	32271	8
47043	Dickson County, TN	26354	24799	1555	5.9
47047	Fayette County, TN	18987	17774	1213	6.4
47081	Hickman County, TN	11103	10458	645	5.8
47111	Macon County, TN	11156	10428	728	6.5
47119	Maury County, TN	49915	45854	4061	8.1
47147	Robertson County, TN	37300	35018	2282	6.1
47149	Rutherford County, TN	184368	171731	12637	6.9
47157	Shelby County, TN	447769	404507	43262	9.7
47159	Smith County, TN	9259	8701	558	6
47165	Sumner County, TN	102069	95424	6645	6.5
47167	Tipton County, TN	27498	25612	1886	6.9
47169	Trousdale County, TN	5383	5055	328	6.1
47187	Williamson County, TN	126997	120874	6123	4.8
47189	Wilson County, TN	76694	71882	4812	6.3
48013	Atascosa County, TX	21822	19979	1843	8.4
48015	Austin County, TX	13638	12741	897	6.6
48019	Bandera County, TX	9835	9261	574	5.8
48021	Bastrop County, TX	42573	40016	2557	6
48029	Bexar County, TX	942127	871017	71110	7.5
48039	Brazoria County, TX	177709	162442	15267	8.6
48055	Caldwell County, TX	19322	18096	1226	6.3
48071	Chambers County, TX	19836	17944	1892	9.5
48085	Collin County, TX	570623	534617	36006	6.3
48091	Comal County, TX	74950	70311	4639	6.2
48113	Dallas County, TX	1355033	1251192	103841	7.7
48121	Denton County, TX	503962	471296	32666	6.5
48139	Ellis County, TX	93578	87937	5641	6
48157	Fort Bend County, TX	394948	364410	30538	7.7
48167	Galveston County, TX	164608	150218	14390	8.7
48187	Guadalupe County, TX	80610	75677	4933	6.1
48201	Harris County, TX	2292759	2088449	204310	8.9
48209	Hays County, TX	121304	113639	7665	6.3
48221	Hood County, TX	27578	25745	1833	6.6
48231	Hunt County, TX	43506	40659	2847	6.5
48251	Johnson County, TX	82931	77541	5390	6.5
48257	Kaufman County, TX	67263	62886	4377	6.5
48259	Kendall County, TX	22123	21007	1116	5
48291	Liberty County, TX	33582	30011	3571	10.6
48325	Medina County, TX	21461	20110	1351	6.3
48339	Montgomery County, TX	284994	263501	21493	7.5
48367	Parker County, TX	68141	64129	4012	5.9
48397	Rockwall County, TX	53209	50009	3200	6
48425	Somervell County, TX	4328	4048	280	6.5
48439	Tarrant County, TX	1082822	1003269	79553	7.3
48453	Travis County, TX	741012	694433	46579	6.3
48473	Waller County, TX	23804	21958	1846	7.8
48491	Williamson County, TX	318447	299801	18646	5.9
48493	Wilson County, TX	24473	23077	1396	5.7
48497	Wise County, TX	32140	30041	2099	6.5
49035	Salt Lake County, UT	642357	609766	32591	5.1
49045	Tooele County, UT	35084	33417	1667	4.8
51007	Amelia County, VA	6202	5845	357	5.8
51013	Arlington County, VA	151080	144307	6773	4.5
51033	Caroline County, VA	15004	13995	1009	6.7
51036	Charles City County, VA	3610	3375	235	6.5
51041	Chesterfield County, VA	186087	175116	10971	5.9
51043	Clarke County, VA	7498	7157	341	4.5
51047	Culpeper County, VA	24511	23297	1214	5
51053	Dinwiddie County, VA	13439	12578	861	6.4
51059	Fairfax County, VA	628397	591882	36515	5.8
51061	Fauquier County, VA	36812	35091	1721	4.7
51073	Gloucester County, VA	19249	18204	1045	5.4
51075	Goochland County, VA	11142	10600	542	4.9
51085	Hanover County, VA	57934	55136	2798	4.8
51087	Henrico County, VA	180321	168617	11704	6.5
51093	Isle of Wight County, VA	19092	18115	977	5.1
51095	James City County, VA	36558	34031	2527	6.9
51101	King William County, VA	9067	8576	491	5.4
51107	Loudoun County, VA	223194	211258	11936	5.3
51115	Mathews County, VA	4052	3852	200	4.9
51127	New Kent County, VA	12503	11930	573	4.6
51145	Powhatan County, VA	13976	13299	677	4.8
51149	Prince George County, VA	14897	13928	969	6.5
51153	Prince William County, VA	245929	229901	16028	6.5
51157	Rappahannock County, VA	3688	3521	167	4.5
51177	Spotsylvania County, VA	67201	63166	4035	6
51179	Stafford County, VA	72341	68242	4099	5.7
51183	Sussex County, VA	3771	3450	321	8.5
51187	Warren County, VA	20258	19077	1181	5.8
51199	York County, VA	32390	30587	1803	5.6
51510	Alexandria city, VA	100168	94157	6011	6
51550	Chesapeake city, VA	122036	114556	7480	6.1
51570	Colonial Heights city, VA	8480	7877	603	7.1
51600	Fairfax city, VA	13038	12304	734	5.6
51610	Falls Church city, VA	8284	7970	314	3.8
51630	Fredericksburg city, VA	14020	13017	1003	7.2
51650	Hampton city, VA	64604	59090	5514	8.5
51670	Hopewell city, VA	9811	8758	1053	10.7
51683	Manassas city, VA	21684	20278	1406	6.5
51685	Manassas Park city, VA	9483	8835	648	6.8
51700	Newport News city, VA	89715	81929	7786	8.7
51710	Norfolk city, VA	111825	102074	9751	8.7
51730	Petersburg city, VA	13459	11582	1877	13.9
51735	Poquoson city, VA	6249	5988	261	4.2
51740	Portsmouth city, VA	44701	40428	4273	9.6
51760	Richmond city, VA	119962	109370	10592	8.8
51800	Suffolk city, VA	44546	41643	2903	6.5
51810	Virginia Beach city, VA	230322	215991	14331	6.2
51830	Williamsburg city, VA	6705	6153	552	8.2
53011	Clark County, WA	242578	221896	20682	8.5
53033	King County, WA	1286608	1190168	96440	7.5
53053	Pierce County, WA	450196	406822	43374	9.6
53059	Skamania County, WA	5515	5006	509	9.2
53061	Snohomish County, WA	441156	403863	37293	8.5
54037	Jefferson County, WV	30084	28298	1786	5.9
55059	Kenosha County, WI	88499	82200	6299	7.1
55079	Milwaukee County, WI	463420	425483	37937	8.2
55089	Ozaukee County, WI	47963	45366	2597	5.4
55093	Pierce County, WI	24779	23054	1725	7
55109	St. Croix County, WI	49739	46223	3516	7.1
55131	Washington County, WI	75700	71445	4255	5.6
55133	Waukesha County, WI	220498	208246	12252	5.6
1001	Autauga County, AL	25838	24576	1262	4.9
1003	Baldwin County, AL	96763	91338	5425	5.6
1015	Calhoun County, AL	46240	42980	3260	7.1
1033	Colbert County, AL	23558	22008	1550	6.6
1051	Elmore County, AL	36620	34843	1777	4.9
1055	Etowah County, AL	40724	37598	3126	7.7
1061	Geneva County, AL	10835	10391	444	4.1
1065	Hale County, AL	6075	5503	572	9.4
1067	Henry County, AL	6814	6487	327	4.8
1069	Houston County, AL	46358	43861	2497	5.4
1077	Lauderdale County, AL	41931	39610	2321	5.5
1079	Lawrence County, AL	14363	13660	703	4.9
1081	Lee County, AL	75564	71629	3935	5.2
1083	Limestone County, AL	44624	42724	1900	4.3
1085	Lowndes County, AL	3661	3173	488	13.3
1089	Madison County, AL	187247	178579	8668	4.6
1097	Mobile County, AL	190882	175761	15121	7.9
1101	Montgomery County, AL	107103	98735	8368	7.8
1103	Morgan County, AL	58899	56265	2634	4.5
1107	Pickens County, AL	7660	7161	499	6.5
1113	Russell County, AL	23500	22290	1210	5.1
1125	Tuscaloosa County, AL	102222	95473	6749	6.6
2020	Anchorage Borough/municipality, AK	148392	137421	10971	7.4
2090	Fairbanks North Star Borough, AK	44679	41838	2841	6.4
2170	Matanuska-Susitna Borough, AK	47848	43858	3990	8.3
4003	Cochise County, AZ	51995	48368	3627	7
4005	Coconino County, AZ	75280	67985	7295	9.7
4015	Mohave County, AZ	88743	79889	8854	10
4019	Pima County, AZ	495991	457683	38308	7.7
4025	Yavapai County, AZ	106985	98978	8007	7.5
4027	Yuma County, AZ	98120	81310	16810	17.1
5007	Benton County, AR	140015	133784	6231	4.5
5025	Cleveland County, AR	3203	3008	195	6.1
5031	Craighead County, AR	55775	52803	2972	5.3
5033	Crawford County, AR	26436	24998	1438	5.4
5045	Faulkner County, AR	61682	58321	3361	5.4
5051	Garland County, AR	41347	38052	3295	8
5053	Grant County, AR	8222	7796	426	5.2
5069	Jefferson County, AR	27398	25194	2204	8
5079	Lincoln County, AR	3834	3605	229	6
5081	Little River County, AR	5385	5038	347	6.4
5085	Lonoke County, AR	33550	31692	1858	5.5
5087	Madison County, AR	7413	7126	287	3.9
5091	Miller County, AR	19379	18047	1332	6.9
5105	Perry County, AR	4188	3956	232	5.5
5111	Poinsett County, AR	9919	9374	545	5.5
5119	Pulaski County, AR	188928	174884	14044	7.4
5125	Saline County, AR	58181	55241	2940	5.1
5131	Sebastian County, AR	56158	52803	3355	6
5143	Washington County, AR	126141	120346	5795	4.6
6007	Butte County, CA	92604	84095	8509	9.2
6019	Fresno County, CA	445518	395258	50260	11.3
6025	Imperial County, CA	69602	53949	15653	22.5
6029	Kern County, CA	383769	335707	48062	12.5
6031	Kings County, CA	56416	49883	6533	11.6
6039	Madera County, CA	61738	55089	6649	10.8
6047	Merced County, CA	114736	100755	13981	12.2
6053	Monterey County, CA	213471	190389	23082	10.8
6055	Napa County, CA	68867	62853	6014	8.7
6077	San Joaquin County, CA	331828	294454	37374	11.3
6079	San Luis Obispo County, CA	132690	122495	10195	7.7
6083	Santa Barbara County, CA	217510	200175	17335	8
6087	Santa Cruz County, CA	133646	120932	12714	9.5
6089	Shasta County, CA	72827	66484	6343	8.7
6095	Solano County, CA	202812	183607	19205	9.5
6097	Sonoma County, CA	245091	225791	19300	7.9
6099	Stanislaus County, CA	240641	214885	25756	10.7
6101	Sutter County, CA	45467	40472	4995	11
6107	Tulare County, CA	199151	172852	26299	13.2
6111	Ventura County, CA	408867	373903	34964	8.6
6115	Yuba County, CA	30042	26879	3163	10.5
8013	Boulder County, CO	192879	180992	11887	6.2
8041	El Paso County, CO	344120	319084	25036	7.3
8069	Larimer County, CO	203683	190842	12841	6.3
8077	Mesa County, CO	75551	69917	5634	7.5
8101	Pueblo County, CO	77355	71037	6318	8.2
8119	Teller County, CO	12984	12016	968	7.5
8123	Weld County, CO	166666	155042	11624	7
9001	Fairfield County, CT	466208	429164	37044	7.9
9009	New Haven County, CT	457171	420669	36502	8
9011	New London County, CT	131992	119313	12679	9.6
9015	Windham County, CT	62218	57369	4849	7.8
10001	Kent County, DE	79715	72843	6872	8.6
10005	Sussex County, DE	106004	98014	7990	7.5
12001	Alachua County, FL	134931	127696	7235	5.4
12005	Bay County, FL	82763	77746	5017	6.1
12009	Brevard County, FL	281591	262867	18724	6.6
12015	Charlotte County, FL	71182	65968	5214	7.3
12017	Citrus County, FL	46500	42582	3918	8.4
12021	Collier County, FL	177497	165287	12210	6.9
12033	Escambia County, FL	144779	135108	9671	6.7
12035	Flagler County, FL	46636	43083	3553	7.6
12039	Gadsden County, FL	18421	17176	1245	6.8
12041	Gilchrist County, FL	7028	6683	345	4.9
12045	Gulf County, FL	5022	4724	298	5.9
12055	Highlands County, FL	34641	31967	2674	7.7
12061	Indian River County, FL	64233	59482	4751	7.4
12065	Jefferson County, FL	5347	5049	298	5.6
12071	Lee County, FL	345417	320161	25256	7.3
12073	Leon County, FL	150626	141883	8743	5.8
12081	Manatee County, FL	176496	164571	11925	6.8
12083	Marion County, FL	138469	128709	9760	7
12085	Martin County, FL	72180	67796	4384	6.1
12091	Okaloosa County, FL	96010	90729	5281	5.5
12105	Polk County, FL	316626	287979	28647	9
12111	St. Lucie County, FL	145363	134060	11303	7.8
12113	Santa Rosa County, FL	82647	78348	4299	5.2
12115	Sarasota County, FL	184464	171875	12589	6.8
12119	Sumter County, FL	32225	29691	2534	7.9
12127	Volusia County, FL	249560	230585	18975	7.6
12129	Wakulla County, FL	14885	14216	669	4.5
12131	Walton County, FL	31957	30070	1887	5.9
13007	Baker County, GA	1145	1076	69	6
13021	Bibb County, GA	67421	62371	5050	7.5
13025	Brantley County, GA	6995	6618	377	5.4
13027	Brooks County, GA	6842	6488	354	5.2
13029	Bryan County, GA	18718	17732	986	5.3
13033	Burke County, GA	9026	8379	647	7.2
13047	Catoosa County, GA	32611	31194	1417	4.3
13051	Chatham County, GA	140631	129918	10713	7.6
13053	Chattahoochee County, GA	1988	1864	124	6.2
13059	Clarke County, GA	58206	54453	3753	6.4
13073	Columbia County, GA	74411	71266	3145	4.2
13079	Crawford County, GA	5488	5211	277	5
13083	Dade County, GA	7860	7538	322	4.1
13095	Dougherty County, GA	37712	34469	3243	8.6
13101	Echols County, GA	1899	1825	74	3.9
13103	Effingham County, GA	31400	29827	1573	5
13115	Floyd County, GA	43234	40522	2712	6.3
13127	Glynn County, GA	38215	35610	2605	6.8
13139	Hall County, GA	101949	97133	4816	4.7
13145	Harris County, GA	16527	15763	764	4.6
13153	Houston County, GA	70418	66769	3649	5.2
13169	Jones County, GA	13346	12737	609	4.6
13173	Lanier County, GA	3723	3529	194	5.2
13177	Lee County, GA	14763	14081	682	4.6
13179	Liberty County, GA	25741	24140	1601	6.2
13181	Lincoln County, GA	3497	3307	190	5.4
13183	Long County, GA	8139	7782	357	4.4
13185	Lowndes County, GA	51599	48484	3115	6
13189	McDuffie County, GA	8695	8016	679	7.8
13191	McIntosh County, GA	5949	5609	340	5.7
13195	Madison County, GA	12972	12302	670	5.2
13197	Marion County, GA	3192	3029	163	5.1
13207	Monroe County, GA	12700	12050	650	5.1
13213	Murray County, GA	15350	14191	1159	7.6
13215	Muscogee County, GA	77258	71209	6049	7.8
13219	Oconee County, GA	19208	18487	721	3.8
13221	Oglethorpe County, GA	6791	6464	327	4.8
13225	Peach County, GA	11814	11084	730	6.2
13235	Pulaski County, GA	3976	3797	179	4.5
13245	Richmond County, GA	85112	78649	6463	7.6
13273	Terrell County, GA	3497	3235	262	7.5
13289	Twiggs County, GA	2790	2583	207	7.4
13295	Walker County, GA	30601	29106	1495	4.9
13313	Whitfield County, GA	43275	40137	3138	7.3
13321	Worth County, GA	8844	8369	475	5.4
15003	Honolulu County/city, HI	440915	396136	44779	10.2
15009	Maui County, HI	82820	68056	14764	17.8
16001	Ada County, ID	257677	243784	13893	5.4
16005	Bannock County, ID	42560	40495	2065	4.9
16015	Boise County, ID	3609	3321	288	8
16019	Bonneville County, ID	58136	55789	2347	4
16023	Butte County, ID	1393	1343	50	3.6
16027	Canyon County, ID	105981	99763	6218	5.9
16041	Franklin County, ID	7060	6807	253	3.6
16045	Gem County, ID	8422	7924	498	5.9
16051	Jefferson County, ID	14142	13659	483	3.4
16055	Kootenai County, ID	81286	75654	5632	6.9
16069	Nez Perce County, ID	20793	19780	1013	4.9
16073	Owyhee County, ID	5493	5166	327	6
17003	Alexander County, IL	1918	1730	188	9.8
17007	Boone County, IL	25580	22720	2860	11.2
17019	Champaign County, IL	108725	101732	6993	6.4
17039	De Witt County, IL	7120	6656	464	6.5
17053	Ford County, IL	6236	5834	402	6.4
17073	Henry County, IL	23925	22061	1864	7.8
17077	Jackson County, IL	27251	25146	2105	7.7
17091	Kankakee County, IL	53934	49164	4770	8.8
17113	McLean County, IL	85103	79341	5762	6.8
17115	Macon County, IL	47177	42512	4665	9.9
17123	Marshall County, IL	5085	4710	375	7.4
17129	Menard County, IL	6101	5710	391	6.4
17131	Mercer County, IL	7689	7072	617	8
17143	Peoria County, IL	83684	75016	8668	10.4
17147	Piatt County, IL	8462	8009	453	5.4
17161	Rock Island County, IL	68915	62443	6472	9.4
17167	Sangamon County, IL	96869	88916	7953	8.2
17175	Stark County, IL	2373	2200	173	7.3
17179	Tazewell County, IL	61977	56948	5029	8.1
17183	Vermilion County, IL	32542	29671	2871	8.8
17199	Williamson County, IL	31533	28794	2739	8.7
17201	Winnebago County, IL	135759	120253	15506	11.4
17203	Woodford County, IL	18012	16917	1095	6.1
18003	Allen County, IN	184986	170783	14203	7.7
18005	Bartholomew County, IN	43802	40975	2827	6.5
18007	Benton County, IN	4268	4047	221	5.2
18015	Carroll County, IN	9659	9076	583	6
18021	Clay County, IN	11450	10689	761	6.6
18035	Delaware County, IN	52466	48633	3833	7.3
18039	Elkhart County, IN	110494	102155	8339	7.5
18067	Howard County, IN	36931	32921	4010	10.9
18091	LaPorte County, IN	47444	42924	4520	9.5
18105	Monroe County, IN	68155	64390	3765	5.5
18119	Owen County, IN	9015	8447	568	6.3
18129	Posey County, IN	12834	12202	632	4.9
18141	St. Joseph County, IN	133385	122197	11188	8.4
18153	Sullivan County, IN	7903	7352	551	7
18157	Tippecanoe County, IN	94147	88211	5936	6.3
18163	Vanderburgh County, IN	91573	85014	6559	7.2
18165	Vermillion County, IN	6590	6094	496	7.5
18167	Vigo County, IN	45814	42198	3616	7.9
18173	Warrick County, IN	31654	29930	1724	5.4
18179	Wells County, IN	14006	13211	795	5.7
18183	Whitley County, IN	17155	16139	1016	5.9
19011	Benton County, IA	12924	12272	652	5
19013	Black Hawk County, IA	67318	63173	4145	6.2
19017	Bremer County, IA	13500	12967	533	3.9
19049	Dallas County, IA	49406	47621	1785	3.6
19061	Dubuque County, IA	54877	51666	3211	5.9
19075	Grundy County, IA	6273	5999	274	4.4
19077	Guthrie County, IA	5409	5140	269	5
19085	Harrison County, IA	7060	6776	284	4
19103	Johnson County, IA	84088	80056	4032	4.8
19105	Jones County, IA	10253	9669	584	5.7
19113	Linn County, IA	118853	111300	7553	6.4
19121	Madison County, IA	8347	7868	479	5.7
19129	Mills County, IA	7150	6869	281	3.9
19149	Plymouth County, IA	14284	13770	514	3.6
19153	Polk County, IA	264807	248931	15876	6
19155	Pottawattamie County, IA	47249	44771	2478	5.2
19163	Scott County, IA	86403	80541	5862	6.8
19169	Story County, IA	56458	54422	2036	3.6
19181	Warren County, IA	27577	26321	1256	4.6
19183	Washington County, IA	11490	11021	469	4.1
19193	Woodbury County, IA	54467	51606	2861	5.3
20015	Butler County, KS	32533	30403	2130	6.5
20043	Doniphan County, KS	4153	3965	188	4.5
20045	Douglas County, KS	64225	60337	3888	6.1
20079	Harvey County, KS	16930	16030	900	5.3
20085	Jackson County, KS	7213	6820	393	5.4
20087	Jefferson County, KS	10207	9708	499	4.9
20095	Kingman County, KS	3343	3169	174	5.2
20139	Osage County, KS	8009	7600	409	5.1
20149	Pottawatomie County, KS	11981	11461	520	4.3
20161	Riley County, KS	34049	32361	1688	5
20173	Sedgwick County, KS	257217	234769	22448	8.7
20177	Shawnee County, KS	91343	85910	5433	5.9
20191	Sumner County, KS	11017	10126	891	8.1
20197	Wabaunsee County, KS	3677	3522	155	4.2
21003	Allen County, KY	8732	8256	476	5.5
21017	Bourbon County, KY	9577	9016	561	5.9
21019	Boyd County, KY	17551	16086	1465	8.3
21031	Butler County, KY	4961	4619	342	6.9
21047	Christian County, KY	24587	22662	1925	7.8
21049	Clark County, KY	17006	15891	1115	6.6
21059	Daviess County, KY	45710	42911	2799	6.1
21061	Edmonson County, KY	4599	4247	352	7.7
21067	Fayette County, KY	172284	162405	9879	5.7
21089	Greenup County, KY	13238	12064	1174	8.9
21091	Hancock County, KY	3808	3575	233	6.1
21093	Hardin County, KY	47581	44196	3385	7.1
21101	Henderson County, KY	20921	19643	1278	6.1
21113	Jessamine County, KY	26160	24689	1471	5.6
21123	Larue County, KY	5838	5417	421	7.2
21149	McLean County, KY	4023	3796	227	5.6
21163	Meade County, KY	11749	10913	836	7.1
21209	Scott County, KY	29378	27523	1855	6.3
21221	Trigg County, KY	6030	5611	419	6.9
21227	Warren County, KY	63256	59108	4148	6.6
21239	Woodford County, KY	14929	14182	747	5
22001	Acadia Parish, LA	23463	21758	1705	7.3
22005	Ascension Parish, LA	64136	59807	4329	6.7
22015	Bossier Parish, LA	56750	53138	3612	6.4
22017	Caddo Parish, LA	102615	93384	9231	9
22019	Calcasieu Parish, LA	98110	89236	8874	9
22023	Cameron Parish, LA	3520	3318	202	5.7
22031	De Soto Parish, LA	10623	9852	771	7.3
22033	East Baton Rouge Parish, LA	228974	211197	17777	7.8
22037	East Feliciana Parish, LA	7762	7244	518	6.7
22043	Grant Parish, LA	8168	7635	533	6.5
22045	Iberia Parish, LA	27907	25284	2623	9.4
22047	Iberville Parish, LA	13975	12601	1374	9.8
22055	Lafayette Parish, LA	113811	105742	8069	7.1
22057	Lafourche Parish, LA	41475	38786	2689	6.5
22063	Livingston Parish, LA	68265	63874	4391	6.4
22073	Ouachita Parish, LA	69823	64663	5160	7.4
22077	Pointe Coupee Parish, LA	9638	8888	750	7.8
22079	Rapides Parish, LA	55157	51714	3443	6.2
22091	St. Helena Parish, LA	4299	3805	494	11.5
22099	St. Martin Parish, LA	22057	20268	1789	8.1
22105	Tangipahoa Parish, LA	56389	51012	5377	9.5
22109	Terrebonne Parish, LA	46224	42663	3561	7.7
22111	Union Parish, LA	8970	8330	640	7.1
22113	Vermilion Parish, LA	23746	21993	1753	7.4
22119	Webster Parish, LA	14088	12977	1111	7.9
22121	West Baton Rouge Parish, LA	13502	12530	972	7.2
22125	West Feliciana Parish, LA	5276	4989	287	5.4
23001	Androscoggin County, ME	54470	51486	2984	5.5
23005	Cumberland County, ME	160863	152368	8495	5.3
23019	Penobscot County, ME	74717	70710	4007	5.4
23023	Sagadahoc County, ME	19259	18348	911	4.7
23031	York County, ME	110884	104935	5949	5.4
24001	Allegany County, MD	30835	28437	2398	7.8
24037	St. Mary's County, MD	57281	54513	2768	4.8
24039	Somerset County, MD	8720	7996	724	8.3
24043	Washington County, MD	72703	67799	4904	6.7
24045	Wicomico County, MD	49403	45722	3681	7.5
24047	Worcester County, MD	25069	22270	2799	11.2
25001	Barnstable County, MA	108128	97073	11055	10.2
25003	Berkshire County, MA	61645	56016	5629	9.1
25013	Hampden County, MA	220259	197372	22887	10.4
25015	Hampshire County, MA	85661	79477	6184	7.2
25027	Worcester County, MA	432005	394081	37924	8.8
26015	Barry County, MI	31350	29033	2317	7.4
26017	Bay County, MI	49573	45009	4564	9.2
26021	Berrien County, MI	72765	66476	6289	8.6
26025	Calhoun County, MI	61838	55844	5994	9.7
26027	Cass County, MI	24470	22327	2143	8.8
26037	Clinton County, MI	40089	37463	2626	6.6
26045	Eaton County, MI	56112	51803	4309	7.7
26049	Genesee County, MI	179933	159859	20074	11.2
26065	Ingham County, MI	146960	136006	10954	7.5
26075	Jackson County, MI	74075	67407	6668	9
26077	Kalamazoo County, MI	131618	122130	9488	7.2
26081	Kent County, MI	357123	330032	27091	7.6
26111	Midland County, MI	39706	36742	2964	7.5
26115	Monroe County, MI	74397	67764	6633	8.9
26117	Montcalm County, MI	28133	25578	2555	9.1
26121	Muskegon County, MI	77540	68681	8859	11.4
26139	Ottawa County, MI	158936	148077	10859	6.8
26145	Saginaw County, MI	84807	76397	8410	9.9
26159	Van Buren County, MI	34835	31932	2903	8.3
26161	Washtenaw County, MI	193659	181294	12365	6.4
27009	Benton County, MN	22062	20597	1465	6.6
27013	Blue Earth County, MN	40363	38182	2181	5.4
27017	Carlton County, MN	17715	16435	1280	7.2
27027	Clay County, MN	36323	34762	1561	4.3
27039	Dodge County, MN	12042	11395	647	5.4
27045	Fillmore County, MN	11654	11069	585	5
27055	Houston County, MN	10311	9869	442	4.3
27103	Nicollet County, MN	20752	19755	997	4.8
27109	Olmsted County, MN	91030	86093	4937	5.4
27119	Polk County, MN	16403	15485	918	5.6
27137	St. Louis County, MN	101110	93824	7286	7.2
27145	Stearns County, MN	90863	85650	5213	5.7
27157	Wabasha County, MN	12439	11780	659	5.3
28029	Copiah County, MS	10759	9871	888	8.3
28035	Forrest County, MS	32983	30328	2655	8
28045	Hancock County, MS	18692	17106	1586	8.5
28047	Harrison County, MS	87410	79148	8262	9.5
28049	Hinds County, MS	104391	94636	9755	9.3
28059	Jackson County, MS	58435	52868	5567	9.5
28073	Lamar County, MS	30544	28709	1835	6
28089	Madison County, MS	52376	48927	3449	6.6
28111	Perry County, MS	4245	3876	369	8.7
28121	Rankin County, MS	74377	70428	3949	5.3
28127	Simpson County, MS	10445	9730	715	6.8
28163	Yazoo County, MS	9877	8917	960	9.7
29003	Andrew County, MO	9749	9355	394	4
29017	Bollinger County, MO	5409	5105	304	5.6
29019	Boone County, MO	96381	92311	4070	4.2
29021	Buchanan County, MO	43827	41667	2160	4.9
29027	Callaway County, MO	21366	20410	956	4.5
29031	Cape Girardeau County, MO	40333	38254	2079	5.2
29043	Christian County, MO	45241	43008	2233	4.9
29051	Cole County, MO	39151	37432	1719	4.4
29059	Dallas County, MO	7034	6620	414	5.9
29063	DeKalb County, MO	4791	4585	206	4.3
29077	Greene County, MO	150766	142704	8062	5.3
29097	Jasper County, MO	56154	52968	3186	5.7
29119	McDonald County, MO	10578	10052	526	5
29135	Moniteau County, MO	7368	7055	313	4.2
29145	Newton County, MO	26732	25179	1553	5.8
29151	Osage County, MO	7078	6824	254	3.6
29167	Polk County, MO	14331	13661	670	4.7
29225	Webster County, MO	17322	16396	926	5.3
30009	Carbon County, MT	5567	5233	334	6
30013	Cascade County, MT	37797	35561	2236	5.9
30037	Golden Valley County, MT	363	346	17	4.7
30063	Missoula County, MT	64123	60106	4017	6.3
30111	Yellowstone County, MT	83203	78676	4527	5.4
31025	Cass County, NE	13432	12851	581	4.3
31043	Dakota County, NE	10598	10089	509	4.8
31051	Dixon County, NE	2945	2850	95	3.2
31055	Douglas County, NE	300140	284846	15294	5.1
31079	Hall County, NE	32030	30179	1851	5.8
31081	Hamilton County, NE	4760	4585	175	3.7
31093	Howard County, NE	3340	3193	147	4.4
31109	Lancaster County, NE	177006	169507	7499	4.2
31121	Merrick County, NE	4004	3845	159	4
31153	Sarpy County, NE	96776	92833	3943	4.1
31155	Saunders County, NE	11155	10746	409	3.7
31159	Seward County, NE	8852	8489	363	4.1
31177	Washington County, NE	11136	10729	407	3.7
32029	Storey County, NV	2050	1879	171	8.3
32031	Washoe County, NV	254278	234544	19734	7.8
32510	Carson City, NV	26130	23987	2143	8.2
33011	Hillsborough County, NH	240135	223343	16792	7
34001	Atlantic County, NJ	121037	99546	21491	17.8
34009	Cape May County, NJ	45492	39206	6286	13.8
34011	Cumberland County, NJ	66277	59148	7129	10.8
34021	Mercer County, NJ	205405	190150	15255	7.4
34041	Warren County, NJ	55670	50947	4723	8.5
35001	Bernalillo County, NM	330645	303820	26825	8.1
35013	Dona Ana County, NM	97153	89080	8073	8.3
35043	Sandoval County, NM	66325	60627	5698	8.6
35045	San Juan County, NM	50367	45321	5046	10
35049	Santa Fe County, NM	71346	65455	5891	8.3
35057	Torrance County, NM	5365	4854	511	9.5
35061	Valencia County, NM	30167	27681	2486	8.2
36001	Albany County, NY	157326	146027	11299	7.2
36007	Broome County, NY	81897	74798	7099	8.7
36015	Chemung County, NY	35430	32328	3102	8.8
36043	Herkimer County, NY	27477	25227	2250	8.2
36045	Jefferson County, NY	43295	39542	3753	8.7
36053	Madison County, NY	32437	29908	2529	7.8
36065	Oneida County, NY	100648	92473	8175	8.1
36067	Onondaga County, NY	220483	202037	18446	8.4
36075	Oswego County, NY	52209	47549	4660	8.9
36083	Rensselaer County, NY	80795	75155	5640	7
36091	Saratoga County, NY	119009	111029	7980	6.7
36093	Schenectady County, NY	76925	70723	6202	8.1
36095	Schoharie County, NY	14440	13412	1028	7.1
36107	Tioga County, NY	22142	20410	1732	7.8
36109	Tompkins County, NY	47929	44967	2962	6.2
36111	Ulster County, NY	86186	79285	6901	8
36113	Warren County, NY	30901	28308	2593	8.4
36115	Washington County, NY	27302	25348	1954	7.2
37001	Alamance County, NC	80457	74625	5832	7.2
37003	Alexander County, NC	17694	16377	1317	7.4
37019	Brunswick County, NC	52246	47641	4605	8.8
37021	Buncombe County, NC	136480	125114	11366	8.3
37023	Burke County, NC	39888	37019	2869	7.2
37027	Caldwell County, NC	35754	32931	2823	7.9
37035	Catawba County, NC	77852	71632	6220	8
37037	Chatham County, NC	35248	33338	1910	5.4
37049	Craven County, NC	40820	38121	2699	6.6
37051	Cumberland County, NC	126387	114386	12001	9.5
37057	Davidson County, NC	78916	73311	5605	7.1
37059	Davie County, NC	20079	18709	1370	6.8
37063	Durham County, NC	170422	159304	11118	6.5
37065	Edgecombe County, NC	20702	18511	2191	10.6
37067	Forsyth County, NC	184149	170449	13700	7.4
37081	Guilford County, NC	256997	234933	22064	8.6
37087	Haywood County, NC	28663	26503	2160	7.5
37089	Henderson County, NC	52454	48836	3618	6.9
37093	Hoke County, NC	19759	18049	1710	8.7
37103	Jones County, NC	4199	3957	242	5.8
37115	Madison County, NC	9587	8926	661	6.9
37127	Nash County, NC	42129	38590	3539	8.4
37129	New Hanover County, NC	120839	112078	8761	7.3
37133	Onslow County, NC	63899	59276	4623	7.2
37135	Orange County, NC	77808	73636	4172	5.4
37137	Pamlico County, NC	5242	4947	295	5.6
37141	Pender County, NC	28001	26157	1844	6.6
37145	Person County, NC	18098	16766	1332	7.4
37147	Pitt County, NC	87450	81504	5946	6.8
37151	Randolph County, NC	63993	59268	4725	7.4
37157	Rockingham County, NC	38983	35723	3260	8.4
37169	Stokes County, NC	20991	19638	1353	6.4
37191	Wayne County, NC	50708	47430	3278	6.5
37197	Yadkin County, NC	17305	16074	1231	7.1
38015	Burleigh County, ND	50588	48386	2202	4.4
38017	Cass County, ND	104926	100334	4592	4.4
38035	Grand Forks County, ND	36730	35031	1699	4.6
38059	Morton County, ND	16746	15896	850	5.1
38065	Oliver County, ND	882	836	46	5.2
38085	Sioux County, ND	1205	1158	47	3.9
39003	Allen County, OH	48303	44181	4122	8.5
39013	Belmont County, OH	28888	25970	2918	10.1
39019	Carroll County, OH	12883	11747	1136	8.8
39023	Clark County, OH	62945	57829	5116	8.1
39051	Fulton County, OH	21991	20251	1740	7.9
39057	Greene County, OH	82640	77337	5303	6.4
39081	Jefferson County, OH	27496	24721	2775	10.1
39087	Lawrence County, OH	23849	21825	2024	8.5
39095	Lucas County, OH	209345	187666	21679	10.4
39099	Mahoning County, OH	101288	90990	10298	10.2
39109	Miami County, OH	54163	50380	3783	7
39113	Montgomery County, OH	253421	231691	21730	8.6
39133	Portage County, OH	85783	79554	6229	7.3
39139	Richland County, OH	52087	47406	4681	9
39151	Stark County, OH	184149	169291	14858	8.1
39153	Summit County, OH	270407	248140	22267	8.2
39155	Trumbull County, OH	85195	76338	8857	10.4
39173	Wood County, OH	69444	64533	4911	7.1
40031	Comanche County, OK	48267	45028	3239	6.7
40033	Cotton County, OK	2733	2541	192	7
40037	Creek County, OK	31327	29298	2029	6.5
40079	Le Flore County, OK	19186	17848	1338	7
40111	Okmulgee County, OK	15612	14484	1128	7.2
40113	Osage County, OK	20529	19209	1320	6.4
40117	Pawnee County, OK	7317	6842	475	6.5
40131	Rogers County, OK	44897	42291	2606	5.8
40135	Sequoyah County, OK	16555	15431	1124	6.8
40143	Tulsa County, OK	324010	302728	21282	6.6
40145	Wagoner County, OK	38146	35929	2217	5.8
41003	Benton County, OR	46257	43645	2612	5.6
41017	Deschutes County, OR	97975	90211	7764	7.9
41029	Jackson County, OR	105147	96937	8210	7.8
41033	Josephine County, OR	36124	33277	2847	7.9
41039	Lane County, OR	178467	164364	14103	7.9
41043	Linn County, OR	58819	54251	4568	7.8
41047	Marion County, OR	163017	151713	11304	6.9
41053	Polk County, OR	40205	37566	2639	6.6
42001	Adams County, PA	54035	50293	3742	6.9
42011	Berks County, PA	211486	191443	20043	9.5
42013	Blair County, PA	59205	54053	5152	8.7
42021	Cambria County, PA	56235	50872	5363	9.5
42025	Carbon County, PA	31589	28502	3087	9.8
42027	Centre County, PA	76416	71955	4461	5.8
42037	Columbia County, PA	33324	30623	2701	8.1
42041	Cumberland County, PA	130651	121949	8702	6.7
42043	Dauphin County, PA	144428	131661	12767	8.8
42049	Erie County, PA	126749	114331	12418	9.8
42055	Franklin County, PA	77184	71308	5876	7.6
42069	Lackawanna County, PA	103832	93870	9962	9.6
42071	Lancaster County, PA	281736	260618	21118	7.5
42075	Lebanon County, PA	71763	66060	5703	7.9
42077	Lehigh County, PA	191388	173080	18308	9.6
42079	Luzerne County, PA	157274	140183	17091	10.9
42081	Lycoming County, PA	55883	50970	4913	8.8
42085	Mercer County, PA	48048	43397	4651	9.7
42089	Monroe County, PA	81386	71996	9390	11.5
42093	Montour County, PA	9043	8489	554	6.1
42095	Northampton County, PA	158928	144689	14239	9
42099	Perry County, PA	24128	22499	1629	6.8
42131	Wyoming County, PA	13254	12144	1110	8.4
42133	York County, PA	232812	214165	18647	8
45003	Aiken County, SC	75531	71743	3788	5
45007	Anderson County, SC	90877	85475	5402	5.9
45013	Beaufort County, SC	77127	72961	4166	5.4
45015	Berkeley County, SC	104916	99042	5874	5.6
45017	Calhoun County, SC	6572	6173	399	6.1
45019	Charleston County, SC	211939	198552	13387	6.3
45031	Darlington County, SC	30521	28542	1979	6.5
45035	Dorchester County, SC	77693	73174	4519	5.8
45037	Edgefield County, SC	10799	10247	552	5.1
45039	Fairfield County, SC	9637	8877	760	7.9
45041	Florence County, SC	67150	63406	3744	5.6
45045	Greenville County, SC	255984	241371	14613	5.7
45051	Horry County, SC	147697	134956	12741	8.6
45053	Jasper County, SC	12804	12147	657	5.1
45055	Kershaw County, SC	29490	27924	1566	5.3
45059	Laurens County, SC	30197	28122	2075	6.9
45063	Lexington County, SC	150439	143882	6557	4.4
45077	Pickens County, SC	57109	54072	3037	5.3
45079	Richland County, SC	199718	188057	11661	5.8
45081	Saluda County, SC	8698	8328	370	4.3
45083	Spartanburg County, SC	158701	148274	10427	6.6
45085	Sumter County, SC	43534	40587	2947	6.8
45087	Union County, SC	12008	10931	1077	9
46033	Custer County, SD	4077	3834	243	6
46083	Lincoln County, SD	35711	34417	1294	3.6
46087	McCook County, SD	3076	2963	113	3.7
46093	Meade County, SD	13918	13235	683	4.9
46099	Minnehaha County, SD	113168	108033	5135	4.5
46103	Pennington County, SD	57094	54074	3020	5.3
46125	Turner County, SD	4650	4467	183	3.9
46127	Union County, SD	8522	8088	434	5.1
47001	Anderson County, TN	34360	32049	2311	6.7
47009	Blount County, TN	63505	59440	4065	6.4
47011	Bradley County, TN	52651	49151	3500	6.6
47013	Campbell County, TN	14717	13597	1120	7.6
47019	Carter County, TN	23655	22001	1654	7
47023	Chester County, TN	8390	7912	478	5.7
47033	Crockett County, TN	6836	6436	400	5.9
47057	Grainger County, TN	9480	8793	687	7.2
47063	Hamblen County, TN	28020	26027	1993	7.1
47065	Hamilton County, TN	182352	169337	13015	7.1
47073	Hawkins County, TN	23468	21663	1805	7.7
47089	Jefferson County, TN	24697	22853	1844	7.5
47093	Knox County, TN	242643	228282	14361	5.9
47105	Loudon County, TN	23572	22072	1500	6.4
47113	Madison County, TN	49028	45343	3685	7.5
47115	Marion County, TN	12344	11409	935	7.6
47125	Montgomery County, TN	86234	79666	6568	7.6
47129	Morgan County, TN	7654	7153	501	6.5
47139	Polk County, TN	7455	6943	512	6.9
47145	Roane County, TN	23021	21508	1513	6.6
47153	Sequatchie County, TN	6146	5664	482	7.8
47163	Sullivan County, TN	69352	64370	4982	7.2
47171	Unicoi County, TN	7083	6497	586	8.3
47173	Union County, TN	7610	7088	522	6.9
47179	Washington County, TN	59783	55928	3855	6.4
48007	Aransas County, TX	9058	8291	767	8.5
48009	Archer County, TX	3911	3703	208	5.3
48011	Armstrong County, TX	914	875	39	4.3
48027	Bell County, TX	144558	134459	10099	7
48037	Bowie County, TX	38755	35891	2864	7.4
48041	Brazos County, TX	116599	110366	6233	5.3
48051	Burleson County, TX	8180	7661	519	6.3
48059	Callahan County, TX	5979	5654	325	5.4
48061	Cameron County, TX	169074	151855	17219	10.2
48065	Carson County, TX	2930	2808	122	4.2
48077	Clay County, TX	4793	4528	265	5.5
48099	Coryell County, TX	23974	22401	1573	6.6
48107	Crosby County, TX	2389	2265	124	5.2
48135	Ector County, TX	82852	73736	9116	11
48141	El Paso County, TX	364085	333991	30094	8.3
48145	Falls County, TX	6531	6141	390	6
48175	Goliad County, TX	3161	2917	244	7.7
48181	Grayson County, TX	64214	60453	3761	5.9
48183	Gregg County, TX	56565	51883	4682	8.3
48199	Hardin County, TX	25019	22768	2251	9
48215	Hidalgo County, TX	359969	318076	41893	11.6
48229	Hudspeth County, TX	1855	1706	149	8
48235	Irion County, TX	752	707	45	6
48245	Jefferson County, TX	105592	93022	12570	11.9
48253	Jones County, TX	5738	5337	401	7
48281	Lampasas County, TX	9041	8556	485	5.4
48303	Lubbock County, TX	156625	147629	8996	5.7
48305	Lynn County, TX	2740	2591	149	5.4
48309	McLennan County, TX	120347	112937	7410	6.2
48317	Martin County, TX	2546	2391	155	6.1
48329	Midland County, TX	98237	90313	7924	8.1
48351	Newton County, TX	5054	4497	557	11
48355	Nueces County, TX	163920	149232	14688	9
48359	Oldham County, TX	890	855	35	3.9
48361	Orange County, TX	36027	32241	3786	10.5
48375	Potter County, TX	54150	51189	2961	5.5
48381	Randall County, TX	72380	69134	3246	4.5
48395	Robertson County, TX	7345	6875	470	6.4
48401	Rusk County, TX	22127	20508	1619	7.3
48409	San Patricio County, TX	29221	26223	2998	10.3
48423	Smith County, TX	108544	101201	7343	6.8
48441	Taylor County, TX	66148	62540	3608	5.5
48451	Tom Green County, TX	53742	50336	3406	6.3
48459	Upshur County, TX	17448	16103	1345	7.7
48469	Victoria County, TX	41172	37761	3411	8.3
48479	Webb County, TX	116195	106376	9819	8.5
48485	Wichita County, TX	55306	51620	3686	6.7
49003	Box Elder County, UT	26424	25272	1152	4.4
49005	Cache County, UT	65407	63497	1910	2.9
49011	Davis County, UT	175905	168737	7168	4.1
49023	Juab County, UT	5881	5709	172	2.9
49029	Morgan County, UT	5561	5375	186	3.3
49049	Utah County, UT	314022	302248	11774	3.7
49053	Washington County, UT	79208	75007	4201	5.3
49057	Weber County, UT	129907	123697	6210	4.8
50007	Chittenden County, VT	93110	88659	4451	4.8
50011	Franklin County, VT	26329	24946	1383	5.3
50013	Grand Isle County, VT	4003	3766	237	5.9
51003	Albemarle County, VA	55794	52792	3002	5.4
51009	Amherst County, VA	14695	13872	823	5.6
51011	Appomattox County, VA	7046	6636	410	5.8
51015	Augusta County, VA	37046	35344	1702	4.6
51019	Bedford County, VA	37737	35800	1937	5.1
51023	Botetourt County, VA	17140	16363	777	4.5
51029	Buckingham County, VA	6317	5850	467	7.4
51031	Campbell County, VA	25507	24001	1506	5.9
51045	Craig County, VA	2286	2170	116	5.1
51063	Floyd County, VA	8054	7645	409	5.1
51065	Fluvanna County, VA	13723	13001	722	5.3
51067	Franklin County, VA	25985	24563	1422	5.5
51069	Frederick County, VA	48636	46376	2260	4.6
51071	Giles County, VA	7739	7255	484	6.3
51079	Greene County, VA	10198	9664	534	5.2
51121	Montgomery County, VA	48670	46340	2330	4.8
51125	Nelson County, VA	7304	6895	409	5.6
51155	Pulaski County, VA	16092	14824	1268	7.9
51161	Roanoke County, VA	48720	46231	2489	5.1
51165	Rockingham County, VA	41525	39573	1952	4.7
51169	Scott County, VA	8958	8484	474	5.3
51191	Washington County, VA	25953	24457	1496	5.8
51520	Bristol city, VA	7316	6750	566	7.7
51540	Charlottesville city, VA	25424	23785	1639	6.4
51660	Harrisonburg city, VA	24259	22712	1547	6.4
51680	Lynchburg city, VA	36015	33405	2610	7.2
51750	Radford city, VA	8457	7922	535	6.3
51770	Roanoke city, VA	49174	45388	3786	7.7
51775	Salem city, VA	12671	11938	733	5.8
51790	Staunton city, VA	12247	11480	767	6.3
51820	Waynesboro city, VA	10700	10002	698	6.5
51840	Winchester city, VA	14912	14041	871	5.8
53003	Asotin County, WA	10383	9845	538	5.2
53005	Benton County, WA	103143	94682	8461	8.2
53007	Chelan County, WA	44190	40497	3693	8.4
53013	Columbia County, WA	1724	1599	125	7.3
53015	Cowlitz County, WA	48522	43999	4523	9.3
53017	Douglas County, WA	21225	19420	1805	8.5
53021	Franklin County, WA	42497	38664	3833	9
53035	Kitsap County, WA	129092	119140	9952	7.7
53051	Pend Oreille County, WA	4958	4428	530	10.7
53057	Skagit County, WA	62498	56374	6124	9.8
53063	Spokane County, WA	257308	234789	22519	8.8
53065	Stevens County, WA	18545	16799	1746	9.4
53067	Thurston County, WA	144312	132365	11947	8.3
53071	Walla Walla County, WA	30165	28096	2069	6.9
53073	Whatcom County, WA	114716	103992	10724	9.3
53077	Yakima County, WA	130759	118071	12688	9.7
54003	Berkeley County, WV	58337	54709	3628	6.2
54005	Boone County, WV	7469	6685	784	10.5
54009	Brooke County, WV	9901	9012	889	9
54011	Cabell County, WV	41946	38604	3342	8
54015	Clay County, WV	3153	2759	394	12.5
54019	Fayette County, WV	16264	14642	1622	10
54027	Hampshire County, WV	10847	10253	594	5.5
54029	Hancock County, WV	13131	11814	1317	10
54039	Kanawha County, WV	82800	75431	7369	8.9
54043	Lincoln County, WV	7293	6564	729	10
54051	Marshall County, WV	13610	12260	1350	9.9
54057	Mineral County, WV	12249	11323	926	7.6
54061	Monongalia County, WV	54613	51146	3467	6.3
54069	Ohio County, WV	20439	18715	1724	8.4
54077	Preston County, WV	15525	14394	1131	7.3
54079	Putnam County, WV	27080	25075	2005	7.4
54081	Raleigh County, WV	30524	27800	2724	8.9
54099	Wayne County, WV	15838	14510	1328	8.4
54105	Wirt County, WV	2282	2037	245	10.7
54107	Wood County, WV	36445	33221	3224	8.8
55009	Brown County, WI	140454	132013	8441	6
55015	Calumet County, WI	27096	25825	1271	4.7
55017	Chippewa County, WI	32978	30930	2048	6.2
55021	Columbia County, WI	31281	29438	1843	5.9
55025	Dane County, WI	319433	304154	15279	4.8
55031	Douglas County, WI	22886	20786	2100	9.2
55035	Eau Claire County, WI	58299	55064	3235	5.5
55039	Fond du Lac County, WI	56114	52828	3286	5.9
55045	Green County, WI	20555	19570	985	4.8
55049	Iowa County, WI	13502	12678	824	6.1
55061	Kewaunee County, WI	10661	10172	489	4.6
55063	La Crosse County, WI	64982	61467	3515	5.4
55073	Marathon County, WI	72313	68711	3602	5
55083	Oconto County, WI	20241	18962	1279	6.3
55087	Outagamie County, WI	102786	97137	5649	5.5
55101	Racine County, WI	97155	90104	7051	7.3
55105	Rock County, WI	84935	78908	6027	7.1
55117	Sheboygan County, WI	61510	57996	3514	5.7
55139	Winnebago County, WI	91236	86270	4966	5.4
56021	Laramie County, WY	50826	48231	2595	5.1
56025	Natrona County, WY	40710	37529	3181	7.8
1037	Coosa County, AL	4392	4150	242	5.5
1043	Cullman County, AL	38310	36660	1650	4.3
1121	Talladega County, AL	36123	33591	2532	7
4007	Gila County, AZ	21008	19387	1621	7.7
5093	Mississippi County, AR	17264	15705	1559	9
5107	Phillips County, AR	6402	5822	580	9.1
5123	St. Francis County, AR	8028	7394	634	7.9
6057	Nevada County, CA	46489	42787	3702	8
8087	Morgan County, CO	16125	15254	871	5.4
9005	Litchfield County, CT	102109	95102	7007	6.9
12023	Columbia County, FL	29566	27840	1726	5.8
12049	Hardee County, FL	8466	7915	551	6.5
12051	Hendry County, FL	15589	14332	1257	8.1
12087	Monroe County, FL	44755	41223	3532	7.9
12093	Okeechobee County, FL	17138	16217	921	5.4
12107	Putnam County, FL	26470	24378	2092	7.9
13039	Camden County, GA	21089	20092	997	4.7
13129	Gordon County, GA	28062	26531	1531	5.5
13157	Jackson County, GA	39648	37910	1738	4.4
13233	Polk County, GA	18292	17200	1092	6
13285	Troup County, GA	37448	34727	2721	7.3
13293	Upson County, GA	11328	10578	750	6.6
17099	LaSalle County, IL	52663	47699	4964	9.4
17103	Lee County, IL	17154	15982	1172	6.8
17105	Livingston County, IL	15909	14840	1069	6.7
17121	Marion County, IL	17114	15523	1591	9.3
17141	Ogle County, IL	24161	22199	1962	8.1
18023	Clinton County, IN	16825	15886	939	5.6
18031	Decatur County, IN	14928	13813	1115	7.5
18041	Fayette County, IN	8543	7700	843	9.9
18053	Grant County, IN	31534	29538	1996	6.3
18065	Henry County, IN	21866	20424	1442	6.6
18077	Jefferson County, IN	14965	13858	1107	7.4
18107	Montgomery County, IN	18538	17580	958	5.2
20005	Atchison County, KS	6856	6385	471	6.9
20059	Franklin County, KS	14228	13459	769	5.4
21005	Anderson County, KY	11752	11034	718	6.1
21073	Franklin County, KY	24745	23117	1628	6.6
21161	Mason County, KY	6909	6358	551	8
21179	Nelson County, KY	22755	21185	1570	6.9
22117	Washington Parish, LA	16660	15299	1361	8.2
24041	Talbot County, MD	17776	16707	1069	6
26155	Shiawassee County, MI	32859	29839	3020	9.2
27035	Crow Wing County, MN	32291	29954	2337	7.2
27049	Goodhue County, MN	26659	25099	1560	5.9
27085	McLeod County, MN	19236	18145	1091	5.7
27131	Rice County, MN	37193	35242	1951	5.2
28071	Lafayette County, MS	26570	24955	1615	6.1
28109	Pearl River County, MS	23200	21502	1698	7.3
29101	Johnson County, MO	23108	21796	1312	5.7
29159	Pettis County, MO	20626	19218	1408	6.8
29187	St. Francois County, MO	26414	24562	1852	7
29195	Saline County, MO	10597	10118	479	4.5
32005	Douglas County, NV	22465	20531	1934	8.6
32023	Nye County, NV	17596	15889	1707	9.7
33001	Belknap County, NH	31128	28971	2157	6.9
33013	Merrimack County, NH	82622	77822	4800	5.8
36009	Cattaraugus County, NY	33142	30022	3120	9.4
36013	Chautauqua County, NY	52729	48027	4702	8.9
36021	Columbia County, NY	30309	28431	1878	6.2
36037	Genesee County, NY	28962	26833	2129	7.4
36099	Seneca County, NY	15214	13970	1244	8.2
36101	Steuben County, NY	42022	38592	3430	8.2
37029	Camden County, NC	4574	4323	251	5.5
37045	Cleveland County, NC	48435	44634	3801	7.8
37055	Dare County, NC	19548	17636	1912	9.8
37077	Granville County, NC	29566	27832	1734	5.9
37085	Harnett County, NC	52873	48916	3957	7.5
37139	Pasquotank County, NC	16517	15306	1211	7.3
37143	Perquimans County, NC	4845	4521	324	6.7
37167	Stanly County, NC	29630	27757	1873	6.3
37181	Vance County, NC	17119	15388	1731	10.1
37193	Wilkes County, NC	28483	26544	1939	6.8
37195	Wilson County, NC	34442	31380	3062	8.9
39005	Ashland County, OH	26492	24783	1709	6.5
39007	Ashtabula County, OH	43807	40162	3645	8.3
39009	Athens County, OH	27207	25214	1993	7.3
39021	Champaign County, OH	19995	18574	1421	7.1
39027	Clinton County, OH	17778	16299	1479	8.3
39029	Columbiana County, OH	47380	42928	4452	9.4
39031	Coshocton County, OH	14138	12880	1258	8.9
39033	Crawford County, OH	18698	16949	1749	9.4
39043	Erie County, OH	36560	32734	3826	10.5
39047	Fayette County, OH	14023	12991	1032	7.4
39077	Huron County, OH	27701	25075	2626	9.5
39083	Knox County, OH	31244	29315	1929	6.2
39091	Logan County, OH	22803	20911	1892	8.3
39101	Marion County, OH	28331	26171	2160	7.6
39119	Muskingum County, OH	40389	37257	3132	7.8
39141	Ross County, OH	35399	32560	2839	8
39169	Wayne County, OH	60568	57008	3560	5.9
40119	Payne County, OK	37979	35983	1996	5.3
40125	Pottawatomie County, OK	32454	30479	1975	6.1
40137	Stephens County, OK	18635	17198	1437	7.7
41007	Clatsop County, OR	19084	17261	1823	9.6
41027	Hood River County, OR	14154	13269	885	6.3
41065	Wasco County, OR	13430	12477	953	7.1
42063	Indiana County, PA	37666	34238	3428	9.1
42073	Lawrence County, PA	40232	36080	4152	10.3
42111	Somerset County, PA	32661	29567	3094	9.5
42121	Venango County, PA	22047	20079	1968	8.9
47003	Bedford County, TN	20956	19293	1663	7.9
47031	Coffee County, TN	25612	23620	1992	7.8
47087	Jackson County, TN	4740	4363	377	8
47099	Lawrence County, TN	19092	17603	1489	7.8
47117	Marshall County, TN	15374	13978	1396	9.1
47141	Putnam County, TN	34970	32661	2309	6.6
47177	Warren County, TN	17076	15564	1512	8.9
48097	Cooke County, TX	19370	18001	1369	7.1
48143	Erath County, TX	20013	18863	1150	5.7
48213	Henderson County, TX	37123	34746	2377	6.4
48223	Hopkins County, TX	17484	16589	895	5.1
48265	Kerr County, TX	21636	20365	1271	5.9
48321	Matagorda County, TX	16529	14792	1737	10.5
48349	Navarro County, TX	23245	21803	1442	6.2
48363	Palo Pinto County, TX	13267	12339	928	7
48463	Uvalde County, TX	11333	10605	728	6.4
48471	Walker County, TX	24085	22343	1742	7.2
48477	Washington County, TX	15329	14463	866	5.6
48481	Wharton County, TX	21376	19928	1448	6.8
49043	Summit County, UT	24314	22554	1760	7.2
49051	Wasatch County, UT	16269	15223	1046	6.4
53029	Island County, WA	36303	33305	2998	8.3
53037	Kittitas County, WA	22085	20087	1998	9
53041	Lewis County, WA	35103	31819	3284	9.4
53045	Mason County, WA	25517	23009	2508	9.8
55027	Dodge County, WI	47213	44729	2484	5.3
55033	Dunn County, WI	23606	22303	1303	5.5
55055	Jefferson County, WI	45213	42762	2451	5.4
55127	Walworth County, WI	56322	52906	3416	6.1
1029	Cleburne County, AL	5737	5475	262	4.6
1105	Perry County, AL	3437	3064	373	10.9
1111	Randolph County, AL	9414	8967	447	4.7
1133	Winston County, AL	10017	9542	475	4.7
4012	La Paz County, AZ	8979	8343	636	7.1
5037	Cross County, AR	7291	6847	444	6.1
6003	Alpine County, CA	517	459	58	11.2
6005	Amador County, CA	14424	13107	1317	9.1
6011	Colusa County, CA	10499	8824	1675	16
8065	Lake County, CO	4853	4454	399	8.2
12007	Bradford County, FL	10791	10150	641	5.9
12043	Glades County, FL	5192	4903	289	5.6
12125	Union County, FL	4552	4336	216	4.7
13049	Charlton County, GA	4842	4660	182	3.8
13111	Fannin County, GA	11066	10542	524	4.7
13123	Gilmer County, GA	11963	11401	562	4.7
13133	Greene County, GA	7080	6663	417	5.9
13187	Lumpkin County, GA	16463	15671	792	4.8
13237	Putnam County, GA	8210	7671	539	6.6
13263	Talbot County, GA	2757	2568	189	6.9
17051	Fayette County, IL	9700	8977	723	7.5
17061	Greene County, IL	5904	5522	382	6.5
17075	Iroquois County, IL	13582	12738	844	6.2
17135	Montgomery County, IL	11453	10455	998	8.7
17157	Randolph County, IL	13764	12786	978	7.1
17189	Washington County, IL	9576	9072	504	5.3
18025	Crawford County, IN	4849	4506	343	7.1
18047	Franklin County, IN	11270	10608	662	5.9
18117	Orange County, IN	8499	7558	941	11.1
18121	Parke County, IN	6844	6468	376	5.5
18131	Pulaski County, IN	6395	6007	388	6.1
18137	Ripley County, IN	13875	12991	884	6.4
18139	Rush County, IN	8738	8191	547	6.3
18149	Starke County, IN	9730	8947	783	8
18155	Switzerland County, IN	4782	4394	388	8.1
18159	Tipton County, IN	9019	8465	554	6.1
20003	Anderson County, KS	4250	4075	175	4.1
20011	Bourbon County, KS	6747	6367	380	5.6
21041	Carroll County, KY	5289	4978	311	5.9
21097	Harrison County, KY	8712	8177	535	6.1
21187	Owen County, KY	5082	4757	325	6.4
21201	Robertson County, KY	788	740	48	6.1
21213	Simpson County, KY	8596	7979	617	7.2
22007	Assumption Parish, LA	8822	7929	893	10.1
24011	Caroline County, MD	17436	16469	967	5.5
24029	Kent County, MD	9664	9026	638	6.6
26151	Sanilac County, MI	19541	17641	1900	9.7
26157	Tuscola County, MI	23739	21344	2395	10.1
27001	Aitkin County, MN	7487	6884	603	8.1
27065	Kanabec County, MN	9109	8380	729	8
27093	Meeker County, MN	13251	12567	684	5.2
27097	Morrison County, MN	17936	16724	1212	6.8
27115	Pine County, MN	14581	13326	1255	8.6
27129	Renville County, MN	8598	8122	476	5.5
27161	Waseca County, MN	9081	8515	566	6.2
28107	Panola County, MS	12739	11488	1251	9.8
28119	Quitman County, MS	2355	2099	256	10.9
28139	Tippah County, MS	9394	8739	655	7
28145	Union County, MS	14156	13150	1006	7.1
29033	Carroll County, MO	4680	4397	283	6
29055	Crawford County, MO	10852	10157	695	6.4
29061	Daviess County, MO	4123	3948	175	4.2
29073	Gasconade County, MO	7606	7168	438	5.8
29083	Henry County, MO	9673	9106	567	5.9
29117	Livingston County, MO	7389	7107	282	3.8
29139	Montgomery County, MO	5750	5464	286	5
29163	Pike County, MO	7549	7137	412	5.5
29185	St. Clair County, MO	3764	3534	230	6.1
29186	Ste. Genevieve County, MO	9239	8782	457	4.9
29221	Washington County, MO	10143	9415	728	7.2
32017	Lincoln County, NV	2013	1910	103	5.1
33003	Carroll County, NH	23134	21358	1776	7.7
36105	Sullivan County, NY	35758	32601	3157	8.8
36121	Wyoming County, NY	17793	16457	1336	7.5
37007	Anson County, NC	10422	9617	805	7.7
37041	Chowan County, NC	5476	5140	336	6.1
37091	Hertford County, NC	9016	8389	627	7
37163	Sampson County, NC	28498	26837	1661	5.8
37185	Warren County, NC	6560	5919	641	9.8
39001	Adams County, OH	10981	9968	1013	9.2
39071	Highland County, OH	17504	15988	1516	8.7
39115	Morgan County, OH	6697	6077	620	9.3
39135	Preble County, OH	21175	19757	1418	6.7
39163	Vinton County, OH	5655	5138	517	9.1
40011	Blaine County, OK	4421	4160	261	5.9
40015	Caddo County, OK	12049	11341	708	5.9
40049	Garvin County, OK	12841	12045	796	6.2
40073	Kingfisher County, OK	8808	8428	380	4.3
40103	Noble County, OK	5527	5303	224	4.1
40107	Okfuskee County, OK	4457	4161	296	6.6
41057	Tillamook County, OR	11710	10762	948	8.1
42031	Clarion County, PA	16871	15482	1389	8.2
42059	Greene County, PA	15981	14425	1556	9.7
42127	Wayne County, PA	22103	20076	2027	9.2
45025	Chesterfield County, SC	21834	20511	1323	6.1
47041	DeKalb County, TN	7651	6957	694	9.1
47055	Giles County, TN	14634	13408	1226	8.4
47069	Hardeman County, TN	9318	8552	766	8.2
47075	Haywood County, TN	7777	7084	693	8.9
47083	Houston County, TN	3234	2970	264	8.2
47085	Humphreys County, TN	8670	8111	559	6.4
47097	Lauderdale County, TN	9737	8846	891	9.2
47101	Lewis County, TN	5325	4924	401	7.5
47135	Perry County, TN	2989	2705	284	9.5
48031	Blanco County, TX	6573	6322	251	3.8
48035	Bosque County, TX	8330	7876	454	5.5
48053	Burnet County, TX	23686	22567	1119	4.7
48089	Colorado County, TX	9693	9155	538	5.6
48119	Delta County, TX	2401	2268	133	5.5
48147	Fannin County, TX	16772	15984	788	4.7
48149	Fayette County, TX	11793	11238	555	4.7
48163	Frio County, TX	9537	8996	541	5.7
48177	Gonzales County, TX	9561	9046	515	5.4
48185	Grimes County, TX	11082	10191	891	8
48217	Hill County, TX	16294	15271	1023	6.3
48237	Jack County, TX	3393	3155	238	7
48255	Karnes County, TX	7007	6567	440	6.3
48287	Lee County, TX	9158	8706	452	4.9
48331	Milam County, TX	9750	9054	696	7.1
48337	Montague County, TX	9081	8479	602	6.6
48373	Polk County, TX	18357	16755	1602	8.7
48379	Rains County, TX	6027	5744	283	4.7
48407	San Jacinto County, TX	11650	10710	940	8.1
48467	Van Zandt County, TX	26130	24529	1601	6.1
51025	Brunswick County, VA	5951	5477	474	8
51049	Cumberland County, VA	4569	4289	280	6.1
51057	Essex County, VA	5488	5106	382	7
51081	Greensville County, VA	4239	3952	287	6.8
51097	King and Queen County, VA	3867	3669	198	5.1
51099	King George County, VA	13819	13202	617	4.5
51109	Louisa County, VA	19944	18909	1035	5.2
51113	Madison County, VA	7306	7026	280	3.8
51119	Middlesex County, VA	5134	4872	262	5.1
51131	Northampton County, VA	5409	4988	421	7.8
51135	Nottoway County, VA	7150	6784	366	5.1
51137	Orange County, VA	17061	16102	959	5.6
51139	Page County, VA	12021	11147	874	7.3
51147	Prince Edward County, VA	10067	9415	652	6.5
51171	Shenandoah County, VA	22129	20963	1166	5.3
51175	Southampton County, VA	9063	8614	449	5
51181	Surry County, VA	3603	3396	207	5.7
51193	Westmoreland County, VA	9473	8915	558	5.9
51595	Emporia city, VA	2344	2083	261	11.1
51620	Franklin city, VA	3640	3332	308	8.5
53039	Klickitat County, WA	9810	9002	808	8.2
53069	Wahkiakum County, WA	1409	1285	124	8.8
55013	Burnett County, WI	7157	6509	648	9.1
55091	Pepin County, WI	4080	3839	241	5.9
55095	Polk County, WI	24408	22658	1750	7.2
1017	Chambers County, AL	15865	14787	1078	6.8
1031	Coffee County, AL	21502	20558	944	4.4
1045	Dale County, AL	20710	19701	1009	4.9
1047	Dallas County, AL	14619	13049	1570	10.7
1071	Jackson County, AL	22840	21637	1203	5.3
1095	Marshall County, AL	44275	42430	1845	4.2
1109	Pike County, AL	15636	14864	772	4.9
4017	Navajo County, AZ	40419	36322	4097	10.1
4023	Santa Cruz County, AZ	19429	17209	2220	11.4
5055	Greene County, AR	19450	18292	1158	6
5059	Hot Spring County, AR	14100	13285	815	5.8
5145	White County, AR	33972	31855	2117	6.2
5149	Yell County, AR	7997	7592	405	5.1
6033	Lake County, CA	28267	25567	2700	9.6
6045	Mendocino County, CA	37015	33723	3292	8.9
6103	Tehama County, CA	25579	23317	2262	8.8
6109	Tuolumne County, CA	20038	17954	2084	10.4
8043	Fremont County, CO	15393	14203	1190	7.7
8067	La Plata County, CO	31366	29219	2147	6.8
8085	Montrose County, CO	21639	20208	1431	6.6
12027	DeSoto County, FL	14356	13615	741	5.2
13009	Baldwin County, GA	17607	16388	1219	6.9
13031	Bulloch County, GA	37020	34601	2419	6.5
13055	Chattooga County, GA	9767	8947	820	8.4
13071	Colquitt County, GA	21917	20938	979	4.5
13081	Crisp County, GA	9515	8767	748	7.9
13087	Decatur County, GA	11304	10763	541	4.8
13137	Habersham County, GA	18691	17675	1016	5.4
13229	Pierce County, GA	8500	8115	385	4.5
13249	Schley County, GA	2145	2052	93	4.3
13261	Sumter County, GA	12525	11601	924	7.4
13275	Thomas County, GA	16930	15874	1056	6.2
13305	Wayne County, GA	11540	10894	646	5.6
16011	Bingham County, ID	23776	22860	916	3.9
16017	Bonner County, ID	21119	19527	1592	7.5
16039	Elmore County, ID	11897	11321	576	4.8
16043	Fremont County, ID	7894	7606	288	3.6
16057	Latah County, ID	19756	18818	938	4.7
16065	Madison County, ID	22306	21700	606	2.7
16075	Payette County, ID	11941	11309	632	5.3
17021	Christian County, IL	13598	12497	1101	8.1
17057	Fulton County, IL	14615	13364	1251	8.6
17095	Knox County, IL	21110	19285	1825	8.6
17107	Logan County, IL	12122	11305	817	6.7
17137	Morgan County, IL	15873	14784	1089	6.9
17155	Putnam County, IL	2942	2698	244	8.3
17177	Stephenson County, IL	21106	19560	1546	7.3
17195	Whiteside County, IL	27673	25461	2212	8
18001	Adams County, IN	16771	15836	935	5.6
18017	Cass County, IN	17551	16360	1191	6.8
18033	DeKalb County, IN	22116	20591	1525	6.9
18069	Huntington County, IN	18032	16846	1186	6.6
18071	Jackson County, IN	23066	21416	1650	7.2
18079	Jennings County, IN	13582	12549	1033	7.6
18085	Kosciusko County, IN	41420	38879	2541	6.1
18093	Lawrence County, IN	20687	19252	1435	6.9
18099	Marshall County, IN	22646	21190	1456	6.4
18103	Miami County, IN	15009	13772	1237	8.2
18113	Noble County, IN	22709	20804	1905	8.4
18125	Pike County, IN	6144	5782	362	5.9
18169	Wabash County, IN	14499	13615	884	6.1
19015	Boone County, IA	14468	13880	588	4.1
19045	Clinton County, IA	21989	20509	1480	6.7
19099	Jasper County, IA	19177	18157	1020	5.3
19127	Marshall County, IA	17514	16278	1236	7.1
19139	Muscatine County, IA	21053	19796	1257	6
20035	Cowley County, KS	16807	15709	1098	6.5
20037	Crawford County, KS	18947	17901	1046	5.5
20061	Geary County, KS	11652	10852	800	6.9
20111	Lyon County, KS	16598	15808	790	4.8
20155	Reno County, KS	29626	27997	1629	5.5
21009	Barren County, KY	18195	16829	1366	7.5
21011	Bath County, KY	4561	4182	379	8.3
21151	Madison County, KY	45855	43091	2764	6
21173	Montgomery County, KY	11355	10450	905	8
22011	Beauregard Parish, LA	14405	13444	961	6.7
22061	Lincoln Parish, LA	20927	19613	1314	6.3
22067	Morehouse Parish, LA	10096	9102	994	9.8
22069	Natchitoches Parish, LA	16129	15028	1101	6.8
22097	St. Landry Parish, LA	32418	29611	2807	8.7
22101	St. Mary Parish, LA	19516	17722	1794	9.2
23011	Kennebec County, ME	61376	58332	3044	5
24019	Dorchester County, MD	15990	14923	1067	6.7
25011	Franklin County, MA	39501	36565	2936	7.4
26005	Allegan County, MI	62253	57710	4543	7.3
26023	Branch County, MI	19739	18148	1591	8.1
26057	Gratiot County, MI	17927	16497	1430	8
26059	Hillsdale County, MI	20088	18261	1827	9.1
26067	Ionia County, MI	30414	28000	2414	7.9
26073	Isabella County, MI	33122	30354	2768	8.4
26091	Lenawee County, MI	45597	41492	4105	9
26107	Mecosta County, MI	18415	16740	1675	9.1
26149	St. Joseph County, MI	29052	26418	2634	9.1
27015	Brown County, MN	14270	13539	731	5.1
27041	Douglas County, MN	21271	20252	1019	4.8
27067	Kandiyohi County, MN	24696	23512	1184	4.8
27099	Mower County, MN	20929	19889	1040	5
27111	Otter Tail County, MN	31488	29790	1698	5.4
27167	Wilkin County, MN	3458	3316	142	4.1
27169	Winona County, MN	28193	26800	1393	4.9
28005	Amite County, MS	4460	4084	376	8.4
28021	Claiborne County, MS	3105	2657	448	14.4
28067	Jones County, MS	25621	23813	1808	7.1
28085	Lincoln County, MS	14553	13484	1069	7.3
28113	Pike County, MS	14674	13366	1308	8.9
28149	Warren County, MS	20215	18448	1767	8.7
29007	Audrain County, MO	10339	9728	611	5.9
29105	Laclede County, MO	16731	15343	1388	8.3
29147	Nodaway County, MO	10722	10232	490	4.6
29175	Randolph County, MO	10210	9605	605	5.9
29201	Scott County, MO	19872	18814	1058	5.3
29209	Stone County, MO	13120	11836	1284	9.8
29213	Taney County, MO	26259	22866	3393	12.9
31001	Adams County, NE	16839	16169	670	4
31019	Buffalo County, NE	27519	26430	1089	4
31053	Dodge County, NE	20100	19391	709	3.5
31067	Gage County, NE	10872	10438	434	4
32001	Churchill County, NV	11074	10451	623	5.6
32019	Lyon County, NV	23045	21077	1968	8.5
33005	Cheshire County, NH	39851	37407	2444	6.1
35006	Cibola County, NM	9120	8278	842	9.2
35028	Los Alamos County, NM	9974	9603	371	3.7
35029	Luna County, NM	10372	8727	1645	15.9
35035	Otero County, NM	25696	23556	2140	8.3
35039	Rio Arriba County, NM	16816	15455	1361	8.1
35047	San Miguel County, NM	10516	9646	870	8.3
36011	Cayuga County, NY	35417	32618	2799	7.9
36023	Cortland County, NY	22453	20668	1785	7.9
36035	Fulton County, NY	22509	20569	1940	8.6
36057	Montgomery County, NY	22032	20098	1934	8.8
36089	St. Lawrence County, NY	42854	39353	3501	8.2
37013	Beaufort County, NC	19387	18159	1228	6.3
37031	Carteret County, NC	31320	29373	1947	6.2
37083	Halifax County, NC	20081	18237	1844	9.2
37099	Jackson County, NC	19785	18286	1499	7.6
37105	Lee County, NC	25965	23894	2071	8
37107	Lenoir County, NC	27600	25892	1708	6.2
37111	McDowell County, NC	20555	19123	1432	7
37125	Moore County, NC	40734	37796	2938	7.2
37155	Robeson County, NC	49951	45531	4420	8.8
37161	Rutherford County, NC	24588	22307	2281	9.3
37165	Scotland County, NC	11407	10034	1373	12
37171	Surry County, NC	32640	30404	2236	6.9
37175	Transylvania County, NC	14146	13278	868	6.1
38077	Richland County, ND	8580	8248	332	3.9
39011	Auglaize County, OH	24698	22997	1701	6.9
39037	Darke County, OH	25836	24093	1743	6.7
39039	Defiance County, OH	17908	16437	1471	8.2
39053	Gallia County, OH	12229	11253	976	8
39059	Guernsey County, OH	18296	16708	1588	8.7
39063	Hancock County, OH	41803	38943	2860	6.8
39123	Ottawa County, OH	20729	18843	1886	9.1
39143	Sandusky County, OH	30192	27737	2455	8.1
39145	Scioto County, OH	29354	26808	2546	8.7
39147	Seneca County, OH	27352	25132	2220	8.1
39149	Shelby County, OH	24162	22295	1867	7.7
39157	Tuscarawas County, OH	44612	41240	3372	7.6
39161	Van Wert County, OH	14811	13773	1038	7
39167	Washington County, OH	26944	24633	2311	8.6
40013	Bryan County, OK	22473	21330	1143	5.1
40021	Cherokee County, OK	19669	18598	1071	5.4
40101	Muskogee County, OK	29421	27643	1778	6
40115	Ottawa County, OK	14399	13581	818	5.7
40147	Washington County, OK	22360	21049	1311	5.9
41013	Crook County, OR	10328	9417	911	8.8
41019	Douglas County, OR	47415	43757	3658	7.7
41045	Malheur County, OR	12617	11963	654	5.2
41049	Morrow County, OR	5717	5422	295	5.2
41059	Umatilla County, OR	37001	34496	2505	6.8
42015	Bradford County, PA	28099	25992	2107	7.5
42033	Clearfield County, PA	35582	32307	3275	9.2
42035	Clinton County, PA	17701	16159	1542	8.7
42039	Crawford County, PA	38254	34856	3398	8.9
42061	Huntingdon County, PA	19763	17700	2063	10.4
42087	Mifflin County, PA	21146	19379	1767	8.4
42097	Northumberland County, PA	42240	38281	3959	9.4
42107	Schuylkill County, PA	66129	60022	6107	9.2
42119	Union County, PA	19314	18009	1305	6.8
42123	Warren County, PA	18668	17163	1505	8.1
45001	Abbeville County, SC	10124	9454	670	6.6
45021	Cherokee County, SC	25302	23263	2039	8.1
45043	Georgetown County, SC	26175	24210	1965	7.5
45047	Greenwood County, SC	31628	29616	2012	6.4
45069	Marlboro County, SC	9294	8383	911	9.8
45071	Newberry County, SC	19201	18280	921	4.8
45073	Oconee County, SC	35056	33180	1876	5.4
45075	Orangeburg County, SC	34945	31790	3155	9
46027	Clay County, SD	7157	6834	323	4.5
46061	Hanson County, SD	1750	1659	91	5.2
46081	Lawrence County, SD	13567	12726	841	6.2
47029	Cocke County, TN	14713	13205	1508	10.2
47035	Cumberland County, TN	22733	20988	1745	7.7
47051	Franklin County, TN	19782	18213	1569	7.9
47059	Greene County, TN	28769	26372	2397	8.3
47107	McMinn County, TN	23393	21579	1814	7.8
47143	Rhea County, TN	13011	11732	1279	9.8
47155	Sevier County, TN	53721	48540	5181	9.6
48003	Andrews County, TX	9220	8466	754	8.2
48025	Bee County, TX	9906	8932	974	9.8
48057	Calhoun County, TX	11995	11296	699	5.8
48073	Cherokee County, TX	21303	19624	1679	7.9
48117	Deaf Smith County, TX	8567	8257	310	3.6
48173	Glasscock County, TX	797	768	29	3.6
48179	Gray County, TX	7783	7150	633	8.1
48189	Hale County, TX	11826	11027	799	6.8
48203	Harrison County, TX	29133	26843	2290	7.9
48219	Hockley County, TX	10671	9826	845	7.9
48227	Howard County, TX	13502	12409	1093	8.1
48233	Hutchinson County, TX	8539	7926	613	7.2
48249	Jim Wells County, TX	16127	14033	2094	13
48273	Kleberg County, TX	13402	12277	1125	8.4
48353	Nolan County, TX	7151	6774	377	5.3
48427	Starr County, TX	26319	21760	4559	17.3
48487	Wilbarger County, TX	4949	4659	290	5.9
48489	Willacy County, TX	6597	5807	790	12
48505	Zapata County, TX	4600	4029	571	12.4
49021	Iron County, UT	24994	23879	1115	4.5
50003	Bennington County, VT	17132	16004	1128	6.6
50021	Rutland County, VT	29383	27352	2031	6.9
50023	Washington County, VT	33025	31429	1596	4.8
51089	Henry County, VA	23810	21994	1816	7.6
51143	Pittsylvania County, VA	29943	28010	1933	6.5
51590	Danville city, VA	19250	17379	1871	9.7
51690	Martinsville city, VA	5670	5051	619	10.9
53001	Adams County, WA	9261	8584	677	7.3
53027	Grays Harbor County, WA	29055	25653	3402	11.7
53075	Whitman County, WA	21984	20683	1301	5.9
54045	Logan County, WV	11181	9820	1361	12.2
54049	Marion County, WV	25363	23168	2195	8.7
54053	Mason County, WV	10356	9479	877	8.5
54055	Mercer County, WV	20957	18989	1968	9.4
54091	Taylor County, WV	7816	7240	576	7.4
55043	Grant County, WI	27311	25875	1436	5.3
55069	Lincoln County, WI	14677	13805	872	5.9
55071	Manitowoc County, WI	40419	37911	2508	6.2
55075	Marinette County, WI	19504	17981	1523	7.8
55078	Menominee County, WI	1649	1396	253	15.3
55097	Portage County, WI	37491	35475	2016	5.4
55111	Sauk County, WI	34355	31770	2585	7.5
55115	Shawano County, WI	20791	19463	1328	6.4
55141	Wood County, WI	34538	32233	2305	6.7
56001	Albany County, WY	19726	18946	780	4
1005	Barbour County, AL	8587	7982	605	7
1011	Bullock County, AL	4818	4553	265	5.5
1013	Butler County, AL	9056	8255	801	8.8
1019	Cherokee County, AL	11513	10983	530	4.6
1039	Covington County, AL	15172	14434	738	4.9
1041	Crenshaw County, AL	6253	5896	357	5.7
1049	DeKalb County, AL	30736	29348	1388	4.5
1053	Escambia County, AL	14453	13589	864	6
1057	Fayette County, AL	6562	6236	326	5
1059	Franklin County, AL	14424	13786	638	4.4
1063	Greene County, AL	3015	2687	328	10.9
1087	Macon County, AL	8063	7290	773	9.6
1119	Sumter County, AL	4745	4414	331	7
1123	Tallapoosa County, AL	17864	16625	1239	6.9
4001	Apache County, AZ	20195	17614	2581	12.8
5001	Arkansas County, AR	9422	9044	378	4
5015	Carroll County, AR	12709	11989	720	5.7
5023	Cleburne County, AR	9157	8460	697	7.6
5029	Conway County, AR	8392	7888	504	6
5039	Dallas County, AR	2832	2681	151	5.3
5041	Desha County, AR	5321	4948	373	7
5043	Drew County, AR	7730	7196	534	6.9
5047	Franklin County, AR	7478	7059	419	5.6
5057	Hempstead County, AR	9593	9094	499	5.2
5061	Howard County, AR	5533	5257	276	5
5067	Jackson County, AR	5863	5444	419	7.1
5075	Lawrence County, AR	6786	6369	417	6.1
5083	Logan County, AR	8656	8081	575	6.6
5127	Scott County, AR	4354	4159	195	4.5
5133	Sevier County, AR	5524	5202	322	5.8
5141	Van Buren County, AR	5758	5349	409	7.1
6009	Calaveras County, CA	21207	19588	1619	7.6
6021	Glenn County, CA	12568	11455	1113	8.9
6049	Modoc County, CA	3170	2900	270	8.5
6093	Siskiyou County, CA	16923	15286	1637	9.7
6105	Trinity County, CA	4515	4155	360	8
8029	Delta County, CO	14340	13400	940	6.6
8055	Huerfano County, CO	2644	2395	249	9.4
8083	Montezuma County, CO	12703	11795	908	7.1
8089	Otero County, CO	8228	7720	508	6.2
12013	Calhoun County, FL	4754	4508	246	5.2
12037	Franklin County, FL	4681	4429	252	5.4
12047	Hamilton County, FL	4199	3880	319	7.6
12059	Holmes County, FL	6850	6472	378	5.5
12063	Jackson County, FL	17231	16298	933	5.4
12075	Levy County, FL	16569	15568	1001	6
12079	Madison County, FL	7599	7140	459	6
12121	Suwannee County, FL	17758	16758	1000	5.6
12123	Taylor County, FL	8169	7659	510	6.2
12133	Washington County, FL	9478	8929	549	5.8
13011	Banks County, GA	9778	9359	419	4.3
13019	Berrien County, GA	7405	6977	428	5.8
13023	Bleckley County, GA	4501	4209	292	6.5
13075	Cook County, GA	8102	7718	384	4.7
13091	Dodge County, GA	6957	6542	415	6
13093	Dooly County, GA	4925	4547	378	7.7
13099	Early County, GA	4424	4168	256	5.8
13105	Elbert County, GA	7969	7418	551	6.9
13109	Evans County, GA	5002	4745	257	5.1
13119	Franklin County, GA	9892	9308	584	5.9
13131	Grady County, GA	10601	10139	462	4.4
13147	Hart County, GA	11373	10757	616	5.4
13165	Jenkins County, GA	3178	2978	200	6.3
13193	Macon County, GA	4614	4303	311	6.7
13205	Mitchell County, GA	8289	7751	538	6.5
13243	Randolph County, GA	2490	2343	147	5.9
13251	Screven County, GA	5047	4635	412	8.2
13253	Seminole County, GA	3093	2938	155	5
13259	Stewart County, GA	2509	2367	142	5.7
13267	Tattnall County, GA	9651	9237	414	4.3
13287	Turner County, GA	3264	3028	236	7.2
13307	Webster County, GA	1008	951	57	5.7
13311	White County, GA	16197	15491	706	4.4
13315	Wilcox County, GA	2737	2581	156	5.7
13317	Wilkes County, GA	3712	3464	248	6.7
16029	Caribou County, ID	4110	3962	148	3.6
16035	Clearwater County, ID	3021	2772	249	8.2
16049	Idaho County, ID	6709	6260	449	6.7
16077	Power County, ID	4132	3964	168	4.1
16085	Valley County, ID	5643	5195	448	7.9
16087	Washington County, ID	4752	4496	256	5.4
17017	Cass County, IL	5813	5426	387	6.7
17023	Clark County, IL	7331	6752	579	7.9
17041	Douglas County, IL	10036	9474	562	5.6
17045	Edgar County, IL	8899	8311	588	6.6
17055	Franklin County, IL	15985	14299	1686	10.5
17085	Jo Daviess County, IL	10426	9560	866	8.3
17087	Johnson County, IL	4098	3732	366	8.9
17125	Mason County, IL	5916	5440	476	8
17139	Moultrie County, IL	7292	6925	367	5
17145	Perry County, IL	8093	7330	763	9.4
17165	Saline County, IL	9534	8605	929	9.7
17173	Shelby County, IL	10256	9596	660	6.4
17181	Union County, IL	7192	6610	582	8.1
17187	Warren County, IL	8085	7587	498	6.2
17193	White County, IL	6137	5671	466	7.6
18009	Blackford County, IN	4826	4442	384	8
18045	Fountain County, IN	7752	7247	505	6.5
18051	Gibson County, IN	19537	18332	1205	6.2
18055	Greene County, IN	13264	12442	822	6.2
18075	Jay County, IN	8801	8224	577	6.6
18087	LaGrange County, IN	19178	17945	1233	6.4
18123	Perry County, IN	9089	8495	594	6.5
18135	Randolph County, IN	11191	10456	735	6.6
18181	White County, IN	13254	12586	668	5
19005	Allamakee County, IA	7034	6675	359	5.1
19019	Buchanan County, IA	11095	10588	507	4.6
19029	Cass County, IA	6752	6489	263	3.9
19031	Cedar County, IA	10368	9915	453	4.4
19035	Cherokee County, IA	6192	5958	234	3.8
19037	Chickasaw County, IA	6271	5976	295	4.7
19039	Clarke County, IA	4761	4504	257	5.4
19055	Delaware County, IA	10381	9969	412	4
19065	Fayette County, IA	10299	9735	564	5.5
19071	Fremont County, IA	3712	3597	115	3.1
19073	Greene County, IA	5333	5107	226	4.2
19079	Hamilton County, IA	6779	6480	299	4.4
19083	Hardin County, IA	7767	7407	360	4.6
19087	Henry County, IA	9564	9060	504	5.3
19089	Howard County, IA	5070	4844	226	4.5
19095	Iowa County, IA	10009	9565	444	4.4
19097	Jackson County, IA	10622	9975	647	6.1
19117	Lucas County, IA	4644	4475	169	3.6
19119	Lyon County, IA	6823	6652	171	2.5
19125	Marion County, IA	17933	17182	751	4.2
19133	Monona County, IA	4347	4139	208	4.8
19137	Montgomery County, IA	4847	4621	226	4.7
19145	Page County, IA	6186	5878	308	5
19165	Shelby County, IA	6318	6090	228	3.6
19171	Tama County, IA	9225	8753	472	5.1
19175	Union County, IA	6147	5786	361	5.9
20013	Brown County, KS	5153	4923	230	4.5
20021	Cherokee County, KS	10016	9494	522	5.2
20027	Clay County, KS	3807	3636	171	4.5
20031	Coffey County, KS	3901	3697	204	5.2
20073	Greenwood County, KS	3129	2965	164	5.2
20115	Marion County, KS	5913	5668	245	4.1
20117	Marshall County, KS	5504	5331	173	3.1
20127	Morris County, KS	3079	2958	121	3.9
20131	Nemaha County, KS	5596	5430	166	3
21043	Carter County, KY	9586	8663	923	9.6
21065	Estill County, KY	5153	4766	387	7.5
21079	Garrard County, KY	7528	7055	473	6.3
21085	Grayson County, KY	10704	9873	831	7.8
21141	Logan County, KY	12136	11466	670	5.5
21167	Mercer County, KY	9907	9187	720	7.3
21177	Muhlenberg County, KY	10004	9138	866	8.7
21183	Ohio County, KY	9289	8620	669	7.2
21197	Powell County, KY	5070	4698	372	7.3
21225	Union County, KY	5939	5562	377	6.3
21233	Webster County, KY	5424	5077	347	6.4
22003	Allen Parish, LA	8460	7682	778	9.2
22009	Avoyelles Parish, LA	15048	13846	1202	8
22013	Bienville Parish, LA	5417	4999	418	7.7
22027	Claiborne Parish, LA	5495	5133	362	6.6
22039	Evangeline Parish, LA	11933	11013	920	7.7
22049	Jackson Parish, LA	6738	6378	360	5.3
22053	Jefferson Davis Parish, LA	12827	11863	964	7.5
22059	LaSalle Parish, LA	6912	6584	328	4.7
22083	Richland Parish, LA	8139	7518	621	7.6
22085	Sabine Parish, LA	9236	8730	506	5.5
22127	Winn Parish, LA	4709	4377	332	7.1
23007	Franklin County, ME	13795	12956	839	6.1
23009	Hancock County, ME	27648	26059	1589	5.7
23017	Oxford County, ME	25815	24097	1718	6.7
23021	Piscataquis County, ME	7151	6760	391	5.5
23025	Somerset County, ME	22024	20563	1461	6.6
23027	Waldo County, ME	19961	18933	1028	5.2
26035	Clare County, MI	11798	10440	1358	11.5
26051	Gladwin County, MI	9876	8915	961	9.7
26123	Newaygo County, MI	23340	21319	2021	8.7
27005	Becker County, MN	18817	17644	1173	6.2
27043	Faribault County, MN	7087	6651	436	6.2
27061	Itasca County, MN	22100	20240	1860	8.4
27071	Koochiching County, MN	5796	5367	429	7.4
27075	Lake County, MN	5273	4889	384	7.3
27113	Pennington County, MN	8663	8130	533	6.2
27117	Pipestone County, MN	4670	4481	189	4
27121	Pope County, MN	6512	6222	290	4.5
27133	Rock County, MN	5808	5632	176	3
27153	Todd County, MN	13786	13057	729	5.3
27165	Watonwan County, MN	6664	6356	308	4.6
28007	Attala County, MS	6977	6397	580	8.3
28031	Covington County, MS	8379	7803	576	6.9
28039	George County, MS	9013	8195	818	9.1
28051	Holmes County, MS	5530	4634	896	16.2
28079	Leake County, MS	8058	7424	634	7.9
28091	Marion County, MS	10178	9459	719	7.1
28123	Scott County, MS	12681	11942	739	5.8
28131	Stone County, MS	7012	6483	529	7.5
28141	Tishomingo County, MS	8399	7849	550	6.5
29009	Barry County, MO	15692	14673	1019	6.5
29011	Barton County, MO	5187	4931	256	4.9
29039	Cedar County, MO	5734	5478	256	4.5
29053	Cooper County, MO	7219	6818	401	5.6
29067	Douglas County, MO	5167	4768	399	7.7
29089	Howard County, MO	4822	4622	200	4.1
29109	Lawrence County, MO	17672	16599	1073	6.1
29123	Madison County, MO	5475	5117	358	6.5
29131	Miller County, MO	12308	11547	761	6.2
29133	Mississippi County, MO	5701	5396	305	5.3
29157	Perry County, MO	9826	9264	562	5.7
29207	Stoddard County, MO	13238	12450	788	6
29229	Wright County, MO	7369	6851	518	7
30003	Big Horn County, MT	4874	4517	357	7.3
30047	Lake County, MT	13659	12815	844	6.2
30077	Powell County, MT	2956	2819	137	4.6
30081	Ravalli County, MT	20684	19493	1191	5.8
31023	Butler County, NE	4589	4433	156	3.4
31131	Otoe County, NE	8369	8072	297	3.5
31151	Saline County, NE	7310	7047	263	3.6
31179	Wayne County, NE	5610	5454	156	2.8
31185	York County, NE	7265	7021	244	3.4
35051	Sierra County, NM	4127	3749	378	9.2
35053	Socorro County, NM	6248	5805	443	7.1
36017	Chenango County, NY	21760	20261	1499	6.9
36025	Delaware County, NY	18614	17274	1340	7.2
36031	Essex County, NY	16518	15174	1344	8.1
36039	Greene County, NY	20281	18598	1683	8.3
36049	Lewis County, NY	11389	10515	874	7.7
37017	Bladen County, NC	14485	13439	1046	7.2
37047	Columbus County, NC	22501	20662	1839	8.2
37061	Duplin County, NC	24812	23420	1392	5.6
37117	Martin County, NC	8884	8267	617	6.9
37123	Montgomery County, NC	11328	10573	755	6.7
38003	Barnes County, ND	5165	4965	200	3.9
38099	Walsh County, ND	5135	4902	233	4.5
39065	Hardin County, OH	14080	12942	1138	8.1
39067	Harrison County, OH	6754	6133	621	9.2
39069	Henry County, OH	13093	12028	1065	8.1
39105	Meigs County, OH	9072	8200	872	9.6
39125	Paulding County, OH	8784	8128	656	7.5
39137	Putnam County, OH	18720	17669	1051	5.6
39171	Williams County, OH	18829	17365	1464	7.8
40001	Adair County, OK	8392	7904	488	5.8
40035	Craig County, OK	5859	5544	315	5.4
40041	Delaware County, OK	18521	17540	981	5.3
40061	Haskell County, OK	4279	3945	334	7.8
40075	Kiowa County, OK	3544	3367	177	5
40091	McIntosh County, OK	7142	6541	601	8.4
40095	Marshall County, OK	6850	6409	441	6.4
40097	Mayes County, OK	19460	18480	980	5
40105	Nowata County, OK	4636	4393	243	5.2
40141	Tillman County, OK	3054	2863	191	6.3
41031	Jefferson County, OR	10330	9482	848	8.2
42009	Bedford County, PA	23383	21250	2133	9.1
42117	Tioga County, PA	18831	17128	1703	9
45005	Allendale County, SC	2641	2392	249	9.4
45011	Barnwell County, SC	7972	7385	587	7.4
45027	Clarendon County, SC	12737	11874	863	6.8
45029	Colleton County, SC	16732	15717	1015	6.1
45033	Dillon County, SC	13238	12424	814	6.1
45049	Hampton County, SC	8234	7823	411	5
45061	Lee County, SC	6812	6293	519	7.6
45065	McCormick County, SC	3359	3135	224	6.7
45067	Marion County, SC	13251	12214	1037	7.8
45089	Williamsburg County, SC	12004	11032	972	8.1
46019	Butte County, SD	4986	4718	268	5.4
46047	Fall River County, SD	2996	2817	179	6
46079	Lake County, SD	6485	6239	246	3.8
46102	Oglala Lakota County, SD	3677	3304	373	10.1
47017	Carroll County, TN	11851	10977	874	7.4
47025	Claiborne County, TN	12727	11838	889	7
47053	Gibson County, TN	21795	20274	1521	7
47071	Hardin County, TN	10276	9548	728	7.1
47077	Henderson County, TN	12010	11051	959	8
47091	Johnson County, TN	7682	7186	496	6.5
47103	Lincoln County, TN	16026	14655	1371	8.6
47109	McNairy County, TN	8348	7622	726	8.7
47123	Monroe County, TN	20090	18479	1611	8
47151	Scott County, TN	8170	7470	700	8.6
47181	Wayne County, TN	6414	5957	457	7.1
48023	Baylor County, TX	1767	1705	62	3.5
48063	Camp County, TX	5008	4639	369	7.4
48067	Cass County, TX	12269	11299	970	7.9
48069	Castro County, TX	3320	3200	120	3.6
48083	Coleman County, TX	2886	2673	213	7.4
48095	Concho County, TX	1320	1261	59	4.5
48103	Crane County, TX	1624	1403	221	13.6
48123	DeWitt County, TX	9253	8695	558	6
48127	Dimmit County, TX	6487	6074	413	6.4
48133	Eastland County, TX	7390	6893	497	6.7
48153	Floyd County, TX	2516	2361	155	6.2
48169	Garza County, TX	2020	1883	137	6.8
48193	Hamilton County, TX	3759	3589	170	4.5
48207	Haskell County, TX	2653	2539	114	4.3
48239	Jackson County, TX	7329	6907	422	5.8
48241	Jasper County, TX	12883	11440	1443	11.2
48247	Jim Hogg County, TX	1891	1711	180	9.5
48279	Lamb County, TX	5234	4960	274	5.2
48283	La Salle County, TX	3693	3442	251	6.8
48285	Lavaca County, TX	8406	7965	441	5.2
48293	Limestone County, TX	8363	7767	596	7.1
48313	Madison County, TX	4462	4141	321	7.2
48343	Morris County, TX	4793	4248	545	11.4
48365	Panola County, TX	9437	8645	792	8.4
48383	Reagan County, TX	1815	1639	176	9.7
48387	Red River County, TX	5144	4817	327	6.4
48391	Refugio County, TX	3083	2831	252	8.2
48399	Runnels County, TX	4529	4306	223	4.9
48437	Swisher County, TX	2533	2401	132	5.2
48445	Terry County, TX	4840	4486	354	7.3
48457	Tyler County, TX	7372	6645	727	9.9
48475	Ward County, TX	6171	5589	582	9.4
48495	Winkler County, TX	4039	3663	376	9.3
48499	Wood County, TX	17919	16740	1179	6.6
49025	Kane County, UT	3835	3629	206	5.4
49039	Sanpete County, UT	12640	12168	472	3.7
50001	Addison County, VT	19936	18947	989	5
51001	Accomack County, VA	16052	15011	1041	6.5
51005	Alleghany County, VA	6820	6376	444	6.5
51083	Halifax County, VA	15176	14109	1067	7
51163	Rockbridge County, VA	10467	9892	575	5.5
51197	Wythe County, VA	13827	12760	1067	7.7
51530	Buena Vista city, VA	3114	2935	179	5.7
51580	Covington city, VA	2412	2181	231	9.6
51678	Lexington city, VA	2049	1906	143	7
53031	Jefferson County, WA	13081	11850	1231	9.4
53047	Okanogan County, WA	19581	17822	1759	9
54001	Barbour County, WV	7335	6729	606	8.3
54025	Greenbrier County, WV	15680	14416	1264	8.1
54031	Hardy County, WV	5865	5445	420	7.2
54035	Jackson County, WV	12780	11684	1096	8.6
54067	Nicholas County, WV	9571	8587	984	10.3
54089	Summers County, WV	4376	4033	343	7.8
54103	Wetzel County, WV	6747	6083	664	9.8
55001	Adams County, WI	8047	7281	766	9.5
55005	Barron County, WI	23873	22413	1460	6.1
55007	Bayfield County, WI	7399	6711	688	9.3
55011	Buffalo County, WI	6336	5865	471	7.4
55019	Clark County, WI	17401	16615	786	4.5
55029	Door County, WI	14905	13886	1019	6.8
55047	Green Lake County, WI	9253	8616	637	6.9
55053	Jackson County, WI	9877	8959	918	9.3
55067	Langlade County, WI	9285	8684	601	6.5
55081	Monroe County, WI	23363	22075	1288	5.5
55103	Richland County, WI	9009	8551	458	5.1
55107	Rusk County, WI	6581	6144	437	6.6
55119	Taylor County, WI	10905	10372	533	4.9
55121	Trempealeau County, WI	15607	14512	1095	7
55123	Vernon County, WI	14896	14119	777	5.2
55135	Waupaca County, WI	25439	24028	1411	5.5
55137	Waushara County, WI	11080	10378	702	6.3
56009	Converse County, WY	8163	7677	486	6
1075	Lamar County, AL	5730	5452	278	4.9
1129	Washington County, AL	6729	6190	539	8
2068	Denali Borough, AK	680	573	107	15.7
5073	Lafayette County, AR	2421	2236	185	7.6
5097	Montgomery County, AR	2981	2778	203	6.8
5117	Prairie County, AR	3608	3415	193	5.3
6043	Mariposa County, CA	7162	6381	781	10.9
6091	Sierra County, CA	1282	1179	103	8
8025	Crowley County, CO	1528	1445	83	5.4
8027	Custer County, CO	2087	1982	105	5
8073	Lincoln County, CO	2375	2269	106	4.5
12029	Dixie County, FL	5886	5565	321	5.5
12077	Liberty County, FL	2598	2473	125	4.8
13037	Calhoun County, GA	2237	2124	113	5.1
13065	Clinch County, GA	2943	2826	117	4
13163	Jefferson County, GA	6658	6209	449	6.7
13201	Miller County, GA	2772	2660	112	4
13265	Taliaferro County, GA	530	492	38	7.2
13269	Taylor County, GA	2746	2563	183	6.7
13301	Warren County, GA	2635	2456	179	6.8
13319	Wilkinson County, GA	3790	3587	203	5.4
16009	Benewah County, ID	4140	3830	310	7.5
16037	Custer County, ID	2218	2106	112	5
16061	Lewis County, ID	1662	1534	128	7.7
16071	Oneida County, ID	2342	2244	98	4.2
16079	Shoshone County, ID	5444	4946	498	9.1
17059	Gallatin County, IL	2032	1846	186	9.2
17151	Pope County, IL	1643	1513	130	7.9
17153	Pulaski County, IL	1768	1562	206	11.7
18147	Spencer County, IN	10333	9754	579	5.6
18171	Warren County, IN	4001	3785	216	5.4
19001	Adair County, IA	4179	4013	166	4
19009	Audubon County, IA	3011	2908	103	3.4
19023	Butler County, IA	7675	7317	358	4.7
19043	Clayton County, IA	9703	9150	553	5.7
19093	Ida County, IA	3966	3824	142	3.6
19107	Keokuk County, IA	5151	4897	254	4.9
19115	Louisa County, IA	5916	5623	293	5
20019	Chautauqua County, KS	1482	1392	90	6.1
20049	Elk County, KS	1171	1115	56	4.8
20077	Harper County, KS	2792	2668	124	4.4
21027	Breckinridge County, KY	7846	7274	572	7.3
21087	Green County, KY	5142	4866	276	5.4
21099	Hart County, KY	7694	7198	496	6.4
21127	Lawrence County, KY	5217	4784	433	8.3
21135	Lewis County, KY	4648	4205	443	9.5
21171	Monroe County, KY	4564	4318	246	5.4
21181	Nicholas County, KY	3275	3053	222	6.8
21219	Todd County, KY	5391	5131	260	4.8
22021	Caldwell Parish, LA	3670	3403	267	7.3
22081	Red River Parish, LA	3612	3389	223	6.2
23015	Lincoln County, ME	16386	15516	870	5.3
24023	Garrett County, MD	15274	14261	1013	6.6
26011	Arenac County, MI	5909	5234	675	11.4
26127	Oceana County, MI	12024	10783	1241	10.3
27029	Clearwater County, MN	4507	4084	423	9.4
27087	Mahnomen County, MN	2198	1912	286	13
27089	Marshall County, MN	5451	5098	353	6.5
27107	Norman County, MN	3287	3079	208	6.3
27125	Red Lake County, MN	2230	2087	143	6.4
28041	Greene County, MS	4337	3917	420	9.7
28053	Humphreys County, MS	2225	1897	328	14.7
28055	Issaquena County, MS	338	307	31	9.2
28063	Jefferson County, MS	1989	1623	366	18.4
28065	Jefferson Davis County, MS	4022	3636	386	9.6
28077	Lawrence County, MS	4683	4276	407	8.7
28125	Sharkey County, MS	1475	1314	161	10.9
28129	Smith County, MS	6631	6248	383	5.8
28157	Wilkinson County, MS	2777	2406	371	13.4
29057	Dade County, MO	3560	3405	155	4.4
29075	Gentry County, MO	3405	3289	116	3.4
29085	Hickory County, MO	3879	3683	196	5.1
29087	Holt County, MO	2578	2491	87	3.4
29125	Maries County, MO	3909	3720	189	4.8
29141	Morgan County, MO	8273	7755	518	6.3
30015	Chouteau County, MT	2454	2359	95	3.9
30039	Granite County, MT	1606	1475	131	8.2
30045	Judith Basin County, MT	987	939	48	4.9
30061	Mineral County, MT	1778	1597	181	10.2
30065	Musselshell County, MT	2328	2185	143	6.1
30089	Sanders County, MT	5086	4691	395	7.8
30095	Stillwater County, MT	5332	5062	270	5.1
30099	Teton County, MT	2765	2644	121	4.4
30103	Treasure County, MT	338	326	12	3.6
31021	Burt County, NE	3556	3419	137	3.9
31035	Clay County, NE	3256	3152	104	3.2
31059	Fillmore County, NE	3154	3067	87	2.8
31077	Greeley County, NE	1232	1196	36	2.9
31097	Johnson County, NE	2058	1977	81	3.9
31105	Kimball County, NE	1975	1905	70	3.5
31125	Nance County, NE	1946	1883	63	3.2
31163	Sherman County, NE	1667	1614	53	3.2
31173	Thurston County, NE	3070	2909	161	5.2
36041	Hamilton County, NY	2141	1972	169	7.9
36097	Schuyler County, NY	8008	7319	689	8.6
37011	Avery County, NC	7287	6825	462	6.3
37033	Caswell County, NC	9621	8869	752	7.8
37079	Greene County, NC	9551	9012	539	5.6
37149	Polk County, NC	8948	8392	556	6.2
37173	Swain County, NC	6939	6351	588	8.5
37199	Yancey County, NC	8189	7649	540	6.6
38029	Emmons County, ND	1493	1419	74	5
38037	Grant County, ND	1189	1156	33	2.8
38043	Kidder County, ND	1284	1218	66	5.1
38055	McLean County, ND	4789	4573	216	4.5
38063	Nelson County, ND	1398	1335	63	4.5
38073	Ransom County, ND	2867	2749	118	4.1
38091	Steele County, ND	949	921	28	3
38097	Traill County, ND	4458	4296	162	3.6
39111	Monroe County, OH	5719	5113	606	10.6
40067	Jefferson County, OK	2578	2406	172	6.7
42057	Fulton County, PA	7710	6820	890	11.5
42067	Juniata County, PA	12595	11693	902	7.2
42113	Sullivan County, PA	2597	2376	221	8.5
42115	Susquehanna County, PA	19774	18323	1451	7.3
46055	Haakon County, SD	1069	1042	27	2.5
46067	Hutchinson County, SD	3618	3481	137	3.8
46071	Jackson County, SD	1207	1155	52	4.3
46097	Miner County, SD	1144	1089	55	4.8
46101	Moody County, SD	4008	3797	211	5.3
46105	Perkins County, SD	1382	1330	52	3.8
46137	Ziebach County, SD	944	899	45	4.8
47007	Bledsoe County, TN	4264	3897	367	8.6
47061	Grundy County, TN	5131	4629	502	9.8
47067	Hancock County, TN	2147	1966	181	8.4
47121	Meigs County, TN	5195	4746	449	8.6
47161	Stewart County, TN	5412	5053	359	6.6
48033	Borden County, TX	430	416	14	3.3
48081	Coke County, TX	1374	1298	76	5.5
48125	Dickens County, TX	671	629	42	6.3
48129	Donley County, TX	1423	1360	63	4.4
48151	Fisher County, TX	1605	1533	72	4.5
48289	Leon County, TX	6121	5644	477	7.8
48297	Live Oak County, TX	5177	4791	386	7.5
48315	Marion County, TX	4271	3920	351	8.2
48403	Sabine County, TX	3923	3500	423	10.8
48413	Schleicher County, TX	1209	1125	84	6.9
48417	Shackelford County, TX	1782	1688	94	5.3
48431	Sterling County, TX	560	524	36	6.4
48461	Upton County, TX	1835	1732	103	5.6
49033	Rich County, UT	1162	1122	40	3.4
50015	Lamoille County, VT	13376	12328	1048	7.8
51017	Bath County, VA	2290	2063	227	9.9
51021	Bland County, VA	2811	2653	158	5.6
51037	Charlotte County, VA	5084	4799	285	5.6
51091	Highland County, VA	1239	1193	46	3.7
51105	Lee County, VA	8304	7772	532	6.4
51141	Patrick County, VA	7235	6739	496	6.9
53023	Garfield County, WA	819	750	69	8.4
53043	Lincoln County, WA	4681	4363	318	6.8
54007	Braxton County, WV	5220	4678	542	10.4
54013	Calhoun County, WV	2535	2128	407	16.1
54063	Monroe County, WV	6079	5648	431	7.1
54065	Morgan County, WV	8362	7857	505	6
54071	Pendleton County, WV	3710	3529	181	4.9
54073	Pleasants County, WV	2720	2417	303	11.1
54085	Ritchie County, WV	4399	4031	368	8.4
54087	Roane County, WV	5128	4490	638	12.4
54093	Tucker County, WV	3292	3013	279	8.5
54109	Wyoming County, WV	6591	5901	690	10.5
55065	Lafayette County, WI	9785	9365	420	4.3
55077	Marquette County, WI	7650	7136	514	6.7
2110	Juneau Borough/city, AK	16374	15293	1081	6.6
2130	Ketchikan Gateway Borough, AK	6520	5893	627	9.6
4009	Graham County, AZ	15919	14911	1008	6.3
5005	Baxter County, AR	16528	15547	981	5.9
5009	Boone County, AR	15764	14934	830	5.3
5013	Calhoun County, AR	2426	2301	125	5.2
5019	Clark County, AR	9314	8765	549	5.9
5027	Columbia County, AR	9053	8433	620	6.8
5063	Independence County, AR	16670	15711	959	5.8
5101	Newton County, AR	3246	3084	162	5
5103	Ouachita County, AR	9821	9229	592	6
5115	Pope County, AR	27775	26138	1637	5.9
5139	Union County, AR	15622	14325	1297	8.3
6015	Del Norte County, CA	9350	8466	884	9.5
6023	Humboldt County, CA	59411	54446	4965	8.4
6035	Lassen County, CA	9461	8785	676	7.1
8037	Eagle County, CO	35708	32319	3389	9.5
8045	Garfield County, CO	31762	29606	2156	6.8
8075	Logan County, CO	11017	10495	522	4.7
8081	Moffat County, CO	7285	6849	436	6
8097	Pitkin County, CO	11253	10077	1176	10.5
8107	Routt County, CO	16206	14929	1277	7.9
8117	Summit County, CO	22402	20204	2198	9.8
13017	Ben Hill County, GA	5460	5083	377	6.9
13069	Coffee County, GA	18938	17835	1103	5.8
13141	Hancock County, GA	2532	2309	223	8.8
13167	Johnson County, GA	4006	3808	198	4.9
13175	Laurens County, GA	19367	18075	1292	6.7
13209	Montgomery County, GA	3891	3681	210	5.4
13257	Stephens County, GA	10414	9745	669	6.4
13277	Tift County, GA	20500	19463	1037	5.1
13279	Toombs County, GA	12081	11287	794	6.6
13299	Ware County, GA	15284	14432	852	5.6
15001	Hawaii County, HI	89119	78986	10133	11.4
15007	Kauai County, HI	35337	29618	5719	16.2
16013	Blaine County, ID	12666	11679	987	7.8
16025	Camas County, ID	684	651	33	4.8
16031	Cassia County, ID	12384	11930	454	3.7
16053	Jerome County, ID	12198	11711	487	4
16063	Lincoln County, ID	2667	2511	156	5.8
16067	Minidoka County, ID	11642	11194	448	3.8
16081	Teton County, ID	6632	6256	376	5.7
16083	Twin Falls County, ID	41250	39083	2167	5.3
17001	Adams County, IL	31259	29287	1972	6.3
17011	Bureau County, IL	16363	15124	1239	7.6
17029	Coles County, IL	23148	21432	1716	7.4
17035	Cumberland County, IL	5944	5606	338	5.7
17049	Effingham County, IL	19265	17988	1277	6.6
17067	Hancock County, IL	8081	7521	560	6.9
17071	Henderson County, IL	3544	3298	246	6.9
17081	Jefferson County, IL	16993	15279	1714	10.1
17109	McDonough County, IL	12819	11908	911	7.1
17127	Massac County, IL	5424	4883	541	10
17171	Scott County, IL	2349	2194	155	6.6
18027	Daviess County, IN	16523	15891	632	3.8
18037	Dubois County, IN	22595	21569	1026	4.5
18083	Knox County, IN	18228	17148	1080	5.9
18151	Steuben County, IN	19915	18673	1242	6.2
18177	Wayne County, IN	29989	27951	2038	6.8
19021	Buena Vista County, IA	11643	11217	426	3.7
19033	Cerro Gordo County, IA	23096	21893	1203	5.2
19041	Clay County, IA	8336	7958	378	4.5
19051	Davis County, IA	4108	3943	165	4
19057	Des Moines County, IA	18609	17222	1387	7.5
19059	Dickinson County, IA	9752	9255	497	5.1
19101	Jefferson County, IA	9487	8948	539	5.7
19111	Lee County, IA	15693	14666	1027	6.5
19123	Mahaska County, IA	11798	11237	561	4.8
19179	Wapello County, IA	17328	16293	1035	6
19187	Webster County, IA	18615	17638	977	5.2
19195	Worth County, IA	4082	3861	221	5.4
20009	Barton County, KS	13680	13046	634	4.6
20051	Ellis County, KS	16920	16328	592	3.5
20055	Finney County, KS	20618	19906	712	3.5
20057	Ford County, KS	17224	16640	584	3.4
20093	Kearny County, KS	2035	1980	55	2.7
20099	Labette County, KS	9667	9123	544	5.6
20113	McPherson County, KS	17211	16612	599	3.5
20125	Montgomery County, KS	14852	13774	1078	7.3
20143	Ottawa County, KS	2978	2851	127	4.3
20169	Saline County, KS	29511	27893	1618	5.5
20175	Seward County, KS	9816	9386	430	4.4
21007	Ballard County, KY	3356	3134	222	6.6
21013	Bell County, KY	8248	7606	642	7.8
21021	Boyle County, KY	12540	11618	922	7.4
21035	Calloway County, KY	17865	16752	1113	6.2
21075	Fulton County, KY	1983	1854	129	6.5
21083	Graves County, KY	15631	14701	930	5.9
21107	Hopkins County, KY	18149	16815	1334	7.4
21121	Knox County, KY	9962	9143	819	8.2
21125	Laurel County, KY	24857	23130	1727	6.9
21137	Lincoln County, KY	9317	8578	739	7.9
21139	Livingston County, KY	3534	3268	266	7.5
21145	McCracken County, KY	28486	26435	2051	7.2
21165	Menifee County, KY	2256	2055	201	8.9
21169	Metcalfe County, KY	4017	3704	313	7.8
21199	Pulaski County, KY	25795	23907	1888	7.3
21203	Rockcastle County, KY	6428	5971	457	7.1
21217	Taylor County, KY	12935	12160	775	6
21235	Whitley County, KY	13784	12801	983	7.1
22029	Concordia Parish, LA	6949	6385	564	8.1
22115	Vernon Parish, LA	15795	14677	1118	7.1
25007	Dukes County, MA	9517	8640	877	9.2
26007	Alpena County, MI	13245	12224	1021	7.7
26019	Benzie County, MI	8655	7838	817	9.4
26033	Chippewa County, MI	16121	14684	1437	8.9
26041	Delta County, MI	16948	15466	1482	8.7
26043	Dickinson County, MI	12206	11347	859	7
26055	Grand Traverse County, MI	48974	44869	4105	8.4
26061	Houghton County, MI	15945	14789	1156	7.2
26079	Kalkaska County, MI	7904	7029	875	11.1
26083	Keweenaw County, MI	884	805	79	8.9
26089	Leelanau County, MI	10261	9445	816	8
26103	Marquette County, MI	31758	29121	2637	8.3
26105	Mason County, MI	13374	12142	1232	9.2
26109	Menominee County, MI	10694	10008	686	6.4
26113	Missaukee County, MI	6923	6291	632	9.1
26165	Wexford County, MI	14918	13402	1516	10.2
27007	Beltrami County, MN	24865	23306	1559	6.3
27021	Cass County, MN	14206	12905	1301	9.2
27047	Freeborn County, MN	16258	15344	914	5.6
27083	Lyon County, MN	14364	13719	645	4.5
27105	Nobles County, MN	11602	11114	488	4.2
27147	Steele County, MN	20330	19218	1112	5.5
28001	Adams County, MS	10609	9441	1168	11
28003	Alcorn County, MS	15419	14458	961	6.2
28011	Bolivar County, MS	11537	10531	1006	8.7
28015	Carroll County, MS	3462	3195	267	7.7
28023	Clarke County, MS	5846	5355	491	8.4
28027	Coahoma County, MS	8362	7314	1048	12.5
28043	Grenada County, MS	9305	8638	667	7.2
28057	Itawamba County, MS	10343	9621	722	7
28061	Jasper County, MS	6094	5551	543	8.9
28069	Kemper County, MS	3423	3093	330	9.6
28075	Lauderdale County, MS	29638	27416	2222	7.5
28081	Lee County, MS	41347	37985	3362	8.1
28083	Leflore County, MS	9873	8816	1057	10.7
28087	Lowndes County, MS	25123	23038	2085	8.3
28105	Oktibbeha County, MS	22096	20414	1682	7.6
28115	Pontotoc County, MS	14911	13755	1156	7.8
28133	Sunflower County, MS	7491	6651	840	11.2
28151	Washington County, MS	16182	14397	1785	11
29001	Adair County, MO	10086	9572	514	5.1
29023	Butler County, MO	18183	17032	1151	6.3
29045	Clark County, MO	3169	2979	190	6
29069	Dunklin County, MO	11562	10718	844	7.3
29091	Howell County, MO	16201	15118	1083	6.7
29111	Lewis County, MO	4966	4723	243	4.9
29127	Marion County, MO	14299	13612	687	4.8
29161	Phelps County, MO	19776	18833	943	4.8
29169	Pulaski County, MO	14583	13761	822	5.6
29173	Ralls County, MO	5627	5376	251	4.5
29197	Schuyler County, MO	1961	1849	112	5.7
30029	Flathead County, MT	49357	45499	3858	7.8
30031	Gallatin County, MT	70434	66898	3536	5
30043	Jefferson County, MT	5789	5492	297	5.1
30049	Lewis and Clark County, MT	36479	34666	1813	5
30093	Silver Bow County, MT	17295	16153	1142	6.6
31007	Banner County, NE	380	370	10	2.6
31047	Dawson County, NE	13302	12846	456	3.4
31073	Gosper County, NE	1094	1066	28	2.6
31099	Kearney County, NE	3776	3655	121	3.2
31111	Lincoln County, NE	18367	17645	722	3.9
31113	Logan County, NE	471	459	12	2.5
31117	McPherson County, NE	443	431	12	2.7
31119	Madison County, NE	19665	18898	767	3.9
31139	Pierce County, NE	4125	3989	136	3.3
31141	Platte County, NE	17741	17090	651	3.7
31157	Scotts Bluff County, NE	18160	17402	758	4.2
31165	Sioux County, NE	747	730	17	2.3
31167	Stanton County, NE	3531	3412	119	3.4
32007	Elko County, NV	26791	25264	1527	5.7
32011	Eureka County, NV	1040	1004	36	3.5
32013	Humboldt County, NV	8036	7641	395	4.9
33007	Coos County, NH	14399	13263	1136	7.9
33009	Grafton County, NH	48154	45341	2813	5.8
33019	Sullivan County, NH	23105	21866	1239	5.4
35005	Chaves County, NM	28106	25832	2274	8.1
35009	Curry County, NM	22292	21068	1224	5.5
35015	Eddy County, NM	33700	31384	2316	6.9
35017	Grant County, NM	11893	10819	1074	9
35025	Lea County, NM	29545	26281	3264	11
35031	McKinley County, NM	24035	21557	2478	10.3
35041	Roosevelt County, NM	7934	7443	491	6.2
35055	Taos County, NM	14967	13238	1729	11.6
36019	Clinton County, NY	35447	32623	2824	8
36033	Franklin County, NY	19197	17622	1575	8.2
36077	Otsego County, NY	26607	24686	1921	7.2
37131	Northampton County, NC	7528	6978	550	7.3
37153	Richmond County, NC	16733	15200	1533	9.2
37177	Tyrrell County, NC	1359	1238	121	8.9
37189	Watauga County, NC	27997	26261	1736	6.2
38049	McHenry County, ND	3088	2919	169	5.5
38075	Renville County, ND	1225	1165	60	4.9
38089	Stark County, ND	18332	17024	1308	7.1
38093	Stutsman County, ND	10495	10131	364	3.5
38101	Ward County, ND	31847	29948	1899	6
38105	Williams County, ND	23001	20796	2205	9.6
39079	Jackson County, OH	13157	12008	1149	8.7
39107	Mercer County, OH	23515	22250	1265	5.4
40009	Beckham County, OK	10075	9315	760	7.5
40019	Carter County, OK	21557	20051	1506	7
40039	Custer County, OK	15210	14388	822	5.4
40047	Garfield County, OK	27007	25532	1475	5.5
40065	Jackson County, OK	10766	10327	439	4.1
40071	Kay County, OK	18314	17094	1220	6.7
40121	Pittsburg County, OK	16762	15489	1273	7.6
40123	Pontotoc County, OK	19341	18341	1000	5.2
40139	Texas County, OK	11361	11099	262	2.3
40153	Woodward County, OK	8998	8395	603	6.7
41011	Coos County, OR	26525	24235	2290	8.6
41015	Curry County, OR	8944	8170	774	8.7
41035	Klamath County, OR	29511	26957	2554	8.7
41041	Lincoln County, OR	20598	18355	2243	10.9
41061	Union County, OR	12053	11109	944	7.8
42083	McKean County, PA	17054	15369	1685	9.9
42109	Snyder County, PA	19389	17906	1483	7.6
46005	Beadle County, SD	9352	8991	361	3.9
46011	Brookings County, SD	18480	17669	811	4.4
46013	Brown County, SD	20582	19678	904	4.4
46029	Codington County, SD	15416	14662	754	4.9
46035	Davison County, SD	10942	10487	455	4.2
46045	Edmunds County, SD	1993	1935	58	2.9
46065	Hughes County, SD	9909	9574	335	3.4
46117	Stanley County, SD	1891	1817	74	3.9
46119	Sully County, SD	789	767	22	2.8
46135	Yankton County, SD	11761	11220	541	4.6
47045	Dyer County, TN	15879	14603	1276	8
47079	Henry County, TN	13668	12642	1026	7.5
47127	Moore County, TN	3610	3416	194	5.4
47131	Obion County, TN	12180	11322	858	7
47133	Overton County, TN	9689	9074	615	6.3
47183	Weakley County, TN	15456	14554	902	5.8
48001	Anderson County, TX	23325	22013	1312	5.6
48005	Angelina County, TX	35495	32783	2712	7.6
48049	Brown County, TX	15245	14253	992	6.5
48115	Dawson County, TX	4558	4160	398	8.7
48171	Gillespie County, TX	13265	12630	635	4.8
48261	Kenedy County, TX	184	174	10	5.4
48277	Lamar County, TX	23507	21989	1518	6.5
48323	Maverick County, TX	24494	20821	3673	15
48341	Moore County, TX	10578	10180	398	3.8
48347	Nacogdoches County, TX	27987	26145	1842	6.6
48389	Reeves County, TX	8858	8227	631	7.1
48415	Scurry County, TX	6251	5739	512	8.2
48449	Titus County, TX	13303	12412	891	6.7
48455	Trinity County, TX	5313	4884	429	8.1
48465	Val Verde County, TX	22589	20795	1794	7.9
49007	Carbon County, UT	8575	8130	445	5.2
49047	Uintah County, UT	13385	12157	1228	9.2
50009	Essex County, VT	2596	2426	170	6.5
50017	Orange County, VT	15395	14652	743	4.8
50027	Windsor County, VT	27903	26420	1483	5.3
51051	Dickenson County, VA	4746	4368	378	8
51185	Tazewell County, VA	15520	14335	1185	7.6
51195	Wise County, VA	13076	12080	996	7.6
51720	Norton city, VA	1660	1536	124	7.5
53009	Clallam County, WA	29280	26303	2977	10.2
53025	Grant County, WA	47442	43247	4195	8.8
54017	Doddridge County, WV	3847	3605	242	6.3
54033	Harrison County, WV	34090	31381	2709	7.9
54083	Randolph County, WV	12364	11230	1134	9.2
55037	Florence County, WI	2191	2016	175	8
56005	Campbell County, WY	23439	21822	1617	6.9
56013	Fremont County, WY	19326	18120	1206	6.2
56033	Sheridan County, WY	16210	15409	801	4.9
56037	Sweetwater County, WY	20840	19308	1532	7.4
56039	Teton County, WY	15204	14292	912	6
56041	Uinta County, WY	9312	8730	582	6.3
4011	Greenlee County, AZ	4454	4210	244	5.5
5011	Bradley County, AR	4386	4130	256	5.8
5017	Chicot County, AR	3250	2914	336	10.3
5021	Clay County, AR	5519	5186	333	6
5049	Fulton County, AR	4924	4671	253	5.1
5071	Johnson County, AR	10120	9482	638	6.3
5077	Lee County, AR	2805	2595	210	7.5
5095	Monroe County, AR	2721	2539	182	6.7
5099	Nevada County, AR	3550	3342	208	5.9
5121	Randolph County, AR	7444	7005	439	5.9
5135	Sharp County, AR	5717	5309	408	7.1
5137	Stone County, AR	4618	4290	328	7.1
13001	Appling County, GA	9105	8674	431	4.7
13005	Bacon County, GA	4652	4425	227	4.9
13043	Candler County, GA	5633	5383	250	4.4
13107	Emanuel County, GA	8518	7915	603	7.1
13155	Irwin County, GA	3467	3276	191	5.5
13161	Jeff Davis County, GA	6099	5785	314	5.1
13283	Treutlen County, GA	2710	2547	163	6
13303	Washington County, GA	6931	6486	445	6.4
13309	Wheeler County, GA	1608	1492	116	7.2
16021	Boundary County, ID	5502	5163	339	6.2
16047	Gooding County, ID	8256	7944	312	3.8
17015	Carroll County, IL	7376	6844	532	7.2
17025	Clay County, IL	6231	5646	585	9.4
17033	Crawford County, IL	8472	7882	590	7
17065	Hamilton County, IL	4225	3944	281	6.7
17079	Jasper County, IL	4591	4315	276	6
17101	Lawrence County, IL	5781	5276	505	8.7
17149	Pike County, IL	6753	6348	405	6
17169	Schuyler County, IL	3126	2933	193	6.2
17191	Wayne County, IL	6795	6230	565	8.3
18049	Fulton County, IN	9680	9040	640	6.6
18101	Martin County, IN	5410	5181	229	4.2
19007	Appanoose County, IA	5914	5601	313	5.3
19063	Emmet County, IA	5047	4797	250	5
19067	Floyd County, IA	8250	7751	499	6
19069	Franklin County, IA	5597	5385	212	3.8
19081	Hancock County, IA	5764	5495	269	4.7
19091	Humboldt County, IA	4939	4730	209	4.2
19131	Mitchell County, IA	6061	5856	205	3.4
19135	Monroe County, IA	3938	3734	204	5.2
19141	O'Brien County, IA	8058	7786	272	3.4
19143	Osceola County, IA	3498	3397	101	2.9
19147	Palo Alto County, IA	4540	4330	210	4.6
19157	Poweshiek County, IA	9727	9247	480	4.9
19189	Winnebago County, IA	5025	4703	322	6.4
19197	Wright County, IA	6960	6684	276	4
20029	Cloud County, KS	3865	3708	157	4.1
20041	Dickinson County, KS	8873	8442	431	4.9
20053	Ellsworth County, KS	2725	2636	89	3.3
20067	Grant County, KS	3097	2970	127	4.1
20133	Neosho County, KS	6246	5845	401	6.4
20145	Pawnee County, KS	2846	2739	107	3.8
20159	Rice County, KS	5080	4865	215	4.2
20167	Russell County, KS	3317	3177	140	4.2
20171	Scott County, KS	2826	2754	72	2.5
20189	Stevens County, KS	2807	2727	80	2.9
21001	Adair County, KY	6961	6460	501	7.2
21033	Caldwell County, KY	5570	5224	346	6.2
21055	Crittenden County, KY	3663	3460	203	5.5
21069	Fleming County, KY	6135	5686	449	7.3
21143	Lyon County, KY	3095	2931	164	5.3
21155	Marion County, KY	9233	8515	718	7.8
21157	Marshall County, KY	14831	13919	912	6.1
21205	Rowan County, KY	9932	9191	741	7.5
21229	Washington County, KY	6099	5718	381	6.2
21231	Wayne County, KY	7370	6888	482	6.5
22065	Madison Parish, LA	3573	3272	301	8.4
26071	Iron County, MI	4985	4581	404	8.1
26101	Manistee County, MI	10270	9164	1106	10.8
26141	Presque Isle County, MI	4951	4402	549	11.1
26153	Schoolcraft County, MI	3248	2934	314	9.7
27023	Chippewa County, MN	6779	6435	344	5.1
27033	Cottonwood County, MN	6265	5974	291	4.6
27057	Hubbard County, MN	9907	9207	700	7.1
27063	Jackson County, MN	5772	5493	279	4.8
27127	Redwood County, MN	7782	7352	430	5.5
27151	Swift County, MN	4881	4599	282	5.8
27159	Wadena County, MN	6024	5564	460	7.6
27173	Yellow Medicine County, MN	5314	5069	245	4.6
28017	Chickasaw County, MS	6964	6207	757	10.9
28025	Clay County, MS	7946	7021	925	11.6
28095	Monroe County, MS	15692	14297	1395	8.9
28097	Montgomery County, MS	3926	3610	316	8
28099	Neshoba County, MS	10382	9415	967	9.3
28101	Newton County, MS	8010	7374	636	7.9
28103	Noxubee County, MS	3888	3459	429	11
28117	Prentiss County, MS	11207	10428	779	7
28135	Tallahatchie County, MS	5197	4810	387	7.4
28153	Wayne County, MS	7494	6843	651	8.7
28159	Winston County, MS	7360	6723	637	8.7
28161	Yalobusha County, MS	4900	4513	387	7.9
29029	Camden County, MO	18829	17502	1327	7
29065	Dent County, MO	6351	6045	306	4.8
29121	Macon County, MO	7435	7079	356	4.8
29137	Monroe County, MO	3789	3564	225	5.9
29143	New Madrid County, MO	8483	7991	492	5.8
29155	Pemiscot County, MO	6271	5770	501	8
29215	Texas County, MO	8953	8434	519	5.8
30023	Deer Lodge County, MT	5035	4779	256	5.1
30053	Lincoln County, MT	8097	7278	819	10.1
30067	Park County, MT	8938	8273	665	7.4
30083	Richland County, MT	5938	5556	382	6.4
30085	Roosevelt County, MT	4451	4185	266	6
31037	Colfax County, NE	5620	5457	163	2.9
31039	Cuming County, NE	4830	4708	122	2.5
31041	Custer County, NE	6348	6174	174	2.7
31095	Jefferson County, NE	4193	4078	115	2.7
31101	Keith County, NE	4547	4400	147	3.2
31137	Phelps County, NE	4953	4805	148	3
32015	Lander County, NV	3149	2999	150	4.8
35019	Guadalupe County, NM	1531	1428	103	6.7
35023	Hidalgo County, NM	1956	1842	114	5.8
35027	Lincoln County, NM	8943	8154	789	8.8
36003	Allegany County, NY	19038	17502	1536	8.1
37113	Macon County, NC	15449	14416	1033	6.7
37187	Washington County, NC	4392	4034	358	8.2
38069	Pierce County, ND	1710	1637	73	4.3
39075	Holmes County, OH	20977	20163	814	3.9
39131	Pike County, OH	10915	9890	1025	9.4
39175	Wyandot County, OH	12964	12056	908	7
40005	Atoka County, OK	5179	4814	365	7
40023	Choctaw County, OK	5590	5167	423	7.6
40055	Greer County, OK	1904	1764	140	7.4
40063	Hughes County, OK	5392	4989	403	7.5
40069	Johnston County, OK	3753	3465	288	7.7
40077	Latimer County, OK	3172	2854	318	10
40085	Love County, OK	6605	6328	277	4.2
40093	Major County, OK	3726	3550	176	4.7
40099	Murray County, OK	6186	5804	382	6.2
40133	Seminole County, OK	9292	8608	684	7.4
40149	Washita County, OK	5154	4809	345	6.7
40151	Woods County, OK	4621	4462	159	3.4
42047	Elk County, PA	15208	13337	1871	12.3
42053	Forest County, PA	1799	1608	191	10.6
42065	Jefferson County, PA	20056	18293	1763	8.8
42105	Potter County, PA	7185	6516	669	9.3
45009	Bamberg County, SC	4846	4408	438	9
46051	Grant County, SD	4382	4206	176	4
47005	Benton County, TN	6714	6165	549	8.2
47095	Lake County, TN	1691	1542	149	8.8
47185	White County, TN	12011	11155	856	7.1
48017	Bailey County, TX	2440	2323	117	4.8
48047	Brooks County, TX	2601	2323	278	10.7
48093	Comanche County, TX	5618	5309	309	5.5
48131	Duval County, TX	4864	4275	589	12.1
48159	Franklin County, TX	4827	4570	257	5.3
48161	Freestone County, TX	6348	5820	528	8.3
48165	Gaines County, TX	9720	9177	543	5.6
48195	Hansford County, TX	2502	2415	87	3.5
48197	Hardeman County, TX	1710	1635	75	4.4
48225	Houston County, TX	10010	9481	529	5.3
48267	Kimble County, TX	1809	1717	92	5.1
48307	McCulloch County, TX	3260	3016	244	7.5
48335	Mitchell County, TX	2381	2192	189	7.9
48369	Parmer County, TX	4915	4788	127	2.6
48411	San Saba County, TX	2193	2079	114	5.2
48419	Shelby County, TX	11274	10502	772	6.8
48501	Yoakum County, TX	3528	3107	421	11.9
48507	Zavala County, TX	3430	2946	484	14.1
49001	Beaver County, UT	2831	2719	112	4
49013	Duchesne County, UT	7782	7179	603	7.7
49037	San Juan County, UT	5457	4903	554	10.2
50005	Caledonia County, VT	14156	13337	819	5.8
50025	Windham County, VT	21014	19687	1327	6.3
51035	Carroll County, VA	13153	12078	1075	8.2
51117	Mecklenburg County, VA	12679	11818	861	6.8
51167	Russell County, VA	11210	10468	742	6.6
51640	Galax city, VA	2881	2658	223	7.7
53049	Pacific County, WA	8524	7610	914	10.7
54041	Lewis County, WV	6337	5649	688	10.9
54059	Mingo County, WV	6862	5884	978	14.3
54095	Tyler County, WV	3173	2845	328	10.3
54097	Upshur County, WV	9650	8726	924	9.6
55023	Crawford County, WI	7453	6908	545	7.3
55057	Juneau County, WI	13280	12327	953	7.2
55085	Oneida County, WI	17800	16508	1292	7.3
56007	Carbon County, WY	8111	7743	368	4.5
56015	Goshen County, WY	6639	6355	284	4.3
56017	Hot Springs County, WY	2249	2136	113	5
56019	Johnson County, WY	4192	3960	232	5.5
56023	Lincoln County, WY	9373	8907	466	5
56045	Weston County, WY	3836	3688	148	3.9
1023	Choctaw County, AL	4621	4313	308	6.7
1027	Clay County, AL	6083	5838	245	4
1131	Wilcox County, AL	2871	2448	423	14.7
2105	Hoonah-Angoon Census Area, AK	1050	908	142	13.5
2198	Prince of Wales-Hyder Census Area, AK	2828	2568	260	9.2
5065	Izard County, AR	4640	4249	391	8.4
5089	Marion County, AR	6251	5848	403	6.4
5109	Pike County, AR	4272	4020	252	5.9
5129	Searcy County, AR	2885	2701	184	6.4
5147	Woodruff County, AR	2794	2631	163	5.8
8007	Archuleta County, CO	7123	6585	538	7.6
8049	Grand County, CO	9364	8576	788	8.4
8057	Jackson County, CO	940	900	40	4.3
8091	Ouray County, CO	2493	2292	201	8.1
8095	Phillips County, CO	2467	2401	66	2.7
8103	Rio Blanco County, CO	2949	2789	160	5.4
8111	San Juan County, CO	509	475	34	6.7
8115	Sedgwick County, CO	1166	1126	40	3.4
8121	Washington County, CO	2895	2804	91	3.1
13003	Atkinson County, GA	4434	4262	172	3.9
13241	Rabun County, GA	7215	6831	384	5.3
17009	Brown County, IL	2996	2881	115	3.8
19025	Calhoun County, IA	4096	3928	168	4.1
19151	Pocahontas County, IA	4220	4072	148	3.5
19161	Sac County, IA	5167	4986	181	3.5
19173	Taylor County, IA	3064	2952	112	3.7
19177	Van Buren County, IA	3667	3497	170	4.6
20017	Chase County, KS	1465	1384	81	5.5
20025	Clark County, KS	1145	1122	23	2
20047	Edwards County, KS	1465	1421	44	3
20069	Gray County, KS	3244	3172	72	2.2
20075	Hamilton County, KS	1633	1605	28	1.7
20081	Haskell County, KS	2250	2197	53	2.4
20083	Hodgeman County, KS	1008	981	27	2.7
20097	Kiowa County, KS	1256	1215	41	3.3
20105	Lincoln County, KS	1705	1655	50	2.9
20119	Meade County, KS	2150	2090	60	2.8
20163	Rooks County, KS	2509	2408	101	4
20165	Rush County, KS	1576	1503	73	4.6
20185	Stafford County, KS	2043	1967	76	3.7
20195	Trego County, KS	1470	1419	51	3.5
20205	Wilson County, KS	3913	3609	304	7.8
21039	Carlisle County, KY	2168	2066	102	4.7
21045	Casey County, KY	6666	6250	416	6.2
21051	Clay County, KY	5199	4751	448	8.6
21057	Cumberland County, KY	3271	3112	159	4.9
21095	Harlan County, KY	6548	5768	780	11.9
21105	Hickman County, KY	1720	1625	95	5.5
21109	Jackson County, KY	4051	3700	351	8.7
21131	Leslie County, KY	2628	2344	284	10.8
21133	Letcher County, KY	6111	5488	623	10.2
21147	McCreary County, KY	4807	4457	350	7.3
21207	Russell County, KY	6085	5586	499	8.2
22025	Catahoula Parish, LA	3495	3248	247	7.1
22107	Tensas Parish, LA	1359	1245	114	8.4
22123	West Carroll Parish, LA	3637	3270	367	10.1
26001	Alcona County, MI	3861	3479	382	9.9
26003	Alger County, MI	3147	2809	338	10.7
26009	Antrim County, MI	10207	9213	994	9.7
26013	Baraga County, MI	3163	2793	370	11.7
26085	Lake County, MI	3989	3560	429	10.8
26095	Luce County, MI	2257	2063	194	8.6
26097	Mackinac County, MI	5003	4335	668	13.4
26119	Montmorency County, MI	3021	2624	397	13.1
26131	Ontonagon County, MI	2053	1841	212	10.3
26133	Osceola County, MI	11606	10641	965	8.3
27051	Grant County, MN	3337	3161	176	5.3
27081	Lincoln County, MN	3125	2986	139	4.4
27101	Murray County, MN	4834	4589	245	5.1
28013	Calhoun County, MS	5598	5146	452	8.1
28019	Choctaw County, MS	3601	3370	231	6.4
28037	Franklin County, MS	2770	2541	229	8.3
28147	Walthall County, MS	4997	4575	422	8.4
28155	Webster County, MS	3891	3603	288	7.4
29005	Atchison County, MO	2744	2634	110	4
29015	Benton County, MO	7235	6709	526	7.3
29035	Carter County, MO	2524	2359	165	6.5
29041	Chariton County, MO	3781	3628	153	4
29093	Iron County, MO	3500	3254	246	7
29103	Knox County, MO	1757	1686	71	4
29149	Oregon County, MO	3938	3673	265	6.7
29153	Ozark County, MO	3467	3216	251	7.2
29171	Putnam County, MO	2275	2175	100	4.4
29181	Ripley County, MO	4987	4593	394	7.9
29199	Scotland County, MO	2393	2315	78	3.3
29203	Shannon County, MO	3343	3098	245	7.3
29205	Shelby County, MO	3047	2911	136	4.5
29211	Sullivan County, MO	2785	2664	121	4.3
29223	Wayne County, MO	5085	4775	310	6.1
29227	Worth County, MO	1180	1131	49	4.2
30007	Broadwater County, MT	2605	2442	163	6.3
30057	Madison County, MT	4551	4319	232	5.1
30059	Meagher County, MT	966	921	45	4.7
31003	Antelope County, NE	3909	3821	88	2.3
31005	Arthur County, NE	231	219	12	5.2
31009	Blaine County, NE	255	246	9	3.5
31011	Boone County, NE	2937	2864	73	2.5
31027	Cedar County, NE	4506	4384	122	2.7
31061	Franklin County, NE	1473	1422	51	3.5
31063	Frontier County, NE	1539	1494	45	2.9
31083	Harlan County, NE	1731	1681	50	2.9
31085	Hayes County, NE	630	616	14	2.2
31107	Knox County, NE	4655	4517	138	3
31123	Morrill County, NE	2605	2512	93	3.6
31133	Pawnee County, NE	1486	1445	41	2.8
31135	Perkins County, NE	1834	1801	33	1.8
31143	Polk County, NE	2912	2824	88	3
31171	Thomas County, NE	420	403	17	4
31181	Webster County, NE	1653	1591	62	3.8
32009	Esmeralda County, NV	406	385	21	5.2
32027	Pershing County, NV	2530	2407	123	4.9
35003	Catron County, NM	1159	1075	84	7.2
35033	Mora County, NM	2064	1898	166	8
37005	Alleghany County, NC	4210	3903	307	7.3
37009	Ashe County, NC	12664	11878	786	6.2
37095	Hyde County, NC	1797	1614	183	10.2
37121	Mitchell County, NC	5886	5427	459	7.8
38007	Billings County, ND	438	422	16	3.7
38009	Bottineau County, ND	2959	2800	159	5.4
38013	Burke County, ND	1022	968	54	5.3
38021	Dickey County, ND	2318	2241	77	3.3
38023	Divide County, ND	1418	1373	45	3.2
38025	Dunn County, ND	3097	2956	141	4.6
38031	Foster County, ND	1555	1501	54	3.5
38041	Hettinger County, ND	1392	1337	55	4
38045	LaMoure County, ND	2055	2001	54	2.6
38047	Logan County, ND	854	827	27	3.2
38053	McKenzie County, ND	9367	8659	708	7.6
38061	Mountrail County, ND	6880	6526	354	5.1
38081	Sargent County, ND	2770	2649	121	4.4
39121	Noble County, OH	4656	4207	449	9.6
40003	Alfalfa County, OK	2766	2667	99	3.6
40007	Beaver County, OK	2582	2513	69	2.7
40025	Cimarron County, OK	1420	1392	28	2
40029	Coal County, OK	2313	2160	153	6.6
40043	Dewey County, OK	2735	2604	131	4.8
40045	Ellis County, OK	2161	2064	97	4.5
40053	Grant County, OK	2786	2694	92	3.3
40057	Harmon County, OK	1199	1157	42	3.5
40059	Harper County, OK	1807	1747	60	3.3
40129	Roger Mills County, OK	1856	1766	90	4.8
41055	Sherman County, OR	983	923	60	6.1
41063	Wallowa County, OR	3473	3227	246	7.1
41069	Wheeler County, OR	693	663	30	4.3
42023	Cameron County, PA	2036	1780	256	12.6
46003	Aurora County, SD	1477	1429	48	3.2
46009	Bon Homme County, SD	2859	2742	117	4.1
46025	Clark County, SD	2181	2095	86	3.9
46037	Day County, SD	2706	2552	154	5.7
46039	Deuel County, SD	2336	2211	125	5.4
46043	Douglas County, SD	1558	1512	46	3
46049	Faulk County, SD	1039	1003	36	3.5
46057	Hamlin County, SD	3355	3239	116	3.5
46059	Hand County, SD	1768	1721	47	2.7
46069	Hyde County, SD	680	659	21	3.1
46073	Jerauld County, SD	1176	1147	29	2.5
46075	Jones County, SD	508	489	19	3.7
46077	Kingsbury County, SD	2661	2563	98	3.7
46085	Lyman County, SD	1648	1554	94	5.7
46089	McPherson County, SD	1010	958	52	5.1
46091	Marshall County, SD	2429	2313	116	4.8
46107	Potter County, SD	1019	986	33	3.2
46109	Roberts County, SD	4807	4499	308	6.4
46111	Sanborn County, SD	1159	1112	47	4.1
46115	Spink County, SD	3111	2985	126	4.1
47027	Clay County, TN	2721	2500	221	8.1
47049	Fentress County, TN	7503	7014	489	6.5
47137	Pickett County, TN	2241	2104	137	6.1
47175	Van Buren County, TN	2011	1836	175	8.7
48079	Cochran County, TX	1114	1035	79	7.1
48087	Collingsworth County, TX	1081	1035	46	4.3
48155	Foard County, TX	576	552	24	4.2
48263	Kent County, TX	458	440	18	3.9
48271	Kinney County, TX	1312	1233	79	6
48319	Mason County, TX	1726	1630	96	5.6
48333	Mills County, TX	1889	1811	78	4.1
48385	Real County, TX	1072	1000	72	6.7
48393	Roberts County, TX	414	395	19	4.6
48405	San Augustine County, TX	3020	2730	290	9.6
48421	Sherman County, TX	1307	1267	40	3.1
48483	Wheeler County, TX	2226	2092	134	6
49009	Daggett County, UT	401	383	18	4.5
49015	Emery County, UT	4372	4166	206	4.7
51027	Buchanan County, VA	6450	5836	614	9.5
54021	Gilmer County, WV	2342	2106	236	10.1
54047	McDowell County, WV	4478	3914	564	12.6
54075	Pocahontas County, WV	3827	3473	354	9.3
56011	Crook County, WY	3908	3757	151	3.9
56035	Sublette County, WY	4059	3765	294	7.2
1025	Clarke County, AL	7769	7069	700	9
1035	Conecuh County, AL	4529	4198	331	7.3
1091	Marengo County, AL	7766	7281	485	6.2
1093	Marion County, AL	13034	12373	661	5.1
1099	Monroe County, AL	7474	6864	610	8.2
2016	Aleutians West Census Area, AK	3732	3563	169	4.5
2050	Bethel Census Area, AK	6963	6158	805	11.6
2122	Kenai Peninsula Borough, AK	26341	23948	2393	9.1
2150	Kodiak Island Borough, AK	6090	5710	380	6.2
2180	Nome Census Area, AK	3927	3516	411	10.5
2185	North Slope Borough, AK	3200	3011	189	5.9
2188	Northwest Arctic Borough, AK	2942	2590	352	12
2195	Petersburg Borough, AK	1415	1292	123	8.7
2220	Sitka Borough/city, AK	4132	3847	285	6.9
2261	Valdez-Cordova Census Area, AK	4522	4127	395	8.7
5003	Ashley County, AR	7186	6518	668	9.3
5113	Polk County, AR	8013	7482	531	6.6
6027	Inyo County, CA	8305	7658	647	7.8
6051	Mono County, CA	7846	6917	929	11.8
8003	Alamosa County, CO	8403	7868	535	6.4
8015	Chaffee County, CO	9741	9126	615	6.3
8051	Gunnison County, CO	11347	10596	751	6.6
8063	Kit Carson County, CO	4249	4130	119	2.8
8071	Las Animas County, CO	6497	6014	483	7.4
8099	Prowers County, CO	6213	5937	276	4.4
8105	Rio Grande County, CO	5453	5068	385	7.1
8125	Yuma County, CO	5604	5445	159	2.8
13239	Quitman County, GA	800	748	52	6.5
13271	Telfair County, GA	3782	3408	374	9.9
16007	Bear Lake County, ID	3075	2946	129	4.2
16059	Lemhi County, ID	3651	3408	243	6.7
17159	Richland County, IL	7362	6864	498	6.8
17185	Wabash County, IL	5718	5242	476	8.3
19027	Carroll County, IA	10546	10129	417	4
19047	Crawford County, IA	7931	7515	416	5.2
19109	Kossuth County, IA	8087	7779	308	3.8
19167	Sioux County, IA	20757	20199	558	2.7
19191	Winneshiek County, IA	11095	10550	545	4.9
20001	Allen County, KS	6392	6045	347	5.4
20123	Mitchell County, KS	3429	3335	94	2.7
20137	Norton County, KS	2644	2573	71	2.7
20147	Phillips County, KS	2651	2560	91	3.4
20151	Pratt County, KS	4926	4748	178	3.6
20181	Sherman County, KS	2894	2795	99	3.4
20193	Thomas County, KS	4230	4108	122	2.9
21071	Floyd County, KY	10688	9705	983	9.2
21115	Johnson County, KY	6589	6016	573	8.7
21175	Morgan County, KY	4352	4052	300	6.9
21193	Perry County, KY	8181	7453	728	8.9
21195	Pike County, KY	19196	17574	1622	8.4
22035	East Carroll Parish, LA	1824	1610	214	11.7
22041	Franklin Parish, LA	7380	6783	597	8.1
23003	Aroostook County, ME	29255	27642	1613	5.5
23013	Knox County, ME	19535	18481	1054	5.4
23029	Washington County, ME	13408	12575	833	6.2
25019	Nantucket County/town, MA	7664	6873	791	10.3
26029	Charlevoix County, MI	12649	11405	1244	9.8
26031	Cheboygan County, MI	10277	8779	1498	14.6
26047	Emmet County, MI	17219	15415	1804	10.5
26053	Gogebic County, MI	5852	5402	450	7.7
26063	Huron County, MI	15554	14231	1323	8.5
26069	Iosco County, MI	10152	9089	1063	10.5
26129	Ogemaw County, MI	8048	7167	881	10.9
26137	Otsego County, MI	11651	10455	1196	10.3
26143	Roscommon County, MI	7835	6885	950	12.1
27091	Martin County, MN	9994	9474	520	5.2
27135	Roseau County, MN	7917	7462	455	5.7
27149	Stevens County, MN	5446	5269	177	3.3
29079	Grundy County, MO	4333	4134	199	4.6
29081	Harrison County, MO	3811	3639	172	4.5
29115	Linn County, MO	5093	4781	312	6.1
29217	Vernon County, MO	9436	9025	411	4.4
30001	Beaverhead County, MT	5050	4847	203	4
30017	Custer County, MT	6230	5930	300	4.8
30021	Dawson County, MT	4668	4408	260	5.6
30027	Fergus County, MT	5844	5578	266	4.6
30035	Glacier County, MT	5443	4907	536	9.8
30041	Hill County, MT	7608	7229	379	5
30073	Pondera County, MT	2685	2553	132	4.9
30101	Toole County, MT	2141	2034	107	5
30105	Valley County, MT	4056	3880	176	4.3
31013	Box Butte County, NE	5405	5148	257	4.8
31031	Cherry County, NE	3334	3253	81	2.4
31033	Cheyenne County, NE	4224	4038	186	4.4
31045	Dawes County, NE	4952	4812	140	2.8
31089	Holt County, NE	5730	5590	140	2.4
31127	Nemaha County, NE	3581	3453	128	3.6
31145	Red Willow County, NE	5854	5663	191	3.3
31147	Richardson County, NE	4197	4062	135	3.2
32021	Mineral County, NV	2093	1976	117	5.6
32033	White Pine County, NV	4595	4403	192	4.2
35007	Colfax County, NM	5191	4824	367	7.1
35037	Quay County, NM	3099	2870	229	7.4
35059	Union County, NM	1653	1569	84	5.1
37015	Bertie County, NC	7618	7132	486	6.4
38057	Mercer County, ND	3616	3408	208	5.8
38071	Ramsey County, ND	5703	5447	256	4.5
40089	McCurtain County, OK	15143	14141	1002	6.6
41001	Baker County, OR	7285	6763	522	7.2
41025	Harney County, OR	3670	3454	216	5.9
46123	Tripp County, SD	3013	2919	94	3.1
46129	Walworth County, SD	2132	2001	131	6.1
48043	Brewster County, TX	4083	3811	272	6.7
48075	Childress County, TX	3054	2940	114	3.7
48105	Crockett County, TX	1559	1421	138	8.9
48111	Dallam County, TX	3750	3645	105	2.8
48205	Hartley County, TX	2633	2579	54	2.1
48211	Hemphill County, TX	1850	1768	82	4.4
48299	Llano County, TX	8479	7993	486	5.7
48357	Ochiltree County, TX	4071	3835	236	5.8
48371	Pecos County, TX	6517	5987	530	8.1
48377	Presidio County, TX	3231	2755	476	14.7
48429	Stephens County, TX	4020	3775	245	6.1
48435	Sutton County, TX	1229	1109	120	9.8
48503	Young County, TX	7803	7393	410	5.3
49019	Grand County, UT	6161	5574	587	9.5
49027	Millard County, UT	5941	5749	192	3.2
49041	Sevier County, UT	9811	9395	416	4.2
50019	Orleans County, VT	12702	11694	1008	7.9
51173	Smyth County, VA	13384	12523	861	6.4
55003	Ashland County, WI	7686	7035	651	8.5
55129	Washburn County, WI	7777	7240	537	6.9
56029	Park County, WY	15380	14549	831	5.4
56031	Platte County, WY	4651	4418	233	5
56043	Washakie County, WY	4004	3793	211	5.3
2013	Aleutians East Borough, AK	2523	2423	100	4
2060	Bristol Bay Borough, AK	417	386	31	7.4
2070	Dillingham Census Area, AK	1742	1599	143	8.2
2100	Haines Borough, AK	1018	859	159	15.6
2158	Kusilvak Census Area, AK	2299	1854	445	19.4
2164	Lake and Peninsula Borough, AK	689	624	65	9.4
2230	Skagway Municipality, AK	606	476	130	21.5
2240	Southeast Fairbanks Census Area, AK	2934	2717	217	7.4
2275	Wrangell Borough/city, AK	984	901	83	8.4
2282	Yakutat Borough/city, AK	260	238	22	8.5
2290	Yukon-Koyukuk Census Area, AK	2308	2028	280	12.1
6063	Plumas County, CA	7559	6753	806	10.7
8009	Baca County, CO	2132	2082	50	2.3
8011	Bent County, CO	1828	1748	80	4.4
8017	Cheyenne County, CO	1103	1076	27	2.4
8021	Conejos County, CO	4071	3844	227	5.6
8023	Costilla County, CO	1823	1691	132	7.2
8033	Dolores County, CO	1137	1059	78	6.9
8053	Hinsdale County, CO	426	408	18	4.2
8061	Kiowa County, CO	956	934	22	2.3
8079	Mineral County, CO	469	442	27	5.8
8109	Saguache County, CO	3438	3196	242	7
8113	San Miguel County, CO	5410	4818	592	10.9
12067	Lafayette County, FL	2781	2664	117	4.2
13061	Clay County, GA	896	785	111	12.4
13125	Glascock County, GA	1244	1193	51	4.1
13281	Towns County, GA	3841	3585	256	6.7
13291	Union County, GA	10464	10006	458	4.4
16003	Adams County, ID	1758	1594	164	9.3
16033	Clark County, ID	378	363	15	4
17047	Edwards County, IL	2681	2462	219	8.2
17069	Hardin County, IL	1289	1171	118	9.2
19003	Adams County, IA	2029	1952	77	3.8
19053	Decatur County, IA	4266	4104	162	3.8
19159	Ringgold County, IA	2377	2285	92	3.9
19185	Wayne County, IA	2783	2658	125	4.5
20007	Barber County, KS	2324	2246	78	3.4
20023	Cheyenne County, KS	1314	1285	29	2.2
20033	Comanche County, KS	860	830	30	3.5
20039	Decatur County, KS	1241	1195	46	3.7
20063	Gove County, KS	1465	1423	42	2.9
20065	Graham County, KS	1126	1074	52	4.6
20071	Greeley County, KS	825	810	15	1.8
20089	Jewell County, KS	1249	1210	39	3.1
20101	Lane County, KS	755	733	22	2.9
20109	Logan County, KS	1614	1573	41	2.5
20129	Morton County, KS	1139	1105	34	3
20135	Ness County, KS	1334	1288	46	3.4
20141	Osborne County, KS	1965	1908	57	2.9
20153	Rawlins County, KS	1547	1508	39	2.5
20157	Republic County, KS	2318	2241	77	3.3
20179	Sheridan County, KS	1462	1429	33	2.3
20183	Smith County, KS	1996	1943	53	2.7
20187	Stanton County, KS	1080	1054	26	2.4
20199	Wallace County, KS	825	807	18	2.2
20201	Washington County, KS	3062	2986	76	2.5
20203	Wichita County, KS	1258	1232	26	2.1
20207	Woodson County, KS	1567	1474	93	5.9
21025	Breathitt County, KY	3285	2949	336	10.2
21053	Clinton County, KY	3978	3776	202	5.1
21063	Elliott County, KY	1967	1769	198	10.1
21119	Knott County, KY	4350	3979	371	8.5
21129	Lee County, KY	2047	1904	143	7
21153	Magoffin County, KY	3208	2692	516	16.1
21159	Martin County, KY	2498	2208	290	11.6
21189	Owsley County, KY	1061	982	79	7.4
21237	Wolfe County, KY	2059	1901	158	7.7
26039	Crawford County, MI	5660	5070	590	10.4
26135	Oscoda County, MI	2910	2563	347	11.9
27011	Big Stone County, MN	2517	2398	119	4.7
27031	Cook County, MN	2948	2699	249	8.4
27069	Kittson County, MN	2411	2300	111	4.6
27073	Lac qui Parle County, MN	3529	3363	166	4.7
27077	Lake of the Woods County, MN	2442	2292	150	6.1
27155	Traverse County, MN	1753	1676	77	4.4
29129	Mercer County, MO	1889	1821	68	3.6
29179	Reynolds County, MO	2922	2756	166	5.7
30005	Blaine County, MT	2278	2169	109	4.8
30011	Carter County, MT	649	630	19	2.9
30019	Daniels County, MT	898	873	25	2.8
30025	Fallon County, MT	1648	1582	66	4
30033	Garfield County, MT	741	721	20	2.7
30051	Liberty County, MT	969	942	27	2.8
30055	McCone County, MT	961	933	28	2.9
30069	Petroleum County, MT	264	255	9	3.4
30071	Phillips County, MT	1891	1798	93	4.9
30075	Powder River County, MT	976	946	30	3.1
30079	Prairie County, MT	471	439	32	6.8
30087	Rosebud County, MT	3742	3530	212	5.7
30091	Sheridan County, MT	1769	1684	85	4.8
30097	Sweet Grass County, MT	1861	1794	67	3.6
30107	Wheatland County, MT	754	699	55	7.3
30109	Wibaux County, MT	454	431	23	5.1
31015	Boyd County, NE	1057	1027	30	2.8
31017	Brown County, NE	1397	1359	38	2.7
31029	Chase County, NE	2285	2244	41	1.8
31049	Deuel County, NE	956	927	29	3
31057	Dundy County, NE	1158	1133	25	2.2
31065	Furnas County, NE	2593	2521	72	2.8
31069	Garden County, NE	1061	1024	37	3.5
31071	Garfield County, NE	1147	1124	23	2
31075	Grant County, NE	409	401	8	2
31087	Hitchcock County, NE	1304	1259	45	3.5
31091	Hooker County, NE	412	401	11	2.7
31103	Keya Paha County, NE	597	585	12	2
31115	Loup County, NE	409	397	12	2.9
31129	Nuckolls County, NE	2454	2388	66	2.7
31149	Rock County, NE	873	855	18	2.1
31161	Sheridan County, NE	2708	2643	65	2.4
31169	Thayer County, NE	2781	2705	76	2.7
31175	Valley County, NE	2124	2064	60	2.8
31183	Wheeler County, NE	550	540	10	1.8
35011	De Baca County, NM	710	675	35	4.9
35021	Harding County, NM	276	264	12	4.3
37039	Cherokee County, NC	10952	10084	868	7.9
37043	Clay County, NC	4079	3778	301	7.4
37075	Graham County, NC	3077	2772	305	9.9
38001	Adams County, ND	999	961	38	3.8
38005	Benson County, ND	2322	2165	157	6.8
38011	Bowman County, ND	1639	1584	55	3.4
38019	Cavalier County, ND	1911	1845	66	3.5
38027	Eddy County, ND	1206	1149	57	4.7
38033	Golden Valley County, ND	853	826	27	3.2
38039	Griggs County, ND	1014	983	31	3.1
38051	McIntosh County, ND	1097	1061	36	3.3
38067	Pembina County, ND	3386	3190	196	5.8
38079	Rolette County, ND	4743	4106	637	13.4
38083	Sheridan County, ND	685	644	41	6
38087	Slope County, ND	391	379	12	3.1
38095	Towner County, ND	1157	1125	32	2.8
38103	Wells County, ND	1920	1836	84	4.4
40127	Pushmataha County, OK	4474	4176	298	6.7
41021	Gilliam County, OR	997	936	61	6.1
41023	Grant County, OR	3211	2944	267	8.3
41037	Lake County, OR	3647	3441	206	5.6
46007	Bennett County, SD	1070	1016	54	5
46015	Brule County, SD	2462	2353	109	4.4
46017	Buffalo County, SD	691	636	55	8
46021	Campbell County, SD	783	754	29	3.7
46023	Charles Mix County, SD	3788	3548	240	6.3
46031	Corson County, SD	1343	1276	67	5
46041	Dewey County, SD	2255	2081	174	7.7
46053	Gregory County, SD	2038	1960	78	3.8
46063	Harding County, SD	718	692	26	3.6
46095	Mellette County, SD	708	664	44	6.2
46121	Todd County, SD	3066	2869	197	6.4
47039	Decatur County, TN	4455	4072	383	8.6
48045	Briscoe County, TX	567	540	27	4.8
48101	Cottle County, TX	570	542	28	4.9
48109	Culberson County, TX	1150	1075	75	6.5
48137	Edwards County, TX	1251	1207	44	3.5
48191	Hall County, TX	1076	1014	62	5.8
48243	Jeff Davis County, TX	975	925	50	5.1
48269	King County, TX	236	232	4	1.7
48275	Knox County, TX	1454	1372	82	5.6
48295	Lipscomb County, TX	1541	1477	64	4.2
48301	Loving County, TX	289	284	5	1.7
48311	McMullen County, TX	727	707	20	2.8
48327	Menard County, TX	866	821	45	5.2
48345	Motley County, TX	437	417	20	4.6
48433	Stonewall County, TX	576	547	29	5
48443	Terrell County, TX	393	375	18	4.6
48447	Throckmorton County, TX	635	604	31	4.9
49017	Garfield County, UT	2634	2365	269	10.2
49031	Piute County, UT	477	447	30	6.3
49055	Wayne County, UT	1428	1320	108	7.6
51077	Grayson County, VA	8104	7644	460	5.7
51103	Lancaster County, VA	5370	4981	389	7.2
51111	Lunenburg County, VA	5266	4988	278	5.3
51133	Northumberland County, VA	5686	5326	360	6.3
51159	Richmond County, VA	4048	3851	197	4.9
53019	Ferry County, WA	2469	2184	285	11.5
53055	San Juan County, WA	8379	7714	665	7.9
54023	Grant County, WV	5969	5580	389	6.5
54101	Webster County, WV	3328	3016	312	9.4
55041	Forest County, WI	3890	3407	483	12.4
55051	Iron County, WI	2547	2261	286	11.2
55099	Price County, WI	6209	5785	424	6.8
55113	Sawyer County, WI	7910	7289	621	7.9
55125	Vilas County, WI	10221	9480	741	7.2
56003	Big Horn County, WY	5381	5112	269	5
56027	Niobrara County, WY	1265	1217	48	3.8
1000	Alabama	2230118	2099062	131056	5.9
2000	Alaska	347414	320219	27195	7.8
4000	Arizona	3570220	3288150	282070	7.9
5000	Arkansas	1354296	1272344	81952	6.1
6000	California	18821167	16913078	1908089	10.1
8000	Colorado	3122237	2895473	226764	7.3
9000	Connecticut	1872631	1724621	148010	7.9
10000	Delaware	484358	446458	37900	7.8
11000	District of Columbia	409734	376839	32895	8
12000	Florida	10114329	9332838	781491	7.7
13000	Georgia	5072155	4741191	330964	6.5
15000	Hawaii	648191	572796	75395	11.6
16000	Idaho	892151	844365	47786	5.4
17000	Illinois	6249147	5657532	591615	9.5
18000	Indiana	3319010	3082982	236028	7.1
19000	Iowa	1666420	1578765	87655	5.3
20000	Kansas	1497003	1408995	88008	5.9
21000	Kentucky	2019887	1885645	134242	6.6
22000	Louisiana	2076643	1905238	171405	8.3
23000	Maine	676547	639759	36788	5.4
24000	Maryland	3172796	2958287	214509	6.8
25000	Massachusetts	3658321	3334126	324195	8.9
26000	Michigan	4840843	4362728	478115	9.9
27000	Minnesota	3094702	2903562	191140	6.2
28000	Mississippi	1259347	1157546	101801	8.1
29000	Missouri	3052700	2867162	185538	6.1
30000	Montana	539883	508095	31788	5.9
31000	Nebraska	1035175	991388	43787	4.2
32000	Nevada	1530872	1334416	196456	12.8
33000	New Hampshire	761732	710817	50915	6.7
34000	New Jersey	4495166	4055260	439906	9.8
35000	New Mexico	943287	863874	79413	8.4
36000	New York	9289171	8361006	928165	10
37000	North Carolina	4950859	4587407	363452	7.3
38000	North Dakota	406839	386006	20833	5.1
39000	Ohio	5754286	5285484	468802	8.1
40000	Oklahoma	1848485	1734924	113561	6.1
41000	Oregon	2104657	1945212	159445	7.6
42000	Pennsylvania	6387869	5807942	579927	9.1
44000	Rhode Island	541680	490845	50835	9.4
45000	South Carolina	2384590	2237407	147183	6.2
46000	South Dakota	463256	441745	21511	4.6
47000	Tennessee	3289426	3043894	245532	7.5
48000	Texas	13983319	12915337	1067982	7.6
49000	Utah	1632215	1555782	76433	4.7
50000	Vermont	330058	311645	18413	5.6
51000	Virginia	4346644	4075237	271407	6.2
53000	Washington	3914869	3585782	329087	8.4
54000	West Virginia	792156	726023	66133	8.3
55000	Wisconsin	3065402	2872609	192793	6.3
56000	Wyoming	296801	279462	17339	5.8
\.


--
-- Name: election election_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.election
    ADD CONSTRAINT election_pkey PRIMARY KEY (county, state);


--
-- Name: fips fipstable_fips_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fips
    ADD CONSTRAINT fipstable_fips_key PRIMARY KEY (fips);


--
-- Name: unemployment unemp_fips_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unemployment
    ADD CONSTRAINT unemp_fips_key PRIMARY KEY (fips_code);


--
-- Name: fips fipskey_fips_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fips
    ADD CONSTRAINT fipskey_fips_fkey FOREIGN KEY (fips) REFERENCES public.unemployment(fips_code);


--
-- Name: unemployment unemp_fips_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unemployment
    ADD CONSTRAINT unemp_fips_fkey FOREIGN KEY (fips_code) REFERENCES public.fips(fips);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12
-- Dumped by pg_dump version 10.12

-- Started on 2021-04-26 02:39:23

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
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 25583)
-- Name: apuestas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.apuestas (
    id_apuesta integer NOT NULL,
    id_partido integer,
    monto_apuesta double precision,
    lwin_awin_draw character varying,
    usuario character varying
);


ALTER TABLE public.apuestas OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 25581)
-- Name: apuestas_id_apuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.apuestas_id_apuesta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apuestas_id_apuesta_seq OWNER TO postgres;

--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 198
-- Name: apuestas_id_apuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.apuestas_id_apuesta_seq OWNED BY public.apuestas.id_apuesta;


--
-- TOC entry 207 (class 1259 OID 25622)
-- Name: equipos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipos (
    id_equipo integer NOT NULL,
    nombre character varying,
    id_liga integer
);


ALTER TABLE public.equipos OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 25620)
-- Name: equipos_id_equipo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipos_id_equipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.equipos_id_equipo_seq OWNER TO postgres;

--
-- TOC entry 2924 (class 0 OID 0)
-- Dependencies: 206
-- Name: equipos_id_equipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipos_id_equipo_seq OWNED BY public.equipos.id_equipo;


--
-- TOC entry 211 (class 1259 OID 25644)
-- Name: estadios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estadios (
    id_estadio integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.estadios OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 25642)
-- Name: estadios_id_estadio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estadios_id_estadio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estadios_id_estadio_seq OWNER TO postgres;

--
-- TOC entry 2925 (class 0 OID 0)
-- Dependencies: 210
-- Name: estadios_id_estadio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estadios_id_estadio_seq OWNED BY public.estadios.id_estadio;


--
-- TOC entry 215 (class 1259 OID 25682)
-- Name: goles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.goles (
    id_gol integer NOT NULL,
    id_jugador integer,
    id_partido integer,
    id_liga integer
);


ALTER TABLE public.goles OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 25680)
-- Name: goles_id_gol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.goles_id_gol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goles_id_gol_seq OWNER TO postgres;

--
-- TOC entry 2926 (class 0 OID 0)
-- Dependencies: 214
-- Name: goles_id_gol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.goles_id_gol_seq OWNED BY public.goles.id_gol;


--
-- TOC entry 213 (class 1259 OID 25663)
-- Name: jugadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jugadores (
    id_jugador integer NOT NULL,
    nombre character varying,
    posicion character varying,
    id_equipo integer
);


ALTER TABLE public.jugadores OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 25661)
-- Name: jugadores_id_jugador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jugadores_id_jugador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jugadores_id_jugador_seq OWNER TO postgres;

--
-- TOC entry 2927 (class 0 OID 0)
-- Dependencies: 212
-- Name: jugadores_id_jugador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jugadores_id_jugador_seq OWNED BY public.jugadores.id_jugador;


--
-- TOC entry 205 (class 1259 OID 25611)
-- Name: ligas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ligas (
    id_liga integer NOT NULL,
    nombre character varying,
    id_pais integer
);


ALTER TABLE public.ligas OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 25609)
-- Name: ligas_id_liga_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ligas_id_liga_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ligas_id_liga_seq OWNER TO postgres;

--
-- TOC entry 2928 (class 0 OID 0)
-- Dependencies: 204
-- Name: ligas_id_liga_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ligas_id_liga_seq OWNED BY public.ligas.id_liga;


--
-- TOC entry 203 (class 1259 OID 25600)
-- Name: paises; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paises (
    id_pais integer NOT NULL,
    pais character varying
);


ALTER TABLE public.paises OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 25598)
-- Name: paises_id_pais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paises_id_pais_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paises_id_pais_seq OWNER TO postgres;

--
-- TOC entry 2929 (class 0 OID 0)
-- Dependencies: 202
-- Name: paises_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paises_id_pais_seq OWNED BY public.paises.id_pais;


--
-- TOC entry 209 (class 1259 OID 25633)
-- Name: partidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partidos (
    id_partido integer NOT NULL,
    id_equipo_local integer,
    id_equipo_visitante integer,
    id_liga integer,
    id_estadio integer,
    fecha date,
    temporada character varying,
    status integer,
    nombre_local character varying,
    nombre_visitante character varying,
    score_local integer,
    score_visitante integer
);


ALTER TABLE public.partidos OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 25631)
-- Name: partidos_id_partido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.partidos_id_partido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partidos_id_partido_seq OWNER TO postgres;

--
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 208
-- Name: partidos_id_partido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.partidos_id_partido_seq OWNED BY public.partidos.id_partido;


--
-- TOC entry 201 (class 1259 OID 25591)
-- Name: resultados_apuestas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resultados_apuestas (
    id_resultado_apuesta integer NOT NULL,
    id_apuesta integer,
    ganada boolean,
    empatada boolean DEFAULT false,
    monto_ganado_perdido integer
);


ALTER TABLE public.resultados_apuestas OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 25589)
-- Name: resultados_apuestas_id_resultado_apuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resultados_apuestas_id_resultado_apuesta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resultados_apuestas_id_resultado_apuesta_seq OWNER TO postgres;

--
-- TOC entry 2931 (class 0 OID 0)
-- Dependencies: 200
-- Name: resultados_apuestas_id_resultado_apuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resultados_apuestas_id_resultado_apuesta_seq OWNED BY public.resultados_apuestas.id_resultado_apuesta;


--
-- TOC entry 197 (class 1259 OID 25572)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character varying,
    pais character varying,
    fecha_nacimiento date
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 25570)
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 196
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- TOC entry 2733 (class 2604 OID 25586)
-- Name: apuestas id_apuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.apuestas ALTER COLUMN id_apuesta SET DEFAULT nextval('public.apuestas_id_apuesta_seq'::regclass);


--
-- TOC entry 2738 (class 2604 OID 25625)
-- Name: equipos id_equipo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipos ALTER COLUMN id_equipo SET DEFAULT nextval('public.equipos_id_equipo_seq'::regclass);


--
-- TOC entry 2740 (class 2604 OID 25647)
-- Name: estadios id_estadio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadios ALTER COLUMN id_estadio SET DEFAULT nextval('public.estadios_id_estadio_seq'::regclass);


--
-- TOC entry 2742 (class 2604 OID 25685)
-- Name: goles id_gol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goles ALTER COLUMN id_gol SET DEFAULT nextval('public.goles_id_gol_seq'::regclass);


--
-- TOC entry 2741 (class 2604 OID 25666)
-- Name: jugadores id_jugador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jugadores ALTER COLUMN id_jugador SET DEFAULT nextval('public.jugadores_id_jugador_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 25614)
-- Name: ligas id_liga; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligas ALTER COLUMN id_liga SET DEFAULT nextval('public.ligas_id_liga_seq'::regclass);


--
-- TOC entry 2736 (class 2604 OID 25603)
-- Name: paises id_pais; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paises ALTER COLUMN id_pais SET DEFAULT nextval('public.paises_id_pais_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 25636)
-- Name: partidos id_partido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partidos ALTER COLUMN id_partido SET DEFAULT nextval('public.partidos_id_partido_seq'::regclass);


--
-- TOC entry 2734 (class 2604 OID 25594)
-- Name: resultados_apuestas id_resultado_apuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados_apuestas ALTER COLUMN id_resultado_apuesta SET DEFAULT nextval('public.resultados_apuestas_id_resultado_apuesta_seq'::regclass);


--
-- TOC entry 2732 (class 2604 OID 25575)
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 2898 (class 0 OID 25583)
-- Dependencies: 199
-- Data for Name: apuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.apuestas (id_apuesta, id_partido, monto_apuesta, lwin_awin_draw, usuario) FROM stdin;
34	227790	700	local win	rick
\.


--
-- TOC entry 2906 (class 0 OID 25622)
-- Dependencies: 207
-- Data for Name: equipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipos (id_equipo, nombre, id_liga) FROM stdin;
3290	FC Barcelona U19	538
6341	CF Villarreal B	538
6342	Atletico Levante UD	538
6343	Real Sociedad B	538
3295	Atletico Madrid U19	538
6344	Burgos CF	538
6345	Barakaldo CF	538
6346	Unionistas de Salamanca CF	538
6347	AE Prat	538
6348	Hercules CF	538
6349	Cultural Leonesa	538
6350	SD Amorebieta	538
6351	Sevilla Atletico	538
6352	Yeclano Deportivo	538
6353	Pontevedra CF	538
6354	FC Coruxo	538
6355	CD Calahorra	538
6335	SD Leioa	538
6357	CD San Fernando	538
6358	RC Recreativo de Huelva	538
6359	Cp Villarrobledo	538
6360	Real Balompedica Linense	538
6361	Internacional de Madrid Boadilla	538
6362	Celta de Vigo B	538
6368	SD Ejea	538
6369	Orihuela CF	538
6372	UP Langreo	538
6374	CD Atletico Baleares	538
6376	Espanyol Barcelona B	538
6379	Pd Santa Eulalia	538
6380	Real Oviedo B	538
6381	Las Rozas CF	538
6382	Real Madrid Castilla	538
6383	Melilla UD	538
3513	FC Sevilla	538
6339	Marino Luanco	538
6384	CF Getafe B	538
6385	Deportivo Alaves B	538
6386	UD Logrones	538
3308	Real Madrid U19	538
6387	San Sebastian Reyes	538
6338	Sporting Gijon B	538
6388	Racing Club de Ferrol	538
6389	UD Las Palmas B	538
6390	UD Ibiza	538
6337	CF Rayo Majadahonda	538
6336	CD Guijuelo	538
6391	Club Haro Deportivo	538
6392	Athletic Bilbao B	538
6393	CF Badalona	538
6394	Barcelona B FC	538
6395	Olot	538
6396	CD Ebro	538
6397	CD Tudelano	538
6398	CA Osasuna B	538
6399	Real Valladolid B	538
6400	CF Valencia	538
6401	CD Izarra	538
6402	Real Madrid	538
6403	Valencia CF Mestalla	538
6404	FC Barcelona	538
6405	Lleida Esportiu	538
6340	Atletico Madrid B	538
6406	Atletico Madrid	538
6407	CF Cadiz B	538
6408	Real Murcia CF	538
6409	CE Sabadell	538
6410	CD Castellon	538
6411	CF La Nucia	538
6412	UD Cornella	538
6413	Gimnastic de Tarragona	538
6414	UE Llagostera	538
6415	Salamanca CF Uds	538
6416	Arenas Club de Getxo	538
6417	UCAM Murcia	538
6418	Atletico Sanluqueno	538
6419	CF Algeciras	538
6420	Villarrubia CF	538
6421	CF Talavera de La Reina	538
6422	Marbella FC	538
6423	Merida UD	538
6424	CD Don Benito	538
6425	FC Cartagena	538
6426	CD Badajoz	538
6427	Cordoba CF	538
6428	Club Recreativo Granada	538
6453	CD Lugo	538
6454	Extremadura UD	538
6455	Racing Santander	538
6456	Malaga CF	538
6457	UD Almeria	538
6458	Albacete Balompie	538
6459	Elche CF	538
6460	Fuenlabrada	538
6461	Real Zaragoza	538
6462	Tenerife CD	538
6463	Rayo Vallecano	538
6464	CD Mirandes	538
6465	Numancia CD	538
6466	Alcorcon AD	538
6467	RC Deportivo La Coruna	538
6468	Real Oviedo	538
6469	Girona FC	538
6470	Sporting Gijon	538
6471	UD Las Palmas	538
6472	SD Huesca	538
6473	Cadiz CF	538
6474	SD Ponferradina	538
6511	Real Jaen CF	538
6512	Deportivo Alaves Sad	538
6514	CE l’Hospitalet	538
6515	Granada CF	538
6516	SD Logrones	538
6517	SD Eibar	538
6519	CP Cacereno SAD	538
6520	RCD Mallorca	538
6521	CA Osasuna	538
6523	Pena Sport FC	538
6524	CF Reus Deportiu	538
6529	CD Mensajero	538
6530	Athletic Bilbao	538
6531	AD Ceuta	538
6532	CD Leganes	538
6533	CF Getafe	538
6534	CF Villarreal	538
6535	Real Valladolid	538
6537	Sestao River Club	538
6539	RC Celta de Vigo	538
6540	Rayo Vallecano (W)	538
6541	UD Levante	538
6542	RCD Espanyol Barcelona (W)	538
6547	UD Granadilla Tenerife Sur (W)	538
6559	Real Sociedad (W)	538
6625	CD Binisalem	538
6764	La Roda CF	538
6860	CF Peralada	538
12740	FC Sevilla U19	538
6548	Sevilla FC (W)	538
6562	Atletico Madrid (W)	538
6628	SD Formentera	538
6850	Santfeliuenc FC	538
6861	UE Vilassar de Mar	538
6549	Levante UD (W)	538
6576	CD Teruel	538
6643	UD Las Palmas C	538
6852	UA Horta	538
6862	EC Granollers	538
6546	RCD Espanyol Barcelona	538
6583	RS Gimnastica de Torrelavega	538
6654	CD San Roque	538
6854	Figueres	538
6864	San Cristobal Cp	538
6545	Athletic Bilbao (W)	538
6584	CF Villanovense	538
6662	Ecija Balompie	538
6855	CE Manresa	538
6865	Terrassa FC	538
6553	Valencia CF (W)	538
6585	Lorca CF	538
6666	Xerez CD	538
6856	FC Vilafranca	538
6869	UD Almeria B	538
6555	Sporting de Huelva (W)	538
6609	Cpvo Arroyo	538
6733	Real Aviles CF	538
6857	CE Europa	538
6877	CD Loja	538
6557	FC Barcelona (W)	538
6616	Betis Deportivo Balompie	538
6742	Caudal Deportivo	538
6858	UE Castelldefels	538
11293	CD Santa Teresa (W)	538
6558	Real Sociedad	538
6620	CD Constancia	538
6755	CD Guadalajara	538
6859	UE Sants	538
11922	Racing Santander B	538
850	Wolverhampton Wanderers	237
2518	Brighton & Hove Albion	237
2520	Aston Villa	237
2522	Arsenal FC	237
2523	Manchester United	237
2524	Chelsea FC	237
2525	Luton Town	237
2528	Queens Park Rangers	237
2529	Wigan Athletic	237
2532	Hull City	237
2533	Barnsley	237
2536	Sheffield Wednesday	237
2537	Brentford FC	237
2539	Blackburn Rovers	237
2541	Millwall FC	237
2543	Nottingham Forest	237
2545	Bristol City	237
2547	Huddersfield Town	237
2602	Rotherham United	237
2604	AFC Wimbledon	237
2606	Coventry City	237
2609	Gillingham FC	237
2612	Peterborough United	237
2617	Oxford United	237
2623	Milton Keynes Dons	237
2633	Exeter City	237
2643	Northampton Town	237
2653	Harrogate Town FC	237
2665	Halifax Town	237
2675	York City FC	237
2685	Gloucester City	237
2695	Darlington FC	237
2699	FC United of Manchester	237
2716	Buxton FC	237
2728	Merstham	237
2746	Hampton & Richmond	237
2760	Dartford FC	237
2770	Truro City FC	237
2784	Hayes & Yeading United F.C.	237
2804	Biggleswade Town	237
2818	Cinderford Town AFC	237
2857	Bedford Town Football Club	237
2897	Chelsea LFC (W)	237
2956	Sheffield LFC (W)	237
2975	Blackburn Rovers LFC (W)	237
10356	Dunstable Town FC	237
10502	Stocksbridge Park Steels FC	237
12423	Southampton FC	237
2510	Norwich City	237
2538	Birmingham City	237
2540	Charlton Athletic	237
2542	Preston North End	237
2544	West Bromwich Albion	237
2546	Leeds United	237
2601	Bolton Wanderers	237
2603	Ipswich Town	237
2605	Burton Albion	237
2607	Southend United	237
2610	Lincoln City	237
2613	Fleetwood Town	237
2619	Rochdale AFC	237
2627	Carlisle United	237
2638	Cheltenham Town	237
2648	Port Vale	237
2659	Bury FC	237
2663	Yeovil Town	237
2673	Notts County	237
2683	Spennymoor Town FC	237
2693	Chester FC	237
2707	Matlock Town	237
2722	Bishop´s Stortford	237
2735	Cray Wanderers	237
2740	East Thurrock United	237
2759	Wealdstone FC	237
2769	Harlow Town FC	237
2780	Metropolitan Police	237
2802	Tamworth FC	237
2816	St Neots Town	237
2843	Middlesbrough FC	237
2893	Southampton FC	237
2912	Charlton Athletic (W)	237
2973	Coventry United Lfc (W)	237
3507	The New Saints FC	237
10465	Worksop Town	237
12400	Manchester City	237
2511	AFC Bournemouth	237
2608	Doncaster Rovers	237
2611	Accrington Stanley	237
2614	Shrewsbury Town	237
2620	Wycombe Wanderers	237
2628	Crawley Town	237
2639	Morecambe FC	237
2649	Stockport County FC	237
2660	Hartlepool United FC	237
2670	Chesterfield FC	237
2680	Kettering Town	237
2690	Brackley Town FC	237
2701	Nuneaton Borough FC	237
2719	Whitby Town	237
2730	Margate FC	237
2749	Hungerford Town FC	237
2755	St Albans City	237
2765	Workington AFC	237
2775	Poole Town	237
2797	Redditch United	237
2812	Hitchin Town	237
2834	Canvey Island	237
2878	Leicester City	237
2901	Arsenal LFC (W)	237
2969	Birmingham City LFC (W)	237
3274	Liverpool U19	237
10409	Bideford FC	237
12165	Ilkeston FC	237
12427	Derby County	237
849	Newcastle United	237
2615	Portsmouth FC	237
2621	Blackpool	237
2630	Mansfield Town	237
2640	Grimsby Town	237
2650	Maidenhead United FC	237
2661	Sutton United FC	237
2671	Dover Athletic FC	237
2681	AFC Telford United	237
2691	Alfreton Town FC	237
2703	Hyde United FC	237
2720	Witton Albion	237
2733	Wingate & Finchley FC	237
2750	Weymouth FC	237
2756	Chippenham Town	237
2766	Hednesford Town	237
2776	Gosport Borough	237
2798	Banbury United	237
2813	Lowestoft Town	237
2837	Frome Town	237
2879	Stoke City	237
2902	Reading LFC (W)	237
2970	Bristol City Women (W)	237
3294	Manchester City U19	237
10452	VCD Athletic FC	237
12294	Fulham FC	237
12428	Reading FC	237
2517	Watford FC	237
2616	Sunderland AFC	237
2622	Bristol Rovers	237
2631	Crewe Alexandra	237
2641	Scunthorpe United	237
2651	Aldershot Town FC	237
2662	Barnet FC	237
2672	Eastleigh FC	237
2682	Hereford FC	237
2692	Boston United FC	237
2706	Stafford Rangers	237
2721	Grantham Town	237
2734	Kingstonian FC	237
2739	Worthing FC	237
2758	Dulwich Hamlet	237
2768	Whitehawk FC	237
2779	Merthyr Town	237
2801	St Ives Town	237
2815	Halesowen Town FC	237
2842	Derby County	237
2892	Manchester City	237
2904	Manchester City LFC (W)	237
2972	Tottenham Hotspur (W)	237
3381	Manchester United U19	237
10461	Corby Town	237
12296	Reading FC	237
12430	Tottenham Hotspur	237
2515	Crystal Palace	237
2618	Tranmere Rovers	237
2625	Salford City FC	237
2635	Forest Green Rovers	237
2645	Bradford City	237
2656	Barrow AFC	237
2667	Woking FC	237
2677	Kings Lynn FC	237
2687	Southport FC	237
2697	Havant & Waterlooville FC	237
2711	Nantwich Town	237
2725	Enfield Town	237
2744	Bath City FC	237
2752	Concord Rangers	237
2762	Eastbourne Borough	237
2772	Chesham Utd	237
2790	Dorchester Town	237
2809	Kings Langley	237
2827	AFC Sudbury	237
2867	Basingstoke Town FC	237
2898	Aston Villa Lfc (W)	237
2957	Yeovil Town (W)	237
2976	West Ham United Lfc (W)	237
10377	Cirencester Town	237
10562	Staines Town FC	237
12424	Leicester City	237
2513	Burnley FC	237
2626	Stevenage FC	237
2636	Oldham Athletic	237
2646	Cambridge United	237
2657	Torquay United	237
2668	Chorley FC	237
2678	Kidderminster Harriers FC	237
2688	Curzon Ashton FC	237
2698	Braintree Town FC	237
2712	Gainsborough Trinity	237
2727	Carshalton Athletic FC	237
2745	Chelmsford City	237
2753	Slough Town FC	237
2763	Marine FC	237
2773	Salisbury FC	237
2792	Stourbridge FC	237
2810	Leiston FC	237
2830	Sutton Coldfield	237
2871	Brentwood Town FC	237
2899	Manchester United (W)	237
2966	Everton LFC (W)	237
2977	Lewes FC (W)	237
10385	Bury Town FC	237
10584	Skelmersdale United	237
12425	Middlesbrough FC	237
2516	Everton FC	237
2632	Plymouth Argyle	237
2642	Swindon Town	237
2652	AFC Fylde	237
2664	Ebbsfleet United FC	237
2674	Altrincham FC	237
2684	Blyth Spartans AFC	237
2694	Farsley Celtic FC	237
2709	Mickleover Sports	237
2723	Bognor Regis Town	237
2738	Folkestone Invicta	237
2757	Tonbridge Angels	237
2767	Burgess Hill Town	237
2778	Harrow Borough	237
2800	Needham Market FC	237
2814	Bedworth United	237
2839	Paulton Rovers	237
2888	West Ham United	237
2903	Sheffield United LFC(W)	237
2971	Durham LFC (W)	237
3300	Tottenham Hotspur U19	237
10457	Frickley Athletic	237
12295	Tottenham Hotspur	237
12429	Fulham FC	237
2512	Sheffield United	237
2634	Macclesfield Town	237
2644	Walsall FC	237
2654	Solihull Moors FC	237
2666	Dagenham & Redbridge FC	237
2676	Guiseley FC	237
2686	Gateshead FC	237
2696	Maidstone United FC	237
2710	Stalybridge Celtic	237
2724	Lewes FC	237
2743	Leatherhead FC	237
2751	Oxford City	237
2761	Billericay Town	237
2771	Weston Super Mare FC	237
2785	Hendon FC	237
2808	Rushall Olympic	237
2823	Hastings United	237
2862	Stamford AFC	237
2895	Brighton and Hove Albion	237
2940	Sunderland AFC (W)	237
2974	Liverpool LFC (W)	237
10345	Grays Athletic	237
10478	Kendall Town	237
12401	West Ham United	237
2509	Liverpool FC	237
2637	Leyton Orient	237
2647	Colchester United	237
2658	Boreham Wood FC	237
2669	Bromley FC	237
2679	Leamington FC	237
2689	Bradford Park Avenue AFC	237
2700	Ashton United FC	237
2717	Warrington Town	237
2729	AFC Hornchurch	237
2748	Hemel Hempstead	237
2754	Dorking Wanderers	237
2764	North Ferriby Utd	237
2774	Farnborough FC	237
2795	Barwell	237
2811	Coalville Town	237
2831	AFC Totton	237
2873	Ramsbottom United	237
2900	Brighton & Hove Albion LFC (W)	237
2967	London Bees LFC (W)	237
2979	Crystal Palace (W)	237
10406	Cambridge City	237
10591	Worcester City	237
12426	Stoke City	237
6543	Real Betis Balompie	538
6582	UE Sant Andreu	538
6649	CD Marino	538
6853	CF Pobla de Mafumet	538
6863	FC Cerdanyola Del Valles	538
\.


--
-- TOC entry 2910 (class 0 OID 25644)
-- Dependencies: 211
-- Data for Name: estadios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estadios (id_estadio, nombre) FROM stdin;
1514	Estadio Nuevo Los Carmenes
1475	Estadio Reino de Leon
2966	Estadio Nuevo Lasesarre
2967	Sagnier El Prat
2968	Ciudad Deportiva Jose Ramon Cisneros Palacios
2969	Campo Municipal La Planilla
2970	Estadio Ibroamericano 2010
2971	Camp de la Ciutat Esportiva del RCD Espanyol
2972	Estadio Alvarez Claro
2973	Estadi Municipal de Badalona
2974	Estadio Jose Antonio Elola
2975	Nova Creu Alta
1529	Estadio Jose Rico Perez
2976	Nou Estadi Municipal
2977	Estadio de La Condomina
2978	Municipal El Prado
2979	Cartagonova
2980	Estadio Nuevo Arcangel
2981	Municipal de Barreiro
2982	Campo Municipal Nuevo Urritxe
1557	Estadio Cerro del Espino
2983	San Mames
2984	Estadi Palamos Costa Brava
2985	Estadio de A Malata
2986	Ciudad Deportiva de Getafe
2988	Instalaciones Deportivas de Tajonar
2965	Instalaciones de Zubieta
2990	Campo Municipal de Futbol La Almozara El Carmen
2992	Estadio Balear
2993	El Requexón
3014	Anxo Carro
1521	Santiago Bernabeu
1573	Johan Cruyff Stadium
3015	El Sardinero
3016	Estadio del Mediterráneo
3017	Estadio Martínez Valero
3018	La Romareda
3019	Estadio de Vallecas
3020	Nuevo Estadio Los Pajaritos
1587	Mini Estadi
1563	Estadio Alfredo di Stefano
3021	Riazor
3022	Estadi Montilivi
3023	Gran Canaria
3024	Estadio Ramon de Carranza
3025	Carlos Belmonte
3026	Carlos Tartiere
3027	Estadio Municipal de Anduva
3028	Santo Domingo
3029	La Rosaleda
3030	El Molinón
3031	Estadio El Toralin
3032	El Alcoraz
3033	Heliodoro Rodríguez López
3034	Estadio Francisco de la Hera
3035	Estadio Fernando Torres
3043	Estadio Las Gaunas
1681	Ramon Sanchez Pizjuan
3044	Estrada do Vao
3046	Nuevo Estadio de La Victoria
3047	Estadio Mundial
3048	Estadio Municipal de Marbella
3049	Nuevo Ganzábal
3050	Estadio Municipal Castalia
3051	Estadio Principe Felipe
3052	Estadi de Son Moix
3053	Estadio San Francisco
3054	Pistas del Helmántico
3055	Estadio Municipal de Reus
3056	Estadio El Sadar
3057	Nuevo Silvestre Carrillo
3058	Nueva Condomina
3059	Estadio Municipal Alfonso Murube
3060	Municipal Nuevo Matapiñonera
3061	Wanda Metropolitano
3062	Estadio Las Llanas
3063	SCR Peña Deportiva
3064	Ciutat Esportiva Dani Jarque
3065	Benito Villamarin
3066	Instalaciones de Lezama
3067	Estadio Municipal de Llagostera
3068	Campo de Futbol Municipal de Cornellá
3069	Estadio Guadalquivir
3070	Ciudad Deportiva del Conquero
3071	Estadio Municipal de Pasarón
3072	Romano Jose Fouto
3073	Estadio Municipal de Deportes El Mazo
3074	Can Misses
3075	Estadio Municipal La Constitucion
3076	Estadio Nuevo Vivero
3077	Nuevo Colombino
3078	Los Arcos
3079	Reale Arena
3080	Camp Nou
3081	Estadio de la Cartuja
3085	Estadio Municipal Romero Cuerda
3086	Estadio Francisco Artes Carrasco
3087	Polideportivo Municipal de Nazaret
3088	Estadio Municipal de Butarque
3089	Camp Municipal Narcis Sala
3090	Estadio de Mendizorroza
3091	Municipal de Balaidos
3092	Mestalla
3093	Coliseum Alfonso Pérez
3094	RCDE Stadium
3095	Estadio de la Ceramica
3096	José Zorrilla
3097	Ciudad de Valencia
3098	Ipurua Municipal Stadium
3099	Estadio Helmantico
3100	Estadio Merkatondoa
3101	Municipal de La Linea
3102	Ciudad Deportiva Luis del Sol
3103	Miquel Pons
3104	Estadio Municipal de Formentera
3105	Estadio Antonio Dominguez
3106	Anexo Estadio de Gran Canaria
3107	Campo Municipal de Lepe
3108	Estadio San Pablo
3109	Estadio Municipal de Chapín
3110	Estadio Municipal
3111	Estadio Roman Suarez Puerta
3112	Estadio Hermanos Antuna
3113	Estadio Municipal de La Roda
3114	Estadio Pedro Escartin
3115	Estadio de Pinilla
3116	Nou Estadi Les Grases
3117	Feliu i Codina
3118	Estadio Municipal de Vilatenim
3119	Camp Municipal Vilafranca del Penedes
3120	Camp Els Canyars
3121	La Magoria
3122	Estadi Municipal Xevi Ramon
3123	Municipal Carrer Girona
3124	La Bobila-Pinetons
3125	Estadi Olimpic de Terrassa
3126	Nou Sardenya
3127	Estadi Municipal de La Pobla de Mafumet
3128	L Estadi Municipal de Ca N Anglada
3129	Nou Estadi Municipal
3130	Municipal de Peralada
5119	Campo Municipal de Deportes Nuestra Señora de la Caridad
5128	Estadio Camilo Cano
5380	Unbe Sports Complex
5567	Estadio de Espinedo
5583	Campo Municipal de Polanco
5594	Municipal El Ejido
5601	Les Comes
5614	Campo Municipal San Marcos
5630	Campo Municipal El Secante
5641	Estadio Municipal Manuel Meler de Borja
5647	Estadio de Futbol Las Tolvas
5656	Municipal de La Victoria
5673	Municipal de Los Olivos
5689	Estadio Municipal Kiko Serra
5714	Estadio Marino Saenz
5733	Estadio San Rafael
5761	Oion Arena
5768	Campo de Futbol de Cuarte de Huerva
5778	Campo de Futbol Grela
5791	Estadio Las Veredillas
5802	Polideportivo Municipal La Palma
5810	Estadio Sotoburu
5816	Campo Municipal de Ariznabarra
5823	Campo de Futbol San Miguel Navarrete
5833	Municipal de Churra
5847	Estadio Marques de la Vega de Anzo
5857	Estadio Municipal Los Dominicos
5868	Estadio Primero de Mayo
5942	Estadio Secarales
5952	Campo de Deportes Miguel Sola
5985	El Castanal
5995	Estadio Garmendipe
6007	Estadio Municipal Los Pinos
6067	Estadio De San Fernando De Henares
6077	Estadio Municipal de Illescas
6089	Municipal de Alcudia
3131	Estadio Municipal Medina Lauxa
5120	Municipal de Ejea
5134	Campo Nuevo Municipal
5387	Ciudad Deportiva Fundacion Rayo Vallecano
5573	Campo de Futbol Municipal de Santa Isabel
5579	Estadio As Eiroas
5588	Municipal de Lebrija
5597	Estadio La Isla
5613	Estadio La Solana
5619	Ciutat Esportiva Juan Angel Romero
5627	Poliesportiu Municipal Na Capellera
5635	Estadio El Mayayo
5651	Estadio El Floran
5668	Estadio El Salvador
5678	Campo de Futbol de Barreda
5686	Campo de Futbol de Etxezuri
5709	Estadio Luis Aragones
5722	Estadio Sancti Spiritu
5731	Municipal Tarazona
5759	Estadio Vivar Tellez
5772	Campo De Futbol Juan Cayuela
5784	Campo de Oira
5794	Estadio Escribano Castilla
5812	Campo Municipal San Jorge
5822	Campo Municipal La Estrella
5826	Campo Nuevo Madridejos
5838	Estadio San Blas
5843	Estadio Alejandro Ortea
5854	Estadio Futbol El Paso
5862	Estadio Municipal de Deportes Azuaga
5943	Estadio San Juan
5975	Estadio Municipal Santo Domingo
5986	Estadio Vallegon
5996	Estadio El Malecon Musques
6008	Castroserna
6068	Campo Municipal Mies de Cozada
6078	Ciudad Deportiva San Vicente
6090	Estadio Las Tejeras
6096	Estadio Adolfo Suarez
3132	Estadio Municipal Juan Rojas
5121	Estadio Municipal Vicente Sanz
5135	Ciudad Deportiva Granada
5550	Estadio Paquito Gimenez
5582	San Pedro
5591	Ciudad Deportiva de Olivenza
5600	Torres de Palau
5608	Campo de Futbol El Soto
5621	Complejo Deportivo Municipal Vicent Morera
5633	Municipal de Dolores de Pacheco
5649	Campu La Cruz
5666	La Baluga
5677	Campo de Futbol Castro Urdiales
5685	Campo Adurtzabal
5694	Campo de Futbol Vega de San Mateo
5721	Complejo Deportivo San Jorge
5727	Polideportivo Mariano Haro
5758	Estadio Matias Prats
5771	CDM Valdefierro
5780	Campo do Morrazo
5792	Campo De Futbol De Viator
5797	Estadio El Pilar
5805	Jose Juan Romero Gil
5815	Futbol Zelaia Olabide Gasteiz
5829	Es Torrento
5840	Estadio de Los Olmos
5851	Estadio Octavio Estevez
5865	Estadio Municipal San Roque
5946	Campo de Futbol Beitikuntzea
5978	Estadio Juan Antonio Alvarez Rabanal
5990	Municipal de Lobon
5999	Campo Municipal de Futbol de Las Piramides
6015	Francisco Rubio Garces
6071	Estadio Eusebio Arce
6081	Estadio Son Bibiloni
6092	Estadio Pepe Quimaran
3142	Estadio El Malecon
5122	Ciudad Deportiva Bahía de Cádiz
5129	Instalaciones de Lezama
5394	Cidade Deportiva de Abegondo
5569	Campo de Futbol San Campio
5577	Estadio Municipal de Calabagueiros
5587	Estadio Alcalde Navarro Flores
5596	Ciudad Deportiva de Plasencia
5605	Campo Municipal de La Vitoriana
5615	Estadio Municipal Ciudad Puertollano
5631	Polideportivo El Palmar
5638	Campo Municipal de La Estacada
5652	Campo de la Corredoria
5679	Estadio Juan Hormaechea
5690	Es Nou Garroveral
5712	Ciudad deportiva de Maracena
5719	Estadio Joaquin Ascaso
5726	Estadio San Amaro
5757	Polideportivo de Huetor Tajar
5767	Estadio Ciudad Jardin
5777	Estadio Tomas de la Hera
5790	Estadio Municipal Francisco Munoz Perez
5796	Municipal Stadium Las Vinas
5804	Jose Antonio Perez Ureba
5814	Estadio Urbieta
5828	Municipal Stadium in Lloseta (Es Puig)
5839	Estadio La Huerta de Epila
5844	Campo San Jose
5852	Nuevo Salvador Ledesma
5861	Estadio Julian Garcia de Guadiana
5871	Municipal Angel Pichi Alonso
5950	Campo Bidezarra de Noain
5983	Estadio Polideportivo de la Juventud
5993	Campo de Futbol de Zaldupe
6006	Polideportivo de Santa Ana
6066	Estadio Vero Boquete de San Lazaro
6076	Campo de Futbol Municipal San Roque
6088	Municipal Pedro Mendez Mendez
4257	Estadio Las Gaunas
5123	Ciudad Deportiva "José Luis Compañón" (Ibaia)
5136	Escuela de fútbol de Mareo
5389	Campo Municipal de Beniferri
5574	Campo Futbol de Porcuna
5580	Estadio El Mauli
5589	Estadio Antonio Barbadillo
5598	Estadio Fernando Robina
5606	Estadio Municipal de Viana
5620	Estadio de la Murta
5632	Estadio Municipal Jose Barnes
5642	Estadio Municipal Deportes Barbastro
5648	Santa Catalina
5659	Estadio Nueva Balastera
5681	Campo Beti Onak
5713	Polideportivo Municipal Abdon Martinez Farinas
5720	Estadio Municipal de Piedrabuena
5746	Estadio Municipal de Linarejos
5764	Campo de Futbol El Rollo
5769	Estadio El Carmen
5779	Estadio do Polvorin
5786	Municipal O Viso
5799	Campo de Futbol De Revilla
5807	Estadio de Pozoblanco
5819	Estadio San Miguel
5831	Son Quint
5837	Campo de Futbol Jumaya Calamocha
5842	Campo Santa Ana
5853	Estadio Tasagaya
5866	Ciudad Deportiva Manuel Calzado Galvan
5872	Estadio Hermanos Albiol
5948	Campo de Futbol San Francisco Javier
5981	Estadio Municipal del Val
5992	Estadio Sarriguren
6003	Estadio El Montecillo
6065	Estadio Nou Camp
6075	Campo Lorenzo Hurtado de Saratxo
6087	Estadio Luis Suner Pico
6095	Estadio Alfonso San Castro
5055	Centro Deportivo Wanda
5124	Dehesa de Navalcarbón
5137	Municipal El Plantio
5570	Complejo Deportivo A Senra
5584	Estadio Municipal Barcena de Pie de Concha
5595	Estadio Era De Las Matas
5612	Campo de Futbol de Balazote
5618	Campo Municipal El Terrer
5626	Municipal de Sant Rafel
5634	Estadio Angel Celdran
5650	Campo de Futbol de Santianes
5657	Los Pozos
5674	Estadio Alfonso Silva
5683	Campo de Futbol Don Bosco
5692	Santa Cruz
5716	Estadio Municipal de Casas Ibanes
5735	Estadio El Collao
5763	Estadio La Ribera
5775	Ciudad Deportiva Javier Perez
5785	Campo de Futbol A Nova Porta Santa
5798	Campo de Futbol del Vinemor-Viono
5806	Manuel Polinario
5818	Estadio Municipal de Varea
5830	Municipal de Llano de Brujas
5841	Estadio Papa Luna
5845	Tabiella
5855	Municipal Villa Isabel
5867	Municipal De Aceuchal
5941	Campo de Futbol Espinardo
5951	Campo de Futbol Txantrea
5984	Campo de Futbol El Ansar
5994	Estadio Iparralde
6001	Estadio El Fornas
6063	Municipality Juan Guedes
6073	Estadi Municipal Banyoles
6083	Camp Municipal Son Flor
6093	Clementina de Bello
5115	Ciutat Esportiva de Bunyol
5125	Polideportivo Municipal Boadilla
5130	Sarriena
5382	La Granadilla
5571	Estadio do Magdalena
5585	Estadio Santa Ana
5592	Estadio Municipal de Miajadas
5603	Estadio Municipal Ombatillo
5610	Estadio San Francisco
5623	Campo Divina Pastora
5629	Estadio El Rubial
5637	Campo Municipal El Gallego
5644	Estadio El Bayu
5653	Estadio Virgen de Las Nieves
5680	Estadio Luis Asarta
5687	Nou Camp de Morvedre
5710	Campo Dehesa de Moratalaz
5718	Estadio Municipal Isidro Calderon
5725	Estadio El Mancho Angel Sastre
5765	Estadio Manuel Trujillo
5770	Estadio Gomez Meseguer
5783	Campo do Choco
5793	Estadio Recinto Ferial
5803	Estadio Carlos Marchena
5811	Txerloia Futbol Zelaia
5817	Estadio Tabira
5824	Estadio Jose Copete
5834	Estadio El Hornillo
5848	Muro de Zaro
5858	Las Salinas
5869	Estadi Municipal del Vilar
5947	Campo de Futbol El Pinar - Zizur Mayor
5980	Garcia de la Mata
5991	Campo Manuel Sanchez Delgado
6000	Ciutat Esportiva Pamesa Ceramica
6062	Campo Municipal Las Callejas
6072	Estadio de la Juventud
6082	Municipal de Son Ferriol
6086	Nou Camp D Inca
6217	Addis Ababa Stadium
5116	Estadio El Palmar
5126	Anexos al Estadio José Zorrilla
5131	Municipal de Gobela
5384	Estadio Francisco Suarez
5568	Estadio O Poboado
5576	Campo de Futbol Ara Solis
5586	Estadio Municipal Antonio Almendro
5602	Estadio de Erripagaina
5609	Estadio La Molineta
5622	Campo de Futbol Municipal de La Magdalena
5628	Polideportivo de Magaluf
5636	Municipal El Curtis
5643	Estadio La Colomina
5658	Polideportivo de La Devesa
5676	Campo de Futbol Municipal de Bezana
5684	Estadio Loinaz
5693	Estadio Argelio Tabares
5717	Municipal de Las Pedroneras
5724	Campo de Futbol Penaranda de Bracamonte
5756	Valle de las Canas
5766	Estadio Rey Juan Carlos
5776	Municipal Gran Tarajal
5789	Estadio Municipal da Lomba
5801	Campo Municipal El Castanar
5809	Campo de Futbol San Juan - Cintruenigo
5821	Campo Municipal de Pradejon
5832	Municipal de La Union
5846	Campo de Villarea
5856	Campo de Futbol Elias Rizcallal
5863	Municipal de Calamonte
5944	Campo de Futbol Municipal de Andosilla
5976	Estadio Rute de la Plata
5987	Instalaciones de La Albericia
6002	Estadio La Eragudina
6064	Estadio La Florida
6074	Estadio Areta
6084	Camp Municipal Sa Plana
6098	Municipal de La Arboleda
5117	Ciudad Deportiva del Villarreal
5127	Estadio Nuevo Mirador
5132	Estadio Antonio Puchades
5549	Estadio San Lorenzo
5575	Estadio Los Manantiales
5581	Estadio O Couto
5590	Estadio Ciudad de Lucena
5599	Nou Municipal de Santa Coloma
5607	Estadio Isla
5616	Campo Municipal Jose Camacho
5624	Municipal de San Antonio
5639	Estadio Virgen de la Corona
5645	Estadio El Soton
5654	Barranco Las Lajas
5669	Camp Municipal D esports
5688	Campo Municipal Emilio Cuquerella
5711	Estadio Ciudad de Malaga
5723	Ciudad Deportiva Castanares
5732	Estadio Pepico Amat
5760	Estadio Municipal Miguel Fijones
5773	Estadio Nuevo Enrique Porta
5781	Campo Municipal do Concello da Estrada
5787	Campo Municipal de Cantarrana
5800	Estadio Fernando Astobiza
5808	Estadio San Roque
5820	Estadio La Salera
5825	Estadio Salto del Caballo
5835	Estadio Pitin
5849	El Candin
5859	Estadio Municipal de La Albuera
5870	Estadi Gerardo Salvador
5949	Complejo Deportivo Plazaola Lekunberri
5982	Campo de La Espiguera
5989	Estadio San Juan Bosco
5998	Estadio La Fuensanta
6014	Estadio El Hospital
6070	La Estacion
6080	Estadio Municipal San Gregorio
6085	Estadio Municipal de Santani
6205	Ciudad del Futbol de Las Rozas
5118	Estadio Municipal de Miramar
5133	Estadio Municipal de Guijuelo
5386	Ciudad Real Madrid
5572	Estadio Baltasar Pujales
5578	Nuevo San Ignacio
5593	Estadio FCO Zurbaran
5604	Estadio Mallona
5611	Complejo Deportivo San Miguel
5617	Estadio Nou Pla
5625	Camp d en Maiol
5640	Campo de Futbol de Belchite
5646	Campo Vallobin
5655	Ciudad Deportiva de Lanzarote
5670	Campo Municipal de Nou Barris
5682	Estadio Municipal Cantolagua
5691	Estadio Nuevo Nalon
5715	Sendero
5734	Estadio Enrique Miralles
5762	Estadio La Isla
5774	Nicolas de las Penas
5782	Campo de Futbol do Carballo
5788	Campo Municipal de Futbol Alcalde Manuel Candocia
5795	Estadio El Pozuelo
5813	Polideportivo de Artunduaga
5827	Campo de Futbol Polideportivo Municipal Paco Simon
5836	Estadio San Miguel de Pulpi
5850	Ciudad Deportiva Maspalomas
5860	Estadio de Montijo
5864	Estadio de Navalmoral de la Mata
5945	Estadio Giltxaurdi
5977	Estadio Mariano Gonzalez
5979	Estadio Valle Aranguren
5988	Campo de Futbol Juan Maria Pares Serra
5997	Estadio Municipal Tarancon
6009	Estadio Berazubi
6069	Estadio Bacenuela
6079	Estadio Municipal Coll d en Rebassa
6091	Campo de Futbol La Platera de Carinena
6097	Estadio La Llanera
1195	Anfield
1205	Emirates Stadium
1206	Villa Park
1197	London Stadium
1207	American Express Community Stadium
1208	Goodison Park
1209	Carrow Road
1210	Etihad Stadium
1200	Selhurst Park
1211	Bramall Lane
1212	Stamford Bridge
1198	Vitality Stadium
1213	Molineux Stadium
1214	Kenilworth Road
1215	bet365 Stadium
1216	DW Stadium
1218	Oakwell Ground
1219	Madejski Stadium
1220	Griffin Park
1204	Old Trafford
1221	Ewood Park
1222	The Den
1223	City Ground
1224	Ashton Gate
1225	Elland Road
1226	The Hawthorns
1227	Hillsborough Stadium
1202	Tottenham Hotspur Stadium
1228	Kiyan Prince Foundation Stadium
1203	King Power Stadium
1201	Vicarage Road
1229	Deepdale
1230	Riverside
1231	KCOM Stadium
1232	Craven Cottage
1233	Pride Park Stadium
1235	The Valley
1258	Wembley Stadium
1259	Portman Road Stadium
1260	AESSEAL New York Stadium
1261	University of Bolton Stadium
1262	Pirelli Stadium
1263	Ricoh Arena
1264	Keepmoat Stadium
1265	Sincil Bank
1266	ABAX Stadium
1267	Montgomery Waters Meadow
1268	Stadium of Light
1269	Prenton Park
1270	Adams Park
1271	Bloomfield Road
1272	Kassam Stadium
1273	Roots Hall
1274	Spotland
1275	Fratton Park
1276	Highbury Stadium
1277	Stadium MK
1278	MEMS Priestfield Stadium
1279	Memorial Stadium
1280	The Crown Ground
1281	Moor Lane
1282	Brunton Park
1284	Alexandra Stadium
1285	St James Park
1286	The New Lawn
1287	Matchroom Stadium
287	Rungrado 1st of May Stadium
1288	Globe Arena
1289	Glanford Park
1290	Sixfields Stadium
1291	Northern Commercials Stadium
1292	JobServe Community Stadium
1293	Blundell Park
1294	Vale Park
1295	The Lamex Stadium
1296	County Ground
1297	Edgeley Park
1298	Boundary Park
1299	Home Park
1300	Jonny-Rocks Stadium
1301	The Electrical Services Stadium
1302	Broadfield Stadium
1303	Moss Rose
1304	One Call Stadium
1305	CNG Stadium
1199	Turf Moor
1306	Abbey Stadium
1308	Plainmoor
1309	Northern Gas and Power Stadium
1310	The Hive Stadium
1311	Stonebridge Road Stadium
1312	Chigwell Construction Stadium
1313	Gigg Lane
1314	The Chorley Group Victory Park Stadium
1315	Proact Stadium
1316	Silverlake Stadium
1317	Meadow Lane
1318	Huish Park
1319	Kingfield Stadium
1320	The Borough Sports Ground
1321	Damson Park
1322	The Shay
1323	York Road
1324	Crabble Athletic Ground
1325	Courage Stadium
1326	Meadow Park
1327	Holker Street
1328	Mill Farm
1329	Moss Lane
1330	Nethermoor Park
1331	Aggborough
1332	Latimer Park
1333	Edgar Street
1334	Croft Park
1344	Impact Arena
1354	Liberty Way
1360	The Weaver Stadium
1371	Hartsdown Park
1382	Melbourne Stadium
1384	Court Place Farm
1393	Borough Park
1403	Privett Park
1413	War Memorial Athletic Ground
1423	Bloomfields
1433	The Hunts Post Community Stadium
1442	Brentwood Centre Arena
1460	Stoke Gifford Stadium
1571	Totally Wicked Stadium
4425	Mariners Park
4446	Lodge Road
4458	Hayden Road
5047	Aldersmith Stadium
1335	Gateshead International Stadium
1345	New Bucks Head
1355	Broadhurst Park
1369	The Dripping Pan
1381	Twerton Park
1392	The Arriva Stadium
1396	Leylands Park
1406	Woodspring Stadium
1419	Victory Road
1430	Beveree Stadium
1437	Central Ground
1449	Boleyn Ground
1467	Adams Park
2076	Meadowbank Dorking
4426	Holloways Park
4443	The Cygnet Health Care Stadium
4453	Cheriton Road
5058	Cannon Park
1336	Tameside Stadium
1346	The Northern Echo Darlington Arena
1356	York`s LNER Community Stadium
1370	Moatside
1375	Hornchurch Stadium
1387	Longmead Stadium
1395	EON Visual Media Stadium
1405	Imber Court
1414	Hardenhuish Park
1428	The Arden Garages Stadium
1435	Causeway Ground
1444	Harry Williams Riverside Stadium
1466	Butts Park Arena
4421	Theobalds Lane
4441	Neuven Stadium
4455	Len Salmon Stadium
6040	Look Local Stadium
6045	Testwood Stadium
1337	St. James Park
1347	Brewery Field
1361	Cantilever Park
1368	The Silverlands
1374	War Memorial Sports Ground
1386	Clarence Park
1394	Keys Park
1404	Earlsmead Stadium
1418	ProEdge Westwood
1429	Gaywood Park
1436	The Pilot Field
1451	Wheatsheaf Park
1566	Academy Stadium
4435	Ladysmead
4448	Knights Lane
5022	The Memorial Playing Fields
5054	Mill Field
6043	Steel Park
1338	York Street
1348	The Citadel
1362	Turnbull Ground
1372	Fullicks Stadium
1376	Bibby Financial Services Stadium
1388	St Georges Stadium
1399	Thames Road
1407	Jewson Stadium
1420	Top Field
1427	The Spencer Stadium
1440	Zeeco Stadium
1459	Rossett Park
1463	Trevor Brown Memorial Ground
1630	Cobham Training Centre
4438	Flamingo Land Stadium
4450	Giant Axe
5028	City Ground
6303	Plough Lane
1339	The New Windmill Ground
1349	Gallagher Stadium
1357	Ewen Fields
1365	Bower Fold
1378	Fetcham Grove
1390	Priory Lane Stadium
1401	The Meadow
1409	Raymond McEnhill Stadium
1416	The Valley Stadium
1425	Owen Street Sports Ground
1438	Princes Park
1452	Olympic Legacy Park
1461	West Lancashire College Stadium
1596	Leigh Sports Village
4437	The Pakex Stadium
4449	The Camping World Community Stadium
5025	Ram Meadow
6042	Imperial Fields
1340	Bootham Crescent
1350	Avanti Stadium
1358	The Geoquip Stadium
1366	Marston Road
1379	Queen Elizabeth II Stadium
1383	Vauxhall Ground
1397	The Enclosed Ground
1411	Vale Farm
1422	Dales Lane
1432	The Grove
1450	White Hart Lane
1565	Tottenham Hotspur Training Centre
4423	Craik Park
4432	North Road
4444	Garden Walk
4457	Lye Meadow
5045	Westfield Lane Stadium
1341	Merseyrail Community Stadium
1351	West Leigh Park
1363	South Kesteven Stadium
1373	Rookery Hill
1385	Arbour Park
1398	The Harlow Arena
1412	Champion Hill
1417	The DCS Stadium
1426	Carlsberg Stadium
1439	Athletic Field
1453	The Hetton Centre
1462	The Oakwood
4415	Alder Street
4440	Lincoln Road
4452	Coles Park Stadium
5057	Park Lane
6044	The Sports Ground
1342	Lookers Vauxhall Stadium
1352	Blackwell Meadows
1364	Wincham Park Stadium
1377	The Harry Abrahams Stadium
1389	New Lodge
1400	Treyew Road
1408	Tatnam
1415	Kirkby Road
1424	Crown Meadow
1434	Nene Park
1443	The New Eyrie
1465	Manchester Regional Arena
1680	Park Hall
4439	Elmbridge Sports Hub
4451	Victoria Ground
4454	Hunts Copse Ground
5892	Bulpit Lane
1343	Horsfall Stadium
1353	Hurst Cross
1359	The Raygar Stadium
1367	The Northolme
1380	Nyewood Lane
1391	Bob Lucas Stadium
1402	The Rushmoor Stadium
1410	Penydarren Park
1421	The Lamb Ground
1431	The Oval
1441	The Camrose
1464	Manchester Regional Arena
4417	Greenwich Avenue
4431	Sir Tom Finney Stadium (Irongate)
4447	The Cuthbury
4623	Brentford Community Stadium
6041	CosySeal Stadium
6253	Kingsmeadow
\.


--
-- TOC entry 2914 (class 0 OID 25682)
-- Dependencies: 215
-- Data for Name: goles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.goles (id_gol, id_jugador, id_partido, id_liga) FROM stdin;
\.


--
-- TOC entry 2912 (class 0 OID 25663)
-- Dependencies: 213
-- Data for Name: jugadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jugadores (id_jugador, nombre, posicion, id_equipo) FROM stdin;
2847	Aaron William	\N	\N
2616	Jason David Ian	\N	\N
2868	Daniel Lee	\N	\N
2869	Harry	\N	\N
2873	Harry Edward	\N	\N
2885	Jordan Lee	\N	\N
2887	Michael	\N	\N
2918	Trent John	\N	\N
2922	Alexander Mark	\N	\N
2932	Jordan Paul	\N	\N
2936	Thomas George	\N	\N
2949	Eberechi	\N	\N
2962	Mason Tony	\N	\N
2976	Dean Bradley	\N	\N
2984	George Henry Ivor	\N	\N
3004	Gary	\N	\N
3008	Joseph	\N	\N
3030	Benjamin	\N	\N
3034	James	\N	\N
3039	Daniel Johnson	\N	\N
3051	Solomon Benjamin	\N	\N
3060	Benjamin Thomas	\N	\N
3065	Ashley Roy	\N	\N
3077	Jarrod	\N	\N
3095	Steve Anthony	\N	\N
3113	Luke Gerald	\N	\N
3128	Benjamin Anthony	\N	\N
3144	Andy	\N	\N
3153	Moses	\N	\N
3172	Jack	\N	\N
3177	Rico Antonio	\N	\N
3194	David	\N	\N
3199	Lewis	\N	\N
3219	Ben	\N	\N
3229	Jed Fennley	\N	\N
3256	Joseph Adrian	\N	\N
3259	Benjamin	\N	\N
3283	Taylor David	\N	\N
3293	Benjamin William	\N	\N
3297	Kalvin	\N	\N
3318	Ryan Dominic	\N	\N
3328	Karlan	\N	\N
3345	Lewis	\N	\N
3355	Matthew Robert	\N	\N
3372	Axel	\N	\N
3391	Ryan	\N	\N
3393	Daniel	\N	\N
3409	James Philip	\N	\N
3421	Harry Charles Frederick	\N	\N
3437	George	\N	\N
3448	Michael Brian	\N	\N
3456	Nathaniel Nyakie	\N	\N
3469	Erhun Aksel	\N	\N
3477	James Oliver Charles	\N	\N
3495	Mark	\N	\N
3515	Yan	\N	\N
3537	Jack	\N	\N
3548	Scott Liam	\N	\N
3574	Jacob	\N	\N
3584	Simon Charles	\N	\N
3599	Tyler Nathan	\N	\N
3601	Scott	\N	\N
3614	Marcus	\N	\N
3620	Tom	\N	\N
3626	John	\N	\N
3629	Aaron	\N	\N
3649	Jack	\N	\N
3650	Ben	\N	\N
3656	Joe	\N	\N
3672	Josef John	\N	\N
3675	Jordan	\N	\N
3686	James Oliver	\N	\N
3688	Connor	\N	\N
3701	Callum Alexander	\N	\N
3706	Kiernan	\N	\N
3716	Jon	\N	\N
3719	Luke	\N	\N
3726	Callum	\N	\N
3736	Josh	\N	\N
3739	Max	\N	\N
3761	Dean Scott	\N	\N
3763	Alex	\N	\N
3777	Benjamin	\N	\N
3779	Niall	\N	\N
3795	Ethan	\N	\N
3796	Joshua James	\N	\N
3801	Ro-Shaun	\N	\N
3812	Robert	\N	\N
3818	Miles	\N	\N
3827	Ollie	\N	\N
3830	Luke	\N	\N
3849	Alfie	\N	\N
3850	Jack	\N	\N
3873	David John	\N	\N
3875	Fred	\N	\N
3888	George	\N	\N
3890	Max	\N	\N
3902	Nicky	\N	\N
3904	Sam	\N	\N
3914	Kelland	\N	\N
3920	CJ	\N	\N
3929	Lewis	\N	\N
3932	Omari Joshua	\N	\N
3937	Ryan	\N	\N
3947	Max	\N	\N
3949	Jacob	\N	\N
3960	David Richard	\N	\N
3962	Nathan	\N	\N
3975	George	\N	\N
3976	Ashley	\N	\N
3990	Luke	\N	\N
3991	Chris	\N	\N
4004	Joe	\N	\N
4005	Ben William	\N	\N
4018	Josh	\N	\N
4019	Daniel	\N	\N
4030	Kyle	\N	\N
4031	Leon	\N	\N
4045	Ryan	\N	\N
4046	Jordan Michael	\N	\N
4064	Robert Donald	\N	\N
4066	Christopher Martin Thomas	\N	\N
4083	George Iain	\N	\N
4084	Conor	\N	\N
4098	Liam	\N	\N
4099	Cameron	\N	\N
4114	Nicholas	\N	\N
4115	Jayden	\N	\N
4128	Ibou Omar	\N	\N
4129	Ashley	\N	\N
4140	Dylan	\N	\N
4142	Courtney	\N	\N
4164	Joseph Charles	\N	\N
4168	Oliver	\N	\N
4186	James Michael	\N	\N
4837	Jadon Malik	\N	\N
6440	Tyrese Momodu	\N	\N
6802	Callum	\N	\N
6867	David	\N	\N
8201	Cameron Zishan Rana	\N	\N
10366	Ike	\N	\N
10947	Djed	\N	\N
11005	Matthew David	\N	\N
11019	Frankie	\N	\N
11089	Oliver	\N	\N
11095	Tyrese Kai	\N	\N
11130	Zachary Louvaine	\N	\N
11141	Tom	\N	\N
11156	Antoni	\N	\N
11168	Zain Sam	\N	\N
11195	Gareth	\N	\N
11205	Shaun	\N	\N
11221	Michael	\N	\N
11235	Joseph Robert	\N	\N
11247	Matthew	\N	\N
11263	Joss Christopher	\N	\N
11279	Josh	\N	\N
11295	Conor Michael	\N	\N
11318	Lee Anthony	\N	\N
11325	Malvind	\N	\N
11339	Jay	\N	\N
11346	Tyreece Romayo	\N	\N
11377	Gareth Michael	\N	\N
11382	Sean	\N	\N
11409	James	\N	\N
11423	Matthew James	\N	\N
11843	Kieran John	\N	\N
12627	Walter Capango	\N	\N
13413	Elliot	\N	\N
13450	Jonathan	\N	\N
13519	Liam David	\N	\N
13692	Junior Augustus	\N	\N
14446	Jack Alexander	\N	\N
15957	Louis Gabriel	\N	\N
16053	Glenville Adam James	\N	\N
16207	Wes	\N	\N
16456	Luke David	\N	\N
18038	William Luke	\N	\N
2497	Jay-Alistaire Frederick	\N	\N
2570	Simranjit	\N	\N
2876	Jamaal	\N	\N
2881	Sean	\N	\N
2891	Fabian	\N	\N
2906	Ainsley Cory	\N	\N
2928	Jack	\N	\N
2930	Nicholas Edward	\N	\N
2940	Daniel	\N	\N
2945	Joe	\N	\N
2951	Josh	\N	\N
2967	Gary James	\N	\N
2978	Chris	\N	\N
2989	Michael	\N	\N
2998	Angus Fraser James	\N	\N
3000	Joseph Williams	\N	\N
3019	Ashley Simon	\N	\N
3031	Demarai Ramelle	\N	\N
3038	Lewis	\N	\N
3040	Frederick John	\N	\N
3054	Nicholas David	\N	\N
3064	Daniel	\N	\N
3069	Dwight	\N	\N
3094	Jack	\N	\N
3100	Lewis John	\N	\N
3105	Dominic Nathaniel	\N	\N
3130	Craig	\N	\N
3138	Andre	\N	\N
3154	Adam Michael	\N	\N
3168	Tyrone	\N	\N
3181	Pelenda Joshua Tunga	\N	\N
3186	Gary	\N	\N
3202	Bradley Paul	\N	\N
3205	Adam James	\N	\N
3209	Dillon	\N	\N
3231	Connor Anthony	\N	\N
3242	Tom	\N	\N
3246	Benjamin Keith	\N	\N
3263	Joe	\N	\N
3271	Jake	\N	\N
3301	Jack	\N	\N
3302	Patrick	\N	\N
3319	Daniel William John	\N	\N
3331	Martin Ronald	\N	\N
3347	Jonathan Mark	\N	\N
3349	Marvin	\N	\N
3364	Joe	\N	\N
3374	Thomas Paul	\N	\N
3382	Alex	\N	\N
3394	Matthew Joe	\N	\N
3418	Joseph Michael	\N	\N
3425	Callum James	\N	\N
3446	Tom	\N	\N
3453	Bamidele Jermaine	\N	\N
3457	Jamal	\N	\N
3468	Abdul-Yussuf Adedeji	\N	\N
3485	Joseph George	\N	\N
3494	Tom	\N	\N
3526	Bradley Ray	\N	\N
3535	Fraizer	\N	\N
3545	Jack David	\N	\N
3547	Matthew Edward	\N	\N
3576	Jamie	\N	\N
3580	Brandon Paul Brian	\N	\N
3587	Jason Sean	\N	\N
3591	Omar Hanif	\N	\N
3615	Jake Liam	\N	\N
3618	Alex	\N	\N
3638	Ian	\N	\N
3639	Christy	\N	\N
3646	Reece	\N	\N
3647	Ivan	\N	\N
3654	Nesta	\N	\N
3667	Luke	\N	\N
3674	Joe Cameron	\N	\N
3682	Callum	\N	\N
3687	Peter	\N	\N
3694	Alex	\N	\N
3704	Lewie Jacob	\N	\N
3712	Benjamin John	\N	\N
3718	Cole	\N	\N
3731	Jamie	\N	\N
3735	Liam	\N	\N
3750	Joe James	\N	\N
3753	Lucas	\N	\N
3766	George Benjamin	\N	\N
3772	Jacob	\N	\N
3773	Devante	\N	\N
3786	Ben	\N	\N
3788	Matt Davidson Rider	\N	\N
3800	Josh	\N	\N
3807	James	\N	\N
3813	Nathan Elliot	\N	\N
3817	Elvis	\N	\N
3828	James	\N	\N
3829	Jayden	\N	\N
3838	Denver	\N	\N
3841	Jordan Kenneth	\N	\N
3863	Josh	\N	\N
3868	Anthony	\N	\N
3885	James	\N	\N
3886	Andrew	\N	\N
3899	Charles	\N	\N
3900	Steven	\N	\N
3912	Willem	\N	\N
3913	Danny	\N	\N
3917	Krystian	\N	\N
3927	Max	\N	\N
3928	Mike David	\N	\N
3936	Harry David Balraj	\N	\N
3943	Ben	\N	\N
3948	Charlie	\N	\N
3957	David Oluwaseun Segun	\N	\N
3961	Tom George	\N	\N
3967	Joshua Jacob	\N	\N
3969	Ricky	\N	\N
3982	Danny Lucas	\N	\N
3985	Zachary	\N	\N
3997	Callum Thomas	\N	\N
4000	Charlie	\N	\N
4007	Elliot	\N	\N
4013	Craig	\N	\N
4022	Harry Jack	\N	\N
4026	Greg	\N	\N
4035	Ryan	\N	\N
4040	Ryan	\N	\N
4055	Diallang	\N	\N
4059	Anthony	\N	\N
4072	Elliott Thomas	\N	\N
4076	Alex	\N	\N
4080	Byron	\N	\N
4088	Shilow	\N	\N
4094	Jak	\N	\N
4103	Stuart	\N	\N
4109	Lewis Moore	\N	\N
4112	Archie	\N	\N
4122	Solomon Brandon Michael	\N	\N
4126	Oscar George	\N	\N
4134	Connor	\N	\N
4138	Callum	\N	\N
4151	Tom	\N	\N
4160	Joseph	\N	\N
4178	Max	\N	\N
4368	Stephy Alvaro	\N	\N
5124	Chuba	\N	\N
6798	Michael	\N	\N
6829	Reece	\N	\N
6878	Connor	\N	\N
8798	Mohammed	\N	\N
10934	Benjamin Lewis	\N	\N
10995	Mark	\N	\N
11014	Jonson Scott	\N	\N
11083	Mason Kane	\N	\N
11092	Jamie Andrew	\N	\N
11124	Akinwale Joseph	\N	\N
11133	Oliver Michael	\N	\N
11151	Korey Alexander S.	\N	\N
11157	Lee	\N	\N
11186	Harry	\N	\N
11198	Rekeil	\N	\N
11214	Brandon	\N	\N
11233	Michael John	\N	\N
11244	Oluwaseyi  Babajide	\N	\N
11248	Ryan George	\N	\N
11277	Ryan John	\N	\N
11291	Kyle	\N	\N
11313	Joe	\N	\N
11319	Josh Oluwadurotimi	\N	\N
11337	Oliver	\N	\N
11343	Jon Peter	\N	\N
11376	Tom Mark	\N	\N
11378	Viv Efosa	\N	\N
11407	Dan	\N	\N
11414	Adam	\N	\N
11445	Miles	\N	\N
12188	Chima	\N	\N
13395	Connor	\N	\N
13432	Drey Jermaine	\N	\N
2865	Kyle Leonardus	\N	\N
2947	Luke Ayodele	\N	\N
2953	Grant	\N	\N
2981	Joseph Alan	\N	\N
3006	Sean	\N	\N
3025	Marcus	\N	\N
3046	Nathan	\N	\N
3068	Kevin	\N	\N
3112	Alex James	\N	\N
3143	Liam	\N	\N
3155	Kieran	\N	\N
3188	Lukas Isaac Paul	\N	\N
3206	Samuel James	\N	\N
3212	George	\N	\N
3254	Matty	\N	\N
3277	Steven	\N	\N
3307	Jordan Brian	\N	\N
3324	Lewis	\N	\N
3352	Adam	\N	\N
3365	Oluwatosin	\N	\N
3388	Eric Jeremy Edgar	\N	\N
3399	Martin James	\N	\N
3433	George Christopher	\N	\N
3459	Wes Nathan Haylton	\N	\N
3488	James Patrick	\N	\N
3529	Matthew	\N	\N
3559	Isaiah Jay	\N	\N
3569	John Keaton	\N	\N
3596	Philip Anthony	\N	\N
3612	Sam Thomas	\N	\N
3624	Andy	\N	\N
3643	Frazer	\N	\N
3662	Remi Luke	\N	\N
3679	Colby	\N	\N
3691	Liam	\N	\N
3710	Nathan	\N	\N
3723	Andre	\N	\N
3744	Michael	\N	\N
3764	Jordan	\N	\N
3768	Callum	\N	\N
3784	Curtis	\N	\N
3805	Elliott Jordan	\N	\N
3820	Tom	\N	\N
3832	Josh	\N	\N
3853	Jordan Stephen	\N	\N
3878	Rory	\N	\N
3895	Elliott	\N	\N
3907	Jordan Robert	\N	\N
3923	Harry	\N	\N
3935	Thomas Michael	\N	\N
3941	Luke	\N	\N
3956	Mark	\N	\N
3966	Glenn	\N	\N
3980	Thomas	\N	\N
3996	Ryan	\N	\N
4011	Jordan Luke	\N	\N
4025	Paul James	\N	\N
4039	Matthew Alexander	\N	\N
4058	Rarmani	\N	\N
4075	Nathan	\N	\N
4090	Connor	\N	\N
4110	Aaron	\N	\N
4123	Nathan	\N	\N
4135	Jake Kenny	\N	\N
4154	Alex Anthony	\N	\N
4180	Wayne Mark	\N	\N
5514	Ronaldo	\N	\N
6859	Steven	\N	\N
9684	Jay	\N	\N
11001	Scott	\N	\N
11085	Owen	\N	\N
11129	Jack	\N	\N
11153	William Francis	\N	\N
11187	Joshua Abdulai	\N	\N
11216	Jordan	\N	\N
11245	Jordi Martin	\N	\N
11278	Marcus	\N	\N
11314	Keane	\N	\N
11326	Sam Alan	\N	\N
11347	Reece	\N	\N
11388	Nathan	\N	\N
11430	James Alexander David	\N	\N
11723	Adam	\N	\N
13399	Ryan	\N	\N
13517	Christopher Michael	\N	\N
14336	Chinedum	\N	\N
16027	Troy Matthew	\N	\N
16097	Alexander	\N	\N
18030	Calvin	\N	\N
18391	Curtis	\N	\N
19634	Jordan Brian	\N	\N
19753	Charlie David W	\N	\N
19883	Samuel Colin	\N	\N
20817	Nathan	\N	\N
21684	Tashan	\N	\N
21771	Jerome Terence	\N	\N
21846	Niall Robert	\N	\N
22608	Ricky	\N	\N
22650	Joseph Elliott	\N	\N
22707	Joseph	\N	\N
24907	Kwame Blair	\N	\N
24985	Sean Richard	\N	\N
25135	Timmy	\N	\N
25155	Jack Levi	\N	\N
25184	Chris	\N	\N
25203	Ryan	\N	\N
25230	Joe	\N	\N
25288	Tom	\N	\N
25313	Luke Martin	\N	\N
25342	Danny	\N	\N
25361	Elijah	\N	\N
25381	Oliver	\N	\N
25387	Curtis	\N	\N
25421	Jermaine	\N	\N
25452	Jacob	\N	\N
25475	Jozsef	\N	\N
25502	Malachi Fagan	\N	\N
25532	Jordy	\N	\N
25580	Daniel Martin	\N	\N
25622	Oliver James	\N	\N
25645	Nathan	\N	\N
25670	Daniel James	\N	\N
25690	Danny	\N	\N
25717	Oladapo	\N	\N
25746	James	\N	\N
25777	Matthew	\N	\N
25812	James	\N	\N
2855	Kyle Andrew	\N	\N
2948	Oluwafikayomi Oluwadamilola	\N	\N
2959	Jordan	\N	\N
2982	Jack	\N	\N
2999	Bobby Armani	\N	\N
3018	Jacob Harry	\N	\N
3043	Dale	\N	\N
3067	Jack Frank	\N	\N
3079	Samuel Mark	\N	\N
3115	Mallik Rashaun	\N	\N
3145	Omar	\N	\N
3175	Oliver George Arthur	\N	\N
3187	Mark	\N	\N
3196	Nathan	\N	\N
3221	Harvey Lewis	\N	\N
3237	Declan	\N	\N
3269	Kyle	\N	\N
3285	Marlon	\N	\N
3314	Jacob Kai	\N	\N
3335	Darnell	\N	\N
3368	Conor John	\N	\N
3392	George	\N	\N
3403	Dominic	\N	\N
3449	Oviemuno Dominic	\N	\N
3471	Carl Daniel	\N	\N
3483	Charlie	\N	\N
3521	Joshua Andrew	\N	\N
3544	Martyn Thomas	\N	\N
3575	Jordan	\N	\N
3585	Jordan	\N	\N
3604	Maximilian	\N	\N
3622	James	\N	\N
3648	Nathan Michael	\N	\N
3669	Joseph	\N	\N
3683	Scott	\N	\N
3696	Lewis Jack	\N	\N
3714	William James	\N	\N
3734	Matthew James	\N	\N
3751	Jake Frederick	\N	\N
3767	David	\N	\N
3785	Michael	\N	\N
3806	Josh	\N	\N
3822	Terrell	\N	\N
3834	Liam	\N	\N
3854	Connor Stuart	\N	\N
3880	Jacob Mitchell	\N	\N
3897	Luke	\N	\N
3909	Charlie	\N	\N
3925	Jonathan	\N	\N
3942	Frank Herman	\N	\N
3951	Alfie Ben	\N	\N
3963	Scott Andrew	\N	\N
3978	Carl Liam	\N	\N
3993	Daniel Vendrys	\N	\N
4006	Dean Gary	\N	\N
4021	Callum Alex David	\N	\N
4034	Jamille Antonio	\N	\N
4052	Aaron	\N	\N
4071	Ebou	\N	\N
4087	Jonathan Philip	\N	\N
4102	Wesley Nurettin	\N	\N
4107	Josh	\N	\N
4116	Brennan	\N	\N
4130	Ashley	\N	\N
4145	Lee Robert	\N	\N
4174	Jayden Ian	\N	\N
4189	Karl	\N	\N
6480	Levi Jeremiah	\N	\N
6868	Carl Philip	\N	\N
10441	Rushian	\N	\N
11012	Luke	\N	\N
11023	Joseph	\N	\N
11097	Alfie	\N	\N
11142	Billy	\N	\N
11169	Luke	\N	\N
11206	Isaac	\N	\N
11236	Ethan	\N	\N
11265	Kyle	\N	\N
11305	Felix Junior	\N	\N
11330	Jordan Nathaniel	\N	\N
11350	Sam	\N	\N
11389	Matty	\N	\N
11434	Kurtis Owen	\N	\N
13090	Marcus	\N	\N
13451	Sam	\N	\N
13481	David Philani	\N	\N
13756	Brandon Lee	\N	\N
15992	Reiss	\N	\N
16312	Chukwunonso	\N	\N
18111	Sam	\N	\N
19573	Alex	\N	\N
19698	Jamie	\N	\N
19788	Daniel	\N	\N
20752	Paul	\N	\N
20866	Christopher	\N	\N
21721	Conor	\N	\N
21805	Jack	\N	\N
21873	Liam Vaughan Henry	\N	\N
22626	Nathan	\N	\N
22675	Morgan	\N	\N
24846	Ben	\N	\N
24943	Louis	\N	\N
25125	Matt	\N	\N
25145	Oliver Robert	\N	\N
25169	Josh	\N	\N
25193	Taylor	\N	\N
25216	Adam Mark	\N	\N
25250	Tyler	\N	\N
25301	Bill Henry	\N	\N
25321	Matthew	\N	\N
25350	Donovan	\N	\N
25368	Jack	\N	\N
25399	Luke Kevin	\N	\N
25431	Charlie	\N	\N
25459	Faustino	\N	\N
25482	Shayon	\N	\N
25513	Charlie	\N	\N
25541	Flynn	\N	\N
25596	Paul	\N	\N
25630	Jake Elliott	\N	\N
25653	Marc	\N	\N
25676	Alex	\N	\N
25699	Shaun Richard	\N	\N
25725	Taylor	\N	\N
25755	George	\N	\N
25789	Jack	\N	\N
2852	Michail Gregory	\N	\N
2960	Kevin Oghenetega Tamaraebi	\N	\N
2975	Nathan	\N	\N
2997	Aden	\N	\N
3016	Aaron	\N	\N
3036	Adam Harry	\N	\N
3063	Aaron	\N	\N
3093	Aaron	\N	\N
3103	Callum	\N	\N
3136	Thomas William	\N	\N
3165	Ethan Rupert	\N	\N
3192	Harlee	\N	\N
3198	Christian Timothy	\N	\N
3226	Mathieu James	\N	\N
3238	Thomas John	\N	\N
3270	Kieran	\N	\N
3286	Joshua	\N	\N
3317	Daniel Nii Tackie Mensah	\N	\N
3341	Ross	\N	\N
3360	Theo	\N	\N
3381	Calum	\N	\N
3416	Gavin	\N	\N
3443	Conor	\N	\N
3467	Trevoh Tomas	\N	\N
3482	Darnell	\N	\N
3508	Brandon	\N	\N
3557	Reece	\N	\N
3567	Jude	\N	\N
3595	Phil	\N	\N
3607	Jamie Charles Stuart	\N	\N
3634	Aaron	\N	\N
3645	Dan	\N	\N
3653	Anthony	\N	\N
3673	Harvey	\N	\N
3685	Alexander James	\N	\N
3700	Daniel Kenny	\N	\N
3715	Luke	\N	\N
3724	Luke	\N	\N
3745	Jorge Edward	\N	\N
3765	Carlton John	\N	\N
3783	Richard	\N	\N
3804	Simon	\N	\N
3819	Lewis	\N	\N
3831	Edward James	\N	\N
3852	Jordan	\N	\N
3856	Barry	\N	\N
3881	John	\N	\N
3898	Harry Spencer	\N	\N
3911	Aidan	\N	\N
3916	Neal	\N	\N
3931	Aaron	\N	\N
3946	Reuben	\N	\N
3959	Mitchell	\N	\N
3974	Jordan	\N	\N
3983	Cameron Jake	\N	\N
4002	Charlie	\N	\N
4014	Daniel	\N	\N
4027	George	\N	\N
4041	Scott	\N	\N
4062	Jerry	\N	\N
4081	Daniel John	\N	\N
4095	David	\N	\N
4113	Randell	\N	\N
4127	James Anthony	\N	\N
4139	Lee	\N	\N
4161	Marc	\N	\N
4820	Lewis Renard	\N	\N
6799	Daniel	\N	\N
6889	Josh	\N	\N
10936	Jeremy	\N	\N
11017	Michael Uzoukwu	\N	\N
11093	Benjamin Paul	\N	\N
11139	Jack Patrick	\N	\N
11160	Alexander Aaron John	\N	\N
11202	Scott	\N	\N
11234	Will	\N	\N
11262	Ryan	\N	\N
11293	John Job Ayo	\N	\N
11320	Sam	\N	\N
11345	Rayhaan	\N	\N
11380	Philip Walter	\N	\N
11415	Benjamin Philip	\N	\N
12610	Samuel	\N	\N
13436	Nicke	\N	\N
13618	Ryan Christopher	\N	\N
15951	William Radley	\N	\N
16084	Connor William	\N	\N
16553	Jordan Michael	\N	\N
18359	Tyler	\N	\N
19627	Tyree Benjamin	\N	\N
19747	Adam	\N	\N
19870	Cole Desmond	\N	\N
20811	Aynsley	\N	\N
21665	Benjamin Jarrod	\N	\N
21762	Lee	\N	\N
21841	Gary	\N	\N
22605	Rhys	\N	\N
22646	Ronan	\N	\N
22700	Jack	\N	\N
24899	Joe	\N	\N
24981	Charlie	\N	\N
25008	Harry	\N	\N
25143	Joe	\N	\N
25166	Matthew	\N	\N
25192	Jimmy	\N	\N
25214	Jonny	\N	\N
25244	Nicholas Brett	\N	\N
25297	George William	\N	\N
25319	Kaiyne River	\N	\N
25348	Jacob Matthew	\N	\N
25366	Jack	\N	\N
25396	Dean James	\N	\N
25428	Blair  Sebastian	\N	\N
25457	Nathaniel	\N	\N
25478	Matthias Olubori	\N	\N
25510	Sean	\N	\N
25538	Daniel Tan	\N	\N
25591	Harry	\N	\N
25626	Theo Gary Carlstan	\N	\N
25651	Cole John	\N	\N
25674	Adam Mark	\N	\N
25697	Kevin	\N	\N
25721	George Damien	\N	\N
25752	Jermain	\N	\N
25786	Joe	\N	\N
25818	Thomas	\N	\N
2863	Raheem Shaquille	\N	\N
2964	Bright	\N	\N
2986	John David	\N	\N
3011	James	\N	\N
3035	Jamie Richard	\N	\N
3062	George Martin	\N	\N
3087	Todd	\N	\N
3117	Marcus	\N	\N
3159	Tom	\N	\N
3189	Daniel	\N	\N
3207	Amarii Kyren Bell	\N	\N
3216	Jason	\N	\N
3255	Michael	\N	\N
3281	Jack Paul	\N	\N
3288	Kasey Remel	\N	\N
3326	Alex	\N	\N
3354	Hayden	\N	\N
3379	Jesse Ellis	\N	\N
3390	Sonny	\N	\N
3402	Zeze Steven	\N	\N
3436	Danny	\N	\N
3455	Marcus	\N	\N
3473	Jay	\N	\N
3500	Marc Anthony	\N	\N
3536	Alex	\N	\N
3561	Charlie James	\N	\N
3592	Sammie Joseph	\N	\N
3606	Curtis Eugene	\N	\N
3623	Christian	\N	\N
3641	Joseph	\N	\N
3658	Terell	\N	\N
3677	Sam	\N	\N
3690	Mark	\N	\N
3709	Matthew Joseph	\N	\N
3722	Teddy	\N	\N
3728	Sam	\N	\N
3747	Ben	\N	\N
3758	Lee  Anthony	\N	\N
3775	Ben	\N	\N
3794	Callum	\N	\N
3810	Cameron	\N	\N
3826	Tony Andrew	\N	\N
3848	Brandon Alex	\N	\N
3871	Matt	\N	\N
3887	Alex	\N	\N
3901	Scott	\N	\N
3903	Callum	\N	\N
3921	Nicholas David	\N	\N
3933	Dean	\N	\N
3939	Luke	\N	\N
3954	Christopher Ian	\N	\N
3964	Leon Clinton	\N	\N
3979	Jonny	\N	\N
3994	Perry	\N	\N
3999	Paul	\N	\N
4008	Daniel	\N	\N
4024	Harrison	\N	\N
4036	Michael David	\N	\N
4056	Ezekiel David	\N	\N
4074	Mathew Antony	\N	\N
4089	Fraser	\N	\N
4105	Cameron	\N	\N
4117	Matt	\N	\N
4131	Richard	\N	\N
4146	Dean William	\N	\N
4175	George	\N	\N
4966	Jonjoe	\N	\N
6817	Rakish	\N	\N
8275	Steven Roy	\N	\N
10978	Luke Matthew	\N	\N
11035	Jack	\N	\N
11103	Danny	\N	\N
11145	Connor	\N	\N
11171	Ruben	\N	\N
11208	Andre Alexander Shaquille	\N	\N
11240	Sulaiman Borbor	\N	\N
11268	Adam Lewis	\N	\N
11307	Matthew Robert	\N	\N
11331	Andrew	\N	\N
11357	Luke	\N	\N
11391	Andrew David	\N	\N
11436	Zeli	\N	\N
13382	Joe	\N	\N
13459	Jonathan Neil	\N	\N
13703	Mitchell Bernard	\N	\N
15963	Jordan	\N	\N
16275	Samuel George	\N	\N
18074	Jordan	\N	\N
18442	Dwight	\N	\N
19643	Ryan	\N	\N
19766	Ryan	\N	\N
19893	Samuel Edward	\N	\N
20831	Shandon	\N	\N
21695	Marcus	\N	\N
21780	Regan	\N	\N
21853	Craig Stephen	\N	\N
22612	Niall Aadya	\N	\N
22662	Ajibola-Joshua	\N	\N
22716	Joshua John Francis	\N	\N
24913	Colin Alan	\N	\N
24994	Jack	\N	\N
25136	Tareiq	\N	\N
25157	Devarn	\N	\N
25187	Marcus	\N	\N
25206	Rhys	\N	\N
25236	Ellis	\N	\N
25291	Sam	\N	\N
25315	Tom	\N	\N
25344	Ben	\N	\N
25363	Alfie	\N	\N
25383	Christie	\N	\N
25415	Peter	\N	\N
25449	Jack	\N	\N
25469	Easah Zaheer	\N	\N
25497	Gary James George	\N	\N
25527	Oliver Lewis	\N	\N
25565	Sam	\N	\N
25615	Thomas Christopher	\N	\N
25640	Harvey	\N	\N
25665	Scott	\N	\N
25685	Jermaine Barrington	\N	\N
25712	Jake	\N	\N
25740	Shaun	\N	\N
25771	Greg	\N	\N
25804	Harvey	\N	\N
2856	John	\N	\N
2970	Andros Darryl	\N	\N
3002	Joshua	\N	\N
3033	Hamza	\N	\N
3049	Glenn	\N	\N
3058	James	\N	\N
3071	Ashley	\N	\N
3102	Dominic Ayodele	\N	\N
3135	William James	\N	\N
3161	Kadeem Raymond	\N	\N
3191	Marc	\N	\N
3208	Stewart	\N	\N
3245	Bradley Michael	\N	\N
3276	Kyle	\N	\N
3304	Bukayo	\N	\N
3333	Max	\N	\N
3350	Ashley Michael	\N	\N
3375	Lee Andrew	\N	\N
3395	Pelly	\N	\N
3427	Nathan Luke	\N	\N
3458	Robbie	\N	\N
3487	Luke	\N	\N
3528	Adam David	\N	\N
3546	Max Josef	\N	\N
3578	Ezri	\N	\N
3588	Shaun Matthew	\N	\N
3605	Daniel Peter	\N	\N
3632	Luke	\N	\N
3651	Joseph David	\N	\N
3657	Scott Andrew	\N	\N
3676	Jerome	\N	\N
3689	Kieron	\N	\N
3708	James Andrew	\N	\N
3720	Freddie	\N	\N
3727	Kyle	\N	\N
3741	Thomas Edward	\N	\N
3757	John	\N	\N
3774	Thomas Robert	\N	\N
3790	William	\N	\N
3808	Matthew James	\N	\N
3823	Eren	\N	\N
3835	Alfie	\N	\N
3842	George David	\N	\N
3869	Wesley Darius Donald	\N	\N
3879	Jordan	\N	\N
3892	Anthony	\N	\N
3905	Ryan	\N	\N
3915	Joseph Michael	\N	\N
3930	Nick	\N	\N
3945	Conor	\N	\N
3958	Luke	\N	\N
3968	Nathan	\N	\N
3984	David	\N	\N
4003	Paul	\N	\N
4017	James Francis	\N	\N
4028	Paul Philip	\N	\N
4042	Robbie	\N	\N
4063	Komi Keshi	\N	\N
4077	Scott James	\N	\N
4092	Joe	\N	\N
4111	Thomas Peter Wilson	\N	\N
4124	Tom	\N	\N
4136	Ben	\N	\N
4158	Edward	\N	\N
4183	Luke	\N	\N
5700	Christopher Lloyd	\N	\N
6865	Miles James	\N	\N
8765	Luis Thomas	\N	\N
10989	Ross	\N	\N
11057	Luke	\N	\N
11121	Tyler Gavin Junior	\N	\N
11150	Morgan	\N	\N
11183	Richard James Michael	\N	\N
11213	Morgan	\N	\N
11243	Grant Antony	\N	\N
11273	Zachary George Onyego	\N	\N
11310	Robert	\N	\N
11334	Farrend	\N	\N
11371	James Lewis	\N	\N
11402	Louis	\N	\N
11444	Connal	\N	\N
13394	James	\N	\N
13484	Hakeem Ademola	\N	\N
13759	Aaron	\N	\N
16009	Mason	\N	\N
16327	Aymen	\N	\N
18219	Connor	\N	\N
19577	Osaze	\N	\N
19705	Macauley	\N	\N
19795	Andre	\N	\N
20762	Aramide	\N	\N
20874	Emile	\N	\N
21725	Jonathan Henry	\N	\N
21816	Xavier	\N	\N
21881	James Alexander	\N	\N
22631	Max Harrison	\N	\N
22679	David	\N	\N
24866	Charlie	\N	\N
24952	James	\N	\N
25126	Rob	\N	\N
25146	Matthew Anthony	\N	\N
25176	Harry	\N	\N
25195	Tyrese	\N	\N
25218	Tom	\N	\N
25253	Thomas James	\N	\N
25304	Mark	\N	\N
25324	Josh	\N	\N
25352	Benjamin Lee	\N	\N
25370	Harry	\N	\N
25403	Michael	\N	\N
25434	Jerell Anthony	\N	\N
25461	Clinton	\N	\N
25484	Derry	\N	\N
25516	Stephen	\N	\N
25547	Mikael Bongili	\N	\N
25598	Fabio	\N	\N
25633	Josh	\N	\N
25657	Jordan	\N	\N
25679	Ritchie	\N	\N
25702	Jamie	\N	\N
25728	Omari Shaquil Jabari	\N	\N
25758	Karl Anthony	\N	\N
25792	Leighton	\N	\N
13501	Jordan	\N	\N
14397	Laurence	\N	\N
16044	Leighton	\N	\N
16370	Adil	\N	\N
18281	Japhet	\N	\N
19595	Kouassi Ryan	\N	\N
19711	Romain	\N	\N
19803	Kieran	\N	\N
20767	Jack Raymond	\N	\N
20880	Joel	\N	\N
21733	Matt	\N	\N
21824	Ryan	\N	\N
21890	Oliver	\N	\N
22634	Jack	\N	\N
22688	Harrison	\N	\N
24871	Ellis	\N	\N
24956	Jay	\N	\N
25128	Sam	\N	\N
25148	Regan	\N	\N
25179	Paul	\N	\N
25196	Jack	\N	\N
25220	Will	\N	\N
25256	Emmanuel Olukolade	\N	\N
25305	Harvey	\N	\N
25327	Robert Kieran Dennis	\N	\N
25354	James	\N	\N
25371	Hope	\N	\N
25385	Shaleum	\N	\N
25419	Rolando James	\N	\N
25451	Harrison James	\N	\N
25472	Joel Owen	\N	\N
25499	Charlie	\N	\N
25529	Kane Benjamin	\N	\N
25574	Anthony	\N	\N
25619	Jack	\N	\N
25643	Junior	\N	\N
25668	Olufela	\N	\N
25688	Ashley	\N	\N
25714	Odin	\N	\N
25743	Daniel Steven	\N	\N
25774	Keanan	\N	\N
25807	Layton	\N	\N
13575	Nathan	\N	\N
14476	Andrew Patrick	\N	\N
16064	Fraser Gerard	\N	\N
16465	Billy	\N	\N
18319	Joshua	\N	\N
19606	Dennis	\N	\N
19719	George Frederick	\N	\N
19822	Joseph Luke	\N	\N
20786	Dion Dannie Leonard	\N	\N
20927	Daniel Thomas	\N	\N
21747	Charles Joseph John	\N	\N
21834	Steven Vincent	\N	\N
22599	Aaron	\N	\N
22640	Alexander	\N	\N
22690	Harvey	\N	\N
24882	Jake Alexander	\N	\N
24965	Hakeeb Adeola Jerome	\N	\N
25132	Kyle	\N	\N
25151	Tom	\N	\N
25181	Scott	\N	\N
25198	Hayden Anthony Roy	\N	\N
25223	Richie	\N	\N
25279	Matt	\N	\N
25306	Rhys	\N	\N
25330	Adam	\N	\N
25355	Mathew	\N	\N
25374	Lewis	\N	\N
25406	Will	\N	\N
25437	John James	\N	\N
25463	Kortney Paul Duncan	\N	\N
25488	Darius	\N	\N
25518	Stefan	\N	\N
25552	Cameron Bradley	\N	\N
25602	Emile	\N	\N
25634	Jason	\N	\N
25658	Jake Jon	\N	\N
25680	James William	\N	\N
25705	Lewis	\N	\N
25731	James Bamidele Oluwatemi	\N	\N
25761	Steven Gary	\N	\N
25795	Jake	\N	\N
18301	Keinan	\N	\N
19619	Josh	\N	\N
19729	Tyler Andrew	\N	\N
19852	Joseph Paul	\N	\N
20801	Andre Jay	\N	\N
20943	David	\N	\N
21757	Michael	\N	\N
21837	David Michael	\N	\N
22602	Joshua MIchael	\N	\N
22643	Harry	\N	\N
22694	Jack	\N	\N
24893	Callum	\N	\N
24974	Harry	\N	\N
25134	Cameron	\N	\N
25153	Jai	\N	\N
25183	Lloyd Richard	\N	\N
25201	Ethan Walker	\N	\N
25228	Tarryn	\N	\N
25283	Joe	\N	\N
25309	Christian	\N	\N
25337	Dominic	\N	\N
25359	Nicholas Olushola	\N	\N
25379	Andrew George	\N	\N
25412	Mark	\N	\N
25446	George	\N	\N
25467	Daniel Noel	\N	\N
25494	Jake	\N	\N
25525	Abumere Tafadzwa	\N	\N
25560	Jason	\N	\N
25612	Joshua Lloyd	\N	\N
25639	Ahkeem	\N	\N
25664	Tom	\N	\N
25684	Mason Ozail	\N	\N
25711	Joshua James	\N	\N
25737	Mark	\N	\N
25768	Jack Thomas	\N	\N
25801	Luis	\N	\N
18408	Gareth	\N	\N
19686	Lee Anderson	\N	\N
19772	Michael	\N	\N
20732	David James	\N	\N
20840	Tariqe Kumahl Malachi	\N	\N
21704	Rhian Joel	\N	\N
21793	Andrew Michael	\N	\N
21863	Osayamen	\N	\N
22618	Brett	\N	\N
22666	Ben	\N	\N
22720	Tyreece	\N	\N
24925	Andrew Lee	\N	\N
24998	Daniel Ebenezer	\N	\N
25137	Alex	\N	\N
25158	Ben	\N	\N
25189	Maison	\N	\N
25208	Rohan Greg	\N	\N
25242	Stephen	\N	\N
25293	Benjamin Leslie	\N	\N
25317	Matthew Thomas	\N	\N
25346	Harry Mark	\N	\N
25365	Chris	\N	\N
25390	Akin	\N	\N
25425	Isaiah	\N	\N
25455	Kevin Adrian	\N	\N
25477	Daniel Andre	\N	\N
25507	Kayden Pastel Dunn	\N	\N
25534	Nick	\N	\N
25584	Kean Shay	\N	\N
25625	James	\N	\N
25648	Shaun	\N	\N
25672	Jake Mario	\N	\N
25694	Byron Clark	\N	\N
25719	Kellan Sheene	\N	\N
25749	Luke	\N	\N
25782	Nathaniel Edwin	\N	\N
25815	Benjamin Harry	\N	\N
1444	Alberto	\N	\N
2531	Jordi	\N	\N
2541	Llorenc	\N	\N
2561	Ruben	\N	\N
2569	Antonio	\N	\N
2572	Mikel Gonzalez	\N	\N
2575	Jose Manuel	\N	\N
2584	Diego	\N	\N
2589	Adrian	\N	\N
2755	Rafael	\N	\N
2861	David Josue	\N	\N
2917	Adrian San Miguel	\N	\N
2935	Jonathan	\N	\N
2956	Marcos	\N	\N
3015	David	\N	\N
3258	Javier	\N	\N
3298	Pablo	\N	\N
4444	Juan	\N	\N
5109	Francisco Manuel	\N	\N
5680	Fernando Javier	\N	\N
6619	Pablo	\N	\N
7401	Christian	\N	\N
7413	Inigo	\N	\N
7420	Peru	\N	\N
7430	David Rodriguez	\N	\N
7443	Sergio	\N	\N
7455	Cristian	\N	\N
7468	Alvaro	\N	\N
7482	Alvaro	\N	\N
7498	Sergio	\N	\N
7501	Alejandro	\N	\N
7517	Alvaro	\N	\N
7533	Derik	\N	\N
7544	Moises	\N	\N
7561	David	\N	\N
7576	Daniel	\N	\N
7594	Alvaro	\N	\N
7606	Daniel	\N	\N
7615	Alejandro Miguel	\N	\N
7628	Matias Nahuel	\N	\N
7640	Saul	\N	\N
7656	Diego	\N	\N
7666	Jordi	\N	\N
7677	Mikel	\N	\N
7696	Inigo	\N	\N
7701	Iker	\N	\N
10763	Acoran	\N	\N
11488	Jesus	\N	\N
12733	Pol	\N	\N
13493	Angel	\N	\N
13574	Jose Alejandro	\N	\N
13626	Raul	\N	\N
13663	Antonio Jose	\N	\N
13698	Juan Manuel	\N	\N
13783	Brian	\N	\N
14325	Alvaro	\N	\N
17062	Francisco	\N	\N
17247	Ibai	\N	\N
17478	Marc	\N	\N
17626	Federico	\N	\N
17825	Adria Giner	\N	\N
18034	Martin	\N	\N
18248	Sergio	\N	\N
18401	David	\N	\N
19106	Oscar	\N	\N
19265	Marc	\N	\N
19484	Saul	\N	\N
20277	Borja	\N	\N
20577	Samuel	\N	\N
21240	Jordi Cesar	\N	\N
21319	Iker	\N	\N
21419	Francisco Roman	\N	\N
21451	Pol	\N	\N
21574	Jairo	\N	\N
21632	Francisco Javier	\N	\N
22127	Alvaro	\N	\N
22187	Luis	\N	\N
22324	Ignacio	\N	\N
22395	Salvador	\N	\N
22482	Antonio	\N	\N
22827	Carlos	\N	\N
22896	Victor Guillermo	\N	\N
22953	Enrique	\N	\N
23009	Juan Carlos	\N	\N
23067	Gabriel	\N	\N
23357	Ruben	\N	\N
23398	Antonio Salva	\N	\N
23447	Jonatan	\N	\N
23511	Ruben	\N	\N
23803	Juan Carlos	\N	\N
23863	Jose Luis	\N	\N
23910	Unai	\N	\N
23973	Pablo	\N	\N
24040	Jose Luis	\N	\N
24134	Joaquin	\N	\N
24335	Alfonso	\N	\N
24356	Alejandro	\N	\N
24427	Miguel Angel	\N	\N
24502	Carlos Alberto	\N	\N
24566	Tomas	\N	\N
24610	Iker	\N	\N
24663	Miguel	\N	\N
24714	Pedro Perez	\N	\N
24762	Sergio	\N	\N
24804	Nestor Jesus	\N	\N
1699	Juan	\N	\N
2571	Joan Guillem	\N	\N
2573	Jose Manuel	\N	\N
2576	Abraham	\N	\N
2588	Hector	\N	\N
2679	Einar	\N	\N
2860	Rodrigo	\N	\N
2899	Adama	\N	\N
2931	Jesus	\N	\N
2943	Kepa	\N	\N
2950	Cesar	\N	\N
2965	Vicente	\N	\N
3140	Daniel	\N	\N
3534	Jose Angel	\N	\N
4537	Sergio	\N	\N
5435	Luis Alberto	\N	\N
5774	Iago	\N	\N
7292	Ian	\N	\N
7393	Jaime	\N	\N
7409	Carlos Martin	\N	\N
7416	Jorge	\N	\N
7428	Ismael Casas	\N	\N
7441	Daniel	\N	\N
7451	Francisco Pablo	\N	\N
7462	Odei	\N	\N
7477	Jorge	\N	\N
7493	Alberto	\N	\N
7510	Borja	\N	\N
7526	Alejandro	\N	\N
7539	Alberto	\N	\N
7553	Hugo	\N	\N
7573	Jose Manuel	\N	\N
7586	Francisco	\N	\N
7600	Pedro Tanausu	\N	\N
7616	Daniel	\N	\N
7629	Jose Luis	\N	\N
7641	Alex Aizbitarte	\N	\N
7667	Rafael	\N	\N
7686	Carlos	\N	\N
7699	Mikel San Jose	\N	\N
7709	Jordi	\N	\N
10400	Higinio	\N	\N
11484	Sergio	\N	\N
12303	Anssumane	\N	\N
13075	Antonio	\N	\N
13570	Robert	\N	\N
13622	Oscar	\N	\N
13625	Adrian	\N	\N
13661	Joan	\N	\N
13695	Marc	\N	\N
13751	Jose Antonio	\N	\N
14272	Alejandro	\N	\N
17168	Borja	\N	\N
17376	Marcos	\N	\N
17588	Jose Antonio	\N	\N
17729	Sandro	\N	\N
17918	Sergi	\N	\N
18105	Lucas	\N	\N
18310	Moises	\N	\N
19054	Jordi	\N	\N
19136	Ruben	\N	\N
19327	Carles	\N	\N
19468	Martin	\N	\N
20273	Hugo Claudio	\N	\N
20568	Enrique	\N	\N
20678	Lluis	\N	\N
21308	Ignacio	\N	\N
21402	Xisco	\N	\N
21561	Juan de Dios	\N	\N
21624	Samuel	\N	\N
22146	Victor	\N	\N
22208	Tyronne Gustavo	\N	\N
22345	Daniel	\N	\N
22437	Ander	\N	\N
22496	Alejandro	\N	\N
22841	Ruben	\N	\N
22908	Yoel	\N	\N
22969	Fabricio Martin	\N	\N
23016	Jozabed	\N	\N
23315	David	\N	\N
23364	Francisco Jose	\N	\N
23406	Ivan	\N	\N
23456	Alberto	\N	\N
23529	Kevin	\N	\N
23817	Victor	\N	\N
23874	Roger	\N	\N
23920	Gonzalo	\N	\N
23983	Jose Miguel	\N	\N
24059	Lluis	\N	\N
24147	Daniel Martin	\N	\N
24295	Antonio Juan	\N	\N
24373	Raul	\N	\N
24442	Jose Carlos	\N	\N
24516	Andres	\N	\N
24575	Denis	\N	\N
24619	Antonio Jesus	\N	\N
24677	Esteban Aparicio	\N	\N
24725	Carlos Daniel	\N	\N
24768	Noe	\N	\N
24819	Sergio	\N	\N
1986	Jordi	\N	\N
2955	Angel	\N	\N
3007	Oriol	\N	\N
3097	Diego	\N	\N
3279	Pablo	\N	\N
4415	Francesc	\N	\N
5107	Julian	\N	\N
5473	Pol Mikel	\N	\N
5828	Roger	\N	\N
6525	David	\N	\N
7399	Carlos	\N	\N
7412	Jose Raul	\N	\N
7419	Mujaid	\N	\N
7429	Luis	\N	\N
7442	Abraham	\N	\N
7454	Roberto	\N	\N
7467	Antonio	\N	\N
7487	Mikel	\N	\N
7490	Daniel	\N	\N
7507	Juan Pedro	\N	\N
7516	Alberto	\N	\N
7529	Marco	\N	\N
7541	Nestor	\N	\N
7550	Jose Manuel	\N	\N
7571	Oscar	\N	\N
7584	Diego	\N	\N
7597	Aythami	\N	\N
7608	Unai	\N	\N
7620	Adrian	\N	\N
7636	Francisco	\N	\N
7643	David	\N	\N
7668	Sergio	\N	\N
7689	Antonio Jose	\N	\N
7700	Mikel	\N	\N
10665	Pablo	\N	\N
11487	Sergio	\N	\N
12717	Samuel	\N	\N
13163	Abel	\N	\N
13533	Pablo Guido	\N	\N
13617	Diego	\N	\N
13643	Julian Javier	\N	\N
13675	Andres	\N	\N
13728	Cayetano	\N	\N
13879	Jorge Felix	\N	\N
17112	Joaquin	\N	\N
17309	Inigo	\N	\N
17520	Roberto	\N	\N
17701	Pablo	\N	\N
17841	Ander	\N	\N
18054	Victor	\N	\N
18257	Ruben	\N	\N
18958	Oier	\N	\N
19124	Miguel Alfonso	\N	\N
19302	Joan Jordan	\N	\N
19506	Roberto Roman	\N	\N
20298	Sergio	\N	\N
20594	Luis Enrique	\N	\N
21254	Kevin	\N	\N
21344	Alejandro	\N	\N
21444	Victor	\N	\N
21566	Alexandre	\N	\N
21628	Francisco Jose	\N	\N
22151	Adrian	\N	\N
22227	Oriol	\N	\N
22351	Raul Jose	\N	\N
22443	Aihen	\N	\N
22793	Rafael	\N	\N
22852	Alvaro	\N	\N
22917	Pedro	\N	\N
22981	Carlos	\N	\N
23027	Sergio	\N	\N
23325	Bernardo Victor	\N	\N
23341	Alex	\N	\N
23380	Brais	\N	\N
23434	Manuel	\N	\N
23491	Diego Javier	\N	\N
23566	Antonio	\N	\N
23845	Sergio	\N	\N
23896	Carlos	\N	\N
23948	Carlos Cordero	\N	\N
24024	Juan	\N	\N
24110	Asier	\N	\N
24311	Juan	\N	\N
24383	Aitor	\N	\N
24457	Francisco Borja	\N	\N
24528	Francisco Aday	\N	\N
24584	Esteban Felix	\N	\N
24632	Enrique Gonzalez	\N	\N
24683	Carlos Dotor	\N	\N
24726	Alvaro	\N	\N
24773	Juan Francisco	\N	\N
2312	Julio Cesar	\N	\N
3023	Juan Manuel	\N	\N
3129	Francisco	\N	\N
3419	Roberto	\N	\N
4445	Ander	\N	\N
5114	Javier Magro	\N	\N
5504	Pedro Mba	\N	\N
5904	Joan Angel	\N	\N
7388	Ander	\N	\N
7403	Sergio	\N	\N
7406	Alfredo	\N	\N
7423	Alejandro	\N	\N
7431	Juan Carlos	\N	\N
7447	Borja	\N	\N
7458	Alexander	\N	\N
7475	Antonio Manuel	\N	\N
7488	Pedro	\N	\N
7505	Jordi	\N	\N
7520	Pedro Antonio	\N	\N
7535	Alex	\N	\N
7547	Cristo Ramon	\N	\N
7551	Jose	\N	\N
7572	Daniel Pedro	\N	\N
7585	Unai	\N	\N
7599	Alberto	\N	\N
7609	David	\N	\N
7623	Alberto	\N	\N
7638	Julian Omar	\N	\N
7654	Gonzalo Alejandro	\N	\N
7672	Joseba	\N	\N
7683	Victor David	\N	\N
7697	Yuri	\N	\N
7702	Inaki	\N	\N
11184	Gonzalo	\N	\N
11489	Ferran	\N	\N
12763	Julio Jose	\N	\N
13529	Jose Antonio	\N	\N
13600	Alejandro	\N	\N
13639	Borja	\N	\N
13674	Alvaro	\N	\N
13722	Alex	\N	\N
13797	Jose	\N	\N
17090	Sergio	\N	\N
17292	Unai	\N	\N
17506	Adrian	\N	\N
17681	Waldo	\N	\N
17879	David	\N	\N
17997	Victor	\N	\N
18194	Jorge	\N	\N
18339	Santiago	\N	\N
19066	Javier	\N	\N
19146	Laureano Antonio	\N	\N
19343	Gonzalo	\N	\N
19517	Jonathan	\N	\N
20391	Ivan	\N	\N
20600	Alejandro	\N	\N
21263	Jesus	\N	\N
21355	Ivan	\N	\N
21487	Ariday	\N	\N
21589	Eduardo	\N	\N
21641	Diego	\N	\N
22164	Carles	\N	\N
22253	Francisco Jose	\N	\N
22366	Santiago	\N	\N
22461	Adrian	\N	\N
22805	Alberto	\N	\N
22865	Ismael Gutierrez	\N	\N
22928	Pedro Leon	\N	\N
22992	Tomas	\N	\N
23036	Jose Antonio	\N	\N
23334	Gerard	\N	\N
23374	David	\N	\N
23426	Eduardo	\N	\N
23479	Alberto	\N	\N
23554	Jonathan	\N	\N
23833	Aitor	\N	\N
23887	Sergio	\N	\N
23938	Ernesto	\N	\N
24011	Oscar	\N	\N
24094	Javier	\N	\N
24292	Carles	\N	\N
24362	Ivan	\N	\N
24433	Jese	\N	\N
24510	Luis Alfonso	\N	\N
24571	Sergi	\N	\N
24614	Guillem	\N	\N
24669	Antonio	\N	\N
24718	Pablo	\N	\N
24765	Adolfo	\N	\N
24811	Francisco David	\N	\N
1449	Jorge	\N	\N
3044	Borja Gonzalez	\N	\N
3137	Gerard	\N	\N
3460	Alvaro	\N	\N
4191	Eric	\N	\N
5030	Jorge	\N	\N
5624	Patricio	\N	\N
5710	Jonathan	\N	\N
7223	Vernon	\N	\N
7402	Sebastian	\N	\N
7414	Alberto	\N	\N
7421	Francisco Javier	\N	\N
7434	Adrian	\N	\N
7449	Casto	\N	\N
7460	Jesus	\N	\N
7486	Javier	\N	\N
7500	Ivan	\N	\N
7504	Asier	\N	\N
7513	Brandon Thomas	\N	\N
7532	Ivan	\N	\N
7543	Jordi	\N	\N
7559	Fernando	\N	\N
7575	Fidel	\N	\N
7578	Ivan	\N	\N
7595	Alvaro	\N	\N
7602	Javier	\N	\N
7610	Paris Alejandro	\N	\N
7624	Alejandro Jose	\N	\N
7631	Rene Roman	\N	\N
7645	Nicolas	\N	\N
7669	Alvaro	\N	\N
7680	Mikel	\N	\N
7693	Ander	\N	\N
8665	Enrique	\N	\N
11223	Rodrigo	\N	\N
11561	Pape Cheikh	\N	\N
13051	Jesus	\N	\N
13560	Ivan	\N	\N
13620	Fernando	\N	\N
13650	Pablo	\N	\N
13688	Laureano	\N	\N
13735	Oscar Alexander	\N	\N
13882	Juan Francisco	\N	\N
17130	Aritz	\N	\N
17336	Antonio	\N	\N
17553	Jose Manuel	\N	\N
17715	Pedro Antonio	\N	\N
17898	Angel Luis	\N	\N
18088	Aleix	\N	\N
18291	Alberto	\N	\N
18323	Vicente	\N	\N
18993	Ruben	\N	\N
19200	Marc	\N	\N
19411	Oriol	\N	\N
19616	Alberto	\N	\N
20459	Alejandro	\N	\N
20638	Mario	\N	\N
21285	Jorge	\N	\N
21378	Carlos Javier	\N	\N
21545	Luca	\N	\N
21608	Jordi	\N	\N
21664	Ignacio Agustin	\N	\N
22176	Erik Alexander	\N	\N
22296	Luis	\N	\N
22378	Antonio	\N	\N
22474	Francisco Javier	\N	\N
22816	Jose Manuel	\N	\N
22880	Jaume Vincent	\N	\N
22939	Eduardo	\N	\N
23001	Jonas	\N	\N
23049	Javier	\N	\N
23345	Mateu Jaume	\N	\N
23384	Jorge	\N	\N
23438	Munir	\N	\N
23497	Andoni	\N	\N
23573	Unai	\N	\N
23852	Bruno	\N	\N
23901	Jorge	\N	\N
23952	Cristian	\N	\N
24030	Aitor	\N	\N
24117	Joel	\N	\N
24320	Cristian	\N	\N
24389	Joel	\N	\N
24468	Jose Angel	\N	\N
24536	Marc	\N	\N
24588	Angel	\N	\N
24642	Urko	\N	\N
24692	Miguel	\N	\N
24736	Jose	\N	\N
24780	Alfonso	\N	\N
1993	Jon	\N	\N
3163	David	\N	\N
3572	Hector	\N	\N
4547	Mario	\N	\N
5560	Alejandro	\N	\N
5907	Marcos	\N	\N
7389	Eduard	\N	\N
7404	Luis Miguel	\N	\N
7422	Eneko	\N	\N
7439	Aitor	\N	\N
7450	Jose Antonio	\N	\N
7452	Borja	\N	\N
7464	Enric	\N	\N
7479	Oscar Valentin	\N	\N
7494	Isaac Carcelen	\N	\N
7511	Alex	\N	\N
7528	Alejandro	\N	\N
7540	Marc	\N	\N
7554	Cristobal	\N	\N
7574	Alvaro Juan	\N	\N
7590	Javier	\N	\N
7603	Benito	\N	\N
7611	Luis	\N	\N
7625	Daniel	\N	\N
7639	Ignacio	\N	\N
7655	Miguel Angel	\N	\N
7665	Eugeni	\N	\N
7676	Igor	\N	\N
7695	Unai	\N	\N
9725	Sergi	\N	\N
11348	Madger Antonio	\N	\N
12298	Sergio	\N	\N
13024	Angel	\N	\N
13541	Ivan	\N	\N
13579	Kirian	\N	\N
13627	Bartolome	\N	\N
13667	Daniel Jose	\N	\N
13705	Iriome	\N	\N
13785	Abdon	\N	\N
14631	Daniel	\N	\N
17204	Iago	\N	\N
17433	Javier	\N	\N
17609	Alvaro	\N	\N
17856	Jaime	\N	\N
18072	Manuel Alejandro	\N	\N
18275	Raul	\N	\N
18974	Inigo	\N	\N
19186	Javier	\N	\N
19379	Ivan	\N	\N
19607	Alvaro	\N	\N
20450	Alberto	\N	\N
20633	Raul	\N	\N
21277	Carlos Javier	\N	\N
21372	Francisco Ramon	\N	\N
21538	Ander	\N	\N
21602	Adrian	\N	\N
21655	Hector	\N	\N
22131	Antonio Islam	\N	\N
22192	Marc	\N	\N
22331	Igor	\N	\N
22425	Cristian	\N	\N
22485	Ayrton Andres	\N	\N
22831	Jaume	\N	\N
22847	Gaspar Panadero	\N	\N
22913	Anaitz	\N	\N
22973	Marc	\N	\N
23024	Diego	\N	\N
23323	Roberto Jara	\N	\N
23367	Iago	\N	\N
23415	Pedro Mario	\N	\N
23459	Markel	\N	\N
23536	Jeronimo Manuel	\N	\N
23821	Dimas	\N	\N
23880	Borja	\N	\N
23925	Ramon	\N	\N
23993	Pablo	\N	\N
24079	Ivan	\N	\N
24154	Lorenzo Jesus	\N	\N
24345	Mikel	\N	\N
24415	Victor	\N	\N
24488	Nuha	\N	\N
24556	Padilla	\N	\N
24600	Jon	\N	\N
24654	Pablo	\N	\N
24706	Miguel Marcos	\N	\N
24752	Aridane Jesus	\N	\N
24789	Aitor	\N	\N
2051	Aleix	\N	\N
3218	Ayoze	\N	\N
3628	Robert Lynch	\N	\N
4253	Alvaro	\N	\N
5054	Javier	\N	\N
5646	Jesus Joaquin	\N	\N
5746	Jose Manuel	\N	\N
6148	Daniel	\N	\N
7395	Jose Angel	\N	\N
7411	Enrique Maza	\N	\N
7418	Daniel	\N	\N
7433	Jose Luis	\N	\N
7448	Guillermo	\N	\N
7459	Oscar Francisco	\N	\N
7476	Mario	\N	\N
7492	David	\N	\N
7509	Alejandro	\N	\N
7524	Manuel	\N	\N
7538	Francisco Jose	\N	\N
7549	Alejandro	\N	\N
7570	Edgar	\N	\N
7582	Carlos	\N	\N
7596	Eric	\N	\N
7607	Carlos	\N	\N
7619	Martin	\N	\N
7621	Luis Jesus	\N	\N
7637	Oscar	\N	\N
7653	Manuel	\N	\N
7662	Miguel Juan	\N	\N
7684	German	\N	\N
7698	Raul	\N	\N
9731	Andres	\N	\N
10531	Sergi	\N	\N
11486	Jose Luis	\N	\N
12553	Israel	\N	\N
13088	Jose Luis	\N	\N
13572	Daniel	\N	\N
13623	David	\N	\N
13666	Aleix	\N	\N
13702	Carlos	\N	\N
13784	Salvador	\N	\N
14425	Ilie	\N	\N
17191	Pere	\N	\N
17391	Andres Eduardo	\N	\N
17750	Federico	\N	\N
17928	Oliver	\N	\N
18109	Jose Luis Sanmartin	\N	\N
18208	Saul	\N	\N
18357	Sergio	\N	\N
19045	Roberto	\N	\N
19239	David	\N	\N
19423	Javier	\N	\N
19625	Alejandro	\N	\N
20518	Jaime Suarez	\N	\N
20652	Ruben	\N	\N
21291	Sergio Chica	\N	\N
21387	Marcos	\N	\N
21552	Ian	\N	\N
21615	Inigo	\N	\N
22122	Juan Francisco	\N	\N
22181	Francesc	\N	\N
22309	Xabier	\N	\N
22383	Jose Antonio	\N	\N
22478	Asier	\N	\N
22824	Daniel	\N	\N
22890	Jorge Marcos	\N	\N
22947	Sergio	\N	\N
23006	Samuel	\N	\N
23057	Juan Manuel	\N	\N
23353	David	\N	\N
23394	Sergio	\N	\N
23442	Airam	\N	\N
23505	Omar	\N	\N
23577	Enrique	\N	\N
23857	Antonio	\N	\N
23906	Gonzalo Julian	\N	\N
23960	Ignacio Mendez	\N	\N
24035	Bryan Gil	\N	\N
24129	Sergio	\N	\N
24328	Marc	\N	\N
24399	Ivan	\N	\N
24477	Nestor	\N	\N
24542	Jose Antonio	\N	\N
24591	Jose Ignacio	\N	\N
24647	Luis Federico	\N	\N
24699	Daniel	\N	\N
24741	Jose Alberto	\N	\N
24783	Jose Luis	\N	\N
1998	Pol	\N	\N
3268	Martin	\N	\N
4313	Pablo	\N	\N
4856	Aaron	\N	\N
5583	Fabian	\N	\N
6113	Omar	\N	\N
7394	Gerard	\N	\N
7410	Francisco Javier	\N	\N
7425	Sabin	\N	\N
7432	Jose Antonio	\N	\N
7444	Mario	\N	\N
7456	Victor	\N	\N
7473	Alejandro	\N	\N
7485	Jorge	\N	\N
7499	Jose Maria	\N	\N
7502	Salvador	\N	\N
7519	Diego	\N	\N
7534	Adrian Rafael	\N	\N
7546	David	\N	\N
7563	Ivan	\N	\N
7567	Juan	\N	\N
7581	Daniel	\N	\N
7593	Manuel	\N	\N
7605	Ruben	\N	\N
7614	Juan Diego	\N	\N
7627	Aitor Sanz	\N	\N
7634	Pablo	\N	\N
7651	Hugo Jose	\N	\N
7661	Orlando Ruben	\N	\N
7675	Ignacio	\N	\N
7692	Unai	\N	\N
8583	Unai	\N	\N
10490	Christian	\N	\N
11485	Pau Francisco	\N	\N
12306	Gerard	\N	\N
13077	Alejandro	\N	\N
13571	Javier	\N	\N
13595	Aitor	\N	\N
13638	Edgar	\N	\N
13673	Santiago	\N	\N
13720	Jesus Manuel	\N	\N
13795	Alvaro Jose	\N	\N
17066	Juan del Carmen	\N	\N
17268	Aritz	\N	\N
17409	Mario Gaspar	\N	\N
17765	Javier	\N	\N
17960	Fernando	\N	\N
18162	Daniel	\N	\N
18335	Manuel	\N	\N
19004	Enrique	\N	\N
19215	Sergi	\N	\N
19278	Jorge	\N	\N
19493	Juan	\N	\N
20290	Luis	\N	\N
20584	David Mateos	\N	\N
21245	Pedro	\N	\N
21335	Miguel David	\N	\N
21429	Lucas	\N	\N
21462	Gerard	\N	\N
21583	Juan Antonio	\N	\N
21636	Armando Sosa	\N	\N
22158	Juan Jose	\N	\N
22234	Jose Francisco	\N	\N
22357	Inaki Ventura	\N	\N
22448	Mohamed Airam	\N	\N
22796	Eduardo	\N	\N
22858	Luis Jesus	\N	\N
22922	Jose Angel	\N	\N
22986	Ferran Corominas	\N	\N
23030	Jose Manuel	\N	\N
23329	Ander	\N	\N
23370	Sergio	\N	\N
23420	Roberto Antonio	\N	\N
23468	Pablo	\N	\N
23550	Miguel	\N	\N
23828	Alvaro	\N	\N
23884	Jorge	\N	\N
23934	Joaquin	\N	\N
24001	Unai	\N	\N
24085	Manuel	\N	\N
24287	Cristian	\N	\N
24351	Jon	\N	\N
24419	Mamadou	\N	\N
24496	David	\N	\N
24560	Ruben	\N	\N
24604	Fernando Nino	\N	\N
24658	Ismael	\N	\N
24707	Toni	\N	\N
24755	David Gabriel Franco	\N	\N
24798	Francisco	\N	\N
2495	David Omar	\N	\N
3342	Pedro Eliezer	\N	\N
3811	Alejandro	\N	\N
4840	Francisco	\N	\N
5582	Jose Maria	\N	\N
6021	Jonathan	\N	\N
7392	Jaume	\N	\N
7407	Rodrigo	\N	\N
7424	Victor	\N	\N
7440	Jose Manuel	\N	\N
7453	Angel	\N	\N
7465	Jon	\N	\N
7480	Isaac	\N	\N
7495	Juan	\N	\N
7512	Gerard	\N	\N
7531	Daniel	\N	\N
7542	Fernando	\N	\N
7555	Jose	\N	\N
7565	Cesar	\N	\N
7579	Pere	\N	\N
7592	Carlos	\N	\N
7604	Pedro	\N	\N
7613	Oscar	\N	\N
7626	Iker	\N	\N
7632	Francisco Javier	\N	\N
7647	Jon Ander	\N	\N
7660	Sergio	\N	\N
7673	Aritz	\N	\N
7694	Yeray	\N	\N
9632	Jonathan	\N	\N
10497	Manuel	\N	\N
11483	Daniel	\N	\N
12299	Daniel	\N	\N
13060	Victor	\N	\N
13567	Ruben Salvador	\N	\N
13621	Didac	\N	\N
13624	Francisco	\N	\N
13660	Manuel	\N	\N
13689	Jose Carlos	\N	\N
13743	Carlos	\N	\N
14236	Bojan	\N	\N
17149	Edgar Antonio	\N	\N
17358	Mario	\N	\N
17576	Aaron	\N	\N
17813	Victor	\N	\N
18013	Ruben	\N	\N
18232	Alvaro Borja	\N	\N
18385	Aridane	\N	\N
19098	Raul	\N	\N
19251	Jose Manuel	\N	\N
19457	Roberto	\N	\N
19631	Miguel	\N	\N
20526	Emmanuel	\N	\N
20659	Roman	\N	\N
21298	Juan	\N	\N
21394	Manuel	\N	\N
21556	Diego	\N	\N
21619	Oihan	\N	\N
22140	Andoni	\N	\N
22198	Andres	\N	\N
22337	Francisco	\N	\N
22430	Miguel Angel	\N	\N
22489	Julio Cesar	\N	\N
22836	Hugo	\N	\N
22902	Jairo	\N	\N
22959	Alejandro	\N	\N
23013	Ignasi	\N	\N
23069	Daniel	\N	\N
23360	Hugo	\N	\N
23402	Francisco Javier	\N	\N
23453	Maikel	\N	\N
23520	Jefte	\N	\N
23807	Jose Ignacio	\N	\N
23868	Jose Angel	\N	\N
23913	Juan Manuel	\N	\N
23979	Josep	\N	\N
24046	Roque	\N	\N
24139	Borja	\N	\N
24340	Luis	\N	\N
24407	Antonio Jose	\N	\N
24481	Alexander	\N	\N
24546	Ismael	\N	\N
24595	Manuel Javier	\N	\N
24651	Javier Rueda	\N	\N
24700	Pedro	\N	\N
24745	Javier Dominguez	\N	\N
24788	Victor	\N	\N
2131	Joan	\N	\N
3413	Francisco Jose	\N	\N
4048	Carlos	\N	\N
4930	Thiago	\N	\N
5439	Pau	\N	\N
5827	Ignacio	\N	\N
6212	Pol	\N	\N
7398	Juan Jose	\N	\N
7405	Saul	\N	\N
7415	Javier	\N	\N
7426	Ager	\N	\N
7446	Alvaro	\N	\N
7457	David	\N	\N
7470	Inigo Elorduy	\N	\N
7483	Pedro	\N	\N
7489	Juan Carlos	\N	\N
7506	Pedro	\N	\N
7522	Jon	\N	\N
7536	Alberto	\N	\N
7548	Pol	\N	\N
7552	Antonio Cristian	\N	\N
7564	Jose	\N	\N
7577	Manuel	\N	\N
7591	Pedro	\N	\N
7601	Fabio	\N	\N
7617	Gorka	\N	\N
7630	Daniel	\N	\N
7635	Jose Antonio	\N	\N
7652	Cristian Ignacio	\N	\N
7671	Alejandro	\N	\N
7691	Carlos	\N	\N
8167	Victor Ruiz	\N	\N
11193	Pep Biel	\N	\N
11548	Pedro	\N	\N
12992	Israel	\N	\N
13042	Jesus	\N	\N
13555	Ismael	\N	\N
13589	Borja	\N	\N
13636	Jose Maria	\N	\N
13669	Miguel Angel	\N	\N
13706	Borja	\N	\N
13788	Jose	\N	\N
14984	Francisco	\N	\N
17214	Gaizka	\N	\N
17460	Ruben Ivan	\N	\N
17774	Andres Tomas	\N	\N
17978	Joaquin	\N	\N
18223	Victor	\N	\N
18374	Ignacio	\N	\N
19082	Francisco Jose	\N	\N
19162	Sergio	\N	\N
19353	Ruben	\N	\N
19554	Sergio	\N	\N
20402	David	\N	\N
20605	Sergio	\N	\N
21268	Jose Raul	\N	\N
21366	Cristobal	\N	\N
21529	Joaquin	\N	\N
21594	Alberto	\N	\N
21650	Jose Vicente	\N	\N
22168	Alvaro	\N	\N
22289	Javier	\N	\N
22374	Carlos Moros	\N	\N
22469	Borja	\N	\N
22810	David	\N	\N
22874	Adrian	\N	\N
22935	Sergi	\N	\N
22998	Pablo Carmine	\N	\N
23044	Sergio	\N	\N
23338	Hector Junior	\N	\N
23377	Santiago	\N	\N
23430	Pablo	\N	\N
23484	Ricard	\N	\N
23560	Jose Antonio	\N	\N
23838	Jorge	\N	\N
23891	Pablo	\N	\N
23941	Albert	\N	\N
24018	Miguel Angel	\N	\N
24104	Pablo	\N	\N
24302	Ivan	\N	\N
24377	Adria	\N	\N
24451	Javier	\N	\N
24523	Jon Ander	\N	\N
24581	Ivan Barrios	\N	\N
24626	Bienvenido	\N	\N
24638	Alberto	\N	\N
24687	Sergio	\N	\N
24733	David	\N	\N
24775	Sergio	\N	\N
2849	Declan	\N	\N
2879	Isaac	\N	\N
2897	Conor	\N	\N
2927	Jonjo	\N	\N
2939	Samuel Raymond	\N	\N
2966	Joel	\N	\N
2987	Joshua Dean	\N	\N
3013	Che Zach Everton Fred	\N	\N
3042	Jake Brian	\N	\N
3055	Matt Jacob	\N	\N
3081	Benjamin Matthew	\N	\N
3116	Cauley Martin	\N	\N
3146	John David	\N	\N
3156	Sam	\N	\N
3184	Steve	\N	\N
3204	Elliott	\N	\N
3232	Jake	\N	\N
3265	Samuel Luke	\N	\N
3284	Jay Rhys	\N	\N
3312	Cameron	\N	\N
3351	Ryan Colin	\N	\N
3376	Ryan Michael	\N	\N
3397	Callum Henry	\N	\N
3411	Samuel Oluwaseyi	\N	\N
3440	Matthew	\N	\N
3462	Adam	\N	\N
3478	Todd Arthur Lucien	\N	\N
3506	Mason	\N	\N
3551	Ryan	\N	\N
3563	Ryan Sirous	\N	\N
3593	Kyle	\N	\N
3619	Sean Aidan	\N	\N
3627	Lee James	\N	\N
3644	Mark	\N	\N
3666	Jason	\N	\N
3681	Joseph	\N	\N
3692	Corey Josiah Paul	\N	\N
3711	Liam	\N	\N
3729	Sheik Mohamed	\N	\N
3748	Reece	\N	\N
3759	Jordan	\N	\N
3776	Bradley	\N	\N
3793	Max	\N	\N
3809	Samuel Patrick Robert	\N	\N
3825	Jamal Clint-Ross	\N	\N
3837	Max Mcauley	\N	\N
3860	Marcus Anthony Myers	\N	\N
3882	Lewis Malcolm	\N	\N
3893	Luke	\N	\N
3906	Vadaine	\N	\N
3922	Adam James	\N	\N
3934	Cohen	\N	\N
3940	Kwame	\N	\N
3955	Scott Peter Andrew	\N	\N
3965	James	\N	\N
3971	David Junior	\N	\N
3989	Harry	\N	\N
3998	Charlie	\N	\N
4012	George Owen	\N	\N
4020	James Robert	\N	\N
4033	Tristan Michael	\N	\N
4051	Alex	\N	\N
4069	Udoka	\N	\N
4086	Tyreeq Jamal Adeshina	\N	\N
4101	Danny Sean	\N	\N
4106	Dan	\N	\N
4119	Ryan	\N	\N
4132	Kelvin	\N	\N
4150	Ben Peter Anthony	\N	\N
4177	Louie	\N	\N
5064	Ademola Olajide	\N	\N
6826	Thomas	\N	\N
8724	Anton Charles	\N	\N
10988	Toby	\N	\N
11039	Matthew	\N	\N
11119	Ryan	\N	\N
11147	Scott	\N	\N
11182	Ben	\N	\N
11210	Bradley Paul	\N	\N
11242	Curtis Alexander	\N	\N
11272	Harry	\N	\N
11309	Benjamin Anthony	\N	\N
11332	Kieran Neil	\N	\N
11362	Rodney	\N	\N
11400	Joseph	\N	\N
11443	Emmanuel	\N	\N
13393	Joseph Oluwaseyi Temitope	\N	\N
13460	Marvin	\N	\N
13709	Scott	\N	\N
15981	John	\N	\N
16283	Max	\N	\N
18094	Arvin	\N	\N
18488	Joshua Mark	\N	\N
19694	Joshua	\N	\N
19776	Bassala	\N	\N
20746	Jayden Connor	\N	\N
20853	Jordan	\N	\N
21717	Rakeem Jordan	\N	\N
21799	Sam William	\N	\N
21868	Nathan	\N	\N
22621	Oliver	\N	\N
22670	Sadou	\N	\N
22724	Benjamin James	\N	\N
24931	Benjamin Thomas	\N	\N
25002	George Louis Elliot	\N	\N
25140	Duncan Ian	\N	\N
25164	Sam	\N	\N
25190	Mohammed Ali	\N	\N
25210	Chris	\N	\N
25226	Thomas Peter Wayne	\N	\N
25282	Louis Hugh	\N	\N
25307	Tom Patrizio	\N	\N
25332	Jarvis	\N	\N
25358	Jack	\N	\N
25376	Sam	\N	\N
25409	John	\N	\N
25442	Dominic	\N	\N
25464	Anthony	\N	\N
25491	Callum	\N	\N
25523	William David	\N	\N
25556	Kieran Ricardo	\N	\N
25604	Harry	\N	\N
25637	Luke Ivan	\N	\N
25661	Ajay	\N	\N
25681	Emmanuel	\N	\N
25708	Jamie Lee Peter	\N	\N
25734	Matt Eric	\N	\N
25764	Sam	\N	\N
25798	Elijah	\N	\N
\.


--
-- TOC entry 2904 (class 0 OID 25611)
-- Dependencies: 205
-- Data for Name: ligas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ligas (id_liga, nombre, id_pais) FROM stdin;
237	Premier League\n]	42
538	LaLiga\n	113
\.


--
-- TOC entry 2902 (class 0 OID 25600)
-- Dependencies: 203
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paises (id_pais, pais) FROM stdin;
42	England
113	Spain
\.


--
-- TOC entry 2908 (class 0 OID 25633)
-- Dependencies: 209
-- Data for Name: partidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partidos (id_partido, id_equipo_local, id_equipo_visitante, id_liga, id_estadio, fecha, temporada, status, nombre_local, nombre_visitante, score_local, score_visitante) FROM stdin;
168031	12400	2546	237	1210	2021-04-10	352	3	Manchester City	Leeds United	1	2
227045	6402	6404	538	1563	2021-04-10	1511	3	Real Madrid	FC Barcelona	2	1
227056	6534	6521	538	3095	2021-04-11	1511	3	CF Villarreal	CA Osasuna	1	2
227064	6535	6515	538	3096	2021-04-11	1511	3	Real Valladolid	Granada CF	1	2
227070	6400	6558	538	3092	2021-04-11	1511	3	CF Valencia	Real Sociedad	2	2
227077	6533	6473	538	3093	2021-04-10	1511	3	CF Getafe	Cadiz CF	0	1
227099	6517	6541	538	3098	2021-04-10	1511	3	SD Eibar	UD Levante	0	1
227107	6539	3513	538	3091	2021-04-12	1511	3	RC Celta de Vigo	FC Sevilla	3	4
227116	6543	6406	538	3065	2021-04-11	1511	3	Real Betis Balompie	Atletico Madrid	1	1
227121	6530	6512	538	2983	2021-04-10	1511	3	Athletic Bilbao	Deportivo Alaves Sad	0	0
227130	6515	6517	538	1514	2021-04-22	1511	3	Granada CF	SD Eibar	4	1
227135	6558	6539	538	3079	2021-04-22	1511	3	Real Sociedad	RC Celta de Vigo	2	1
227147	6521	6400	538	3056	2021-04-21	1511	3	CA Osasuna	CF Valencia	3	1
227159	6541	3513	538	3097	2021-04-21	1511	3	UD Levante	FC Sevilla	0	1
227168	6459	6535	538	3017	2021-04-21	1511	3	Elche CF	Real Valladolid	1	1
227179	6473	6402	538	3024	2021-04-21	1511	3	Cadiz CF	Real Madrid	0	3
227187	6404	6533	538	3080	2021-04-22	1511	3	FC Barcelona	CF Getafe	5	2
227200	6406	6472	538	3061	2021-04-22	1511	3	Atletico Madrid	SD Huesca	2	0
227207	6512	6534	538	3090	2021-04-21	1511	3	Deportivo Alaves Sad	CF Villarreal	2	1
227217	6543	6530	538	3065	2021-04-21	1511	3	Real Betis Balompie	Athletic Bilbao	0	0
227230	3513	6515	538	1681	2021-04-25	1511	3	FC Sevilla	Granada CF	2	1
227242	6534	6404	538	3095	2021-04-25	1511	3	CF Villarreal	FC Barcelona	1	2
227253	6535	6473	538	3096	2021-04-24	1511	3	Real Valladolid	Cadiz CF	1	1
227264	6400	6512	538	3092	2021-04-24	1511	3	CF Valencia	Deportivo Alaves Sad	1	1
227273	6459	6541	538	3017	2021-04-24	1511	3	Elche CF	UD Levante	1	0
227281	6402	6543	538	1563	2021-04-24	1511	3	Real Madrid	Real Betis Balompie	0	0
227285	6472	6533	538	3032	2021-04-25	1511	3	SD Huesca	CF Getafe	0	2
227295	6517	6558	538	3098	2021-04-26	1511	0	SD Eibar	Real Sociedad	0	0
227298	6539	6521	538	3091	2021-04-25	1511	3	RC Celta de Vigo	CA Osasuna	2	1
227305	6530	6406	538	2983	2021-04-25	1511	3	Athletic Bilbao	Atletico Madrid	2	1
227313	6558	3513	538	3079	2021-04-18	1511	3	Real Sociedad	FC Sevilla	1	2
227319	6521	6459	538	3056	2021-04-18	1511	3	CA Osasuna	Elche CF	2	0
227325	6541	6534	538	3097	2021-04-18	1511	3	UD Levante	CF Villarreal	1	5
227331	6473	6539	538	3024	2021-04-18	1511	3	Cadiz CF	RC Celta de Vigo	0	0
227338	6543	6400	538	3065	2021-04-18	1511	3	Real Betis Balompie	CF Valencia	2	2
227345	6533	6402	538	3093	2021-04-18	1511	3	CF Getafe	Real Madrid	0	0
227352	6404	6515	538	3080	2021-04-29	1511	0	FC Barcelona	Granada CF	0	0
227357	6406	6517	538	3061	2021-04-18	1511	3	Atletico Madrid	SD Eibar	5	0
227363	6530	6535	538	2983	2021-04-28	1511	0	Athletic Bilbao	Real Valladolid	0	0
227371	6512	6472	538	3090	2021-04-18	1511	3	Deportivo Alaves Sad	SD Huesca	1	0
227383	6539	6541	538	3091	2021-04-30	1511	0	RC Celta de Vigo	UD Levante	0	0
227391	6517	6512	538	3098	2021-05-01	1511	0	SD Eibar	Deportivo Alaves Sad	0	0
227395	6472	6558	538	3032	2021-05-01	1511	0	SD Huesca	Real Sociedad	0	0
227402	6515	6473	538	1514	2021-05-02	1511	0	Granada CF	Cadiz CF	0	0
227412	6535	6543	538	3096	2021-05-02	1511	0	Real Valladolid	Real Betis Balompie	0	0
227419	6402	6521	538	1563	2021-05-01	1511	0	Real Madrid	CA Osasuna	0	0
227423	6400	6404	538	3092	2021-05-02	1511	17	CF Valencia	FC Barcelona	0	0
227434	6534	6533	538	3095	2021-05-02	1511	0	CF Villarreal	CF Getafe	0	0
227441	6459	6406	538	3017	2021-05-01	1511	0	Elche CF	Atletico Madrid	0	0
227450	3513	6530	538	1681	2021-05-03	1511	0	FC Sevilla	Athletic Bilbao	0	0
227455	6543	6515	538	3065	2021-05-10	1511	0	Real Betis Balompie	Granada CF	0	0
227462	6512	6541	538	3090	2021-05-08	1511	0	Deportivo Alaves Sad	UD Levante	0	0
227471	6530	6521	538	2983	2021-05-08	1511	0	Athletic Bilbao	CA Osasuna	0	0
227481	6404	6406	538	3080	2021-05-08	1511	0	FC Barcelona	Atletico Madrid	0	0
227492	6473	6472	538	3024	2021-05-08	1511	0	Cadiz CF	SD Huesca	0	0
227498	6533	6517	538	3093	2021-05-09	1511	0	CF Getafe	SD Eibar	0	0
227506	6534	6539	538	3095	2021-05-09	1511	0	CF Villarreal	RC Celta de Vigo	0	0
227512	6400	6535	538	3092	2021-05-09	1511	0	CF Valencia	Real Valladolid	0	0
227525	6558	6459	538	3079	2021-05-07	1511	0	Real Sociedad	Elche CF	0	0
227529	6402	3513	538	1563	2021-05-09	1511	17	Real Madrid	FC Sevilla	0	0
227536	6472	6530	538	3032	2021-05-12	1511	0	SD Huesca	Athletic Bilbao	0	0
227540	6406	6558	538	3061	2021-05-12	1511	0	Atletico Madrid	Real Sociedad	0	0
227550	6539	6533	538	3091	2021-05-12	1511	0	RC Celta de Vigo	CF Getafe	0	0
227562	6515	6402	538	1514	2021-05-13	1511	0	Granada CF	Real Madrid	0	0
227578	6517	6543	538	3098	2021-05-13	1511	0	SD Eibar	Real Betis Balompie	0	0
227587	6541	6404	538	3097	2021-05-11	1511	0	UD Levante	FC Barcelona	0	0
227596	6535	6534	538	3096	2021-05-13	1511	0	Real Valladolid	CF Villarreal	0	0
227602	3513	6400	538	1681	2021-05-12	1511	0	FC Sevilla	CF Valencia	0	0
227611	6521	6473	538	3056	2021-05-11	1511	0	CA Osasuna	Cadiz CF	0	0
227624	6459	6512	538	3017	2021-05-11	1511	0	Elche CF	Deportivo Alaves Sad	0	0
227634	6543	6472	538	3065	2021-05-16	1511	17	Real Betis Balompie	SD Huesca	0	0
227645	6512	6515	538	3090	2021-05-16	1511	17	Deportivo Alaves Sad	Granada CF	0	0
227653	6530	6402	538	2983	2021-05-16	1511	17	Athletic Bilbao	Real Madrid	0	0
227671	6406	6521	538	3061	2021-05-16	1511	17	Atletico Madrid	CA Osasuna	0	0
227695	6400	6517	538	3092	2021-05-16	1511	17	CF Valencia	SD Eibar	0	0
227714	6535	6406	538	3096	2021-05-23	1511	17	Real Valladolid	Atletico Madrid	0	0
227744	6521	6558	538	3056	2021-05-23	1511	17	CA Osasuna	Real Sociedad	0	0
227771	6515	6533	538	1514	2021-05-23	1511	17	Granada CF	CF Getafe	0	0
168102	12401	12424	237	1197	2021-04-11	352	3	West Ham United	Leicester City	3	2
168131	2515	2524	237	1200	2021-04-10	352	3	Crystal Palace	Chelsea FC	1	4
227661	6404	6539	538	3080	2021-05-16	1511	17	FC Barcelona	RC Celta de Vigo	0	0
227685	6534	3513	538	3095	2021-05-16	1511	17	CF Villarreal	FC Sevilla	0	0
227705	6473	6459	538	3024	2021-05-16	1511	17	Cadiz CF	Elche CF	0	0
227737	6402	6534	538	1563	2021-05-23	1511	17	Real Madrid	CF Villarreal	0	0
227760	6472	6400	538	3032	2021-05-23	1511	17	SD Huesca	CF Valencia	0	0
227790	6459	6530	538	3017	2021-05-23	1511	17	Elche CF	Athletic Bilbao	0	0
168092	2512	2522	237	1211	2021-04-11	352	3	Sheffield United	Arsenal FC	0	3
227676	6533	6541	538	3093	2021-05-16	1511	17	CF Getafe	UD Levante	0	0
227700	6558	6535	538	3079	2021-05-16	1511	17	Real Sociedad	Real Valladolid	0	0
227726	3513	6512	538	1681	2021-05-23	1511	17	FC Sevilla	Deportivo Alaves Sad	0	0
227749	6541	6473	538	3097	2021-05-23	1511	17	UD Levante	Cadiz CF	0	0
227779	6517	6404	538	3098	2021-05-23	1511	17	SD Eibar	FC Barcelona	0	0
168116	2509	2520	237	1195	2021-04-10	352	3	Liverpool FC	Aston Villa	2	1
227785	6539	6543	538	3091	2021-05-23	1511	17	RC Celta de Vigo	Real Betis Balompie	0	0
168213	12424	2544	237	1203	2021-04-22	352	3	Leicester City	West Bromwich Albion	3	0
168075	12430	2523	237	1202	2021-04-11	352	3	Tottenham Hotspur	Manchester United	1	3
168150	2513	849	237	1199	2021-04-11	352	3	Burnley FC	Newcastle United	1	2
168171	2518	2516	237	1207	2021-04-12	352	3	Brighton & Hove Albion	Everton FC	0	0
\.


--
-- TOC entry 2900 (class 0 OID 25591)
-- Dependencies: 201
-- Data for Name: resultados_apuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resultados_apuestas (id_resultado_apuesta, id_apuesta, ganada, empatada, monto_ganado_perdido) FROM stdin;
21	34	f	t	0
\.


--
-- TOC entry 2896 (class 0 OID 25572)
-- Dependencies: 197
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id_usuario, nombre, pais, fecha_nacimiento) FROM stdin;
\.


--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 198
-- Name: apuestas_id_apuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.apuestas_id_apuesta_seq', 1, false);


--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 206
-- Name: equipos_id_equipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipos_id_equipo_seq', 1, false);


--
-- TOC entry 2935 (class 0 OID 0)
-- Dependencies: 210
-- Name: estadios_id_estadio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estadios_id_estadio_seq', 1, false);


--
-- TOC entry 2936 (class 0 OID 0)
-- Dependencies: 214
-- Name: goles_id_gol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.goles_id_gol_seq', 1, false);


--
-- TOC entry 2937 (class 0 OID 0)
-- Dependencies: 212
-- Name: jugadores_id_jugador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jugadores_id_jugador_seq', 1, false);


--
-- TOC entry 2938 (class 0 OID 0)
-- Dependencies: 204
-- Name: ligas_id_liga_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ligas_id_liga_seq', 1, false);


--
-- TOC entry 2939 (class 0 OID 0)
-- Dependencies: 202
-- Name: paises_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paises_id_pais_seq', 1, false);


--
-- TOC entry 2940 (class 0 OID 0)
-- Dependencies: 208
-- Name: partidos_id_partido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partidos_id_partido_seq', 1, false);


--
-- TOC entry 2941 (class 0 OID 0)
-- Dependencies: 200
-- Name: resultados_apuestas_id_resultado_apuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resultados_apuestas_id_resultado_apuesta_seq', 1, false);


--
-- TOC entry 2942 (class 0 OID 0)
-- Dependencies: 196
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 1, false);


--
-- TOC entry 2746 (class 2606 OID 25588)
-- Name: apuestas apuestas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.apuestas
    ADD CONSTRAINT apuestas_pkey PRIMARY KEY (id_apuesta);


--
-- TOC entry 2754 (class 2606 OID 25630)
-- Name: equipos equipos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipos
    ADD CONSTRAINT equipos_pkey PRIMARY KEY (id_equipo);


--
-- TOC entry 2758 (class 2606 OID 25652)
-- Name: estadios estadios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadios
    ADD CONSTRAINT estadios_pkey PRIMARY KEY (id_estadio);


--
-- TOC entry 2762 (class 2606 OID 25687)
-- Name: goles goles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goles
    ADD CONSTRAINT goles_pkey PRIMARY KEY (id_gol);


--
-- TOC entry 2760 (class 2606 OID 25671)
-- Name: jugadores jugadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT jugadores_pkey PRIMARY KEY (id_jugador);


--
-- TOC entry 2752 (class 2606 OID 25619)
-- Name: ligas ligas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligas
    ADD CONSTRAINT ligas_pkey PRIMARY KEY (id_liga);


--
-- TOC entry 2750 (class 2606 OID 25608)
-- Name: paises paises_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paises
    ADD CONSTRAINT paises_pkey PRIMARY KEY (id_pais);


--
-- TOC entry 2756 (class 2606 OID 25641)
-- Name: partidos partidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_pkey PRIMARY KEY (id_partido);


--
-- TOC entry 2748 (class 2606 OID 25597)
-- Name: resultados_apuestas resultados_apuestas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados_apuestas
    ADD CONSTRAINT resultados_apuestas_pkey PRIMARY KEY (id_resultado_apuesta);


--
-- TOC entry 2744 (class 2606 OID 25580)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 2763 (class 2606 OID 25775)
-- Name: apuestas constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.apuestas
    ADD CONSTRAINT constraint_fk FOREIGN KEY (id_partido) REFERENCES public.partidos(id_partido) ON DELETE CASCADE;


--
-- TOC entry 2766 (class 2606 OID 25708)
-- Name: equipos equipos_id_liga_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipos
    ADD CONSTRAINT equipos_id_liga_fkey FOREIGN KEY (id_liga) REFERENCES public.ligas(id_liga);


--
-- TOC entry 2773 (class 2606 OID 25753)
-- Name: goles goles_id_liga_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goles
    ADD CONSTRAINT goles_id_liga_fkey FOREIGN KEY (id_liga) REFERENCES public.jugadores(id_jugador);


--
-- TOC entry 2772 (class 2606 OID 25748)
-- Name: goles goles_id_partido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goles
    ADD CONSTRAINT goles_id_partido_fkey FOREIGN KEY (id_partido) REFERENCES public.partidos(id_partido);


--
-- TOC entry 2771 (class 2606 OID 25760)
-- Name: jugadores jugadores_id_equipo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT jugadores_id_equipo_fkey FOREIGN KEY (id_equipo) REFERENCES public.equipos(id_equipo);


--
-- TOC entry 2765 (class 2606 OID 25703)
-- Name: ligas ligas_id_pais_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligas
    ADD CONSTRAINT ligas_id_pais_fkey FOREIGN KEY (id_pais) REFERENCES public.paises(id_pais);


--
-- TOC entry 2767 (class 2606 OID 25713)
-- Name: partidos partidos_id_equipo_local_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_id_equipo_local_fkey FOREIGN KEY (id_equipo_local) REFERENCES public.equipos(id_equipo);


--
-- TOC entry 2768 (class 2606 OID 25718)
-- Name: partidos partidos_id_equipo_visitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_id_equipo_visitante_fkey FOREIGN KEY (id_equipo_visitante) REFERENCES public.equipos(id_equipo);


--
-- TOC entry 2770 (class 2606 OID 25728)
-- Name: partidos partidos_id_estadio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_id_estadio_fkey FOREIGN KEY (id_estadio) REFERENCES public.estadios(id_estadio);


--
-- TOC entry 2769 (class 2606 OID 25723)
-- Name: partidos partidos_id_liga_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_id_liga_fkey FOREIGN KEY (id_liga) REFERENCES public.ligas(id_liga);


--
-- TOC entry 2764 (class 2606 OID 25698)
-- Name: resultados_apuestas resultados_apuestas_id_apuesta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados_apuestas
    ADD CONSTRAINT resultados_apuestas_id_apuesta_fkey FOREIGN KEY (id_apuesta) REFERENCES public.apuestas(id_apuesta);


-- Completed on 2021-04-26 02:39:24

--
-- PostgreSQL database dump complete
--


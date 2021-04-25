--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12
-- Dumped by pg_dump version 10.12

-- Started on 2021-04-25 18:15:27

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
-- TOC entry 2923 (class 0 OID 0)
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
    id_usuario integer,
    id_partido integer,
    id_jugador integer,
    monto_apuesta double precision,
    goles_mitad1_local integer,
    goles_mitad2_local integer,
    goles_mitad1_visitante integer,
    goles_mitad2_visitante integer,
    goles_jugador integer,
    lwin_awin_draw character varying
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
-- TOC entry 2924 (class 0 OID 0)
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
-- TOC entry 2925 (class 0 OID 0)
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
-- TOC entry 2926 (class 0 OID 0)
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
-- TOC entry 2927 (class 0 OID 0)
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
-- TOC entry 2928 (class 0 OID 0)
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
-- TOC entry 2929 (class 0 OID 0)
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
-- TOC entry 2930 (class 0 OID 0)
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
-- TOC entry 2931 (class 0 OID 0)
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
-- TOC entry 2932 (class 0 OID 0)
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
-- TOC entry 2933 (class 0 OID 0)
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
-- TOC entry 2899 (class 0 OID 25583)
-- Dependencies: 199
-- Data for Name: apuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.apuestas (id_apuesta, id_usuario, id_partido, id_jugador, monto_apuesta, goles_mitad1_local, goles_mitad2_local, goles_mitad1_visitante, goles_mitad2_visitante, goles_jugador, lwin_awin_draw) FROM stdin;
\.


--
-- TOC entry 2907 (class 0 OID 25622)
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
-- TOC entry 2911 (class 0 OID 25644)
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
-- TOC entry 2915 (class 0 OID 25682)
-- Dependencies: 215
-- Data for Name: goles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.goles (id_gol, id_jugador, id_partido, id_liga) FROM stdin;
\.


--
-- TOC entry 2913 (class 0 OID 25663)
-- Dependencies: 213
-- Data for Name: jugadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jugadores (id_jugador, nombre, posicion, id_equipo) FROM stdin;
\.


--
-- TOC entry 2905 (class 0 OID 25611)
-- Dependencies: 205
-- Data for Name: ligas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ligas (id_liga, nombre, id_pais) FROM stdin;
237	Premier League\n]	42
538	LaLiga\n	113
\.


--
-- TOC entry 2903 (class 0 OID 25600)
-- Dependencies: 203
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paises (id_pais, pais) FROM stdin;
42	England
113	Spain
\.


--
-- TOC entry 2909 (class 0 OID 25633)
-- Dependencies: 209
-- Data for Name: partidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partidos (id_partido, id_equipo_local, id_equipo_visitante, id_liga, id_estadio, fecha, temporada, status, nombre_local, nombre_visitante, score_local, score_visitante) FROM stdin;
168031	12400	2546	237	1210	2021-04-10	352	3	Manchester City	Leeds United	1	2
227064	6535	6515	538	3096	2021-04-11	1511	3	Real Valladolid	Granada CF	1	2
227077	6533	6473	538	3093	2021-04-10	1511	3	CF Getafe	Cadiz CF	0	1
227107	6539	3513	538	3091	2021-04-12	1511	3	RC Celta de Vigo	FC Sevilla	3	4
227130	6515	6517	538	1514	2021-04-22	1511	3	Granada CF	SD Eibar	4	1
227159	6541	3513	538	3097	2021-04-21	1511	3	UD Levante	FC Sevilla	0	1
227187	6404	6533	538	3080	2021-04-22	1511	3	FC Barcelona	CF Getafe	5	2
227217	6543	6530	538	3065	2021-04-21	1511	3	Real Betis Balompie	Athletic Bilbao	0	0
227253	6535	6473	538	3096	2021-04-24	1511	3	Real Valladolid	Cadiz CF	1	1
227281	6402	6543	538	1563	2021-04-24	1511	3	Real Madrid	Real Betis Balompie	0	0
227305	6530	6406	538	2983	2021-04-25	1511	3	Athletic Bilbao	Atletico Madrid	2	1
227331	6473	6539	538	3024	2021-04-18	1511	3	Cadiz CF	RC Celta de Vigo	0	0
227383	6539	6541	538	3091	2021-04-30	1511	0	RC Celta de Vigo	UD Levante	0	0
227455	6543	6515	538	3065	2021-05-10	1511	0	Real Betis Balompie	Granada CF	0	0
227536	6472	6530	538	3032	2021-05-12	1511	0	SD Huesca	Athletic Bilbao	0	0
227634	6543	6472	538	3065	2021-05-16	1511	17	Real Betis Balompie	SD Huesca	0	0
227714	6535	6406	538	3096	2021-05-23	1511	17	Real Valladolid	Atletico Madrid	0	0
227056	6534	6521	538	3095	2021-04-11	1511	3	CF Villarreal	CA Osasuna	1	2
227116	6543	6406	538	3065	2021-04-11	1511	3	Real Betis Balompie	Atletico Madrid	1	1
227135	6558	6539	538	3079	2021-04-22	1511	3	Real Sociedad	RC Celta de Vigo	2	1
227168	6459	6535	538	3017	2021-04-21	1511	3	Elche CF	Real Valladolid	1	1
227200	6406	6472	538	3061	2021-04-22	1511	3	Atletico Madrid	SD Huesca	2	0
227230	3513	6515	538	1681	2021-04-25	1511	3	FC Sevilla	Granada CF	2	1
227264	6400	6512	538	3092	2021-04-24	1511	3	CF Valencia	Deportivo Alaves Sad	1	1
227285	6472	6533	538	3032	2021-04-25	1511	3	SD Huesca	CF Getafe	0	2
227313	6558	3513	538	3079	2021-04-18	1511	3	Real Sociedad	FC Sevilla	1	2
227338	6543	6400	538	3065	2021-04-18	1511	3	Real Betis Balompie	CF Valencia	2	2
227395	6472	6558	538	3032	2021-05-01	1511	0	SD Huesca	Real Sociedad	0	0
227471	6530	6521	538	2983	2021-05-08	1511	0	Athletic Bilbao	CA Osasuna	0	0
227550	6539	6533	538	3091	2021-05-12	1511	0	RC Celta de Vigo	CF Getafe	0	0
227653	6530	6402	538	2983	2021-05-16	1511	17	Athletic Bilbao	Real Madrid	0	0
227737	6402	6534	538	1563	2021-05-23	1511	17	Real Madrid	CF Villarreal	0	0
168075	12430	2523	237	1202	2021-04-11	352	3	Tottenham Hotspur	Manchester United	1	3
227045	6402	6404	538	1563	2021-04-10	1511	3	Real Madrid	FC Barcelona	2	1
227070	6400	6558	538	3092	2021-04-11	1511	3	CF Valencia	Real Sociedad	2	2
227099	6517	6541	538	3098	2021-04-10	1511	3	SD Eibar	UD Levante	0	1
227121	6530	6512	538	2983	2021-04-10	1511	3	Athletic Bilbao	Deportivo Alaves Sad	0	0
227147	6521	6400	538	3056	2021-04-21	1511	3	CA Osasuna	CF Valencia	3	1
227179	6473	6402	538	3024	2021-04-21	1511	3	Cadiz CF	Real Madrid	0	3
227207	6512	6534	538	3090	2021-04-21	1511	3	Deportivo Alaves Sad	CF Villarreal	2	1
227242	6534	6404	538	3095	2021-04-25	1511	3	CF Villarreal	FC Barcelona	1	2
227273	6459	6541	538	3017	2021-04-24	1511	3	Elche CF	UD Levante	1	0
227298	6539	6521	538	3091	2021-04-25	1511	3	RC Celta de Vigo	CA Osasuna	2	1
227325	6541	6534	538	3097	2021-04-18	1511	3	UD Levante	CF Villarreal	1	5
227363	6530	6535	538	2983	2021-04-28	1511	0	Athletic Bilbao	Real Valladolid	0	0
227434	6534	6533	538	3095	2021-05-02	1511	0	CF Villarreal	CF Getafe	0	0
227512	6400	6535	538	3092	2021-05-09	1511	0	CF Valencia	Real Valladolid	0	0
227602	3513	6400	538	1681	2021-05-12	1511	0	FC Sevilla	CF Valencia	0	0
227695	6400	6517	538	3092	2021-05-16	1511	17	CF Valencia	SD Eibar	0	0
227779	6517	6404	538	3098	2021-05-23	1511	17	SD Eibar	FC Barcelona	0	0
168150	2513	849	237	1199	2021-04-11	352	3	Burnley FC	Newcastle United	1	2
227295	6517	6558	538	3098	2021-04-26	1511	0	SD Eibar	Real Sociedad	0	0
227319	6521	6459	538	3056	2021-04-18	1511	3	CA Osasuna	Elche CF	2	0
227357	6406	6517	538	3061	2021-04-18	1511	3	Atletico Madrid	SD Eibar	5	0
227423	6400	6404	538	3092	2021-05-02	1511	17	CF Valencia	FC Barcelona	0	0
227506	6534	6539	538	3095	2021-05-09	1511	0	CF Villarreal	RC Celta de Vigo	0	0
227596	6535	6534	538	3096	2021-05-13	1511	0	Real Valladolid	CF Villarreal	0	0
227685	6534	3513	538	3095	2021-05-16	1511	17	CF Villarreal	FC Sevilla	0	0
227771	6515	6533	538	1514	2021-05-23	1511	17	Granada CF	CF Getafe	0	0
168213	12424	2544	237	1203	2021-04-22	352	3	Leicester City	West Bromwich Albion	3	0
227345	6533	6402	538	3093	2021-04-18	1511	3	CF Getafe	Real Madrid	0	0
227402	6515	6473	538	1514	2021-05-02	1511	0	Granada CF	Cadiz CF	0	0
227481	6404	6406	538	3080	2021-05-08	1511	0	FC Barcelona	Atletico Madrid	0	0
227562	6515	6402	538	1514	2021-05-13	1511	0	Granada CF	Real Madrid	0	0
227661	6404	6539	538	3080	2021-05-16	1511	17	FC Barcelona	RC Celta de Vigo	0	0
227744	6521	6558	538	3056	2021-05-23	1511	17	CA Osasuna	Real Sociedad	0	0
168171	2518	2516	237	1207	2021-04-12	352	3	Brighton & Hove Albion	Everton FC	0	0
227352	6404	6515	538	3080	2021-04-29	1511	0	FC Barcelona	Granada CF	0	0
227419	6402	6521	538	1563	2021-05-01	1511	0	Real Madrid	CA Osasuna	0	0
227498	6533	6517	538	3093	2021-05-09	1511	0	CF Getafe	SD Eibar	0	0
227587	6541	6404	538	3097	2021-05-11	1511	0	UD Levante	FC Barcelona	0	0
227676	6533	6541	538	3093	2021-05-16	1511	17	CF Getafe	UD Levante	0	0
227760	6472	6400	538	3032	2021-05-23	1511	17	SD Huesca	CF Valencia	0	0
168102	12401	12424	237	1197	2021-04-11	352	3	West Ham United	Leicester City	3	2
227371	6512	6472	538	3090	2021-04-18	1511	3	Deportivo Alaves Sad	SD Huesca	1	0
227450	3513	6530	538	1681	2021-05-03	1511	0	FC Sevilla	Athletic Bilbao	0	0
227529	6402	3513	538	1563	2021-05-09	1511	17	Real Madrid	FC Sevilla	0	0
227624	6459	6512	538	3017	2021-05-11	1511	0	Elche CF	Deportivo Alaves Sad	0	0
227705	6473	6459	538	3024	2021-05-16	1511	17	Cadiz CF	Elche CF	0	0
227790	6459	6530	538	3017	2021-05-23	1511	17	Elche CF	Athletic Bilbao	0	0
168092	2512	2522	237	1211	2021-04-11	352	3	Sheffield United	Arsenal FC	0	3
227391	6517	6512	538	3098	2021-05-01	1511	0	SD Eibar	Deportivo Alaves Sad	0	0
227462	6512	6541	538	3090	2021-05-08	1511	0	Deportivo Alaves Sad	UD Levante	0	0
227540	6406	6558	538	3061	2021-05-12	1511	0	Atletico Madrid	Real Sociedad	0	0
227645	6512	6515	538	3090	2021-05-16	1511	17	Deportivo Alaves Sad	Granada CF	0	0
227726	3513	6512	538	1681	2021-05-23	1511	17	FC Sevilla	Deportivo Alaves Sad	0	0
168131	2515	2524	237	1200	2021-04-10	352	3	Crystal Palace	Chelsea FC	1	4
227412	6535	6543	538	3096	2021-05-02	1511	0	Real Valladolid	Real Betis Balompie	0	0
227492	6473	6472	538	3024	2021-05-08	1511	0	Cadiz CF	SD Huesca	0	0
227578	6517	6543	538	3098	2021-05-13	1511	0	SD Eibar	Real Betis Balompie	0	0
227671	6406	6521	538	3061	2021-05-16	1511	17	Atletico Madrid	CA Osasuna	0	0
227749	6541	6473	538	3097	2021-05-23	1511	17	UD Levante	Cadiz CF	0	0
168116	2509	2520	237	1195	2021-04-10	352	3	Liverpool FC	Aston Villa	2	1
227441	6459	6406	538	3017	2021-05-01	1511	0	Elche CF	Atletico Madrid	0	0
227525	6558	6459	538	3079	2021-05-07	1511	0	Real Sociedad	Elche CF	0	0
227611	6521	6473	538	3056	2021-05-11	1511	0	CA Osasuna	Cadiz CF	0	0
227700	6558	6535	538	3079	2021-05-16	1511	17	Real Sociedad	Real Valladolid	0	0
227785	6539	6543	538	3091	2021-05-23	1511	17	RC Celta de Vigo	Real Betis Balompie	0	0
\.


--
-- TOC entry 2901 (class 0 OID 25591)
-- Dependencies: 201
-- Data for Name: resultados_apuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resultados_apuestas (id_resultado_apuesta, id_apuesta, ganada, empatada, monto_ganado_perdido) FROM stdin;
\.


--
-- TOC entry 2897 (class 0 OID 25572)
-- Dependencies: 197
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id_usuario, nombre, pais, fecha_nacimiento) FROM stdin;
\.


--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 198
-- Name: apuestas_id_apuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.apuestas_id_apuesta_seq', 1, false);


--
-- TOC entry 2935 (class 0 OID 0)
-- Dependencies: 206
-- Name: equipos_id_equipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipos_id_equipo_seq', 1, false);


--
-- TOC entry 2936 (class 0 OID 0)
-- Dependencies: 210
-- Name: estadios_id_estadio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estadios_id_estadio_seq', 1, false);


--
-- TOC entry 2937 (class 0 OID 0)
-- Dependencies: 214
-- Name: goles_id_gol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.goles_id_gol_seq', 1, false);


--
-- TOC entry 2938 (class 0 OID 0)
-- Dependencies: 212
-- Name: jugadores_id_jugador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jugadores_id_jugador_seq', 1, false);


--
-- TOC entry 2939 (class 0 OID 0)
-- Dependencies: 204
-- Name: ligas_id_liga_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ligas_id_liga_seq', 1, false);


--
-- TOC entry 2940 (class 0 OID 0)
-- Dependencies: 202
-- Name: paises_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paises_id_pais_seq', 1, false);


--
-- TOC entry 2941 (class 0 OID 0)
-- Dependencies: 208
-- Name: partidos_id_partido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partidos_id_partido_seq', 1, false);


--
-- TOC entry 2942 (class 0 OID 0)
-- Dependencies: 200
-- Name: resultados_apuestas_id_resultado_apuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resultados_apuestas_id_resultado_apuesta_seq', 1, false);


--
-- TOC entry 2943 (class 0 OID 0)
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
-- TOC entry 2764 (class 2606 OID 25693)
-- Name: apuestas apuestas_id_partido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.apuestas
    ADD CONSTRAINT apuestas_id_partido_fkey FOREIGN KEY (id_partido) REFERENCES public.partidos(id_partido);


--
-- TOC entry 2763 (class 2606 OID 25688)
-- Name: apuestas apuestas_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.apuestas
    ADD CONSTRAINT apuestas_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);


--
-- TOC entry 2767 (class 2606 OID 25708)
-- Name: equipos equipos_id_liga_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipos
    ADD CONSTRAINT equipos_id_liga_fkey FOREIGN KEY (id_liga) REFERENCES public.ligas(id_liga);


--
-- TOC entry 2774 (class 2606 OID 25753)
-- Name: goles goles_id_liga_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goles
    ADD CONSTRAINT goles_id_liga_fkey FOREIGN KEY (id_liga) REFERENCES public.jugadores(id_jugador);


--
-- TOC entry 2773 (class 2606 OID 25748)
-- Name: goles goles_id_partido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goles
    ADD CONSTRAINT goles_id_partido_fkey FOREIGN KEY (id_partido) REFERENCES public.partidos(id_partido);


--
-- TOC entry 2772 (class 2606 OID 25760)
-- Name: jugadores jugadores_id_equipo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT jugadores_id_equipo_fkey FOREIGN KEY (id_equipo) REFERENCES public.equipos(id_equipo);


--
-- TOC entry 2766 (class 2606 OID 25703)
-- Name: ligas ligas_id_pais_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligas
    ADD CONSTRAINT ligas_id_pais_fkey FOREIGN KEY (id_pais) REFERENCES public.paises(id_pais);


--
-- TOC entry 2768 (class 2606 OID 25713)
-- Name: partidos partidos_id_equipo_local_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_id_equipo_local_fkey FOREIGN KEY (id_equipo_local) REFERENCES public.equipos(id_equipo);


--
-- TOC entry 2769 (class 2606 OID 25718)
-- Name: partidos partidos_id_equipo_visitante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_id_equipo_visitante_fkey FOREIGN KEY (id_equipo_visitante) REFERENCES public.equipos(id_equipo);


--
-- TOC entry 2771 (class 2606 OID 25728)
-- Name: partidos partidos_id_estadio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_id_estadio_fkey FOREIGN KEY (id_estadio) REFERENCES public.estadios(id_estadio);


--
-- TOC entry 2770 (class 2606 OID 25723)
-- Name: partidos partidos_id_liga_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partidos
    ADD CONSTRAINT partidos_id_liga_fkey FOREIGN KEY (id_liga) REFERENCES public.ligas(id_liga);


--
-- TOC entry 2765 (class 2606 OID 25698)
-- Name: resultados_apuestas resultados_apuestas_id_apuesta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados_apuestas
    ADD CONSTRAINT resultados_apuestas_id_apuesta_fkey FOREIGN KEY (id_apuesta) REFERENCES public.apuestas(id_apuesta);


-- Completed on 2021-04-25 18:15:27

--
-- PostgreSQL database dump complete
--


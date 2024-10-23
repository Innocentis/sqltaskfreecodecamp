--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: astroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astroids (
    astroids_id integer NOT NULL,
    name character varying(60) NOT NULL,
    composition character varying(100),
    size_in_km numeric,
    discovery_date date
);


ALTER TABLE public.astroids OWNER TO freecodecamp;

--
-- Name: astroids_astoids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astroids_astoids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astroids_astoids_id_seq OWNER TO freecodecamp;

--
-- Name: astroids_astoids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astroids_astoids_id_seq OWNED BY public.astroids.astroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    type character varying(50),
    distance_from_earth_in_ly numeric,
    number_of_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_to_planet_in_km integer,
    planet_id integer,
    diameter_in_km numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_moon boolean,
    has_life boolean,
    age_in_mio_years integer,
    discription_of_planet text,
    distance_to_earth_in_ly numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    type character varying(50),
    age_in_million_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astroids astroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids ALTER COLUMN astroids_id SET DEFAULT nextval('public.astroids_astoids_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astroids VALUES (1, 'Ceres', 'Rocky', 939.4, '1801-01-01');
INSERT INTO public.astroids VALUES (2, 'Vesta', 'Rocky', 525.4, '1807-03-29');
INSERT INTO public.astroids VALUES (3, 'Pallas', 'Rocky', 512.0, '1802-03-28');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 9377, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 23460, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 421700, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 670900, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1070400, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 1882700, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 1221870, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 527040, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Iapetus', 3561300, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 377400, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Triton', 3548000, 8, NULL);
INSERT INTO public.moon VALUES (13, 'Nereid', 5513400, 8, NULL);
INSERT INTO public.moon VALUES (15, 'Mo1on', 384400, 3, NULL);
INSERT INTO public.moon VALUES (16, 'P1hobos', 9377, 4, NULL);
INSERT INTO public.moon VALUES (17, 'Dei1mos', 23460, 4, NULL);
INSERT INTO public.moon VALUES (18, 'I1o', 421700, 5, NULL);
INSERT INTO public.moon VALUES (19, 'Eu1ropa', 670900, 5, NULL);
INSERT INTO public.moon VALUES (20, 'Gan1ymede', 1070400, 5, NULL);
INSERT INTO public.moon VALUES (21, 'Call1isto', 1882700, 5, NULL);
INSERT INTO public.moon VALUES (22, 'T1itan', 1221870, 6, NULL);
INSERT INTO public.moon VALUES (23, 'Rh1ea', 527040, 6, NULL);
INSERT INTO public.moon VALUES (24, 'Ia1petus', 3561300, 6, NULL);
INSERT INTO public.moon VALUES (25, 'Di1one', 377400, 6, NULL);
INSERT INTO public.moon VALUES (26, 'Tri1ton', 3548000, 8, NULL);
INSERT INTO public.moon VALUES (27, 'Nere1id', 5513400, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Planet X', false, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', true, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', true, NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Vega', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Rigel', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 6, NULL, NULL);


--
-- Name: astroids_astoids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astroids_astoids_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astroids astroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids
    ADD CONSTRAINT astroids_name_key UNIQUE (name);


--
-- Name: astroids astroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids
    ADD CONSTRAINT astroids_pkey PRIMARY KEY (astroids_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


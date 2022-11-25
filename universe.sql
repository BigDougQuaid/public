--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    morphology character varying(50),
    light_years_long numeric(18,2),
    bigger_than_your_mom boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_m_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_m_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40) NOT NULL,
    moon_id integer NOT NULL,
    planet_name character varying(40),
    is_actually_a_space_station boolean,
    is_flat boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    namesake text,
    number_of_moons integer,
    length_of_year_in_earth_years numeric,
    is_flat boolean,
    dwarf_planet boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_m_id_seq OWNER TO freecodecamp;

--
-- Name: planet_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_m_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    name character varying(40) NOT NULL,
    mission_length integer,
    satellite_id integer NOT NULL
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_m_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_m_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    star_type character varying(40),
    is_bright boolean,
    could_cook_an_egg boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_m_id_seq OWNER TO freecodecamp;

--
-- Name: star_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_m_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_m_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_m_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_m_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_m_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Barred Spiral', 100000.00, false);
INSERT INTO public.galaxy VALUES ('NGC 4414', 2, 'Flocculent Spiral', 62257357.97, false);
INSERT INTO public.galaxy VALUES ('NGC 1427A', 3, 'Irregular', 51864476.38, false);
INSERT INTO public.galaxy VALUES ('IC 4710', 4, 'Dwarf Peculiar', 36000.00, false);
INSERT INTO public.galaxy VALUES ('IC 3583', 5, 'Irregular', 36000.00, false);
INSERT INTO public.galaxy VALUES ('I Zwicky 36', 6, 'Irregular', 18986995.20, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Death Star', 1, 'None', true, false, NULL);
INSERT INTO public.moon VALUES ('Earths Moon', 2, 'Earth', false, false, 3);
INSERT INTO public.moon VALUES ('Deimos', 3, 'Mars', false, false, 4);
INSERT INTO public.moon VALUES ('Phobos', 4, 'Mars', false, false, 4);
INSERT INTO public.moon VALUES ('Despina', 5, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Galatea', 6, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Halimede', 7, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Hippocamp', 8, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Laomedeia', 9, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Larissa', 10, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Naiad', 11, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Nereid', 12, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Neso', 13, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Proteus', 14, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Psamathe', 15, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Sao', 16, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Thalassa', 17, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Triton', 18, 'Neptune', false, false, 8);
INSERT INTO public.moon VALUES ('Charon', 19, 'Pluto', false, false, 9);
INSERT INTO public.moon VALUES ('Hydra', 20, 'Pluto', false, false, 9);
INSERT INTO public.moon VALUES ('Kerberos', 21, 'Pluto', false, false, 9);
INSERT INTO public.moon VALUES ('Nix', 22, 'Pluto', false, false, 9);
INSERT INTO public.moon VALUES ('Styx', 23, 'Pluto', false, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 3, 'VARIATION OF "THE GROUND"', 1, 1, false, false);
INSERT INTO public.planet VALUES ('Jupiter', 5, 'KING OF THE ROMAN GODS', 79, 11.86, false, false);
INSERT INTO public.planet VALUES ('Mars', 4, 'ROMAN GOD OF WAR', 2, 1.88, false, false);
INSERT INTO public.planet VALUES ('Venus', 2, 'ROMAN GODDESS OF LOVE', 0, 0.61, false, false);
INSERT INTO public.planet VALUES ('Saturn', 6, 'FATHER OF JUPITER', 62, 29.45, false, false);
INSERT INTO public.planet VALUES ('Uranus', 7, 'GREEK GOD OF THE SKY', 27, 84, false, false);
INSERT INTO public.planet VALUES ('Neptune', 8, 'ROMAN GOD OF THE SEA', 14, 164.81, false, false);
INSERT INTO public.planet VALUES ('Mercury', 1, 'ROMAN GOD OF SPEED', 0, 0.24, false, false);
INSERT INTO public.planet VALUES ('Pluto', 9, 'ROMAN GOD OF THE UNDERWORLD', 5, 248.89, false, true);
INSERT INTO public.planet VALUES ('Haumea', 10, 'HAWAIIAN GODDESS OF FERTILITY', 2, 285, false, true);
INSERT INTO public.planet VALUES ('Ceres', 11, 'ROMAN GODDESS OF GRAIN', 0, 4.6, false, true);
INSERT INTO public.planet VALUES ('Eris', 12, 'GREEK GODDESS OF DISCORD AND STRIFE', 1, 557, false, true);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES ('Sputnik 1', 22, 1);
INSERT INTO public.satellite VALUES ('Sputnik 2', 162, 2);
INSERT INTO public.satellite VALUES ('Sputnik 3', 362, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Barnards Star', 2, 'Red Dwarf', true, true);
INSERT INTO public.star VALUES ('Sun', 1, 'Yellow Dwarf', true, true);
INSERT INTO public.star VALUES ('Wolf 359', 3, 'Red Dwarf', true, true);
INSERT INTO public.star VALUES ('Ross 248', 4, 'Red Dwarf', true, true);
INSERT INTO public.star VALUES ('61 Cygni', 5, 'Orange Dwarf', true, true);
INSERT INTO public.star VALUES ('Kruger 60', 6, 'Red Dwarf', true, true);


--
-- Name: galaxy_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_m_id_seq', 6, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 23, true);


--
-- Name: planet_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_m_id_seq', 12, true);


--
-- Name: satellite_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_m_id_seq', 3, true);


--
-- Name: star_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_m_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: planet m_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT m_id UNIQUE (planet_id);


--
-- Name: galaxy m_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT m_id_unique UNIQUE (galaxy_id);


--
-- Name: planet m_id_unique2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT m_id_unique2 UNIQUE (planet_id);


--
-- Name: moon m_id_unique3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT m_id_unique3 UNIQUE (moon_id);


--
-- Name: satellite m_id_unique4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT m_id_unique4 UNIQUE (satellite_id);


--
-- Name: star m_id_unique5; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT m_id_unique5 UNIQUE (star_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


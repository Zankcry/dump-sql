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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    estimated_age integer,
    has_life boolean DEFAULT false
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
    name character varying(255) NOT NULL,
    planet_id integer,
    orbital_period integer NOT NULL,
    diameter numeric(10,2),
    surface_gravity numeric(5,2),
    has_water_ice boolean
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
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    type character varying(255),
    distance_from_earth numeric(10,2)
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_id integer,
    orbital_period integer NOT NULL,
    diameter numeric(10,2) NOT NULL,
    atmosphere_composition text,
    has_moons boolean DEFAULT false
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
    name character varying(255) NOT NULL,
    galaxy_id integer,
    spectral_class character varying(255),
    mass numeric(10,2) NOT NULL,
    temperature integer,
    has_planets boolean DEFAULT false
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0.00, 14, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2.54, 10, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 2.73, 10, false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Irregular', 0.16, 14, false);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Irregular', 0.20, 13, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Spiral', 23.00, 10, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 27, 3474.00, 1.62, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 0, 22.70, 0.01, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 1, 12.40, 0.00, false);
INSERT INTO public.moon VALUES (4, 'Io', 3, 2, 3643.00, 1.80, false);
INSERT INTO public.moon VALUES (5, 'Europa', 3, 4, 3121.60, 1.31, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, 7, 5262.40, 1.43, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 3, 17, 4820.60, 1.24, true);
INSERT INTO public.moon VALUES (8, 'Titan', 4, 16, 5150.00, 1.35, true);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4, 1, 504.00, 0.11, true);
INSERT INTO public.moon VALUES (10, 'Mimas', 4, 1, 396.00, 0.06, false);
INSERT INTO public.moon VALUES (11, 'Miranda', 5, 1, 472.00, 0.08, true);
INSERT INTO public.moon VALUES (12, 'Ariel', 5, 3, 1158.00, 0.27, false);
INSERT INTO public.moon VALUES (13, 'Umbriel', 5, 4, 1170.00, 0.24, false);
INSERT INTO public.moon VALUES (14, 'Titania', 5, 9, 1577.00, 0.38, false);
INSERT INTO public.moon VALUES (15, 'Oberon', 5, 13, 1523.00, 0.31, false);
INSERT INTO public.moon VALUES (16, 'Triton', 6, 6, 2707.00, 0.78, true);
INSERT INTO public.moon VALUES (17, 'Proteus', 6, 1, 420.00, 0.04, false);
INSERT INTO public.moon VALUES (18, 'Nereid', 6, 360, 340.00, 0.01, false);
INSERT INTO public.moon VALUES (19, 'Charon', 7, 6, 1212.00, 0.28, false);
INSERT INTO public.moon VALUES (20, 'Nix', 7, 25, 48.70, 0.00, false);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Eagle Nebula', 1, 'Emission', 6500.00);
INSERT INTO public.nebula VALUES (2, 'Crab Nebula', 1, 'Supernova Remnant', 6300.00);
INSERT INTO public.nebula VALUES (3, 'Orion Nebula', 1, 'Emission', 1344.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 365, 12742.00, 'Nitrogen, Oxygen, Argon', true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 687, 6779.00, 'Carbon Dioxide', true);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 4333, 139820.00, 'Hydrogen, Helium', true);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, 10759, 116460.00, 'Hydrogen, Helium', true);
INSERT INTO public.planet VALUES (5, 'Uranus', 1, 30687, 50724.00, 'Hydrogen, Helium, Methane', true);
INSERT INTO public.planet VALUES (6, 'Neptune', 1, 60190, 49244.00, 'Hydrogen, Helium, Methane', true);
INSERT INTO public.planet VALUES (7, 'Mercury', 1, 88, 4879.00, 'Trace amounts of Hydrogen, Helium, Oxygen', false);
INSERT INTO public.planet VALUES (8, 'Venus', 1, 225, 12104.00, 'Carbon Dioxide', false);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 5, 11, 0.93, NULL, false);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 2, 130, 1.11, NULL, false);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1d', 3, 4, 0.77, NULL, false);
INSERT INTO public.planet VALUES (12, 'Gliese 581c', 4, 13, 1.50, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G2V', 1.00, 5778, true);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 'A1V', 2.02, 9940, false);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 'M2Iab', 17.00, 3500, false);
INSERT INTO public.star VALUES (4, 'Rigel', 1, 'B8Ia', 18.00, 12100, false);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, 'M5.5Ve', 0.12, 3042, true);
INSERT INTO public.star VALUES (6, 'Vega', 1, 'A0Va', 2.14, 9500, false);
INSERT INTO public.star VALUES (7, 'Barnards Star', 1, 'M4V', 0.17, 3100, false);
INSERT INTO public.star VALUES (8, 'Wolf 359', 1, 'M6.5Ve', 0.09, 2800, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: nebula nebula_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


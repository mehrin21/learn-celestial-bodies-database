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
    name character varying(30) NOT NULL,
    galaxy_types integer,
    daimeter numeric NOT NULL,
    description text,
    life_exist boolean
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
    name character varying(30) NOT NULL,
    moon_types integer,
    daimeter numeric NOT NULL,
    description text,
    life_exist boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    planet_types integer,
    daimeter numeric NOT NULL,
    description text,
    life_exist boolean,
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
-- Name: scientist; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.scientist (
    scientist_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.scientist OWNER TO freecodecamp;

--
-- Name: scientist_scientist_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.scientist_scientist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scientist_scientist_id_seq OWNER TO freecodecamp;

--
-- Name: scientist_scientist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.scientist_scientist_id_seq OWNED BY public.scientist.scientist_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_types integer,
    daimeter numeric NOT NULL,
    description text,
    life_exist boolean,
    galaxy_id integer
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: scientist scientist_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist ALTER COLUMN scientist_id SET DEFAULT nextval('public.scientist_scientist_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (13, 'Andromeda', 1, 220000, 'A spiral galaxy', true);
INSERT INTO public.galaxy VALUES (14, 'Milky Way', 2, 150000, 'The galaxy containing our Solar System', true);
INSERT INTO public.galaxy VALUES (15, 'Whirlpool', 1, 250000, 'A barred spiral galaxy', true);
INSERT INTO public.galaxy VALUES (16, 'Sombrero', 3, 120000, 'A spiral galaxy known for its distinctive appearance', true);
INSERT INTO public.galaxy VALUES (17, 'Pinwheel', 1, 280000, 'A face-on spiral galaxy', true);
INSERT INTO public.galaxy VALUES (18, 'Messier 87', 2, 100000, 'A giant elliptical galaxy', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon A', 1, 1500, 'A rocky moon orbiting Planet A', true, 1);
INSERT INTO public.moon VALUES (2, 'Moon B', 2, 2500, 'A gas moon orbiting Planet B', false, 2);
INSERT INTO public.moon VALUES (3, 'Moon C', 1, 2000, 'A moon with craters and ancient lava flows', true, 3);
INSERT INTO public.moon VALUES (4, 'Moon D', 3, 3000, 'An icy moon with a thick atmosphere', false, 4);
INSERT INTO public.moon VALUES (5, 'Moon E', 1, 1800, 'A small rocky moon with signs of past life', true, 5);
INSERT INTO public.moon VALUES (6, 'Moon F', 2, 2200, 'A moon with dense clouds and high winds', false, 6);
INSERT INTO public.moon VALUES (7, 'Moon G', 1, 1700, 'A small moon with rocky terrain and deep valleys', true, 7);
INSERT INTO public.moon VALUES (8, 'Moon H', 2, 2800, 'A gas moon with swirling storms and high gravity', false, 8);
INSERT INTO public.moon VALUES (9, 'Moon I', 3, 3500, 'A large moon with icy surface and volcanic activity', false, 9);
INSERT INTO public.moon VALUES (10, 'Moon J', 1, 1600, 'A rocky moon with significant tidal effects', true, 10);
INSERT INTO public.moon VALUES (11, 'Moon K', 1, 1900, 'A moon with ancient volcanic activity', true, 11);
INSERT INTO public.moon VALUES (12, 'Moon L', 2, 2400, 'A gas moon with faint rings and high radiation', false, 12);
INSERT INTO public.moon VALUES (13, 'Moon M', 1, 2100, 'A rocky moon with a large impact crater', true, 1);
INSERT INTO public.moon VALUES (14, 'Moon N', 3, 3300, 'An icy moon with subterranean oceans', false, 4);
INSERT INTO public.moon VALUES (15, 'Moon O', 2, 2600, 'A gas moon with clouds of methane', false, 5);
INSERT INTO public.moon VALUES (16, 'Moon P', 1, 2200, 'A moon with deep canyons and high cliffs', true, 6);
INSERT INTO public.moon VALUES (17, 'Moon Q', 1, 2300, 'A small rocky moon with high-altitude lakes', true, 7);
INSERT INTO public.moon VALUES (18, 'Moon R', 2, 2700, 'A gas moon with an unstable atmosphere', false, 8);
INSERT INTO public.moon VALUES (19, 'Moon S', 3, 3000, 'A large moon with snow-covered mountains', false, 9);
INSERT INTO public.moon VALUES (20, 'Moon T', 1, 2500, 'A rocky moon with a significant magnetic field', true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet A', 1, 5000, 'A rocky planet close to the star', true, 19);
INSERT INTO public.planet VALUES (2, 'Planet B', 2, 8000, 'A gas giant far from its star', false, 20);
INSERT INTO public.planet VALUES (3, 'Planet C', 1, 7000, 'A desert planet orbiting a yellow star', true, 23);
INSERT INTO public.planet VALUES (4, 'Planet D', 3, 10000, 'An ice giant far from its star', false, 24);
INSERT INTO public.planet VALUES (5, 'Planet E', 1, 6000, 'A habitable planet with water', true, 21);
INSERT INTO public.planet VALUES (6, 'Planet F', 2, 9000, 'A gas planet with rings', false, 22);
INSERT INTO public.planet VALUES (7, 'Planet G', 1, 5500, 'A rocky planet with signs of ancient life', true, 19);
INSERT INTO public.planet VALUES (8, 'Planet H', 2, 8500, 'A gas giant with a strong magnetic field', false, 20);
INSERT INTO public.planet VALUES (9, 'Planet I', 3, 12000, 'A distant ice planet with extreme temperatures', false, 21);
INSERT INTO public.planet VALUES (10, 'Planet J', 1, 7500, 'A rocky planet with an active volcano', true, 22);
INSERT INTO public.planet VALUES (11, 'Planet K', 1, 6800, 'A desert planet with large sand dunes', false, 23);
INSERT INTO public.planet VALUES (12, 'Planet L', 2, 9500, 'A gas giant with a large moon', false, 24);


--
-- Data for Name: scientist; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.scientist VALUES (1, 'Alice Johnson', 35);
INSERT INTO public.scientist VALUES (2, 'Bob Smith', 42);
INSERT INTO public.scientist VALUES (3, 'Charlie Brown', 29);
INSERT INTO public.scientist VALUES (4, 'Diana Green', 50);
INSERT INTO public.scientist VALUES (5, 'Eve White', 38);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (19, 'Star A', 1, 1000000, 'A yellow dwarf star', true, 18);
INSERT INTO public.star VALUES (20, 'Star B', 2, 1200000, 'A red giant star', true, 17);
INSERT INTO public.star VALUES (21, 'Star C', 1, 1500000, 'A blue supergiant star', true, 13);
INSERT INTO public.star VALUES (22, 'Star D', 3, 900000, 'A white dwarf star', true, 14);
INSERT INTO public.star VALUES (23, 'Star E', 2, 1100000, 'A red supergiant star', true, 15);
INSERT INTO public.star VALUES (24, 'Star F', 1, 1300000, 'A main sequence star', true, 16);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 18, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: scientist_scientist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.scientist_scientist_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 24, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: scientist scientist_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist
    ADD CONSTRAINT scientist_pkey PRIMARY KEY (scientist_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: scientist unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_foreign_key FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_foreign_key FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_foreign_key FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


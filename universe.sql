
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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    is_espherical boolean,
    age_in_million_of_years integer,
    black_hole_types text,
    diameter integer,
    distance_from_earth numeric,
    constellation character varying(30)
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_id_black_hole_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_id_black_hole_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_id_black_hole_seq OWNER TO freecodecamp;

--
-- Name: black_hole_id_black_hole_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_id_black_hole_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_million_of_years integer,
    galaxy_type text,
    dimension text,
    distance_from_earth numeric,
    year_of_discovery character(4)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_name_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_name_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_name_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    is_espherical boolean,
    age_in_million_of_years integer,
    moon_types text,
    diameter real,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    is_espherical boolean,
    age_in_million_of_years integer,
    planet_type text,
    diameter real,
    distance_from_sun numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_espherical boolean,
    age_in_million_of_years integer,
    star_type text,
    dimension integer,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_id_black_hole_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_name_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (4, 'Sagittarius A', NULL, NULL, NULL, NULL, 'Supermasive', NULL, NULL, 'Sagittarius');
INSERT INTO public.black_hole VALUES (5, 'V4641 SGR', NULL, NULL, NULL, NULL, 'Stellar', NULL, NULL, 'Sagittarius');
INSERT INTO public.black_hole VALUES (6, 'V 1033 Sco', NULL, NULL, NULL, NULL, 'Stellar', NULL, NULL, 'Scorpio');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'WLM', NULL, NULL, 'Irregular', '11,000 x 3,600', 3.1, '1909');
INSERT INTO public.galaxy VALUES (6, 'Andromeda I', NULL, NULL, 'Elliptical', '1,900', 2.64, '1970');
INSERT INTO public.galaxy VALUES (7, 'Cetus dwarf', NULL, NULL, 'Elliptical', '3,700 x 3,200', 2.54, '1999');
INSERT INTO public.galaxy VALUES (8, 'Sculptor dwarf', NULL, NULL, 'Elliptical', '3,400 x 2,600', 0.29, '2004');
INSERT INTO public.galaxy VALUES (9, 'Andromeda Galaxy', NULL, NULL, 'Spiral', '200,000', 2.48, '964 ');
INSERT INTO public.galaxy VALUES (10, 'Milky Way Galaxy', NULL, NULL, 'Spiral', '144,000', NULL, '*   ');
INSERT INTO public.galaxy VALUES (11, 'Small Magellanic Cloud', NULL, NULL, 'Irregular', '16,000', 0.20, '*   ');
INSERT INTO public.galaxy VALUES (12, 'Large Magellanic Cloud', NULL, NULL, 'Irregular', '31,000 x 26,000', 0.16, '*   ');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'Moon', NULL, NULL, NULL, NULL, NULL, 3475, 384400, 7);
INSERT INTO public.moon VALUES (1, 'Phobos', NULL, NULL, NULL, NULL, NULL, 22.5, 9270, 8);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, NULL, NULL, NULL, NULL, 12.4, 23460, 8);
INSERT INTO public.moon VALUES (3, 'Europa', NULL, NULL, NULL, NULL, NULL, 3126, 670900, 9);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, NULL, NULL, NULL, NULL, 4800, 1883000, 9);
INSERT INTO public.moon VALUES (6, 'Gamynide', NULL, NULL, NULL, NULL, NULL, 5276, 1070000, 9);
INSERT INTO public.moon VALUES (7, 'Io', NULL, NULL, NULL, NULL, NULL, 3629, 4216000, 9);
INSERT INTO public.moon VALUES (8, 'Aegir', NULL, NULL, NULL, NULL, NULL, 6, 2073500, 10);
INSERT INTO public.moon VALUES (9, 'Anthe', NULL, NULL, NULL, NULL, NULL, 1, 197700, 10);
INSERT INTO public.moon VALUES (10, 'Kari', NULL, NULL, NULL, NULL, NULL, 6, 22118000, 10);
INSERT INTO public.moon VALUES (11, 'Ariel', NULL, NULL, NULL, NULL, NULL, 1160, 191240, 11);
INSERT INTO public.moon VALUES (12, 'Belinda', NULL, NULL, NULL, NULL, NULL, 66, 75260, 11);
INSERT INTO public.moon VALUES (13, 'Bianca', NULL, NULL, NULL, NULL, NULL, 42, 75260, 11);
INSERT INTO public.moon VALUES (14, 'Galeta', NULL, NULL, NULL, NULL, NULL, 140, 52500, 12);
INSERT INTO public.moon VALUES (15, 'Charon', NULL, NULL, NULL, NULL, NULL, 1207, 19571, 13);
INSERT INTO public.moon VALUES (16, 'Hydra', NULL, NULL, NULL, NULL, NULL, 44, 64780, 13);
INSERT INTO public.moon VALUES (17, 'Kerberos', NULL, NULL, NULL, NULL, NULL, 34, 59000, 13);
INSERT INTO public.moon VALUES (18, 'Dysnomia', NULL, NULL, NULL, NULL, NULL, 300, 30000, 16);
INSERT INTO public.moon VALUES (19, 'Namaka', NULL, NULL, NULL, NULL, NULL, 170, 39000, 15);
INSERT INTO public.moon VALUES (20, 'Hiiaka', NULL, NULL, NULL, NULL, NULL, 310, 49500, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'Mercury', NULL, true, NULL, 'Terrestrial', 4800, 57910000, 6);
INSERT INTO public.planet VALUES (6, 'Venus', NULL, true, NULL, 'Terrestrial', 12104, 10820000, 6);
INSERT INTO public.planet VALUES (7, 'Earth', NULL, true, NULL, 'Terrestrial', 12756, 149600000, 6);
INSERT INTO public.planet VALUES (8, 'Mars', NULL, true, NULL, 'Terrestrial', 6794, 227940000, 6);
INSERT INTO public.planet VALUES (9, 'Jupiter', NULL, true, NULL, 'Terrestrial', 142984, 778330000, 6);
INSERT INTO public.planet VALUES (10, 'Saturn', NULL, true, NULL, 'Terrestrial', 120536, 1429400000, 6);
INSERT INTO public.planet VALUES (11, 'Uranus', NULL, true, NULL, 'Terrestrial', 51118, 2870990000, 6);
INSERT INTO public.planet VALUES (12, 'Neptuno', NULL, true, NULL, 'Terrestrial', 49532, 4504000000, 6);
INSERT INTO public.planet VALUES (13, 'Pluto', NULL, true, NULL, 'Dwarf', 2370, 5910000000, 6);
INSERT INTO public.planet VALUES (14, 'Ceres', NULL, true, NULL, 'Dwarf', 952, 413690250, 6);
INSERT INTO public.planet VALUES (15, 'Haumea', NULL, true, NULL, 'Dwarf', 1240, 6432011461, 6);
INSERT INTO public.planet VALUES (16, 'Eris', NULL, true, NULL, 'Dwarf', 2326, 10180122852, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Andromeda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (4, 'Sculptor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (5, 'Sagittarius', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES (12, 'Dorado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'Tucana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Orion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Sun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Name: black_hole_id_black_hole_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_id_black_hole_seq', 6, true);


--
-- Name: galaxy_id_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_name_seq', 12, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 20, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 16, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


--
-- Name: black_hole black_hole_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_constraint UNIQUE (name, black_hole_id);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constraint UNIQUE (name, galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_constraint UNIQUE (name, moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_constraint UNIQUE (name, planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constraint UNIQUE (name, star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


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
-- Name: astronomer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer (
    astronomer_id integer NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    field_of_study character varying,
    favourite_planet character varying,
    galaxy_id integer
);


ALTER TABLE public.astronomer OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_astronomer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_astronomer_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_astronomer_id_seq OWNED BY public.astronomer.astronomer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_types character varying,
    age_in_millions_of_years integer,
    distance_from_earth numeric
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
    name character varying NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
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
    name character varying NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean,
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
-- Name: astronomer astronomer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer ALTER COLUMN astronomer_id SET DEFAULT nextval('public.astronomer_astronomer_id_seq'::regclass);


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
-- Data for Name: astronomer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer VALUES (1, 'Jane Doe', 'janedoe@example.com', 'Astrophysics', 'Jupiter', 1);
INSERT INTO public.astronomer VALUES (2, 'John Smith', 'johnsmithe@example.com', 'Cosmology', 'Mars', 2);
INSERT INTO public.astronomer VALUES (3, 'Alice Green', 'alice.green@example.com', 'Planetary Science', 'Saturn', 1);
INSERT INTO public.astronomer VALUES (4, 'Eve Lee', 'eve.lee@example.com', 'Astrodynamics', 'Neptune', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is a barred spiral galaxy.', 'Barred Spiral', 13000, 25000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda is a spiral galaxy.', 'Spiral', 22000, 300000);
INSERT INTO public.galaxy VALUES (3, 'Centaurus A', 'Centaurus A is an elliptical galaxy with a prominent dust lane.', 'Elliptical', 12000, 100000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Triangulum is a small spiral galaxy.', 'Spiral', 400, 300000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'The Sombrero Galaxy is a spiral galaxy.', 'Spiral', 9500, 29000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'The Whirlpool Galaxy is a spiral galaxy.', 'Spiral', 23000, 31000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s only natural satellite', true, 238900, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'The larger of the natural satellites of Mars', false, 9376, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller of the natural satellites of Mars', false, 23460, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'The largest and most massive moon of Jupiter', true, 1070400, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'The smallest of the 4 Galileans moons orbiting Jupiter', true, 671100, 4);
INSERT INTO public.moon VALUES (6, 'Titan', 'The largest moon of Saturn', true, 1221865, 5);
INSERT INTO public.moon VALUES (7, 'Enceladus', 'The sixth-largest moon of Saturn', true, 238040, 6);
INSERT INTO public.moon VALUES (8, 'Miranda', 'The smallest and the innermost of Uranus''s five round moons', true, 129390, 7);
INSERT INTO public.moon VALUES (9, 'Triton', 'The largest natural satellite of Neptune', true, 354760, 8);
INSERT INTO public.moon VALUES (10, 'Luna', 'The largest and only natural satellite of Kepler-438b', true, 152100, 9);
INSERT INTO public.moon VALUES (11, 'Gliese 436 b I', 'The only moon of Gliese 436 b', false, 640000, 10);
INSERT INTO public.moon VALUES (12, 'Osiris', 'A hypothetical exomoon', false, 500000, 11);
INSERT INTO public.moon VALUES (14, 'Tinieblas', 'A hypothetical exomoon', false, 900000, 12);
INSERT INTO public.moon VALUES (13, 'Tarsus', 'A hypothetical exomoon', false, 800000, 12);
INSERT INTO public.moon VALUES (15, 'Hoth', 'A hypothetical exomoon', false, 1000000, 12);
INSERT INTO public.moon VALUES (16, 'Pandora', 'A moon of the gas giant Polyphemus', true, 413000, 13);
INSERT INTO public.moon VALUES (17, 'Ariel', 'The 4th largest of Uranus''s moons', true, 191240, 7);
INSERT INTO public.moon VALUES (18, 'Methone', 'A small moon of Saturn', false, 194000, 5);
INSERT INTO public.moon VALUES (19, 'Rhea', 'The 2nd largest moon of Saturn', true, 527040, 5);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'A moon of Saturn with ireegular shape', true, 1481100, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Earth is the third planet from the Sun and the only known celestial body to support life.', true, 4500, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Mars is the fourth planet from the Sun and the second smallest planet in the Solar System.', false, 4000, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Jupiter is the largest planet in the Solar System.', false, 4600, 2);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System.', false, 4200, 2);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Neptune is the eighth and farthest known planet from the Sun.', false, 5000, 3);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Uranus is the seventh planet from the Sun.', false, 4300, 3);
INSERT INTO public.planet VALUES (7, 'Mercury', 'First planet.', false, 3800, 1);
INSERT INTO public.planet VALUES (8, 'Venus', 'Second planet.', false, 4200, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-438b', 'A potientially habitable exoplanet', false, 2000, 2);
INSERT INTO public.planet VALUES (10, 'Gliese 436 b', 'A hot Neptune with a rocky core.', false, 1000, 3);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'An exoplanet in the atmosphere', false, 1500, 4);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 'An exoplanet in the habitable zone of the ultra-cool dwarf star TRAPPIST-1', false, 1000, 5);
INSERT INTO public.planet VALUES (13, 'HD 189733 b', 'A hot Jupiter with an atmosphere', false, 2000, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System.', 4600, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Sirius is the brightest star in the night sky.', 250, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'Alpha Centauri is the closest star system to the Solar System.', 6000, true, 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'It is a red supergiant star in the constellation Orion.', 8000, false, 2);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'Proxima Centauri is a red dward star in the Alpha Centauri system.', 600, true, 4);
INSERT INTO public.star VALUES (6, 'Vega', 'Vega is the brightest star in the constellation Lyra.', 450, false, 1);


--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_astronomer_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomer astronomer_email_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_email_key UNIQUE (email);


--
-- Name: astronomer astronomer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_name_key UNIQUE (name);


--
-- Name: astronomer astronomer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_pkey PRIMARY KEY (astronomer_id);


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
-- Name: astronomer astronomer_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


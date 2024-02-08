--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: df10_imp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df10_imp (
    id integer NOT NULL,
    id_df10 integer NOT NULL,
    importance integer,
    baseline integer,
    users_id integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    versions integer DEFAULT 1,
    CONSTRAINT df10_imp_baseline_check CHECK (((baseline >= 0) AND (baseline <= 100))),
    CONSTRAINT df10_imp_importance_check CHECK (((importance >= 0) AND (importance <= 100)))
);


ALTER TABLE public.df10_imp OWNER TO postgres;

--
-- Name: df10_imp_id_df10_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df10_imp_id_df10_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df10_imp_id_df10_seq OWNER TO postgres;

--
-- Name: df10_imp_id_df10_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df10_imp_id_df10_seq OWNED BY public.df10_imp.id_df10;


--
-- Name: df10_imp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df10_imp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df10_imp_id_seq OWNER TO postgres;

--
-- Name: df10_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df10_imp_id_seq OWNED BY public.df10_imp.id;


--
-- Name: df10_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df10_map (
    df10_id integer NOT NULL,
    gmo_id integer NOT NULL,
    relevance numeric(3,1)
);


ALTER TABLE public.df10_map OWNER TO postgres;

--
-- Name: df10_map_df10_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df10_map_df10_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df10_map_df10_id_seq OWNER TO postgres;

--
-- Name: df10_map_df10_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df10_map_df10_id_seq OWNED BY public.df10_map.df10_id;


--
-- Name: df10_map_gmo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df10_map_gmo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df10_map_gmo_id_seq OWNER TO postgres;

--
-- Name: df10_map_gmo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df10_map_gmo_id_seq OWNED BY public.df10_map.gmo_id;


--
-- Name: df1_imp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df1_imp (
    id integer NOT NULL,
    id_df1 integer NOT NULL,
    importance integer,
    baseline integer DEFAULT 3,
    users_id integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    versions integer DEFAULT 1,
    CONSTRAINT df1_imp_baseline_check CHECK (((baseline >= 1) AND (baseline <= 5))),
    CONSTRAINT df1_imp_importance_check CHECK (((importance >= 1) AND (importance <= 5)))
);


ALTER TABLE public.df1_imp OWNER TO postgres;

--
-- Name: df1_imp_id_df1_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df1_imp_id_df1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df1_imp_id_df1_seq OWNER TO postgres;

--
-- Name: df1_imp_id_df1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df1_imp_id_df1_seq OWNED BY public.df1_imp.id_df1;


--
-- Name: df1_imp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df1_imp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df1_imp_id_seq OWNER TO postgres;

--
-- Name: df1_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df1_imp_id_seq OWNED BY public.df1_imp.id;


--
-- Name: df1_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df1_map (
    df1_id integer NOT NULL,
    gmo_id integer NOT NULL,
    relevance numeric(3,1)
);


ALTER TABLE public.df1_map OWNER TO postgres;

--
-- Name: df1_map_df1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df1_map_df1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df1_map_df1_id_seq OWNER TO postgres;

--
-- Name: df1_map_df1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df1_map_df1_id_seq OWNED BY public.df1_map.df1_id;


--
-- Name: df1_map_gmo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df1_map_gmo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df1_map_gmo_id_seq OWNER TO postgres;

--
-- Name: df1_map_gmo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df1_map_gmo_id_seq OWNED BY public.df1_map.gmo_id;


--
-- Name: df2_imp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df2_imp (
    id integer NOT NULL,
    id_df2 character varying(4),
    importance integer,
    baseline integer DEFAULT 3,
    users_id integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    versions integer DEFAULT 1,
    CONSTRAINT df2_imp_baseline_check CHECK (((baseline >= 1) AND (baseline <= 5))),
    CONSTRAINT df2_imp_importance_check CHECK (((importance >= 1) AND (importance <= 5)))
);


ALTER TABLE public.df2_imp OWNER TO postgres;

--
-- Name: df2_imp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df2_imp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df2_imp_id_seq OWNER TO postgres;

--
-- Name: df2_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df2_imp_id_seq OWNED BY public.df2_imp.id;


--
-- Name: df2_map1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df2_map1 (
    id_df2_eg text,
    id_df2_ag text,
    relevance numeric(3,1)
);


ALTER TABLE public.df2_map1 OWNER TO postgres;

--
-- Name: df2_map2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df2_map2 (
    id_df2_ag text NOT NULL,
    id_gmo integer NOT NULL,
    relevance integer
);


ALTER TABLE public.df2_map2 OWNER TO postgres;

--
-- Name: df2_map2_id_gmo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df2_map2_id_gmo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df2_map2_id_gmo_seq OWNER TO postgres;

--
-- Name: df2_map2_id_gmo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df2_map2_id_gmo_seq OWNED BY public.df2_map2.id_gmo;


--
-- Name: df3_imp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df3_imp (
    id integer NOT NULL,
    id_df3 integer NOT NULL,
    impact integer,
    likelihood integer,
    risk_rating integer,
    baseline integer DEFAULT 9,
    users_id integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    versions integer DEFAULT 1,
    CONSTRAINT df3_imp_baseline_check CHECK (((baseline >= 1) AND (baseline <= 25))),
    CONSTRAINT df3_imp_impact_check CHECK (((impact >= 1) AND (impact <= 5))),
    CONSTRAINT df3_imp_likelihood_check CHECK (((likelihood >= 1) AND (likelihood <= 5))),
    CONSTRAINT df3_imp_risk_rating_check CHECK (((risk_rating >= 1) AND (risk_rating <= 25)))
);


ALTER TABLE public.df3_imp OWNER TO postgres;

--
-- Name: df3_imp_id_df3_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df3_imp_id_df3_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df3_imp_id_df3_seq OWNER TO postgres;

--
-- Name: df3_imp_id_df3_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df3_imp_id_df3_seq OWNED BY public.df3_imp.id_df3;


--
-- Name: df3_imp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df3_imp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df3_imp_id_seq OWNER TO postgres;

--
-- Name: df3_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df3_imp_id_seq OWNED BY public.df3_imp.id;


--
-- Name: df3_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df3_map (
    df3_id integer NOT NULL,
    gmo_id integer NOT NULL,
    relevance numeric(3,1)
);


ALTER TABLE public.df3_map OWNER TO postgres;

--
-- Name: df3_map_df3_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df3_map_df3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df3_map_df3_id_seq OWNER TO postgres;

--
-- Name: df3_map_df3_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df3_map_df3_id_seq OWNED BY public.df3_map.df3_id;


--
-- Name: df3_map_gmo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df3_map_gmo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df3_map_gmo_id_seq OWNER TO postgres;

--
-- Name: df3_map_gmo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df3_map_gmo_id_seq OWNED BY public.df3_map.gmo_id;


--
-- Name: df4_imp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df4_imp (
    id integer NOT NULL,
    id_df4 integer NOT NULL,
    importance integer,
    baseline integer DEFAULT 3,
    users_id integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    versions integer DEFAULT 1,
    CONSTRAINT df4_imp_baseline_check CHECK (((baseline >= 1) AND (baseline <= 3))),
    CONSTRAINT df4_imp_importance_check CHECK (((importance >= 1) AND (importance <= 3)))
);


ALTER TABLE public.df4_imp OWNER TO postgres;

--
-- Name: df4_imp_id_df4_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df4_imp_id_df4_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df4_imp_id_df4_seq OWNER TO postgres;

--
-- Name: df4_imp_id_df4_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df4_imp_id_df4_seq OWNED BY public.df4_imp.id_df4;


--
-- Name: df4_imp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df4_imp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df4_imp_id_seq OWNER TO postgres;

--
-- Name: df4_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df4_imp_id_seq OWNED BY public.df4_imp.id;


--
-- Name: df4_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df4_map (
    df4_id integer NOT NULL,
    gmo_id integer NOT NULL,
    relevance numeric(3,1)
);


ALTER TABLE public.df4_map OWNER TO postgres;

--
-- Name: df4_map_df4_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df4_map_df4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df4_map_df4_id_seq OWNER TO postgres;

--
-- Name: df4_map_df4_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df4_map_df4_id_seq OWNED BY public.df4_map.df4_id;


--
-- Name: df4_map_gmo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df4_map_gmo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df4_map_gmo_id_seq OWNER TO postgres;

--
-- Name: df4_map_gmo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df4_map_gmo_id_seq OWNED BY public.df4_map.gmo_id;


--
-- Name: df5_imp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df5_imp (
    id integer NOT NULL,
    id_df5 integer NOT NULL,
    importance integer,
    baseline integer,
    users_id integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    versions integer DEFAULT 1,
    CONSTRAINT df5_imp_baseline_check CHECK (((baseline >= 0) AND (baseline <= 100))),
    CONSTRAINT df5_imp_importance_check CHECK (((importance >= 0) AND (importance <= 100)))
);


ALTER TABLE public.df5_imp OWNER TO postgres;

--
-- Name: df5_imp_id_df5_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df5_imp_id_df5_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df5_imp_id_df5_seq OWNER TO postgres;

--
-- Name: df5_imp_id_df5_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df5_imp_id_df5_seq OWNED BY public.df5_imp.id_df5;


--
-- Name: df5_imp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df5_imp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df5_imp_id_seq OWNER TO postgres;

--
-- Name: df5_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df5_imp_id_seq OWNED BY public.df5_imp.id;


--
-- Name: df5_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df5_map (
    df5_id integer NOT NULL,
    gmo_id integer NOT NULL,
    relevance numeric(3,1)
);


ALTER TABLE public.df5_map OWNER TO postgres;

--
-- Name: df5_map_df5_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df5_map_df5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df5_map_df5_id_seq OWNER TO postgres;

--
-- Name: df5_map_df5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df5_map_df5_id_seq OWNED BY public.df5_map.df5_id;


--
-- Name: df5_map_gmo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df5_map_gmo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df5_map_gmo_id_seq OWNER TO postgres;

--
-- Name: df5_map_gmo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df5_map_gmo_id_seq OWNED BY public.df5_map.gmo_id;


--
-- Name: df6_imp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df6_imp (
    id integer NOT NULL,
    id_df6 integer NOT NULL,
    importance integer,
    baseline integer,
    users_id integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    versions integer DEFAULT 1,
    CONSTRAINT df6_imp_baseline_check CHECK (((baseline >= 0) AND (baseline <= 100))),
    CONSTRAINT df6_imp_importance_check CHECK (((importance >= 0) AND (importance <= 100)))
);


ALTER TABLE public.df6_imp OWNER TO postgres;

--
-- Name: df6_imp_id_df6_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df6_imp_id_df6_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df6_imp_id_df6_seq OWNER TO postgres;

--
-- Name: df6_imp_id_df6_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df6_imp_id_df6_seq OWNED BY public.df6_imp.id_df6;


--
-- Name: df6_imp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df6_imp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df6_imp_id_seq OWNER TO postgres;

--
-- Name: df6_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df6_imp_id_seq OWNED BY public.df6_imp.id;


--
-- Name: df6_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df6_map (
    df6_id integer NOT NULL,
    gmo_id integer NOT NULL,
    relevance numeric(3,1)
);


ALTER TABLE public.df6_map OWNER TO postgres;

--
-- Name: df6_map_df6_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df6_map_df6_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df6_map_df6_id_seq OWNER TO postgres;

--
-- Name: df6_map_df6_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df6_map_df6_id_seq OWNED BY public.df6_map.df6_id;


--
-- Name: df6_map_gmo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df6_map_gmo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df6_map_gmo_id_seq OWNER TO postgres;

--
-- Name: df6_map_gmo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df6_map_gmo_id_seq OWNED BY public.df6_map.gmo_id;


--
-- Name: df7_imp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df7_imp (
    id integer NOT NULL,
    id_df7 integer NOT NULL,
    importance integer,
    baseline integer DEFAULT 3,
    users_id integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    versions integer DEFAULT 1,
    CONSTRAINT df7_imp_baseline_check CHECK (((baseline >= 1) AND (baseline <= 5))),
    CONSTRAINT df7_imp_importance_check CHECK (((importance >= 1) AND (importance <= 5)))
);


ALTER TABLE public.df7_imp OWNER TO postgres;

--
-- Name: df7_imp_id_df7_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df7_imp_id_df7_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df7_imp_id_df7_seq OWNER TO postgres;

--
-- Name: df7_imp_id_df7_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df7_imp_id_df7_seq OWNED BY public.df7_imp.id_df7;


--
-- Name: df7_imp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df7_imp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df7_imp_id_seq OWNER TO postgres;

--
-- Name: df7_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df7_imp_id_seq OWNED BY public.df7_imp.id;


--
-- Name: df7_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df7_map (
    df7_id integer NOT NULL,
    gmo_id integer NOT NULL,
    relevance numeric(3,1)
);


ALTER TABLE public.df7_map OWNER TO postgres;

--
-- Name: df7_map_df7_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df7_map_df7_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df7_map_df7_id_seq OWNER TO postgres;

--
-- Name: df7_map_df7_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df7_map_df7_id_seq OWNED BY public.df7_map.df7_id;


--
-- Name: df7_map_gmo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df7_map_gmo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df7_map_gmo_id_seq OWNER TO postgres;

--
-- Name: df7_map_gmo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df7_map_gmo_id_seq OWNED BY public.df7_map.gmo_id;


--
-- Name: df8_imp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df8_imp (
    id integer NOT NULL,
    id_df8 integer NOT NULL,
    importance integer,
    baseline integer,
    users_id integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    versions integer DEFAULT 1,
    CONSTRAINT df8_imp_baseline_check CHECK (((baseline >= 0) AND (baseline <= 100))),
    CONSTRAINT df8_imp_importance_check CHECK (((importance >= 0) AND (importance <= 100)))
);


ALTER TABLE public.df8_imp OWNER TO postgres;

--
-- Name: df8_imp_id_df8_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df8_imp_id_df8_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df8_imp_id_df8_seq OWNER TO postgres;

--
-- Name: df8_imp_id_df8_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df8_imp_id_df8_seq OWNED BY public.df8_imp.id_df8;


--
-- Name: df8_imp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df8_imp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df8_imp_id_seq OWNER TO postgres;

--
-- Name: df8_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df8_imp_id_seq OWNED BY public.df8_imp.id;


--
-- Name: df8_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df8_map (
    df8_id integer NOT NULL,
    gmo_id integer NOT NULL,
    relevance numeric(3,1)
);


ALTER TABLE public.df8_map OWNER TO postgres;

--
-- Name: df8_map_df8_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df8_map_df8_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df8_map_df8_id_seq OWNER TO postgres;

--
-- Name: df8_map_df8_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df8_map_df8_id_seq OWNED BY public.df8_map.df8_id;


--
-- Name: df8_map_gmo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df8_map_gmo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df8_map_gmo_id_seq OWNER TO postgres;

--
-- Name: df8_map_gmo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df8_map_gmo_id_seq OWNED BY public.df8_map.gmo_id;


--
-- Name: df9_imp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df9_imp (
    id integer NOT NULL,
    id_df9 integer NOT NULL,
    importance integer,
    baseline integer,
    users_id integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    versions integer DEFAULT 1,
    CONSTRAINT df9_imp_baseline_check CHECK (((baseline >= 0) AND (baseline <= 100))),
    CONSTRAINT df9_imp_importance_check CHECK (((importance >= 0) AND (importance <= 100)))
);


ALTER TABLE public.df9_imp OWNER TO postgres;

--
-- Name: df9_imp_id_df9_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df9_imp_id_df9_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df9_imp_id_df9_seq OWNER TO postgres;

--
-- Name: df9_imp_id_df9_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df9_imp_id_df9_seq OWNED BY public.df9_imp.id_df9;


--
-- Name: df9_imp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df9_imp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df9_imp_id_seq OWNER TO postgres;

--
-- Name: df9_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df9_imp_id_seq OWNED BY public.df9_imp.id;


--
-- Name: df9_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.df9_map (
    df9_id integer NOT NULL,
    gmo_id integer NOT NULL,
    relevance numeric(3,1)
);


ALTER TABLE public.df9_map OWNER TO postgres;

--
-- Name: df9_map_df9_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df9_map_df9_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df9_map_df9_id_seq OWNER TO postgres;

--
-- Name: df9_map_df9_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df9_map_df9_id_seq OWNED BY public.df9_map.df9_id;


--
-- Name: df9_map_gmo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.df9_map_gmo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.df9_map_gmo_id_seq OWNER TO postgres;

--
-- Name: df9_map_gmo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.df9_map_gmo_id_seq OWNED BY public.df9_map.gmo_id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: mst_df1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df1 (
    id integer NOT NULL,
    dimension text,
    explanation text
);


ALTER TABLE public.mst_df1 OWNER TO postgres;

--
-- Name: mst_df10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df10 (
    id integer NOT NULL,
    dimension text,
    explanation text
);


ALTER TABLE public.mst_df10 OWNER TO postgres;

--
-- Name: mst_df10_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mst_df10_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mst_df10_id_seq OWNER TO postgres;

--
-- Name: mst_df10_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mst_df10_id_seq OWNED BY public.mst_df10.id;


--
-- Name: mst_df1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mst_df1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mst_df1_id_seq OWNER TO postgres;

--
-- Name: mst_df1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mst_df1_id_seq OWNED BY public.mst_df1.id;


--
-- Name: mst_df2_ag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df2_ag (
    id_ag text NOT NULL,
    dimension text
);


ALTER TABLE public.mst_df2_ag OWNER TO postgres;

--
-- Name: mst_df2_eg; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df2_eg (
    id_eg text NOT NULL,
    dimension text
);


ALTER TABLE public.mst_df2_eg OWNER TO postgres;

--
-- Name: mst_df3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df3 (
    id integer NOT NULL,
    dimension text
);


ALTER TABLE public.mst_df3 OWNER TO postgres;

--
-- Name: mst_df3_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mst_df3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mst_df3_id_seq OWNER TO postgres;

--
-- Name: mst_df3_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mst_df3_id_seq OWNED BY public.mst_df3.id;


--
-- Name: mst_df4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df4 (
    id integer NOT NULL,
    dimension text
);


ALTER TABLE public.mst_df4 OWNER TO postgres;

--
-- Name: mst_df4_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mst_df4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mst_df4_id_seq OWNER TO postgres;

--
-- Name: mst_df4_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mst_df4_id_seq OWNED BY public.mst_df4.id;


--
-- Name: mst_df5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df5 (
    id integer NOT NULL,
    dimension text,
    explanation text
);


ALTER TABLE public.mst_df5 OWNER TO postgres;

--
-- Name: mst_df5_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mst_df5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mst_df5_id_seq OWNER TO postgres;

--
-- Name: mst_df5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mst_df5_id_seq OWNED BY public.mst_df5.id;


--
-- Name: mst_df6; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df6 (
    id integer NOT NULL,
    dimension text,
    explanation text
);


ALTER TABLE public.mst_df6 OWNER TO postgres;

--
-- Name: mst_df6_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mst_df6_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mst_df6_id_seq OWNER TO postgres;

--
-- Name: mst_df6_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mst_df6_id_seq OWNED BY public.mst_df6.id;


--
-- Name: mst_df7; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df7 (
    id integer NOT NULL,
    dimension text,
    explanation text
);


ALTER TABLE public.mst_df7 OWNER TO postgres;

--
-- Name: mst_df7_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mst_df7_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mst_df7_id_seq OWNER TO postgres;

--
-- Name: mst_df7_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mst_df7_id_seq OWNED BY public.mst_df7.id;


--
-- Name: mst_df8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df8 (
    id integer NOT NULL,
    dimension text,
    explanation text
);


ALTER TABLE public.mst_df8 OWNER TO postgres;

--
-- Name: mst_df8_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mst_df8_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mst_df8_id_seq OWNER TO postgres;

--
-- Name: mst_df8_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mst_df8_id_seq OWNED BY public.mst_df8.id;


--
-- Name: mst_df9; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_df9 (
    id integer NOT NULL,
    dimension text,
    explanation text
);


ALTER TABLE public.mst_df9 OWNER TO postgres;

--
-- Name: mst_df9_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mst_df9_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mst_df9_id_seq OWNER TO postgres;

--
-- Name: mst_df9_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mst_df9_id_seq OWNED BY public.mst_df9.id;


--
-- Name: mst_gmo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mst_gmo (
    id integer NOT NULL,
    id_gmo character varying(5),
    dimension text,
    explanation text
);


ALTER TABLE public.mst_gmo OWNER TO postgres;

--
-- Name: mst_gmo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mst_gmo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mst_gmo_id_seq OWNER TO postgres;

--
-- Name: mst_gmo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mst_gmo_id_seq OWNED BY public.mst_gmo.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    jabatan character varying(255) NOT NULL,
    fungsi_jabatan character varying(255) NOT NULL,
    atasan character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    role character varying(20)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: weight; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weight (
    id integer NOT NULL,
    step_2_weight integer,
    step_3_weight integer,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0),
    CONSTRAINT weight_step_2_weight_check CHECK (((step_2_weight >= 1) AND (step_2_weight <= 6))),
    CONSTRAINT weight_step_3_weight_check CHECK (((step_3_weight >= 1) AND (step_3_weight <= 6)))
);


ALTER TABLE public.weight OWNER TO postgres;

--
-- Name: weight_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.weight_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.weight_id_seq OWNER TO postgres;

--
-- Name: weight_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.weight_id_seq OWNED BY public.weight.id;


--
-- Name: df10_imp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df10_imp ALTER COLUMN id SET DEFAULT nextval('public.df10_imp_id_seq'::regclass);


--
-- Name: df10_imp id_df10; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df10_imp ALTER COLUMN id_df10 SET DEFAULT nextval('public.df10_imp_id_df10_seq'::regclass);


--
-- Name: df10_map df10_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df10_map ALTER COLUMN df10_id SET DEFAULT nextval('public.df10_map_df10_id_seq'::regclass);


--
-- Name: df10_map gmo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df10_map ALTER COLUMN gmo_id SET DEFAULT nextval('public.df10_map_gmo_id_seq'::regclass);


--
-- Name: df1_imp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df1_imp ALTER COLUMN id SET DEFAULT nextval('public.df1_imp_id_seq'::regclass);


--
-- Name: df1_imp id_df1; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df1_imp ALTER COLUMN id_df1 SET DEFAULT nextval('public.df1_imp_id_df1_seq'::regclass);


--
-- Name: df1_map df1_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df1_map ALTER COLUMN df1_id SET DEFAULT nextval('public.df1_map_df1_id_seq'::regclass);


--
-- Name: df1_map gmo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df1_map ALTER COLUMN gmo_id SET DEFAULT nextval('public.df1_map_gmo_id_seq'::regclass);


--
-- Name: df2_imp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df2_imp ALTER COLUMN id SET DEFAULT nextval('public.df2_imp_id_seq'::regclass);


--
-- Name: df2_map2 id_gmo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df2_map2 ALTER COLUMN id_gmo SET DEFAULT nextval('public.df2_map2_id_gmo_seq'::regclass);


--
-- Name: df3_imp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df3_imp ALTER COLUMN id SET DEFAULT nextval('public.df3_imp_id_seq'::regclass);


--
-- Name: df3_imp id_df3; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df3_imp ALTER COLUMN id_df3 SET DEFAULT nextval('public.df3_imp_id_df3_seq'::regclass);


--
-- Name: df3_map df3_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df3_map ALTER COLUMN df3_id SET DEFAULT nextval('public.df3_map_df3_id_seq'::regclass);


--
-- Name: df3_map gmo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df3_map ALTER COLUMN gmo_id SET DEFAULT nextval('public.df3_map_gmo_id_seq'::regclass);


--
-- Name: df4_imp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df4_imp ALTER COLUMN id SET DEFAULT nextval('public.df4_imp_id_seq'::regclass);


--
-- Name: df4_imp id_df4; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df4_imp ALTER COLUMN id_df4 SET DEFAULT nextval('public.df4_imp_id_df4_seq'::regclass);


--
-- Name: df4_map df4_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df4_map ALTER COLUMN df4_id SET DEFAULT nextval('public.df4_map_df4_id_seq'::regclass);


--
-- Name: df4_map gmo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df4_map ALTER COLUMN gmo_id SET DEFAULT nextval('public.df4_map_gmo_id_seq'::regclass);


--
-- Name: df5_imp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df5_imp ALTER COLUMN id SET DEFAULT nextval('public.df5_imp_id_seq'::regclass);


--
-- Name: df5_imp id_df5; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df5_imp ALTER COLUMN id_df5 SET DEFAULT nextval('public.df5_imp_id_df5_seq'::regclass);


--
-- Name: df5_map df5_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df5_map ALTER COLUMN df5_id SET DEFAULT nextval('public.df5_map_df5_id_seq'::regclass);


--
-- Name: df5_map gmo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df5_map ALTER COLUMN gmo_id SET DEFAULT nextval('public.df5_map_gmo_id_seq'::regclass);


--
-- Name: df6_imp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df6_imp ALTER COLUMN id SET DEFAULT nextval('public.df6_imp_id_seq'::regclass);


--
-- Name: df6_imp id_df6; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df6_imp ALTER COLUMN id_df6 SET DEFAULT nextval('public.df6_imp_id_df6_seq'::regclass);


--
-- Name: df6_map df6_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df6_map ALTER COLUMN df6_id SET DEFAULT nextval('public.df6_map_df6_id_seq'::regclass);


--
-- Name: df6_map gmo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df6_map ALTER COLUMN gmo_id SET DEFAULT nextval('public.df6_map_gmo_id_seq'::regclass);


--
-- Name: df7_imp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df7_imp ALTER COLUMN id SET DEFAULT nextval('public.df7_imp_id_seq'::regclass);


--
-- Name: df7_imp id_df7; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df7_imp ALTER COLUMN id_df7 SET DEFAULT nextval('public.df7_imp_id_df7_seq'::regclass);


--
-- Name: df7_map df7_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df7_map ALTER COLUMN df7_id SET DEFAULT nextval('public.df7_map_df7_id_seq'::regclass);


--
-- Name: df7_map gmo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df7_map ALTER COLUMN gmo_id SET DEFAULT nextval('public.df7_map_gmo_id_seq'::regclass);


--
-- Name: df8_imp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df8_imp ALTER COLUMN id SET DEFAULT nextval('public.df8_imp_id_seq'::regclass);


--
-- Name: df8_imp id_df8; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df8_imp ALTER COLUMN id_df8 SET DEFAULT nextval('public.df8_imp_id_df8_seq'::regclass);


--
-- Name: df8_map df8_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df8_map ALTER COLUMN df8_id SET DEFAULT nextval('public.df8_map_df8_id_seq'::regclass);


--
-- Name: df8_map gmo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df8_map ALTER COLUMN gmo_id SET DEFAULT nextval('public.df8_map_gmo_id_seq'::regclass);


--
-- Name: df9_imp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df9_imp ALTER COLUMN id SET DEFAULT nextval('public.df9_imp_id_seq'::regclass);


--
-- Name: df9_imp id_df9; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df9_imp ALTER COLUMN id_df9 SET DEFAULT nextval('public.df9_imp_id_df9_seq'::regclass);


--
-- Name: df9_map df9_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df9_map ALTER COLUMN df9_id SET DEFAULT nextval('public.df9_map_df9_id_seq'::regclass);


--
-- Name: df9_map gmo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df9_map ALTER COLUMN gmo_id SET DEFAULT nextval('public.df9_map_gmo_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: mst_df1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df1 ALTER COLUMN id SET DEFAULT nextval('public.mst_df1_id_seq'::regclass);


--
-- Name: mst_df10 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df10 ALTER COLUMN id SET DEFAULT nextval('public.mst_df10_id_seq'::regclass);


--
-- Name: mst_df3 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df3 ALTER COLUMN id SET DEFAULT nextval('public.mst_df3_id_seq'::regclass);


--
-- Name: mst_df4 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df4 ALTER COLUMN id SET DEFAULT nextval('public.mst_df4_id_seq'::regclass);


--
-- Name: mst_df5 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df5 ALTER COLUMN id SET DEFAULT nextval('public.mst_df5_id_seq'::regclass);


--
-- Name: mst_df6 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df6 ALTER COLUMN id SET DEFAULT nextval('public.mst_df6_id_seq'::regclass);


--
-- Name: mst_df7 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df7 ALTER COLUMN id SET DEFAULT nextval('public.mst_df7_id_seq'::regclass);


--
-- Name: mst_df8 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df8 ALTER COLUMN id SET DEFAULT nextval('public.mst_df8_id_seq'::regclass);


--
-- Name: mst_df9 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df9 ALTER COLUMN id SET DEFAULT nextval('public.mst_df9_id_seq'::regclass);


--
-- Name: mst_gmo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_gmo ALTER COLUMN id SET DEFAULT nextval('public.mst_gmo_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: weight id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weight ALTER COLUMN id SET DEFAULT nextval('public.weight_id_seq'::regclass);


--
-- Data for Name: df10_imp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df10_imp (id, id_df10, importance, baseline, users_id, created_at, versions) FROM stdin;
1	1	75	15	1	2024-02-05 13:09:39	1
2	2	15	70	1	2024-02-05 13:09:39	1
3	3	10	15	1	2024-02-05 13:09:39	1
4	1	75	15	1	2024-02-05 15:11:50	2
5	2	10	70	1	2024-02-05 15:11:50	2
6	3	15	15	1	2024-02-05 15:11:50	2
7	1	70	15	1	2024-02-05 15:11:59	3
8	2	12	70	1	2024-02-05 15:11:59	3
9	3	18	15	1	2024-02-05 15:11:59	3
10	1	70	15	8	2024-02-08 07:40:28	4
11	2	20	70	8	2024-02-08 07:40:28	4
12	3	10	15	8	2024-02-08 07:40:28	4
13	1	60	15	8	2024-02-08 07:41:57	5
14	2	20	70	8	2024-02-08 07:41:57	5
15	3	20	15	8	2024-02-08 07:41:57	5
\.


--
-- Data for Name: df10_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df10_map (df10_id, gmo_id, relevance) FROM stdin;
1	1	3.5
1	2	4.0
1	3	1.5
1	4	2.5
1	5	1.5
1	6	2.5
1	7	4.0
1	8	2.0
1	9	4.0
1	10	4.0
1	11	1.0
1	12	2.5
1	13	3.0
1	14	1.5
1	15	2.5
1	16	1.5
1	17	2.0
1	18	1.0
1	19	2.5
1	20	4.0
1	21	3.5
1	22	4.0
1	23	1.5
1	24	3.0
1	25	2.5
1	26	3.5
1	27	1.5
1	28	1.0
1	29	1.5
1	30	3.5
1	31	1.0
1	32	1.0
1	33	1.5
1	34	1.5
1	35	1.5
1	36	1.0
1	37	3.0
1	38	1.0
1	39	1.0
1	40	1.0
2	1	2.5
2	2	2.5
2	3	1.0
2	4	2.0
2	5	1.0
2	6	1.5
2	7	3.0
2	8	1.0
2	9	3.0
2	10	2.5
2	11	1.5
2	12	1.0
2	13	1.5
2	14	1.5
2	15	1.5
2	16	1.5
2	17	1.5
2	18	1.0
2	19	2.0
2	20	3.0
2	21	2.5
2	22	2.5
2	23	1.5
2	24	2.0
2	25	2.0
2	26	2.5
2	27	1.0
2	28	1.0
2	29	1.0
2	30	2.5
2	31	1.0
2	32	1.0
2	33	1.0
2	34	1.0
2	35	1.0
2	36	1.0
2	37	2.0
2	38	1.0
2	39	1.0
2	40	1.0
3	1	1.5
3	2	1.5
3	3	1.0
3	4	1.5
3	5	1.0
3	6	1.0
3	7	1.5
3	8	1.0
3	9	1.0
3	10	1.0
3	11	1.0
3	12	1.0
3	13	1.0
3	14	1.0
3	15	1.0
3	16	1.0
3	17	1.0
3	18	1.0
3	19	1.0
3	20	1.5
3	21	1.0
3	22	1.0
3	23	1.0
3	24	1.0
3	25	1.0
3	26	1.0
3	27	1.0
3	28	1.0
3	29	1.0
3	30	1.0
3	31	1.0
3	32	1.0
3	33	1.0
3	34	1.0
3	35	1.0
3	36	1.0
3	37	1.0
3	38	1.0
3	39	1.0
3	40	1.0
\.


--
-- Data for Name: df1_imp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df1_imp (id, id_df1, importance, baseline, users_id, created_at, versions) FROM stdin;
1	1	2	3	1	2024-02-05 13:09:26	1
2	2	3	3	1	2024-02-05 13:09:26	1
3	3	4	3	1	2024-02-05 13:09:26	1
4	4	5	3	1	2024-02-05 13:09:26	1
31	1	4	3	1	2024-02-05 15:08:22	2
32	2	5	3	1	2024-02-05 15:08:22	2
33	3	5	3	1	2024-02-05 15:08:22	2
34	4	5	3	1	2024-02-05 15:08:22	2
35	1	1	3	8	2024-02-05 16:52:34	3
36	2	4	3	8	2024-02-05 16:52:34	3
37	3	2	3	8	2024-02-05 16:52:34	3
38	4	5	3	8	2024-02-05 16:52:34	3
39	1	5	3	1	2024-02-07 10:11:09	4
40	2	3	3	1	2024-02-07 10:11:09	4
41	3	2	3	1	2024-02-07 10:11:09	4
42	4	1	3	1	2024-02-07 10:11:09	4
43	1	2	3	8	2024-02-08 07:09:13	5
44	2	3	3	8	2024-02-08 07:09:13	5
45	3	2	3	8	2024-02-08 07:09:13	5
46	4	2	3	8	2024-02-08 07:09:13	5
\.


--
-- Data for Name: df1_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df1_map (df1_id, gmo_id, relevance) FROM stdin;
1	1	1.0
1	2	1.5
1	3	1.0
1	4	1.5
1	5	1.5
1	6	1.0
1	7	3.5
1	8	4.0
1	9	1.0
1	10	3.5
1	11	1.5
1	12	2.0
1	13	1.0
1	14	1.0
1	15	1.0
1	16	1.0
1	17	1.0
1	18	1.0
1	19	1.0
1	20	4.0
1	21	1.0
1	22	1.0
1	23	1.0
1	24	4.0
1	25	2.0
1	26	1.5
1	27	1.0
1	28	1.0
1	29	1.0
1	30	3.5
1	31	1.0
1	32	1.0
1	33	1.0
1	34	1.0
1	35	1.0
1	36	1.0
1	37	1.0
1	38	1.0
1	39	1.0
1	40	1.0
2	1	1.0
2	2	1.0
2	3	1.0
2	4	1.0
2	5	1.5
2	6	1.0
2	7	3.5
2	8	2.0
2	9	4.0
2	10	4.0
2	11	1.0
2	12	1.0
2	13	1.5
2	14	1.0
2	15	1.0
2	16	1.0
2	17	1.5
2	18	1.0
2	19	1.0
2	20	2.0
2	21	1.0
2	22	1.0
2	23	1.0
2	24	2.0
2	25	2.0
2	26	2.0
2	27	3.5
2	28	1.0
2	29	1.0
2	30	3.0
2	31	1.0
2	32	1.0
2	33	1.0
2	34	1.0
2	35	1.0
2	36	1.0
2	37	1.0
2	38	1.0
2	39	1.0
2	40	1.0
3	1	1.5
3	2	2.0
3	3	1.0
3	4	4.0
3	5	1.0
3	6	1.0
3	7	1.5
3	8	1.0
3	9	1.0
3	10	2.5
3	11	4.0
3	12	1.0
3	13	1.0
3	14	1.5
3	15	3.5
3	16	1.0
3	17	1.0
3	18	1.0
3	19	1.0
3	20	1.5
3	21	1.5
3	22	1.5
3	23	1.0
3	24	1.0
3	25	1.0
3	26	1.0
3	27	1.0
3	28	1.0
3	29	1.0
3	30	1.5
3	31	1.0
3	32	1.0
3	33	1.0
3	34	1.0
3	35	1.0
3	36	1.0
3	37	1.0
3	38	1.0
3	39	1.0
3	40	1.0
4	1	1.5
4	2	3.5
4	3	2.0
4	4	1.0
4	5	2.0
4	6	1.0
4	7	1.0
4	8	1.0
4	9	1.0
4	10	1.0
4	11	1.0
4	12	1.0
4	13	3.5
4	14	4.0
4	15	1.5
4	16	4.0
4	17	2.5
4	18	2.5
4	19	1.0
4	20	1.5
4	21	1.0
4	22	1.0
4	23	3.0
4	24	1.5
4	25	1.5
4	26	1.5
4	27	1.0
4	28	1.0
4	29	1.0
4	30	1.0
4	31	1.5
4	32	4.0
4	33	3.0
4	34	4.0
4	35	2.5
4	36	1.5
4	37	1.0
4	38	1.0
4	39	1.0
4	40	1.0
\.


--
-- Data for Name: df2_imp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df2_imp (id, id_df2, importance, baseline, users_id, created_at, versions) FROM stdin;
1	EG01	5	3	1	2024-02-05 13:09:28	1
2	EG02	2	3	1	2024-02-05 13:09:28	1
3	EG03	2	3	1	2024-02-05 13:09:28	1
4	EG04	3	3	1	2024-02-05 13:09:28	1
5	EG05	4	3	1	2024-02-05 13:09:28	1
6	EG06	2	3	1	2024-02-05 13:09:28	1
7	EG07	3	3	1	2024-02-05 13:09:28	1
8	EG08	4	3	1	2024-02-05 13:09:28	1
9	EG09	4	3	1	2024-02-05 13:09:28	1
10	EG10	5	3	1	2024-02-05 13:09:28	1
11	EG11	2	3	1	2024-02-05 13:09:28	1
12	EG12	3	3	1	2024-02-05 13:09:28	1
13	EG13	2	3	1	2024-02-05 13:09:28	1
14	EG01	1	3	1	2024-02-05 14:39:21	2
15	EG02	1	3	1	2024-02-05 14:39:21	2
16	EG03	1	3	1	2024-02-05 14:39:21	2
17	EG04	1	3	1	2024-02-05 14:39:21	2
18	EG05	1	3	1	2024-02-05 14:39:21	2
19	EG06	1	3	1	2024-02-05 14:39:21	2
20	EG07	1	3	1	2024-02-05 14:39:21	2
21	EG08	1	3	1	2024-02-05 14:39:21	2
22	EG09	1	3	1	2024-02-05 14:39:21	2
23	EG10	1	3	1	2024-02-05 14:39:21	2
24	EG11	1	3	1	2024-02-05 14:39:21	2
25	EG12	1	3	1	2024-02-05 14:39:21	2
26	EG13	2	3	1	2024-02-05 14:39:21	2
27	EG01	5	3	1	2024-02-05 14:42:37	3
28	EG02	3	3	1	2024-02-05 14:42:37	3
29	EG03	5	3	1	2024-02-05 14:42:37	3
30	EG04	3	3	1	2024-02-05 14:42:37	3
31	EG05	5	3	1	2024-02-05 14:42:37	3
32	EG06	3	3	1	2024-02-05 14:42:37	3
33	EG07	2	3	1	2024-02-05 14:42:37	3
34	EG08	2	3	1	2024-02-05 14:42:37	3
35	EG09	2	3	1	2024-02-05 14:42:37	3
36	EG10	2	3	1	2024-02-05 14:42:37	3
37	EG11	2	3	1	2024-02-05 14:42:37	3
38	EG12	2	3	1	2024-02-05 14:42:37	3
39	EG13	2	3	1	2024-02-05 14:42:37	3
40	EG01	5	3	8	2024-02-08 07:11:17	4
41	EG02	1	3	8	2024-02-08 07:11:17	4
42	EG03	3	3	8	2024-02-08 07:11:17	4
43	EG04	1	3	8	2024-02-08 07:11:17	4
44	EG05	4	3	8	2024-02-08 07:11:17	4
45	EG06	1	3	8	2024-02-08 07:11:17	4
46	EG07	2	3	8	2024-02-08 07:11:17	4
47	EG08	1	3	8	2024-02-08 07:11:17	4
48	EG09	1	3	8	2024-02-08 07:11:17	4
49	EG10	1	3	8	2024-02-08 07:11:17	4
50	EG11	4	3	8	2024-02-08 07:11:17	4
51	EG12	1	3	8	2024-02-08 07:11:17	4
52	EG13	2	3	8	2024-02-08 07:11:17	4
\.


--
-- Data for Name: df2_map1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df2_map1 (id_df2_eg, id_df2_ag, relevance) FROM stdin;
EG01	AG01	0.0
EG02	AG01	1.0
EG03	AG01	2.0
EG04	AG01	0.0
EG05	AG01	0.0
EG06	AG01	0.0
EG07	AG01	0.0
EG08	AG01	0.0
EG09	AG01	0.0
EG10	AG01	0.0
EG11	AG01	1.0
EG12	AG01	0.0
EG13	AG01	0.0
EG01	AG02	0.0
EG02	AG02	2.0
EG03	AG02	0.0
EG04	AG02	0.0
EG05	AG02	0.0
EG06	AG02	1.0
EG07	AG02	0.0
EG08	AG02	0.0
EG09	AG02	0.0
EG10	AG02	0.0
EG11	AG02	0.0
EG12	AG02	0.0
EG13	AG02	0.0
EG01	AG03	1.0
EG02	AG03	0.0
EG03	AG03	0.0
EG04	AG03	0.0
EG05	AG03	1.0
EG06	AG03	0.0
EG07	AG03	0.0
EG08	AG03	1.0
EG09	AG03	1.0
EG10	AG03	0.0
EG11	AG03	0.0
EG12	AG03	2.0
EG13	AG03	0.0
EG01	AG04	0.0
EG02	AG04	0.0
EG03	AG04	0.0
EG04	AG04	2.0
EG05	AG04	0.0
EG06	AG04	0.0
EG07	AG04	2.0
EG08	AG04	0.0
EG09	AG04	2.0
EG10	AG04	0.0
EG11	AG04	0.0
EG12	AG04	0.0
EG13	AG04	0.0
EG01	AG05	2.0
EG02	AG05	0.0
EG03	AG05	0.0
EG04	AG05	0.0
EG05	AG05	1.0
EG06	AG05	1.0
EG07	AG05	0.0
EG08	AG05	1.0
EG09	AG05	0.0
EG10	AG05	0.0
EG11	AG05	0.0
EG12	AG05	1.0
EG13	AG05	0.0
EG01	AG06	2.0
EG02	AG06	0.0
EG03	AG06	0.0
EG04	AG06	0.0
EG05	AG06	1.0
EG06	AG06	0.0
EG07	AG06	0.0
EG08	AG06	1.0
EG09	AG06	0.0
EG10	AG06	0.0
EG11	AG06	0.0
EG12	AG06	1.0
EG13	AG06	1.0
EG01	AG07	0.0
EG02	AG07	2.0
EG03	AG07	0.0
EG04	AG07	0.0
EG05	AG07	0.0
EG06	AG07	2.0
EG07	AG07	0.0
EG08	AG07	0.0
EG09	AG07	0.0
EG10	AG07	0.0
EG11	AG07	0.0
EG12	AG07	0.0
EG13	AG07	0.0
EG01	AG08	2.0
EG02	AG08	0.0
EG03	AG08	0.0
EG04	AG08	0.0
EG05	AG08	2.0
EG06	AG08	0.0
EG07	AG08	0.0
EG08	AG08	1.0
EG09	AG08	0.0
EG10	AG08	1.0
EG11	AG08	0.0
EG12	AG08	2.0
EG13	AG08	1.0
EG01	AG09	2.0
EG02	AG09	0.0
EG03	AG09	0.0
EG04	AG09	0.0
EG05	AG09	1.0
EG06	AG09	0.0
EG07	AG09	0.0
EG08	AG09	1.0
EG09	AG09	1.0
EG10	AG09	0.0
EG11	AG09	0.0
EG12	AG09	2.0
EG13	AG09	1.0
EG01	AG10	0.0
EG02	AG10	0.0
EG03	AG10	0.0
EG04	AG10	2.0
EG05	AG10	0.0
EG06	AG10	0.0
EG07	AG10	2.0
EG08	AG10	0.0
EG09	AG10	1.0
EG10	AG10	0.0
EG11	AG10	0.0
EG12	AG10	0.0
EG13	AG10	0.0
EG01	AG11	0.0
EG02	AG11	1.0
EG03	AG11	2.0
EG04	AG11	0.0
EG05	AG11	0.0
EG06	AG11	0.0
EG07	AG11	0.0
EG08	AG11	0.0
EG09	AG11	0.0
EG10	AG11	0.0
EG11	AG11	2.0
EG12	AG11	0.0
EG13	AG11	0.0
EG01	AG12	0.0
EG02	AG12	0.0
EG03	AG12	0.0
EG04	AG12	0.0
EG05	AG12	1.0
EG06	AG12	0.0
EG07	AG12	0.0
EG08	AG12	0.0
EG09	AG12	0.0
EG10	AG12	2.0
EG11	AG12	0.0
EG12	AG12	0.0
EG13	AG12	0.0
EG01	AG13	2.0
EG02	AG13	0.0
EG03	AG13	1.0
EG04	AG13	0.0
EG05	AG13	0.0
EG06	AG13	0.0
EG07	AG13	0.0
EG08	AG13	0.0
EG09	AG13	0.0
EG10	AG13	0.0
EG11	AG13	0.0
EG12	AG13	1.0
EG13	AG13	2.0
\.


--
-- Data for Name: df2_map2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df2_map2 (id_df2_ag, id_gmo, relevance) FROM stdin;
AG01	1	2
AG02	1	1
AG03	1	2
AG04	1	0
AG05	1	0
AG06	1	0
AG07	1	0
AG08	1	1
AG09	1	0
AG10	1	0
AG11	1	1
AG12	1	0
AG13	1	0
AG01	2	0
AG02	2	0
AG03	2	2
AG04	2	0
AG05	2	1
AG06	2	1
AG07	2	0
AG08	2	1
AG09	2	0
AG10	2	0
AG11	2	0
AG12	2	0
AG13	2	1
AG01	3	1
AG02	3	2
AG03	3	0
AG04	3	0
AG05	3	0
AG06	3	0
AG07	3	2
AG08	3	0
AG09	3	0
AG10	3	0
AG11	3	1
AG12	3	0
AG13	3	0
AG01	4	0
AG02	4	0
AG03	4	1
AG04	4	0
AG05	4	1
AG06	4	1
AG07	4	0
AG08	4	1
AG09	4	2
AG10	4	0
AG11	4	0
AG12	4	1
AG13	4	0
AG01	5	0
AG02	5	0
AG03	5	0
AG04	5	1
AG05	5	0
AG06	5	0
AG07	5	0
AG08	5	0
AG09	5	0
AG10	5	2
AG11	5	1
AG12	5	0
AG13	5	0
AG01	6	1
AG02	6	1
AG03	6	2
AG04	6	0
AG05	6	1
AG06	6	0
AG07	6	1
AG08	6	1
AG09	6	1
AG10	6	1
AG11	6	2
AG12	6	0
AG13	6	0
AG01	7	0
AG02	7	0
AG03	7	1
AG04	7	0
AG05	7	1
AG06	7	1
AG07	7	0
AG08	7	2
AG09	7	0
AG10	7	0
AG11	7	0
AG12	7	1
AG13	7	1
AG01	8	0
AG02	8	0
AG03	8	1
AG04	8	0
AG05	8	1
AG06	8	2
AG07	8	1
AG08	8	2
AG09	8	0
AG10	8	0
AG11	8	0
AG12	8	0
AG13	8	0
AG01	9	0
AG02	9	0
AG03	9	1
AG04	9	0
AG05	9	0
AG06	9	2
AG07	9	0
AG08	9	1
AG09	9	0
AG10	9	0
AG11	9	0
AG12	9	1
AG13	9	2
AG01	10	0
AG02	10	0
AG03	10	2
AG04	10	0
AG05	10	2
AG06	10	1
AG07	10	0
AG08	10	1
AG09	10	1
AG10	10	0
AG11	10	0
AG12	10	0
AG13	10	0
AG01	11	0
AG02	11	0
AG03	11	1
AG04	11	2
AG05	11	0
AG06	11	0
AG07	11	0
AG08	11	0
AG09	11	2
AG10	11	1
AG11	11	0
AG12	11	0
AG13	11	0
AG01	12	0
AG02	12	0
AG03	12	1
AG04	12	0
AG05	12	1
AG06	12	0
AG07	12	0
AG08	12	0
AG09	12	1
AG10	12	0
AG11	12	0
AG12	12	2
AG13	12	2
AG01	13	0
AG02	13	0
AG03	13	1
AG04	13	0
AG05	13	2
AG06	13	2
AG07	13	0
AG08	13	1
AG09	13	1
AG10	13	0
AG11	13	0
AG12	13	2
AG13	13	2
AG01	14	0
AG02	14	0
AG03	14	0
AG04	14	0
AG05	14	2
AG06	14	0
AG07	14	0
AG08	14	1
AG09	14	0
AG10	14	0
AG11	14	0
AG12	14	0
AG13	14	0
AG01	15	0
AG02	15	0
AG03	15	0
AG04	15	0
AG05	15	2
AG06	15	1
AG07	15	0
AG08	15	0
AG09	15	1
AG10	15	0
AG11	15	0
AG12	15	0
AG13	15	0
AG01	16	0
AG02	16	0
AG03	16	1
AG04	16	1
AG05	16	1
AG06	16	0
AG07	16	0
AG08	16	0
AG09	16	2
AG10	16	2
AG11	16	0
AG12	16	0
AG13	16	0
AG01	17	0
AG02	17	2
AG03	17	0
AG04	17	0
AG05	17	0
AG06	17	0
AG07	17	2
AG08	17	0
AG09	17	0
AG10	17	0
AG11	17	0
AG12	17	0
AG13	17	0
AG01	18	1
AG02	18	1
AG03	18	0
AG04	18	0
AG05	18	0
AG06	18	0
AG07	18	2
AG08	18	0
AG09	18	0
AG10	18	0
AG11	18	0
AG12	18	0
AG13	18	0
AG01	19	1
AG02	19	1
AG03	19	0
AG04	19	1
AG05	19	0
AG06	19	0
AG07	19	1
AG08	19	0
AG09	19	0
AG10	19	2
AG11	19	0
AG12	19	0
AG13	19	0
AG01	20	0
AG02	20	0
AG03	20	2
AG04	20	0
AG05	20	0
AG06	20	1
AG07	20	0
AG08	20	1
AG09	20	2
AG10	20	0
AG11	20	0
AG12	20	0
AG13	20	0
AG01	21	0
AG02	21	0
AG03	21	1
AG04	21	0
AG05	21	2
AG06	21	2
AG07	21	0
AG08	21	1
AG09	21	2
AG10	21	0
AG11	21	0
AG12	21	1
AG13	21	0
AG01	22	0
AG02	22	0
AG03	22	1
AG04	22	0
AG05	22	2
AG06	22	2
AG07	22	0
AG08	22	1
AG09	22	2
AG10	22	0
AG11	22	0
AG12	22	0
AG13	22	0
AG01	23	0
AG02	23	0
AG03	23	0
AG04	23	0
AG05	23	2
AG06	23	0
AG07	23	1
AG08	23	0
AG09	23	1
AG10	23	0
AG11	23	0
AG12	23	0
AG13	23	0
AG01	24	0
AG02	24	0
AG03	24	2
AG04	24	0
AG05	24	1
AG06	24	1
AG07	24	0
AG08	24	2
AG09	24	2
AG10	24	0
AG11	24	0
AG12	24	1
AG13	24	0
AG01	25	0
AG02	25	1
AG03	25	0
AG04	25	0
AG05	25	1
AG06	25	2
AG07	25	0
AG08	25	1
AG09	25	0
AG10	25	0
AG11	25	0
AG12	25	0
AG13	25	0
AG01	26	0
AG02	26	1
AG03	26	0
AG04	26	0
AG05	26	0
AG06	26	2
AG07	26	0
AG08	26	0
AG09	26	1
AG10	26	0
AG11	26	0
AG12	26	0
AG13	26	0
AG01	27	0
AG02	27	0
AG03	27	1
AG04	27	0
AG05	27	0
AG06	27	1
AG07	27	0
AG08	27	1
AG09	27	1
AG10	27	0
AG11	27	0
AG12	27	2
AG13	27	2
AG01	28	0
AG02	28	0
AG03	28	0
AG04	28	2
AG05	28	0
AG06	28	0
AG07	28	0
AG08	28	0
AG09	28	0
AG10	28	1
AG11	28	0
AG12	28	0
AG13	28	0
AG01	29	0
AG02	29	0
AG03	29	0
AG04	29	0
AG05	29	1
AG06	29	0
AG07	29	2
AG08	29	0
AG09	29	0
AG10	29	0
AG11	29	0
AG12	29	0
AG13	29	0
AG01	30	0
AG02	30	0
AG03	30	2
AG04	30	0
AG05	30	1
AG06	30	2
AG07	30	0
AG08	30	0
AG09	30	2
AG10	30	0
AG11	30	0
AG12	30	0
AG13	30	0
AG01	31	0
AG02	31	0
AG03	31	0
AG04	31	0
AG05	31	2
AG06	31	0
AG07	31	0
AG08	31	1
AG09	31	0
AG10	31	0
AG11	31	0
AG12	31	0
AG13	31	0
AG01	32	0
AG02	32	1
AG03	32	0
AG04	32	0
AG05	32	2
AG06	32	0
AG07	32	1
AG08	32	0
AG09	32	0
AG10	32	0
AG11	32	0
AG12	32	0
AG13	32	0
AG01	33	0
AG02	33	1
AG03	33	0
AG04	33	0
AG05	33	2
AG06	33	0
AG07	33	1
AG08	33	0
AG09	33	0
AG10	33	0
AG11	33	0
AG12	33	0
AG13	33	0
AG01	34	0
AG02	34	1
AG03	34	0
AG04	34	0
AG05	34	2
AG06	34	0
AG07	34	2
AG08	34	0
AG09	34	0
AG10	34	0
AG11	34	0
AG12	34	0
AG13	34	0
AG01	35	1
AG02	35	2
AG03	35	0
AG04	35	0
AG05	35	1
AG06	35	0
AG07	35	2
AG08	35	0
AG09	35	0
AG10	35	0
AG11	35	1
AG12	35	0
AG13	35	0
AG01	36	0
AG02	36	1
AG03	36	0
AG04	36	0
AG05	36	1
AG06	36	0
AG07	36	1
AG08	36	2
AG09	36	0
AG10	36	0
AG11	36	1
AG12	36	0
AG13	36	0
AG01	37	1
AG02	37	0
AG03	37	1
AG04	37	0
AG05	37	2
AG06	37	0
AG07	37	0
AG08	37	0
AG09	37	1
AG10	37	2
AG11	37	1
AG12	37	0
AG13	37	0
AG01	38	1
AG02	38	1
AG03	38	0
AG04	38	1
AG05	38	1
AG06	38	0
AG07	38	1
AG08	38	0
AG09	38	1
AG10	38	1
AG11	38	2
AG12	38	0
AG13	38	0
AG01	39	2
AG02	39	0
AG03	39	0
AG04	39	0
AG05	39	0
AG06	39	0
AG07	39	0
AG08	39	0
AG09	39	0
AG10	39	0
AG11	39	1
AG12	39	0
AG13	39	0
AG01	40	1
AG02	40	1
AG03	40	0
AG04	40	1
AG05	40	1
AG06	40	0
AG07	40	1
AG08	40	0
AG09	40	0
AG10	40	1
AG11	40	2
AG12	40	0
AG13	40	0
\.


--
-- Data for Name: df3_imp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df3_imp (id, id_df3, impact, likelihood, risk_rating, baseline, users_id, created_at, versions) FROM stdin;
1	1	2	3	6	9	1	2024-02-05 13:09:29	1
2	2	1	3	3	9	1	2024-02-05 13:09:29	1
3	3	3	3	9	9	1	2024-02-05 13:09:29	1
4	4	4	3	12	9	1	2024-02-05 13:09:29	1
5	5	2	3	6	9	1	2024-02-05 13:09:29	1
6	6	3	3	9	9	1	2024-02-05 13:09:29	1
7	7	4	3	12	9	1	2024-02-05 13:09:29	1
8	8	3	3	9	9	1	2024-02-05 13:09:29	1
9	9	1	3	3	9	1	2024-02-05 13:09:29	1
10	10	1	3	3	9	1	2024-02-05 13:09:29	1
11	11	3	3	9	9	1	2024-02-05 13:09:29	1
12	12	1	3	3	9	1	2024-02-05 13:09:29	1
13	13	3	3	9	9	1	2024-02-05 13:09:29	1
14	14	2	3	6	9	1	2024-02-05 13:09:29	1
15	15	3	3	9	9	1	2024-02-05 13:09:29	1
16	16	3	3	9	9	1	2024-02-05 13:09:29	1
17	17	4	3	12	9	1	2024-02-05 13:09:29	1
18	18	3	3	9	9	1	2024-02-05 13:09:29	1
19	19	5	3	15	9	1	2024-02-05 13:09:29	1
20	1	1	3	3	9	1	2024-02-05 14:50:17	2
21	2	2	3	6	9	1	2024-02-05 14:50:17	2
22	3	1	3	3	9	1	2024-02-05 14:50:17	2
23	4	1	3	3	9	1	2024-02-05 14:50:17	2
24	5	1	3	3	9	1	2024-02-05 14:50:17	2
25	6	1	3	3	9	1	2024-02-05 14:50:17	2
26	7	1	3	3	9	1	2024-02-05 14:50:17	2
27	8	1	3	3	9	1	2024-02-05 14:50:17	2
28	9	1	3	3	9	1	2024-02-05 14:50:17	2
29	10	1	3	3	9	1	2024-02-05 14:50:17	2
30	11	1	3	3	9	1	2024-02-05 14:50:17	2
31	12	1	3	3	9	1	2024-02-05 14:50:17	2
32	13	1	3	3	9	1	2024-02-05 14:50:17	2
33	14	1	3	3	9	1	2024-02-05 14:50:17	2
34	15	1	3	3	9	1	2024-02-05 14:50:17	2
35	16	1	3	3	9	1	2024-02-05 14:50:17	2
36	17	1	3	3	9	1	2024-02-05 14:50:17	2
37	18	1	3	3	9	1	2024-02-05 14:50:17	2
38	19	1	3	3	9	1	2024-02-05 14:50:17	2
39	1	1	3	3	9	1	2024-02-05 14:50:27	3
40	2	2	3	6	9	1	2024-02-05 14:50:27	3
41	3	3	3	9	9	1	2024-02-05 14:50:27	3
42	4	1	3	3	9	1	2024-02-05 14:50:27	3
43	5	1	3	3	9	1	2024-02-05 14:50:27	3
44	6	1	3	3	9	1	2024-02-05 14:50:27	3
45	7	1	3	3	9	1	2024-02-05 14:50:27	3
46	8	1	3	3	9	1	2024-02-05 14:50:27	3
47	9	1	3	3	9	1	2024-02-05 14:50:27	3
48	10	1	3	3	9	1	2024-02-05 14:50:27	3
49	11	1	3	3	9	1	2024-02-05 14:50:27	3
50	12	1	3	3	9	1	2024-02-05 14:50:27	3
51	13	1	3	3	9	1	2024-02-05 14:50:27	3
52	14	1	3	3	9	1	2024-02-05 14:50:27	3
53	15	1	3	3	9	1	2024-02-05 14:50:27	3
54	16	1	3	3	9	1	2024-02-05 14:50:27	3
55	17	1	3	3	9	1	2024-02-05 14:50:27	3
56	18	1	3	3	9	1	2024-02-05 14:50:27	3
57	19	1	3	3	9	1	2024-02-05 14:50:27	3
58	1	5	3	15	9	8	2024-02-08 07:12:37	4
59	2	2	3	6	9	8	2024-02-08 07:12:37	4
60	3	3	3	9	9	8	2024-02-08 07:12:37	4
61	4	1	3	3	9	8	2024-02-08 07:12:37	4
62	5	4	3	12	9	8	2024-02-08 07:12:37	4
63	6	1	3	3	9	8	2024-02-08 07:12:37	4
64	7	1	3	3	9	8	2024-02-08 07:12:37	4
65	8	4	3	12	9	8	2024-02-08 07:12:37	4
66	9	1	3	3	9	8	2024-02-08 07:12:37	4
67	10	2	3	6	9	8	2024-02-08 07:12:37	4
68	11	2	3	6	9	8	2024-02-08 07:12:37	4
69	12	2	3	6	9	8	2024-02-08 07:12:37	4
70	13	1	3	3	9	8	2024-02-08 07:12:37	4
71	14	1	3	3	9	8	2024-02-08 07:12:37	4
72	15	1	3	3	9	8	2024-02-08 07:12:37	4
73	16	1	3	3	9	8	2024-02-08 07:12:37	4
74	17	3	3	9	9	8	2024-02-08 07:12:37	4
75	18	3	3	9	9	8	2024-02-08 07:12:37	4
76	19	3	3	9	9	8	2024-02-08 07:12:37	4
77	1	2	3	6	9	8	2024-02-08 07:13:31	5
78	2	1	3	3	9	8	2024-02-08 07:13:31	5
79	3	1	3	3	9	8	2024-02-08 07:13:31	5
80	4	2	3	6	9	8	2024-02-08 07:13:31	5
81	5	4	3	12	9	8	2024-02-08 07:13:31	5
82	6	2	3	6	9	8	2024-02-08 07:13:31	5
83	7	1	3	3	9	8	2024-02-08 07:13:31	5
84	8	3	3	9	9	8	2024-02-08 07:13:31	5
85	9	1	3	3	9	8	2024-02-08 07:13:31	5
86	10	1	3	3	9	8	2024-02-08 07:13:31	5
87	11	2	3	6	9	8	2024-02-08 07:13:31	5
88	12	2	3	6	9	8	2024-02-08 07:13:31	5
89	13	1	3	3	9	8	2024-02-08 07:13:31	5
90	14	1	3	3	9	8	2024-02-08 07:13:31	5
91	15	1	3	3	9	8	2024-02-08 07:13:31	5
92	16	1	3	3	9	8	2024-02-08 07:13:31	5
93	17	2	3	6	9	8	2024-02-08 07:13:31	5
94	18	2	3	6	9	8	2024-02-08 07:13:31	5
95	19	3	3	9	9	8	2024-02-08 07:13:31	5
\.


--
-- Data for Name: df3_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df3_map (df3_id, gmo_id, relevance) FROM stdin;
1	1	3.0
1	2	3.0
1	3	2.0
1	4	3.0
1	5	3.0
1	6	2.0
1	7	2.0
1	8	2.0
1	9	0.0
1	10	4.0
1	11	2.0
1	12	0.0
1	13	0.0
1	14	0.0
1	15	0.0
1	16	0.0
1	17	0.0
1	18	0.0
1	19	0.0
1	20	0.0
1	21	2.0
1	22	0.0
1	23	0.0
1	24	0.0
1	25	0.0
1	26	0.0
1	27	0.0
1	28	0.0
1	29	0.0
1	30	0.0
1	31	0.0
1	32	0.0
1	33	0.0
1	34	0.0
1	35	0.0
1	36	0.0
1	37	1.0
1	38	1.0
1	39	0.0
1	40	1.0
2	1	2.0
2	2	2.0
2	3	2.0
2	4	0.0
2	5	1.0
2	6	3.0
2	7	0.0
2	8	0.0
2	9	0.0
2	10	2.0
2	11	3.0
2	12	0.0
2	13	0.0
2	14	0.0
2	15	2.0
2	16	3.0
2	17	0.0
2	18	0.0
2	19	0.0
2	20	4.0
2	21	2.0
2	22	3.0
2	23	1.0
2	24	2.0
2	25	0.0
2	26	0.0
2	27	0.0
2	28	0.0
2	29	0.0
2	30	4.0
2	31	0.0
2	32	0.0
2	33	0.0
2	34	0.0
2	35	0.0
2	36	0.0
2	37	2.0
2	38	2.0
2	39	1.0
2	40	2.0
3	1	3.0
3	2	0.0
3	3	0.0
3	4	4.0
3	5	3.0
3	6	2.0
3	7	0.0
3	8	0.0
3	9	0.0
3	10	2.0
3	11	4.0
3	12	0.0
3	13	0.0
3	14	2.0
3	15	3.0
3	16	0.0
3	17	0.0
3	18	0.0
3	19	0.0
3	20	0.0
3	21	0.0
3	22	0.0
3	23	0.0
3	24	0.0
3	25	0.0
3	26	0.0
3	27	0.0
3	28	0.0
3	29	0.0
3	30	0.0
3	31	0.0
3	32	0.0
3	33	0.0
3	34	0.0
3	35	0.0
3	36	0.0
3	37	2.0
3	38	2.0
3	39	0.0
3	40	0.0
4	1	0.0
4	2	0.0
4	3	0.0
4	4	3.0
4	5	0.0
4	6	0.0
4	7	0.0
4	8	0.0
4	9	0.0
4	10	0.0
4	11	0.0
4	12	4.0
4	13	2.0
4	14	0.0
4	15	0.0
4	16	0.0
4	17	0.0
4	18	0.0
4	19	0.0
4	20	0.0
4	21	0.0
4	22	0.0
4	23	0.0
4	24	2.0
4	25	0.0
4	26	0.0
4	27	2.0
4	28	0.0
4	29	0.0
4	30	0.0
4	31	0.0
4	32	0.0
4	33	0.0
4	34	0.0
4	35	0.0
4	36	0.0
4	37	0.0
4	38	0.0
4	39	0.0
4	40	0.0
5	1	0.0
5	2	2.0
5	3	0.0
5	4	2.0
5	5	0.0
5	6	2.0
5	7	3.0
5	8	4.0
5	9	1.0
5	10	2.0
5	11	0.0
5	12	0.0
5	13	2.0
5	14	0.0
5	15	0.0
5	16	0.0
5	17	0.0
5	18	0.0
5	19	0.0
5	20	2.0
5	21	2.0
5	22	2.0
5	23	0.0
5	24	0.0
5	25	0.0
5	26	0.0
5	27	0.0
5	28	0.0
5	29	0.0
5	30	0.0
5	31	0.0
5	32	0.0
5	33	0.0
5	34	0.0
5	35	0.0
5	36	0.0
5	37	0.0
5	38	0.0
5	39	0.0
5	40	0.0
6	1	0.0
6	2	0.0
6	3	0.0
6	4	0.0
6	5	0.0
6	6	2.0
6	7	0.0
6	8	0.0
6	9	0.0
6	10	0.0
6	11	0.0
6	12	2.0
6	13	0.0
6	14	0.0
6	15	0.0
6	16	0.0
6	17	0.0
6	18	0.0
6	19	0.0
6	20	0.0
6	21	0.0
6	22	0.0
6	23	0.0
6	24	0.0
6	25	3.0
6	26	2.0
6	27	3.0
6	28	1.0
6	29	2.0
6	30	0.0
6	31	4.0
6	32	3.0
6	33	3.0
6	34	3.0
6	35	3.0
6	36	3.0
6	37	2.0
6	38	3.0
6	39	1.0
6	40	0.0
7	1	2.0
7	2	0.0
7	3	0.0
7	4	0.0
7	5	2.0
7	6	4.0
7	7	0.0
7	8	0.0
7	9	0.0
7	10	0.0
7	11	0.0
7	12	3.0
7	13	0.0
7	14	2.0
7	15	2.0
7	16	0.0
7	17	3.0
7	18	4.0
7	19	3.0
7	20	0.0
7	21	0.0
7	22	0.0
7	23	0.0
7	24	0.0
7	25	4.0
7	26	3.0
7	27	0.0
7	28	3.0
7	29	4.0
7	30	0.0
7	31	3.0
7	32	2.0
7	33	1.0
7	34	3.0
7	35	4.0
7	36	4.0
7	37	2.0
7	38	3.0
7	39	2.0
7	40	3.0
8	1	0.0
8	2	0.0
8	3	0.0
8	4	0.0
8	5	0.0
8	6	2.0
8	7	2.0
8	8	2.0
8	9	0.0
8	10	2.0
8	11	0.0
8	12	3.0
8	13	4.0
8	14	3.0
8	15	2.0
8	16	2.0
8	17	0.0
8	18	0.0
8	19	2.0
8	20	3.0
8	21	3.0
8	22	2.0
8	23	0.0
8	24	4.0
8	25	0.0
8	26	2.0
8	27	3.0
8	28	0.0
8	29	0.0
8	30	0.0
8	31	0.0
8	32	3.0
8	33	4.0
8	34	0.0
8	35	0.0
8	36	2.0
8	37	0.0
8	38	0.0
8	39	0.0
8	40	0.0
9	1	0.0
9	2	0.0
9	3	0.0
9	4	0.0
9	5	0.0
9	6	0.0
9	7	1.0
9	8	0.0
9	9	0.0
9	10	2.0
9	11	0.0
9	12	0.0
9	13	0.0
9	14	0.0
9	15	3.0
9	16	0.0
9	17	0.0
9	18	0.0
9	19	0.0
9	20	0.0
9	21	0.0
9	22	0.0
9	23	0.0
9	24	0.0
9	25	0.0
9	26	0.0
9	27	0.0
9	28	0.0
9	29	0.0
9	30	0.0
9	31	4.0
9	32	2.0
9	33	0.0
9	34	3.0
9	35	2.0
9	36	0.0
9	37	0.0
9	38	0.0
9	39	0.0
9	40	0.0
10	1	0.0
10	2	0.0
10	3	1.0
10	4	0.0
10	5	1.0
10	6	2.0
10	7	0.0
10	8	2.0
10	9	0.0
10	10	0.0
10	11	0.0
10	12	0.0
10	13	0.0
10	14	1.0
10	15	2.0
10	16	4.0
10	17	2.0
10	18	0.0
10	19	0.0
10	20	0.0
10	21	2.0
10	22	3.0
10	23	0.0
10	24	0.0
10	25	2.0
10	26	4.0
10	27	3.0
10	28	0.0
10	29	2.0
10	30	0.0
10	31	0.0
10	32	2.0
10	33	3.0
10	34	0.0
10	35	0.0
10	36	0.0
10	37	2.0
10	38	2.0
10	39	0.0
10	40	2.0
11	1	0.0
11	2	0.0
11	3	2.0
11	4	0.0
11	5	0.0
11	6	3.0
11	7	1.0
11	8	2.0
11	9	0.0
11	10	0.0
11	11	0.0
11	12	2.0
11	13	2.0
11	14	2.0
11	15	2.0
11	16	0.0
11	17	3.0
11	18	4.0
11	19	2.0
11	20	0.0
11	21	2.0
11	22	3.0
11	23	0.0
11	24	0.0
11	25	3.0
11	26	2.0
11	27	0.0
11	28	0.0
11	29	3.0
11	30	0.0
11	31	2.0
11	32	4.0
11	33	1.0
11	34	4.0
11	35	4.0
11	36	2.0
11	37	3.0
11	38	3.0
11	39	3.0
11	40	3.0
12	1	0.0
12	2	0.0
12	3	0.0
12	4	2.0
12	5	1.0
12	6	3.0
12	7	2.0
12	8	2.0
12	9	0.0
12	10	0.0
12	11	2.0
12	12	0.0
12	13	2.0
12	14	3.0
12	15	4.0
12	16	0.0
12	17	0.0
12	18	0.0
12	19	0.0
12	20	0.0
12	21	0.0
12	22	0.0
12	23	0.0
12	24	0.0
12	25	0.0
12	26	0.0
12	27	0.0
12	28	0.0
12	29	0.0
12	30	0.0
12	31	0.0
12	32	0.0
12	33	0.0
12	34	0.0
12	35	0.0
12	36	0.0
12	37	2.0
12	38	2.0
12	39	2.0
12	40	2.0
13	1	3.0
13	2	1.0
13	3	3.0
13	4	1.0
13	5	3.0
13	6	3.0
13	7	0.0
13	8	0.0
13	9	0.0
13	10	0.0
13	11	0.0
13	12	0.0
13	13	0.0
13	14	0.0
13	15	2.0
13	16	0.0
13	17	0.0
13	18	3.0
13	19	3.0
13	20	0.0
13	21	0.0
13	22	0.0
13	23	0.0
13	24	0.0
13	25	0.0
13	26	0.0
13	27	0.0
13	28	0.0
13	29	0.0
13	30	0.0
13	31	0.0
13	32	0.0
13	33	0.0
13	34	2.0
13	35	3.0
13	36	2.0
13	37	2.0
13	38	2.0
13	39	4.0
13	40	2.0
14	1	2.0
14	2	0.0
14	3	3.0
14	4	0.0
14	5	3.0
14	6	0.0
14	7	0.0
14	8	0.0
14	9	0.0
14	10	0.0
14	11	2.0
14	12	2.0
14	13	0.0
14	14	0.0
14	15	2.0
14	16	0.0
14	17	0.0
14	18	0.0
14	19	0.0
14	20	0.0
14	21	0.0
14	22	0.0
14	23	0.0
14	24	0.0
14	25	0.0
14	26	0.0
14	27	0.0
14	28	0.0
14	29	0.0
14	30	0.0
14	31	0.0
14	32	0.0
14	33	0.0
14	34	0.0
14	35	0.0
14	36	0.0
14	37	2.0
14	38	3.0
14	39	2.0
14	40	4.0
15	1	0.0
15	2	0.0
15	3	0.0
15	4	2.0
15	5	0.0
15	6	0.0
15	7	0.0
15	8	0.0
15	9	0.0
15	10	0.0
15	11	0.0
15	12	4.0
15	13	0.0
15	14	0.0
15	15	0.0
15	16	0.0
15	17	0.0
15	18	0.0
15	19	2.0
15	20	0.0
15	21	0.0
15	22	0.0
15	23	0.0
15	24	0.0
15	25	0.0
15	26	0.0
15	27	2.0
15	28	0.0
15	29	0.0
15	30	0.0
15	31	0.0
15	32	0.0
15	33	0.0
15	34	3.0
15	35	3.0
15	36	0.0
15	37	0.0
15	38	0.0
15	39	0.0
15	40	0.0
16	1	0.0
16	2	0.0
16	3	0.0
16	4	0.0
16	5	0.0
16	6	0.0
16	7	0.0
16	8	0.0
16	9	0.0
16	10	0.0
16	11	0.0
16	12	0.0
16	13	0.0
16	14	0.0
16	15	0.0
16	16	0.0
16	17	2.0
16	18	0.0
16	19	4.0
16	20	0.0
16	21	0.0
16	22	0.0
16	23	0.0
16	24	0.0
16	25	0.0
16	26	0.0
16	27	0.0
16	28	0.0
16	29	0.0
16	30	0.0
16	31	0.0
16	32	0.0
16	33	0.0
16	34	4.0
16	35	2.0
16	36	0.0
16	37	2.0
16	38	2.0
16	39	0.0
16	40	2.0
17	1	2.0
17	2	3.0
17	3	0.0
17	4	0.0
17	5	0.0
17	6	3.0
17	7	2.0
17	8	2.0
17	9	4.0
17	10	2.0
17	11	2.0
17	12	2.0
17	13	3.0
17	14	0.0
17	15	0.0
17	16	0.0
17	17	0.0
17	18	0.0
17	19	2.0
17	20	0.0
17	21	0.0
17	22	0.0
17	23	0.0
17	24	0.0
17	25	0.0
17	26	0.0
17	27	0.0
17	28	0.0
17	29	0.0
17	30	0.0
17	31	0.0
17	32	0.0
17	33	0.0
17	34	0.0
17	35	0.0
17	36	0.0
17	37	0.0
17	38	0.0
17	39	0.0
17	40	2.0
18	1	2.0
18	2	1.0
18	3	2.0
18	4	2.0
18	5	2.0
18	6	2.0
18	7	2.0
18	8	0.0
18	9	0.0
18	10	0.0
18	11	2.0
18	12	2.0
18	13	0.0
18	14	0.0
18	15	0.0
18	16	0.0
18	17	0.0
18	18	0.0
18	19	0.0
18	20	0.0
18	21	0.0
18	22	0.0
18	23	0.0
18	24	0.0
18	25	0.0
18	26	0.0
18	27	0.0
18	28	0.0
18	29	0.0
18	30	0.0
18	31	2.0
18	32	0.0
18	33	0.0
18	34	0.0
18	35	0.0
18	36	0.0
18	37	0.0
18	38	0.0
18	39	0.0
18	40	0.0
19	1	2.0
19	2	3.0
19	3	3.0
19	4	3.0
19	5	2.0
19	6	3.0
19	7	1.0
19	8	3.0
19	9	0.0
19	10	0.0
19	11	0.0
19	12	0.0
19	13	2.0
19	14	0.0
19	15	0.0
19	16	2.0
19	17	0.0
19	18	0.0
19	19	4.0
19	20	0.0
19	21	0.0
19	22	0.0
19	23	0.0
19	24	0.0
19	25	3.0
19	26	0.0
19	27	2.0
19	28	0.0
19	29	0.0
19	30	0.0
19	31	0.0
19	32	0.0
19	33	0.0
19	34	2.0
19	35	3.0
19	36	3.0
19	37	2.0
19	38	2.0
19	39	2.0
19	40	2.0
\.


--
-- Data for Name: df4_imp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df4_imp (id, id_df4, importance, baseline, users_id, created_at, versions) FROM stdin;
1	1	3	3	1	2024-02-05 13:09:30	1
2	2	2	3	1	2024-02-05 13:09:30	1
3	3	2	3	1	2024-02-05 13:09:30	1
4	4	2	3	1	2024-02-05 13:09:30	1
5	5	1	3	1	2024-02-05 13:09:30	1
6	6	1	3	1	2024-02-05 13:09:30	1
7	7	2	3	1	2024-02-05 13:09:30	1
8	8	3	3	1	2024-02-05 13:09:30	1
9	9	2	3	1	2024-02-05 13:09:30	1
10	10	1	3	1	2024-02-05 13:09:30	1
11	11	2	3	1	2024-02-05 13:09:30	1
12	12	2	3	1	2024-02-05 13:09:30	1
13	13	1	3	1	2024-02-05 13:09:30	1
14	14	2	3	1	2024-02-05 13:09:30	1
15	15	2	3	1	2024-02-05 13:09:30	1
16	16	3	3	1	2024-02-05 13:09:30	1
17	17	1	3	1	2024-02-05 13:09:30	1
18	18	2	3	1	2024-02-05 13:09:30	1
19	19	2	3	1	2024-02-05 13:09:30	1
20	20	1	3	1	2024-02-05 13:09:30	1
21	1	3	3	1	2024-02-05 14:50:58	2
22	2	3	3	1	2024-02-05 14:50:58	2
23	3	3	3	1	2024-02-05 14:50:58	2
24	4	1	3	1	2024-02-05 14:50:58	2
25	5	1	3	1	2024-02-05 14:50:58	2
26	6	1	3	1	2024-02-05 14:50:58	2
27	7	1	3	1	2024-02-05 14:50:58	2
28	8	1	3	1	2024-02-05 14:50:58	2
29	9	1	3	1	2024-02-05 14:50:58	2
30	10	1	3	1	2024-02-05 14:50:58	2
31	11	1	3	1	2024-02-05 14:50:58	2
32	12	1	3	1	2024-02-05 14:50:58	2
33	13	1	3	1	2024-02-05 14:50:58	2
34	14	1	3	1	2024-02-05 14:50:58	2
35	15	1	3	1	2024-02-05 14:50:58	2
36	16	1	3	1	2024-02-05 14:50:58	2
37	17	1	3	1	2024-02-05 14:50:58	2
38	18	1	3	1	2024-02-05 14:50:58	2
39	19	1	3	1	2024-02-05 14:50:58	2
40	20	1	3	1	2024-02-05 14:50:58	2
41	1	1	3	1	2024-02-05 14:51:10	3
42	2	1	3	1	2024-02-05 14:51:10	3
43	3	3	3	1	2024-02-05 14:51:10	3
44	4	1	3	1	2024-02-05 14:51:10	3
45	5	1	3	1	2024-02-05 14:51:10	3
46	6	1	3	1	2024-02-05 14:51:10	3
47	7	1	3	1	2024-02-05 14:51:10	3
48	8	1	3	1	2024-02-05 14:51:10	3
49	9	1	3	1	2024-02-05 14:51:10	3
50	10	1	3	1	2024-02-05 14:51:10	3
51	11	1	3	1	2024-02-05 14:51:10	3
52	12	1	3	1	2024-02-05 14:51:10	3
53	13	1	3	1	2024-02-05 14:51:10	3
54	14	1	3	1	2024-02-05 14:51:10	3
55	15	1	3	1	2024-02-05 14:51:10	3
56	16	1	3	1	2024-02-05 14:51:10	3
57	17	1	3	1	2024-02-05 14:51:10	3
58	18	1	3	1	2024-02-05 14:51:10	3
59	19	1	3	1	2024-02-05 14:51:10	3
60	20	1	3	1	2024-02-05 14:51:10	3
61	1	3	3	8	2024-02-08 07:17:58	4
62	2	2	3	8	2024-02-08 07:17:58	4
63	3	3	3	8	2024-02-08 07:17:58	4
64	4	1	3	8	2024-02-08 07:17:58	4
65	5	1	3	8	2024-02-08 07:17:58	4
66	6	2	3	8	2024-02-08 07:17:58	4
67	7	1	3	8	2024-02-08 07:17:58	4
68	8	3	3	8	2024-02-08 07:17:58	4
69	9	1	3	8	2024-02-08 07:17:58	4
70	10	3	3	8	2024-02-08 07:17:58	4
71	11	1	3	8	2024-02-08 07:17:58	4
72	12	3	3	8	2024-02-08 07:17:58	4
73	13	1	3	8	2024-02-08 07:17:58	4
74	14	1	3	8	2024-02-08 07:17:58	4
75	15	3	3	8	2024-02-08 07:17:58	4
76	16	1	3	8	2024-02-08 07:17:58	4
77	17	2	3	8	2024-02-08 07:17:58	4
78	18	1	3	8	2024-02-08 07:17:58	4
79	19	1	3	8	2024-02-08 07:17:58	4
80	20	2	3	8	2024-02-08 07:17:58	4
81	1	1	3	8	2024-02-08 07:20:20	5
82	2	1	3	8	2024-02-08 07:20:20	5
83	3	2	3	8	2024-02-08 07:20:20	5
84	4	3	3	8	2024-02-08 07:20:20	5
85	5	2	3	8	2024-02-08 07:20:20	5
86	6	3	3	8	2024-02-08 07:20:20	5
87	7	2	3	8	2024-02-08 07:20:20	5
88	8	2	3	8	2024-02-08 07:20:20	5
89	9	2	3	8	2024-02-08 07:20:20	5
90	10	2	3	8	2024-02-08 07:20:20	5
91	11	2	3	8	2024-02-08 07:20:20	5
92	12	2	3	8	2024-02-08 07:20:20	5
93	13	2	3	8	2024-02-08 07:20:20	5
94	14	2	3	8	2024-02-08 07:20:20	5
95	15	3	3	8	2024-02-08 07:20:20	5
96	16	3	3	8	2024-02-08 07:20:20	5
97	17	2	3	8	2024-02-08 07:20:20	5
98	18	1	3	8	2024-02-08 07:20:20	5
99	19	1	3	8	2024-02-08 07:20:20	5
100	20	3	3	8	2024-02-08 07:20:20	5
\.


--
-- Data for Name: df4_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df4_map (df4_id, gmo_id, relevance) FROM stdin;
1	1	3.0
1	2	2.5
1	3	1.0
1	4	1.0
1	5	1.0
1	6	2.0
1	7	1.5
1	8	1.0
1	9	1.0
1	10	3.0
1	11	3.5
1	12	1.5
1	13	2.5
1	14	2.0
1	15	1.0
1	16	1.0
1	17	1.0
1	18	0.0
1	19	1.0
1	20	0.0
1	21	0.0
1	22	1.0
1	23	0.5
1	24	1.0
1	25	0.0
1	26	0.0
1	27	0.0
1	28	0.5
1	29	0.0
1	30	1.0
1	31	0.0
1	32	1.0
1	33	0.0
1	34	0.0
1	35	0.0
1	36	0.0
1	37	1.0
1	38	0.0
1	39	0.0
1	40	1.0
2	1	3.0
2	2	3.0
2	3	1.0
2	4	1.0
2	5	1.0
2	6	1.0
2	7	1.5
2	8	1.5
2	9	1.0
2	10	3.0
2	11	2.0
2	12	1.0
2	13	2.0
2	14	1.5
2	15	1.0
2	16	1.0
2	17	0.5
2	18	0.0
2	19	1.5
2	20	1.0
2	21	3.0
2	22	2.0
2	23	0.0
2	24	3.0
2	25	0.0
2	26	1.0
2	27	0.0
2	28	0.5
2	29	0.0
2	30	2.0
2	31	0.0
2	32	1.0
2	33	1.0
2	34	0.0
2	35	0.0
2	36	1.0
2	37	1.5
2	38	0.0
2	39	0.0
2	40	1.0
3	1	1.0
3	2	1.0
3	3	2.0
3	4	1.0
3	5	1.0
3	6	2.0
3	7	1.5
3	8	1.0
3	9	1.0
3	10	1.0
3	11	1.0
3	12	1.0
3	13	1.0
3	14	2.0
3	15	2.0
3	16	3.0
3	17	2.5
3	18	3.5
3	19	3.0
3	20	1.5
3	21	0.0
3	22	2.0
3	23	2.0
3	24	0.0
3	25	2.5
3	26	2.0
3	27	0.0
3	28	1.0
3	29	2.5
3	30	2.5
3	31	2.5
3	32	4.0
3	33	3.0
3	34	3.0
3	35	4.0
3	36	0.5
3	37	2.0
3	38	2.0
3	39	2.0
3	40	3.0
4	1	1.0
4	2	1.0
4	3	1.0
4	4	1.0
4	5	1.0
4	6	1.0
4	7	1.5
4	8	2.0
4	9	1.0
4	10	1.5
4	11	1.5
4	12	1.0
4	13	2.5
4	14	4.0
4	15	4.0
4	16	1.5
4	17	1.5
4	18	1.0
4	19	1.0
4	20	0.0
4	21	0.0
4	22	0.0
4	23	3.0
4	24	0.0
4	25	3.0
4	26	2.0
4	27	1.5
4	28	0.0
4	29	2.0
4	30	0.0
4	31	2.0
4	32	3.0
4	33	3.0
4	34	1.0
4	35	2.0
4	36	0.0
4	37	2.0
4	38	2.0
4	39	2.0
4	40	1.5
5	1	2.0
5	2	1.5
5	3	2.0
5	4	1.0
5	5	1.5
5	6	2.0
5	7	1.0
5	8	0.5
5	9	0.5
5	10	2.0
5	11	1.5
5	12	1.0
5	13	1.5
5	14	1.0
5	15	1.5
5	16	1.0
5	17	2.0
5	18	2.0
5	19	2.5
5	20	0.0
5	21	0.5
5	22	0.0
5	23	0.0
5	24	0.0
5	25	0.5
5	26	0.5
5	27	0.5
5	28	0.0
5	29	0.5
5	30	0.0
5	31	1.0
5	32	1.0
5	33	0.0
5	34	2.0
5	35	2.0
5	36	3.0
5	37	2.5
5	38	2.5
5	39	4.0
5	40	3.0
6	1	2.0
6	2	2.5
6	3	2.0
6	4	2.0
6	5	2.0
6	6	2.0
6	7	1.5
6	8	1.5
6	9	0.5
6	10	2.0
6	11	2.0
6	12	1.5
6	13	1.0
6	14	2.5
6	15	1.5
6	16	3.0
6	17	2.0
6	18	1.0
6	19	1.5
6	20	0.0
6	21	2.0
6	22	2.0
6	23	2.0
6	24	0.0
6	25	1.5
6	26	1.5
6	27	0.5
6	28	0.0
6	29	0.0
6	30	0.0
6	31	2.0
6	32	2.5
6	33	3.0
6	34	0.0
6	35	0.0
6	36	0.5
6	37	3.0
6	38	2.0
6	39	0.5
6	40	4.0
7	1	2.0
7	2	2.0
7	3	1.0
7	4	3.0
7	5	1.0
7	6	1.0
7	7	1.0
7	8	2.0
7	9	0.5
7	10	1.5
7	11	4.0
7	12	2.0
7	13	2.5
7	14	1.5
7	15	1.5
7	16	0.0
7	17	1.0
7	18	0.0
7	19	1.0
7	20	0.0
7	21	0.0
7	22	0.0
7	23	0.0
7	24	0.0
7	25	0.0
7	26	0.0
7	27	0.0
7	28	2.0
7	29	0.0
7	30	2.0
7	31	0.0
7	32	0.0
7	33	0.0
7	34	0.0
7	35	0.0
7	36	0.0
7	37	1.0
7	38	2.0
7	39	0.0
7	40	2.0
8	1	1.0
8	2	1.5
8	3	1.0
8	4	3.5
8	5	1.0
8	6	1.0
8	7	1.0
8	8	1.5
8	9	0.5
8	10	3.5
8	11	3.0
8	12	2.0
8	13	2.0
8	14	2.0
8	15	0.0
8	16	0.0
8	17	1.0
8	18	1.0
8	19	1.5
8	20	3.0
8	21	2.0
8	22	1.0
8	23	0.0
8	24	0.5
8	25	1.0
8	26	0.5
8	27	1.0
8	28	2.0
8	29	0.5
8	30	3.0
8	31	0.5
8	32	0.0
8	33	0.0
8	34	0.0
8	35	0.0
8	36	0.0
8	37	2.0
8	38	0.0
8	39	0.0
8	40	1.0
9	1	1.0
9	2	0.5
9	3	0.0
9	4	3.5
9	5	0.0
9	6	0.0
9	7	0.0
9	8	1.0
9	9	0.0
9	10	0.5
9	11	1.0
9	12	4.0
9	13	1.5
9	14	0.5
9	15	1.5
9	16	0.0
9	17	0.5
9	18	0.0
9	19	0.0
9	20	1.0
9	21	0.0
9	22	0.0
9	23	0.0
9	24	0.0
9	25	0.0
9	26	0.0
9	27	2.0
9	28	0.0
9	29	0.0
9	30	1.0
9	31	0.0
9	32	0.0
9	33	0.0
9	34	0.0
9	35	0.0
9	36	0.0
9	37	1.5
9	38	0.5
9	39	0.0
9	40	1.0
10	1	1.0
10	2	2.5
10	3	0.5
10	4	1.0
10	5	1.0
10	6	0.5
10	7	1.0
10	8	3.5
10	9	0.0
10	10	2.0
10	11	2.0
10	12	1.0
10	13	1.0
10	14	1.0
10	15	1.0
10	16	2.0
10	17	1.0
10	18	0.5
10	19	1.5
10	20	3.5
10	21	3.5
10	22	3.0
10	23	0.0
10	24	3.0
10	25	1.5
10	26	2.0
10	27	0.5
10	28	0.0
10	29	0.0
10	30	4.0
10	31	0.0
10	32	0.0
10	33	0.0
10	34	0.0
10	35	0.0
10	36	1.0
10	37	1.0
10	38	2.0
10	39	0.0
10	40	0.5
11	1	3.0
11	2	1.5
11	3	1.0
11	4	1.5
11	5	3.0
11	6	1.5
11	7	2.5
11	8	0.5
11	9	0.5
11	10	2.0
11	11	1.0
11	12	0.0
11	13	3.0
11	14	0.0
11	15	0.0
11	16	0.0
11	17	1.0
11	18	0.0
11	19	0.0
11	20	0.0
11	21	0.0
11	22	0.0
11	23	0.0
11	24	1.0
11	25	0.0
11	26	0.0
11	27	0.0
11	28	0.0
11	29	0.0
11	30	0.0
11	31	0.0
11	32	0.0
11	33	0.0
11	34	0.0
11	35	0.0
11	36	0.0
11	37	1.0
11	38	1.0
11	39	0.0
11	40	1.0
12	1	3.5
12	2	1.0
12	3	0.0
12	4	0.0
12	5	1.5
12	6	4.0
12	7	0.5
12	8	0.5
12	9	1.0
12	10	1.5
12	11	1.5
12	12	0.0
12	13	1.0
12	14	0.0
12	15	0.0
12	16	0.0
12	17	1.0
12	18	0.0
12	19	0.0
12	20	0.0
12	21	1.0
12	22	0.5
12	23	0.0
12	24	0.0
12	25	1.0
12	26	1.0
12	27	0.5
12	28	0.0
12	29	0.0
12	30	0.0
12	31	0.0
12	32	0.0
12	33	0.0
12	34	0.0
12	35	0.0
12	36	0.0
12	37	1.0
12	38	1.0
12	39	0.0
12	40	1.0
13	1	1.0
13	2	3.0
13	3	1.0
13	4	4.0
13	5	1.5
13	6	1.0
13	7	0.5
13	8	1.0
13	9	0.5
13	10	2.0
13	11	4.0
13	12	1.0
13	13	0.5
13	14	1.0
13	15	1.0
13	16	0.0
13	17	1.0
13	18	0.0
13	19	0.5
13	20	1.5
13	21	1.0
13	22	1.0
13	23	0.5
13	24	0.0
13	25	0.5
13	26	0.0
13	27	0.0
13	28	2.0
13	29	1.0
13	30	1.5
13	31	1.0
13	32	1.0
13	33	0.0
13	34	0.0
13	35	0.0
13	36	0.0
13	37	2.0
13	38	1.5
13	39	0.0
13	40	1.5
14	1	1.0
14	2	2.0
14	3	1.5
14	4	2.0
14	5	0.5
14	6	2.0
14	7	1.5
14	8	4.0
14	9	2.0
14	10	1.0
14	11	0.0
14	12	0.0
14	13	1.0
14	14	0.0
14	15	0.0
14	16	0.5
14	17	1.0
14	18	0.0
14	19	2.5
14	20	0.5
14	21	2.0
14	22	1.0
14	23	0.0
14	24	0.5
14	25	1.0
14	26	1.0
14	27	1.0
14	28	1.0
14	29	1.5
14	30	2.0
14	31	0.0
14	32	0.0
14	33	1.0
14	34	0.0
14	35	0.0
14	36	0.0
14	37	1.0
14	38	1.0
14	39	0.0
14	40	0.0
15	1	1.0
15	2	1.0
15	3	1.0
15	4	1.0
15	5	0.0
15	6	1.0
15	7	1.5
15	8	1.0
15	9	1.0
15	10	0.5
15	11	0.0
15	12	3.0
15	13	4.0
15	14	0.0
15	15	0.0
15	16	0.5
15	17	1.0
15	18	0.0
15	19	0.5
15	20	1.0
15	21	2.0
15	22	1.0
15	23	0.0
15	24	2.0
15	25	0.5
15	26	0.5
15	27	3.0
15	28	0.0
15	29	0.0
15	30	0.5
15	31	0.0
15	32	0.0
15	33	1.5
15	34	0.0
15	35	0.0
15	36	1.5
15	37	1.0
15	38	0.0
15	39	0.0
15	40	1.0
16	1	1.0
16	2	1.0
16	3	2.0
16	4	1.5
16	5	0.5
16	6	1.0
16	7	0.5
16	8	3.5
16	9	0.0
16	10	0.0
16	11	0.0
16	12	0.0
16	13	1.0
16	14	0.0
16	15	0.0
16	16	3.0
16	17	2.0
16	18	1.5
16	19	4.0
16	20	0.0
16	21	1.5
16	22	0.5
16	23	1.0
16	24	0.0
16	25	2.0
16	26	2.0
16	27	2.0
16	28	0.0
16	29	1.5
16	30	0.0
16	31	1.5
16	32	1.0
16	33	1.0
16	34	1.5
16	35	1.5
16	36	2.5
16	37	1.0
16	38	2.0
16	39	2.0
16	40	1.0
17	1	2.0
17	2	2.0
17	3	1.0
17	4	2.0
17	5	1.0
17	6	1.5
17	7	2.0
17	8	2.0
17	9	0.5
17	10	2.5
17	11	1.0
17	12	0.5
17	13	3.0
17	14	1.0
17	15	0.5
17	16	2.0
17	17	1.0
17	18	2.0
17	19	2.5
17	20	1.5
17	21	2.5
17	22	2.0
17	23	1.0
17	24	0.5
17	25	2.0
17	26	2.0
17	27	1.0
17	28	1.0
17	29	1.0
17	30	1.0
17	31	1.0
17	32	1.0
17	33	1.0
17	34	1.0
17	35	1.0
17	36	1.5
17	37	1.5
17	38	1.0
17	39	0.0
17	40	1.0
18	1	3.0
18	2	2.0
18	3	1.0
18	4	2.5
18	5	1.0
18	6	2.0
18	7	2.0
18	8	3.0
18	9	0.5
18	10	2.5
18	11	2.0
18	12	0.5
18	13	3.5
18	14	1.5
18	15	2.0
18	16	2.0
18	17	1.5
18	18	1.0
18	19	2.0
18	20	2.0
18	21	3.0
18	22	2.0
18	23	1.0
18	24	1.5
18	25	2.0
18	26	2.0
18	27	1.5
18	28	1.5
18	29	2.0
18	30	1.5
18	31	2.0
18	32	1.0
18	33	1.0
18	34	2.0
18	35	2.0
18	36	1.0
18	37	1.0
18	38	1.0
18	39	0.0
18	40	1.0
19	1	1.5
19	2	1.0
19	3	2.5
19	4	0.0
19	5	1.0
19	6	0.5
19	7	0.0
19	8	0.0
19	9	0.0
19	10	0.0
19	11	0.0
19	12	1.5
19	13	0.0
19	14	0.0
19	15	1.0
19	16	0.0
19	17	2.5
19	18	2.0
19	19	3.0
19	20	0.0
19	21	0.5
19	22	1.0
19	23	0.0
19	24	0.0
19	25	1.0
19	26	0.0
19	27	0.0
19	28	0.0
19	29	0.0
19	30	0.0
19	31	0.0
19	32	0.0
19	33	0.5
19	34	0.0
19	35	2.0
19	36	2.0
19	37	2.5
19	38	2.5
19	39	4.0
19	40	2.5
20	1	1.0
20	2	2.5
20	3	1.0
20	4	1.0
20	5	0.0
20	6	1.0
20	7	2.5
20	8	2.0
20	9	4.0
20	10	2.0
20	11	0.0
20	12	1.0
20	13	0.5
20	14	0.0
20	15	0.0
20	16	1.0
20	17	1.0
20	18	1.0
20	19	0.5
20	20	1.0
20	21	1.0
20	22	0.5
20	23	0.5
20	24	1.0
20	25	1.0
20	26	1.0
20	27	0.5
20	28	0.0
20	29	0.0
20	30	0.5
20	31	0.0
20	32	0.0
20	33	0.0
20	34	0.0
20	35	0.0
20	36	0.0
20	37	1.0
20	38	0.0
20	39	0.0
20	40	1.0
\.


--
-- Data for Name: df5_imp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df5_imp (id, id_df5, importance, baseline, users_id, created_at, versions) FROM stdin;
1	1	75	33	1	2024-02-05 13:09:32	1
2	2	25	67	1	2024-02-05 13:09:32	1
3	1	75	33	1	2024-02-05 14:57:06	2
4	2	25	67	1	2024-02-05 14:57:06	2
5	1	70	33	1	2024-02-05 14:57:18	3
6	2	30	67	1	2024-02-05 14:57:18	3
7	1	65	33	1	2024-02-05 14:57:45	4
8	2	35	67	1	2024-02-05 14:57:45	4
9	1	66	33	8	2024-02-05 16:17:24	5
10	2	35	67	8	2024-02-05 16:17:24	5
11	1	67	33	8	2024-02-05 16:18:59	6
12	2	35	67	8	2024-02-05 16:18:59	6
13	1	70	33	8	2024-02-05 16:19:10	7
14	2	30	67	8	2024-02-05 16:19:10	7
15	1	75	33	8	2024-02-05 16:19:20	8
16	2	25	67	8	2024-02-05 16:19:20	8
17	1	50	33	8	2024-02-05 16:19:38	9
18	2	50	67	8	2024-02-05 16:19:38	9
19	1	50	33	8	2024-02-06 13:50:33	10
20	2	50	67	8	2024-02-06 13:50:33	10
21	1	50	33	8	2024-02-06 13:50:38	11
22	2	52	67	8	2024-02-06 13:50:38	11
23	1	48	33	8	2024-02-06 13:50:44	12
24	2	52	67	8	2024-02-06 13:50:44	12
25	1	45	33	8	2024-02-06 13:50:50	13
26	2	52	67	8	2024-02-06 13:50:50	13
27	1	45	33	8	2024-02-06 14:24:52	14
28	2	52	67	8	2024-02-06 14:24:52	14
29	1	40	33	8	2024-02-08 07:21:32	15
30	2	60	67	8	2024-02-08 07:21:32	15
\.


--
-- Data for Name: df5_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df5_map (df5_id, gmo_id, relevance) FROM stdin;
1	1	3.0
1	2	1.0
1	3	4.0
1	4	1.0
1	5	2.0
1	6	3.0
1	7	1.0
1	8	3.0
1	9	1.0
1	10	1.0
1	11	1.0
1	12	2.0
1	13	1.0
1	14	2.0
1	15	3.0
1	16	2.0
1	17	4.0
1	18	4.0
1	19	3.0
1	20	1.0
1	21	1.0
1	22	1.0
1	23	2.0
1	24	1.0
1	25	3.0
1	26	1.0
1	27	1.0
1	28	1.0
1	29	3.0
1	30	1.0
1	31	1.0
1	32	3.0
1	33	2.0
1	34	4.0
1	35	3.0
1	36	3.0
1	37	3.0
1	38	2.0
1	39	3.0
1	40	3.0
2	1	1.0
2	2	1.0
2	3	1.0
2	4	1.0
2	5	1.0
2	6	1.0
2	7	1.0
2	8	1.0
2	9	1.0
2	10	1.0
2	11	1.0
2	12	1.0
2	13	1.0
2	14	1.0
2	15	1.0
2	16	1.0
2	17	1.0
2	18	1.0
2	19	1.0
2	20	1.0
2	21	1.0
2	22	1.0
2	23	1.0
2	24	1.0
2	25	1.0
2	26	1.0
2	27	1.0
2	28	1.0
2	29	1.0
2	30	1.0
2	31	1.0
2	32	1.0
2	33	1.0
2	34	1.0
2	35	1.0
2	36	1.0
2	37	1.0
2	38	1.0
2	39	1.0
2	40	1.0
\.


--
-- Data for Name: df6_imp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df6_imp (id, id_df6, importance, baseline, users_id, created_at, versions) FROM stdin;
1	1	25	0	1	2024-02-05 13:09:33	1
2	2	75	100	1	2024-02-05 13:09:33	1
3	3	0	0	1	2024-02-05 13:09:33	1
4	1	25	0	1	2024-02-05 14:58:56	2
5	2	70	100	1	2024-02-05 14:58:56	2
6	3	5	0	1	2024-02-05 14:58:56	2
7	1	20	0	1	2024-02-05 14:59:14	3
8	2	75	100	1	2024-02-05 14:59:14	3
9	3	5	0	1	2024-02-05 14:59:14	3
10	1	8	0	8	2024-02-08 07:22:49	4
11	2	82	100	8	2024-02-08 07:22:49	4
12	3	10	0	8	2024-02-08 07:22:49	4
13	1	8	0	8	2024-02-08 07:23:12	5
14	2	79	100	8	2024-02-08 07:23:12	5
15	3	8	0	8	2024-02-08 07:23:12	5
16	1	3	0	8	2024-02-08 07:24:32	6
17	2	70	100	8	2024-02-08 07:24:32	6
18	3	15	0	8	2024-02-08 07:24:32	6
19	1	15	0	8	2024-02-08 07:24:48	7
20	2	70	100	8	2024-02-08 07:24:48	7
21	3	15	0	8	2024-02-08 07:24:48	7
\.


--
-- Data for Name: df6_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df6_map (df6_id, gmo_id, relevance) FROM stdin;
1	1	3.0
1	2	1.0
1	3	4.0
1	4	1.0
1	5	1.5
1	6	2.0
1	7	1.0
1	8	1.0
1	9	1.0
1	10	1.0
1	11	1.0
1	12	1.0
1	13	1.0
1	14	1.0
1	15	1.5
1	16	1.0
1	17	4.0
1	18	1.5
1	19	2.0
1	20	1.0
1	21	1.0
1	22	1.0
1	23	1.0
1	24	1.0
1	25	1.0
1	26	1.0
1	27	1.0
1	28	1.0
1	29	1.0
1	30	1.0
1	31	1.0
1	32	1.0
1	33	1.0
1	34	1.5
1	35	2.0
1	36	1.0
1	37	1.0
1	38	1.0
1	39	4.0
1	40	3.5
2	1	2.0
2	2	1.0
2	3	2.0
2	4	1.0
2	5	1.0
2	6	1.5
2	7	1.0
2	8	1.0
2	9	1.0
2	10	1.0
2	11	1.0
2	12	1.0
2	13	1.0
2	14	1.0
2	15	1.0
2	16	1.0
2	17	2.0
2	18	1.0
2	19	1.5
2	20	1.0
2	21	1.0
2	22	1.0
2	23	1.0
2	24	1.0
2	25	1.0
2	26	1.0
2	27	1.0
2	28	1.0
2	29	1.0
2	30	1.0
2	31	1.0
2	32	1.0
2	33	1.0
2	34	1.0
2	35	1.0
2	36	1.0
2	37	1.0
2	38	1.0
2	39	2.0
2	40	2.0
3	1	1.0
3	2	1.0
3	3	1.0
3	4	1.0
3	5	1.0
3	6	1.0
3	7	1.0
3	8	1.0
3	9	1.0
3	10	1.0
3	11	1.0
3	12	1.0
3	13	1.0
3	14	1.0
3	15	1.0
3	16	1.0
3	17	1.0
3	18	1.0
3	19	1.0
3	20	1.0
3	21	1.0
3	22	1.0
3	23	1.0
3	24	1.0
3	25	1.0
3	26	1.0
3	27	1.0
3	28	1.0
3	29	1.0
3	30	1.0
3	31	1.0
3	32	1.0
3	33	1.0
3	34	1.0
3	35	1.0
3	36	1.0
3	37	1.0
3	38	1.0
3	39	1.0
3	40	1.0
\.


--
-- Data for Name: df7_imp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df7_imp (id, id_df7, importance, baseline, users_id, created_at, versions) FROM stdin;
1	1	1	3	1	2024-02-05 13:09:35	1
2	2	1	3	1	2024-02-05 13:09:35	1
3	3	2	3	1	2024-02-05 13:09:35	1
4	4	5	3	1	2024-02-05 13:09:35	1
5	1	5	3	1	2024-02-05 14:59:43	2
6	2	5	3	1	2024-02-05 14:59:43	2
7	3	3	3	1	2024-02-05 14:59:43	2
8	4	5	3	1	2024-02-05 14:59:43	2
9	1	1	3	1	2024-02-05 14:59:53	3
10	2	1	3	1	2024-02-05 14:59:53	3
11	3	2	3	1	2024-02-05 14:59:53	3
12	4	2	3	1	2024-02-05 14:59:53	3
13	1	4	3	1	2024-02-05 15:00:21	4
14	2	4	3	1	2024-02-05 15:00:21	4
15	3	4	3	1	2024-02-05 15:00:21	4
16	4	4	3	1	2024-02-05 15:00:21	4
17	1	5	3	1	2024-02-05 15:00:55	5
18	2	5	3	1	2024-02-05 15:00:55	5
19	3	5	3	1	2024-02-05 15:00:55	5
20	4	5	3	1	2024-02-05 15:00:55	5
21	1	5	3	8	2024-02-08 07:32:54	6
22	2	4	3	8	2024-02-08 07:32:54	6
23	3	3	3	8	2024-02-08 07:32:54	6
24	4	1	3	8	2024-02-08 07:32:54	6
25	1	5	3	8	2024-02-08 07:32:59	7
26	2	4	3	8	2024-02-08 07:32:59	7
27	3	3	3	8	2024-02-08 07:32:59	7
28	4	1	3	8	2024-02-08 07:32:59	7
29	1	1	3	8	2024-02-08 07:33:54	8
30	2	1	3	8	2024-02-08 07:33:54	8
31	3	4	3	8	2024-02-08 07:33:54	8
32	4	5	3	8	2024-02-08 07:33:54	8
\.


--
-- Data for Name: df7_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df7_map (df7_id, gmo_id, relevance) FROM stdin;
1	1	1.0
1	2	1.0
1	3	1.0
1	4	1.0
1	5	1.0
1	6	1.0
1	7	1.0
1	8	1.0
1	9	0.5
1	10	1.0
1	11	1.0
1	12	1.0
1	13	1.0
1	14	1.0
1	15	1.0
1	16	1.0
1	17	1.0
1	18	1.0
1	19	1.0
1	20	1.0
1	21	1.0
1	22	1.0
1	23	1.0
1	24	1.0
1	25	1.0
1	26	1.0
1	27	1.0
1	28	1.0
1	29	1.0
1	30	1.0
1	31	1.0
1	32	1.0
1	33	1.0
1	34	1.0
1	35	1.5
1	36	1.0
1	37	1.0
1	38	1.0
1	39	1.0
1	40	1.0
2	1	2.0
2	2	1.0
2	3	3.0
2	4	1.0
2	5	1.0
2	6	1.5
2	7	1.0
2	8	1.0
2	9	1.0
2	10	1.0
2	11	1.0
2	12	1.0
2	13	1.0
2	14	2.0
2	15	2.5
2	16	1.5
2	17	2.5
2	18	2.0
2	19	1.5
2	20	1.0
2	21	1.0
2	22	1.0
2	23	2.5
2	24	1.0
2	25	2.5
2	26	1.0
2	27	1.0
2	28	1.0
2	29	1.5
2	30	1.0
2	31	3.5
2	32	3.0
2	33	3.0
2	34	3.0
2	35	2.5
2	36	1.0
2	37	1.0
2	38	1.0
2	39	1.0
2	40	1.0
3	1	1.5
3	2	2.5
3	3	1.0
3	4	1.0
3	5	1.0
3	6	1.5
3	7	3.0
3	8	2.0
3	9	3.5
3	10	2.5
3	11	1.0
3	12	1.0
3	13	2.0
3	14	1.5
3	15	1.5
3	16	1.5
3	17	1.0
3	18	1.5
3	19	1.5
3	20	2.0
3	21	3.0
3	22	3.0
3	23	1.5
3	24	1.0
3	25	1.0
3	26	2.0
3	27	1.0
3	28	1.0
3	29	1.0
3	30	2.0
3	31	1.0
3	32	1.5
3	33	1.5
3	34	1.5
3	35	1.5
3	36	1.0
3	37	1.0
3	38	1.0
3	39	1.0
3	40	1.0
4	1	4.0
4	2	3.0
4	3	3.0
4	4	2.0
4	5	2.0
4	6	2.5
4	7	3.0
4	8	2.0
4	9	4.0
4	10	3.0
4	11	2.0
4	12	1.5
4	13	2.5
4	14	2.0
4	15	2.0
4	16	2.0
4	17	3.0
4	18	3.0
4	19	2.5
4	20	2.5
4	21	3.0
4	22	3.0
4	23	2.0
4	24	2.0
4	25	2.0
4	26	2.0
4	27	2.0
4	28	2.0
4	29	2.0
4	30	2.0
4	31	3.0
4	32	3.0
4	33	3.5
4	34	3.5
4	35	3.5
4	36	2.5
4	37	2.0
4	38	2.0
4	39	1.5
4	40	2.0
\.


--
-- Data for Name: df8_imp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df8_imp (id, id_df8, importance, baseline, users_id, created_at, versions) FROM stdin;
1	1	30	33	1	2024-02-05 13:09:36	1
2	2	50	33	1	2024-02-05 13:09:36	1
3	3	20	34	1	2024-02-05 13:09:36	1
4	1	25	33	1	2024-02-05 15:03:30	2
5	2	55	33	1	2024-02-05 15:03:30	2
6	3	20	34	1	2024-02-05 15:03:30	2
7	1	20	33	1	2024-02-05 15:03:44	3
8	2	60	33	1	2024-02-05 15:03:44	3
9	3	20	34	1	2024-02-05 15:03:44	3
10	1	10	33	8	2024-02-05 16:20:47	4
11	2	60	33	8	2024-02-05 16:20:47	4
12	3	30	34	8	2024-02-05 16:20:47	4
13	1	5	33	8	2024-02-05 16:20:55	5
14	2	60	33	8	2024-02-05 16:20:55	5
15	3	32	34	8	2024-02-05 16:20:55	5
16	1	15	33	8	2024-02-08 07:35:19	6
17	2	50	33	8	2024-02-08 07:35:19	6
18	3	35	34	8	2024-02-08 07:35:19	6
19	1	30	33	8	2024-02-08 07:36:40	7
20	2	50	33	8	2024-02-08 07:36:40	7
21	3	25	34	8	2024-02-08 07:36:40	7
22	1	35	33	8	2024-02-08 07:37:41	8
23	2	45	33	8	2024-02-08 07:37:41	8
24	3	25	34	8	2024-02-08 07:37:41	8
25	1	30	33	8	2024-02-08 07:38:22	9
26	2	50	33	8	2024-02-08 07:38:22	9
27	3	20	34	8	2024-02-08 07:38:22	9
\.


--
-- Data for Name: df8_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df8_map (df8_id, gmo_id, relevance) FROM stdin;
1	1	1.0
1	2	1.0
1	3	1.0
1	4	1.0
1	5	1.0
1	6	1.0
1	7	1.0
1	8	1.0
1	9	1.0
1	10	1.0
1	11	1.0
1	12	1.0
1	13	1.0
1	14	4.0
1	15	4.0
1	16	1.0
1	17	2.0
1	18	1.0
1	19	1.0
1	20	1.0
1	21	1.0
1	22	1.0
1	23	1.0
1	24	1.0
1	25	1.0
1	26	1.0
1	27	1.0
1	28	1.0
1	29	1.0
1	30	1.0
1	31	1.0
1	32	1.0
1	33	1.0
1	34	1.0
1	35	1.0
1	36	1.0
1	37	3.0
1	38	1.0
1	39	1.0
1	40	1.0
2	1	1.0
2	2	1.0
2	3	2.0
2	4	1.0
2	5	1.0
2	6	1.0
2	7	1.0
2	8	1.0
2	9	1.0
2	10	1.0
2	11	1.0
2	12	1.0
2	13	1.0
2	14	4.0
2	15	4.0
2	16	1.0
2	17	2.0
2	18	1.0
2	19	1.0
2	20	1.0
2	21	1.0
2	22	1.0
2	23	1.0
2	24	1.0
2	25	1.0
2	26	1.0
2	27	1.0
2	28	1.0
2	29	1.0
2	30	1.0
2	31	1.0
2	32	1.0
2	33	1.0
2	34	1.0
2	35	1.0
2	36	1.0
2	37	3.0
2	38	1.0
2	39	1.0
2	40	1.0
3	1	1.0
3	2	1.0
3	3	1.0
3	4	1.0
3	5	1.0
3	6	1.0
3	7	1.0
3	8	1.0
3	9	1.0
3	10	1.0
3	11	1.0
3	12	1.0
3	13	1.0
3	14	1.0
3	15	1.0
3	16	1.0
3	17	1.0
3	18	1.0
3	19	1.0
3	20	1.0
3	21	1.0
3	22	1.0
3	23	1.0
3	24	1.0
3	25	1.0
3	26	1.0
3	27	1.0
3	28	1.0
3	29	1.0
3	30	1.0
3	31	1.0
3	32	1.0
3	33	1.0
3	34	1.0
3	35	1.0
3	36	1.0
3	37	1.0
3	38	1.0
3	39	1.0
3	40	1.0
\.


--
-- Data for Name: df9_imp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df9_imp (id, id_df9, importance, baseline, users_id, created_at, versions) FROM stdin;
1	1	50	15	1	2024-02-05 13:09:37	1
2	2	10	10	1	2024-02-05 13:09:37	1
3	3	40	75	1	2024-02-05 13:09:37	1
4	1	45	15	1	2024-02-05 15:04:23	2
5	2	20	10	1	2024-02-05 15:04:23	2
6	3	35	75	1	2024-02-05 15:04:23	2
7	1	50	15	8	2024-02-06 16:22:19	3
8	2	10	10	8	2024-02-06 16:22:19	3
9	3	40	75	8	2024-02-06 16:22:19	3
10	1	50	15	8	2024-02-06 16:22:23	4
11	2	10	10	8	2024-02-06 16:22:23	4
12	3	40	75	8	2024-02-06 16:22:23	4
13	1	45	15	8	2024-02-08 07:39:35	5
14	2	20	10	8	2024-02-08 07:39:35	5
15	3	35	75	8	2024-02-08 07:39:35	5
\.


--
-- Data for Name: df9_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.df9_map (df9_id, gmo_id, relevance) FROM stdin;
1	1	1.0
1	2	1.0
1	3	1.0
1	4	1.0
1	5	1.0
1	6	1.0
1	7	1.0
1	8	1.0
1	9	1.0
1	10	1.0
1	11	1.0
1	12	1.0
1	13	1.0
1	14	1.0
1	15	1.0
1	16	1.0
1	17	1.0
1	18	1.0
1	19	1.0
1	20	2.0
1	21	3.5
1	22	4.0
1	23	1.0
1	24	2.5
1	25	3.5
1	26	2.5
1	27	1.0
1	28	1.0
1	29	1.5
1	30	2.5
1	31	1.0
1	32	1.0
1	33	1.0
1	34	1.0
1	35	1.0
1	36	1.0
1	37	1.5
1	38	1.0
1	39	1.0
1	40	1.0
2	1	1.0
2	2	1.0
2	3	1.0
2	4	1.0
2	5	1.0
2	6	1.0
2	7	1.0
2	8	2.0
2	9	1.0
2	10	1.0
2	11	1.0
2	12	1.5
2	13	1.0
2	14	1.0
2	15	1.0
2	16	1.0
2	17	1.5
2	18	1.0
2	19	1.0
2	20	1.5
2	21	2.0
2	22	3.0
2	23	1.0
2	24	1.5
2	25	2.0
2	26	2.5
2	27	1.0
2	28	1.0
2	29	2.0
2	30	1.0
2	31	2.5
2	32	1.5
2	33	1.5
2	34	1.0
2	35	1.0
2	36	1.0
2	37	1.5
2	38	1.0
2	39	1.0
2	40	1.0
3	1	1.0
3	2	1.0
3	3	1.0
3	4	1.0
3	5	1.0
3	6	1.0
3	7	1.0
3	8	1.0
3	9	1.0
3	10	1.0
3	11	1.0
3	12	1.0
3	13	1.0
3	14	1.0
3	15	1.0
3	16	1.0
3	17	1.0
3	18	1.0
3	19	1.0
3	20	1.0
3	21	1.0
3	22	1.0
3	23	1.0
3	24	1.0
3	25	1.0
3	26	1.0
3	27	1.0
3	28	1.0
3	29	1.0
3	30	1.0
3	31	1.0
3	32	1.0
3	33	1.0
3	34	1.0
3	35	1.0
3	36	1.0
3	37	1.0
3	38	1.0
3	39	1.0
3	40	1.0
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_reset_tokens_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
\.


--
-- Data for Name: mst_df1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df1 (id, dimension, explanation) FROM stdin;
1	Growth/Acquisition.	The enterprise has a focus on growing (revenues).
2	Innovation/Differentiation.	The enterprise has a focus on offering different and/or innovative products and services to their clients.
3	Cost Leadership.	The enterprise has a focus on short-term cost minimization.
4	Client Service/Stability.	The enterprise has a focus on providing stable and client-oriented service.
\.


--
-- Data for Name: mst_df10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df10 (id, dimension, explanation) FROM stdin;
1	First mover	The enterprise generally adopts new technologies as early as possible and tries to gain first-mover advantage.
2	Follower	The enterprise typically waits for new technologies to become mainstream and proven before adopting them.
3	Slow adopter	The enterprise is very late with adoption of new technologies.
\.


--
-- Data for Name: mst_df2_ag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df2_ag (id_ag, dimension) FROM stdin;
AG01	IT compliance and support for business compliance with eternal laws and regulations
AG02	Managed Technology & Information related risks
AG03	Realized benefits from IT-enabled investments  and services portfolio
AG04	Quality of technology related financial information
AG05	delivery of IT services  in line with business requirements
AG06	Agility to turn business requirements into operational solutions
AG07	Security of information, processing infrastructure and applications
AG08	Enablement and support of business processes by Integrating applications and technology
AG09	Delivery of programs  on time, on budget, and meeting requirements and quality standards
AG10	Quality of IT Management Information
AG11	IT compliance with internal policies
AG12	Competent and motivated staff with mutual understanding of technology and business.
AG13	Knowledge, epertise and initiatives for business innovation
\.


--
-- Data for Name: mst_df2_eg; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df2_eg (id_eg, dimension) FROM stdin;
EG01	Portfolio of agile and competitive products and services
EG02	Managed business risks 
EG03	Compliance with eternal laws and regulations
EG04	Transparency and accuracy of financial information
EG05	Customer-oriented service culture
EG06	Business service continuity and availability
EG07	Accuracy (Quality?) of Management Information 
EG08	Optimization of business process functionality
EG09	Optimization of business process costs
EG10	Staff skills, motivation and productivity
EG11	Compliance with internal policies
EG12	Managed business transformation programs
EG13	Product and business innovation
\.


--
-- Data for Name: mst_df3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df3 (id, dimension) FROM stdin;
1	IT investment decision making, portfolio definition & maintenance
2	Program & projects life cycle management
3	IT cost & oversight
4	IT expertise, skills & behavior
5	Enterprise/IT architecture 
6	IT operational infrastructure incidents
7	Unauthorized actions
8	Software adoption/usage problems
9	Hardware incidents
10	Software failures
11	Logical attacks (hacking, malware, etc.)
12	Third-party/supplier incidents
13	Noncompliance
14	Geopolitical Issues
15	Industrial action
16	Acts of nature
17	Technology-based innovation 
18	Environmental
19	Data & information management
\.


--
-- Data for Name: mst_df4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df4 (id, dimension) FROM stdin;
1	Frustration between different IT entities across the organization because of a perception of low contribution to business value
2	Frustration between business departments (i.e., the IT customer) and the IT department because of failed initiatives or a perception of low contribution to business value
3	Significant IT-related incidents, such as data loss, security breaches, project failure and application errors, linked to IT
4	Service delivery problems by the IT outsourcer(s)
5	Failures to meet IT-related regulatory or contractual requirements
6	Regular audit findings or other assessment reports about poor IT performance or reported IT quality or service problems
7	Substantial hidden and rogue IT spending, that is, IT spending by user departments outside the control of the normal IT investment decision mechanisms and approved budgets
8	Duplications or overlaps between various initiatives or other forms of wasted resources
9	Insufficient IT resources, staff with inadequate skills or staff burnout / dissatisfaction
10	 IT-enabled changes or projects frequently failing to meet business needs and delivered late or over budget
11	Reluctance by board members, executives or senior management to engage with IT, or a lack of committed business sponsorship for IT
12	Complex IT operating model and/or unclear decision mechanisms for IT-related decisions
13	Excessively high cost of IT
14	Obstructed or failed implementation of new initiatives or innovations caused by the current IT architecture and systems
15	Gap between business and technical knowledge, which leads to business  users and information and/or technology specialists speaking different languages
16	Regular issues with data quality and integration of data across various sources
17	High level of end-user computing, creating (among other problems) a lack of oversight and quality control over the applications that are being developed and put in operation
18	Business departments implementing their own information solutions with little or no involvement of the enterprise IT department
19	Ignorance of and/or noncompliance with privacy regulations
20	Inability to exploit new technologies or innovate using I&T
\.


--
-- Data for Name: mst_df5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df5 (id, dimension, explanation) FROM stdin;
1	High	The enterprise is operating under what are considered normal threat levels.
2	Normal	Due to its geopolitical situation, industry sector or particular profile, the enterprise is operating in a high-threat environment.
\.


--
-- Data for Name: mst_df6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df6 (id, dimension, explanation) FROM stdin;
1	High	The enterprise is subject to higher-than-average compliance requirements, most often related to industry sector or geopolitical conditions.
2	Normal	The enterprise is subject to a set of regular compliance requirements that are common across different industries.
3	Low	The enterprise is subject to a minimal set of regular compliance requirements that are lower than average
\.


--
-- Data for Name: mst_df7; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df7 (id, dimension, explanation) FROM stdin;
1	Support	IT is not crucial for the running and continuity of the business process\r\nand services, nor for their innovation.
2	Factory	When IT fails, there is an immediate impact on the running and continuity\r\nof the business processes and services. However, IT is not seen as a\r\ndriver for innovating business processes and services.
3	Turnaround	IT is seen as a driver for innovating business processes and services. At\r\nthis moment, however, there is not a critical dependency on IT for the\r\ncurrent running and continuity of the business processes and services.
4	Strategic	IT is critical for both running and innovating the organization’s business\r\nprocesses and services.
\.


--
-- Data for Name: mst_df8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df8 (id, dimension, explanation) FROM stdin;
1	Outsourcing	The enterprise calls upon the services of a third party to provide IT services
2	Cloud	The enterprise maximizes the use of the cloud for providing IT services to its users.
3	Insourced	The enterprise provides for its own IT staff and services.
\.


--
-- Data for Name: mst_df9; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_df9 (id, dimension, explanation) FROM stdin;
1	Agile	The enterprise uses Agile development working methods for its software development.
2	DevOps	The enterprise uses DevOps working methods for software building, deployment and operations.
3	Traditional	The enterprise uses a more classic approach to software development waterfall and separates software development from operations.
\.


--
-- Data for Name: mst_gmo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mst_gmo (id, id_gmo, dimension, explanation) FROM stdin;
1	EDM01	Ensured  Governance Framework Setting & Maintenance	Provide a consistent approach, integrated and aligned with the enterprise governance approach. I&T-related decisions must be made in line with the enterprise’s strategies and objectives and desired value is realized. To that end, ensure that I&T-related processes are overseen effectively and transparently; compliance with legal, contractual and regulatory requirements is confirmed; and the governance requirements for board members are met
2	EDM02	Ensured Benefits Delivery	Secure optimal value from I&T-enabled initiatives, services and assets; cost-effective delivery of solutions and services; and a reliable and accurate picture of costs and likely benefits so that business needs are supported effectively and efficiently.
3	EDM03	Ensured Risk Optimization	Ensure that I&T-related enterprise risk does not exceed the enterprise’s risk appetite and risk tolerance, the impact of I&T risk to enterprise value is identified and managed, and the potential for compliance failures is minimized.
4	EDM04	Ensured Resource Optimization	Ensure that the resource needs of the enterprise are met in the optimal manner, I&T costs are optimized, and there is an increased likelihood of benefit realization and readiness for future change.
5	EDM05	Ensured Stakeholder Engagement	Ensure that stakeholders are supportive of the I&T strategy and road map, communication to stakeholders is effective and timely, and the basis for reporting is established to increase performance. Identify areas for improvement, and confirm that I&T-related objectives and strategies are in line with the enterprise’s strategy
6	APO01	Managed I&T Management Framework	Implement a consistent management approach for enterprise governance requirements to be met, covering governance components such as management processes; organizational structures; roles and responsibilities; reliable and repeatable activities; information items; policies and procedures; skills and competencies; culture and behavior; and services, infrastructure and applications
7	APO02	Managed Strategy	Support the digital transformation strategy of the organization and deliver the desired value through a road map of incremental changes. Use a holistic I&T approach, ensuring that each initiative is clearly connected to an overarching strategy. Enable change in all different aspects of the organization, from channels and processes to data, culture, skills, operating model and incentives
8	APO03	Managed Enterprise Architecture	Represent the different building blocks that make up the enterprise and its interrelationships, as well as the principles guiding their design and evolution over time, to enable a standard, responsive and efficient delivery of operational and strategic objectives.
9	APO04	Managed Innovation	Achieve competitive advantage, business innovation, improved customer experience, and improved operational effectiveness and efficiency by exploiting I&T developments and emerging technologies.
10	APO05	Managed Portfolio	Optimize the performance of the overall portfolio of programs in response to individual program, product and service performance and changing enterprise priorities and demand.
11	APO06	Managed Budget & Costs	Foster a partnership between IT and enterprise stakeholders to enable the effective and efficient use of I&T-related resources and provide transparency and accountability of the cost and business value of solutions and services. Enable the enterprise to make informed decisions regarding the use of I&T solutions and services.
12	APO07	Managed Human Resources	Optimize human-resources capabilities to meet enterprise objectives.
13	APO08	Managed Relationships	Enable the right knowledge, skills and behaviors to create improved outcomes, increased confidence, mutual trust and effective use of resources that stimulate a productive relationship with business stakeholders.
14	APO09	Managed Service Agreements	Ensure that I&T products, services and service levels meet current and future enterprise needs
15	APO10	Managed Vendors	Optimize available I&T capabilities to support the I&T strategy and road map, minimize the risk associated with nonperforming or noncompliant vendors, and ensure competitive pricing.
16	APO11	Managed Quality	Ensure consistent delivery of technology solutions and services to meet the quality requirements of the enterprise and satisfy stakeholder needs
17	APO12	Managed Risk	Integrate the management of I&T-related enterprise risk with overall enterprise risk management (ERM) and balance the costs and benefits of managing I&T-related enterprise risk.
18	APO13	Managed Security	Keep the impact and occurrence of information security incidents within the enterprise’s risk appetite levels.
19	APO14	Managed Data	Ensure effective utilization of the critical data assets to achieve enterprise goals and objectives.
20	BAI01	Managed Programs	Realize desired business value and reduce the risk of unexpected delays, costs and value erosion. To do so, improve communications to and involvement of business and end users, ensure the value and quality of program deliverables and follow-up of projects within the programs, and maximize program contribution to the investment portfolio.
21	BAI02	Managed Requirements Definition	Create optimal solutions that meet enterprise needs while minimizing risk.
22	BAI03	Managed Solutions Identification & Build	Ensure agile and scalable delivery of digital products and services. Establish timely and cost-effective solutions (technology, business processes and workflows) capable of supporting enterprise strategic and operational objectives.
23	BAI04	Managed Availability & Capacity	Maintain service availability, efficient management of resources and optimization of system performance through prediction of future performance and capacity requirements.
24	BAI05	Managed Organizational Change	Prepare and commit stakeholders for business change and reduce the risk of failure.
25	BAI06	Managed IT Changes	Enable fast and reliable delivery of change to the business. Mitigate the risk of negatively impacting the stability or integrity of the changed environment.
26	BAI07	Managed IT Change Acceptance and Transitioning	Implement solutions safely and in line with the agreed expectations and outcomes.
27	BAI08	Managed Knowledge	Provide the knowledge and management information required to support all staff in the governance and management of enterprise I&T and allow for informed decision making.
28	BAI09	Managed Assets	Account for all I&T assets and optimize the value provided by their use.
29	BAI10	Managed Configuration	Provide sufficient information about service assets to enable the service to be effectively managed. Assess the impact of changes and deal with service incidents
30	BAI11	Managed Projects	Realize defined project outcomes and reduce the risk of unexpected delays, costs and value erosion by improving communications to and involvement of business and end users. Ensure the value and quality of project deliverables and maximize their contribution to the defined programs and investment portfolio.
31	DSS01	Managed Operations	Deliver I&T operational product and service outcomes as planned
32	DSS02	Managed Service Requests & Incidents	Achieve increased productivity and minimize disruptions through quick resolution of user queries and incidents. Assess the impact of changes and deal with service incidents. Resolve user requests and restore service in response to incidents.
33	DSS03	Managed Problems	Increase availability, improve service levels, reduce costs, improve customer convenience and satisfaction by reducing the number of operational problems, and identify root causes as part of problem resolution.
34	DSS04	Managed Continuity	Adapt rapidly, continue business operations, and maintain availability of resources and information at a level acceptable to the enterprise in the event of a significant disruption (e.g., threats, opportunities, demands).
35	DSS05	Managed Security Services	Minimize the business impact of operational information security vulnerabilities and incidents.
36	DSS06	Managed Business Process Controls	Maintain information integrity and the security of information assets handled within business processes in the enterprise or its outsourced operation
37	MEA01	Managed Performance and Conformance Monitoring	Provide transparency of performance and conformance and drive achievement of goals.
38	MEA02	Managed System of Internal Control	Obtain transparency for key stakeholders on the adequacy of the system of internal controls and thus provide trust in operations, confidence in the achievement of enterprise objectives and an adequate understanding of residual risk
39	MEA03	Managed Compliance with External Requirements	Ensure that the enterprise is compliant with all applicable external requirements
40	MEA04	Managed Assurance	Enable the organization to design and develop efficient and effective assurance initiatives, providing guidance on planning, scoping, executing and following up on assurance reviews, using a road map based on well-accepted assurance approaches.
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, jabatan, fungsi_jabatan, atasan, email_verified_at, password, remember_token, created_at, updated_at, role) FROM stdin;
8	Kyygung	rizkyagungra4321@gmail.com	Staff IT	Staff IT	Pak Aji	\N	$2y$12$ezkVcra29hAe7Aot7Ics5.FhwsGGodGe3XGb.bIGrdyEam621YzGG	\N	2024-02-05 08:13:53	2024-02-05 08:13:53	\N
1	Rezky Agung Ardiansyah	rizkyagungra1234@gmail.com	Anak KP	Cobit Eksplorer	pak aji	\N	$2y$12$LinHgu.jM4F1qWB/XidkPe2wcr44bzj5vGs3tSjlT4u2OaMM/wcce	\N	2024-01-29 07:03:58	2024-01-29 07:03:58	superadmin
9	Rezky Agung Ardiansyah	rizky123@gmail.com	Anak KP	Cobit Eksplorer	Pak Aji	\N	$2y$12$GDhrRNwWpoDCWgBqEP0Xyu6ov9MyyDL70EXZZD/KBjJsLyzeLeZn2	\N	2024-02-08 04:25:04	2024-02-08 04:25:04	\N
\.


--
-- Data for Name: weight; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.weight (id, step_2_weight, step_3_weight, updated_at) FROM stdin;
1	1	3	2024-02-08 04:38:32
2	1	2	2024-02-08 04:38:32
3	4	1	2024-02-08 04:38:32
4	2	2	2024-02-08 04:38:32
5	1	6	2024-02-08 04:38:32
6	1	1	2024-02-08 04:38:32
\.


--
-- Name: df10_imp_id_df10_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df10_imp_id_df10_seq', 3, true);


--
-- Name: df10_imp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df10_imp_id_seq', 15, true);


--
-- Name: df10_map_df10_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df10_map_df10_id_seq', 1, false);


--
-- Name: df10_map_gmo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df10_map_gmo_id_seq', 1, false);


--
-- Name: df1_imp_id_df1_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df1_imp_id_df1_seq', 4, true);


--
-- Name: df1_imp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df1_imp_id_seq', 46, true);


--
-- Name: df1_map_df1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df1_map_df1_id_seq', 1, false);


--
-- Name: df1_map_gmo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df1_map_gmo_id_seq', 1, false);


--
-- Name: df2_imp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df2_imp_id_seq', 52, true);


--
-- Name: df2_map2_id_gmo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df2_map2_id_gmo_seq', 1, false);


--
-- Name: df3_imp_id_df3_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df3_imp_id_df3_seq', 19, true);


--
-- Name: df3_imp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df3_imp_id_seq', 95, true);


--
-- Name: df3_map_df3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df3_map_df3_id_seq', 1, false);


--
-- Name: df3_map_gmo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df3_map_gmo_id_seq', 1, false);


--
-- Name: df4_imp_id_df4_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df4_imp_id_df4_seq', 20, true);


--
-- Name: df4_imp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df4_imp_id_seq', 100, true);


--
-- Name: df4_map_df4_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df4_map_df4_id_seq', 1, false);


--
-- Name: df4_map_gmo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df4_map_gmo_id_seq', 1, false);


--
-- Name: df5_imp_id_df5_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df5_imp_id_df5_seq', 2, true);


--
-- Name: df5_imp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df5_imp_id_seq', 30, true);


--
-- Name: df5_map_df5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df5_map_df5_id_seq', 1, false);


--
-- Name: df5_map_gmo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df5_map_gmo_id_seq', 1, false);


--
-- Name: df6_imp_id_df6_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df6_imp_id_df6_seq', 3, true);


--
-- Name: df6_imp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df6_imp_id_seq', 21, true);


--
-- Name: df6_map_df6_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df6_map_df6_id_seq', 1, false);


--
-- Name: df6_map_gmo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df6_map_gmo_id_seq', 1, false);


--
-- Name: df7_imp_id_df7_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df7_imp_id_df7_seq', 4, true);


--
-- Name: df7_imp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df7_imp_id_seq', 32, true);


--
-- Name: df7_map_df7_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df7_map_df7_id_seq', 1, false);


--
-- Name: df7_map_gmo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df7_map_gmo_id_seq', 1, false);


--
-- Name: df8_imp_id_df8_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df8_imp_id_df8_seq', 3, true);


--
-- Name: df8_imp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df8_imp_id_seq', 27, true);


--
-- Name: df8_map_df8_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df8_map_df8_id_seq', 1, false);


--
-- Name: df8_map_gmo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df8_map_gmo_id_seq', 1, false);


--
-- Name: df9_imp_id_df9_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df9_imp_id_df9_seq', 3, true);


--
-- Name: df9_imp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df9_imp_id_seq', 15, true);


--
-- Name: df9_map_df9_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df9_map_df9_id_seq', 1, false);


--
-- Name: df9_map_gmo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.df9_map_gmo_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);


--
-- Name: mst_df10_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mst_df10_id_seq', 1, false);


--
-- Name: mst_df1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mst_df1_id_seq', 1, false);


--
-- Name: mst_df3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mst_df3_id_seq', 1, false);


--
-- Name: mst_df4_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mst_df4_id_seq', 1, false);


--
-- Name: mst_df5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mst_df5_id_seq', 1, false);


--
-- Name: mst_df6_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mst_df6_id_seq', 1, false);


--
-- Name: mst_df7_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mst_df7_id_seq', 1, false);


--
-- Name: mst_df8_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mst_df8_id_seq', 1, false);


--
-- Name: mst_df9_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mst_df9_id_seq', 1, false);


--
-- Name: mst_gmo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mst_gmo_id_seq', 1, false);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 9, true);


--
-- Name: weight_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.weight_id_seq', 6, true);


--
-- Name: df10_imp df10_imp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df10_imp
    ADD CONSTRAINT df10_imp_pkey PRIMARY KEY (id);


--
-- Name: df1_imp df1_imp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df1_imp
    ADD CONSTRAINT df1_imp_pkey PRIMARY KEY (id);


--
-- Name: df2_imp df2_imp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df2_imp
    ADD CONSTRAINT df2_imp_pkey PRIMARY KEY (id);


--
-- Name: df3_imp df3_imp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df3_imp
    ADD CONSTRAINT df3_imp_pkey PRIMARY KEY (id);


--
-- Name: df4_imp df4_imp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df4_imp
    ADD CONSTRAINT df4_imp_pkey PRIMARY KEY (id);


--
-- Name: df5_imp df5_imp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df5_imp
    ADD CONSTRAINT df5_imp_pkey PRIMARY KEY (id);


--
-- Name: df6_imp df6_imp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df6_imp
    ADD CONSTRAINT df6_imp_pkey PRIMARY KEY (id);


--
-- Name: df7_imp df7_imp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df7_imp
    ADD CONSTRAINT df7_imp_pkey PRIMARY KEY (id);


--
-- Name: df8_imp df8_imp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df8_imp
    ADD CONSTRAINT df8_imp_pkey PRIMARY KEY (id);


--
-- Name: df9_imp df9_imp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df9_imp
    ADD CONSTRAINT df9_imp_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: mst_df10 mst_df10_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df10
    ADD CONSTRAINT mst_df10_pkey PRIMARY KEY (id);


--
-- Name: mst_df1 mst_df1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df1
    ADD CONSTRAINT mst_df1_pkey PRIMARY KEY (id);


--
-- Name: mst_df2_ag mst_df2_ag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df2_ag
    ADD CONSTRAINT mst_df2_ag_pkey PRIMARY KEY (id_ag);


--
-- Name: mst_df2_eg mst_df2_eg_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df2_eg
    ADD CONSTRAINT mst_df2_eg_pkey PRIMARY KEY (id_eg);


--
-- Name: mst_df3 mst_df3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df3
    ADD CONSTRAINT mst_df3_pkey PRIMARY KEY (id);


--
-- Name: mst_df4 mst_df4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df4
    ADD CONSTRAINT mst_df4_pkey PRIMARY KEY (id);


--
-- Name: mst_df5 mst_df5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df5
    ADD CONSTRAINT mst_df5_pkey PRIMARY KEY (id);


--
-- Name: mst_df6 mst_df6_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df6
    ADD CONSTRAINT mst_df6_pkey PRIMARY KEY (id);


--
-- Name: mst_df7 mst_df7_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df7
    ADD CONSTRAINT mst_df7_pkey PRIMARY KEY (id);


--
-- Name: mst_df8 mst_df8_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df8
    ADD CONSTRAINT mst_df8_pkey PRIMARY KEY (id);


--
-- Name: mst_df9 mst_df9_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mst_df9
    ADD CONSTRAINT mst_df9_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: weight weight_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weight
    ADD CONSTRAINT weight_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: df10_imp df10_imp_id_df10_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df10_imp
    ADD CONSTRAINT df10_imp_id_df10_fkey FOREIGN KEY (id_df10) REFERENCES public.mst_df10(id);


--
-- Name: df10_imp df10_imp_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df10_imp
    ADD CONSTRAINT df10_imp_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: df1_imp df1_imp_id_df1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df1_imp
    ADD CONSTRAINT df1_imp_id_df1_fkey FOREIGN KEY (id_df1) REFERENCES public.mst_df1(id);


--
-- Name: df1_imp df1_imp_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df1_imp
    ADD CONSTRAINT df1_imp_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: df2_imp df2_imp_id_df2_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df2_imp
    ADD CONSTRAINT df2_imp_id_df2_fkey FOREIGN KEY (id_df2) REFERENCES public.mst_df2_eg(id_eg);


--
-- Name: df2_imp df2_imp_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df2_imp
    ADD CONSTRAINT df2_imp_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: df3_imp df3_imp_id_df3_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df3_imp
    ADD CONSTRAINT df3_imp_id_df3_fkey FOREIGN KEY (id_df3) REFERENCES public.mst_df3(id);


--
-- Name: df3_imp df3_imp_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df3_imp
    ADD CONSTRAINT df3_imp_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: df4_imp df4_imp_id_df4_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df4_imp
    ADD CONSTRAINT df4_imp_id_df4_fkey FOREIGN KEY (id_df4) REFERENCES public.mst_df4(id);


--
-- Name: df4_imp df4_imp_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df4_imp
    ADD CONSTRAINT df4_imp_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: df5_imp df5_imp_id_df5_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df5_imp
    ADD CONSTRAINT df5_imp_id_df5_fkey FOREIGN KEY (id_df5) REFERENCES public.mst_df5(id);


--
-- Name: df5_imp df5_imp_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df5_imp
    ADD CONSTRAINT df5_imp_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: df6_imp df6_imp_id_df6_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df6_imp
    ADD CONSTRAINT df6_imp_id_df6_fkey FOREIGN KEY (id_df6) REFERENCES public.mst_df6(id);


--
-- Name: df6_imp df6_imp_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df6_imp
    ADD CONSTRAINT df6_imp_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: df7_imp df7_imp_id_df7_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df7_imp
    ADD CONSTRAINT df7_imp_id_df7_fkey FOREIGN KEY (id_df7) REFERENCES public.mst_df7(id);


--
-- Name: df7_imp df7_imp_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df7_imp
    ADD CONSTRAINT df7_imp_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: df8_imp df8_imp_id_df8_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df8_imp
    ADD CONSTRAINT df8_imp_id_df8_fkey FOREIGN KEY (id_df8) REFERENCES public.mst_df8(id);


--
-- Name: df8_imp df8_imp_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df8_imp
    ADD CONSTRAINT df8_imp_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: df9_imp df9_imp_id_df9_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df9_imp
    ADD CONSTRAINT df9_imp_id_df9_fkey FOREIGN KEY (id_df9) REFERENCES public.mst_df9(id);


--
-- Name: df9_imp df9_imp_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.df9_imp
    ADD CONSTRAINT df9_imp_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--


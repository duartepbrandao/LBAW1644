--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.pedido_log DROP CONSTRAINT pedido_log_id_pedido_fkey;
ALTER TABLE ONLY public.pedido_log DROP CONSTRAINT pedido_log_id_gestor_fkey;
ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_id_utilizador_fkey;
ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_id_item_fkey;
ALTER TABLE ONLY public.operador DROP CONSTRAINT operador_id_utilizador_fkey;
ALTER TABLE ONLY public.notificacao DROP CONSTRAINT notificacao_id_utilizador_fkey;
ALTER TABLE ONLY public.modelo_log DROP CONSTRAINT modelo_log_id_modelo_fkey;
ALTER TABLE ONLY public.modelo DROP CONSTRAINT modelo_id_categoria_fkey;
ALTER TABLE ONLY public.item_log DROP CONSTRAINT item_log_id_item_fkey;
ALTER TABLE ONLY public.item_log DROP CONSTRAINT item_log_id_gestor_fkey;
ALTER TABLE ONLY public.item DROP CONSTRAINT item_id_modelo_fkey;
ALTER TABLE ONLY public.gestor DROP CONSTRAINT gestor_id_utilizador_fkey;
ALTER TABLE ONLY public.categoria_log DROP CONSTRAINT categoria_log_id_categoria_fkey;
ALTER TABLE ONLY public.categoria_gestor DROP CONSTRAINT categoria_gestor_id_gestor_fkey;
ALTER TABLE ONLY public.categoria_gestor DROP CONSTRAINT categoria_gestor_id_categoria_fkey;
ALTER TABLE ONLY public.ban_log DROP CONSTRAINT ban_log_id_ban_fkey;
ALTER TABLE ONLY public.ban DROP CONSTRAINT ban_id_utilizador_fkey;
ALTER TABLE ONLY public.ban DROP CONSTRAINT ban_id_admin_fkey;
DROP TRIGGER create_operador_gestor ON public.gestor;
DROP TRIGGER create_gestor_admin ON public.administrador;
ALTER TABLE ONLY public.utilizador DROP CONSTRAINT utilizador_pkey;
ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
ALTER TABLE ONLY public.pedido_log DROP CONSTRAINT pedido_log_pkey;
ALTER TABLE ONLY public.notificacao DROP CONSTRAINT notificacao_pkey;
ALTER TABLE ONLY public.modelo DROP CONSTRAINT modelo_pkey;
ALTER TABLE ONLY public.modelo_log DROP CONSTRAINT modelo_log_pkey;
ALTER TABLE ONLY public.item DROP CONSTRAINT item_pkey;
ALTER TABLE ONLY public.item_log DROP CONSTRAINT item_log_pkey;
ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
ALTER TABLE ONLY public.categoria_log DROP CONSTRAINT categoria_log_pkey;
ALTER TABLE ONLY public.categoria_gestor DROP CONSTRAINT categoria_gestor_pkey;
ALTER TABLE ONLY public.ban DROP CONSTRAINT ban_pkey;
ALTER TABLE ONLY public.ban_log DROP CONSTRAINT ban_log_pkey;
ALTER TABLE ONLY public.gestor DROP CONSTRAINT "Gestor_idUtilizador_key";
ALTER TABLE ONLY public.administrador DROP CONSTRAINT "Administrador_fk_idUtilizador_key";
ALTER TABLE public.utilizador ALTER COLUMN id_utilizador DROP DEFAULT;
ALTER TABLE public.pedido_log ALTER COLUMN id_pedido_log DROP DEFAULT;
ALTER TABLE public.pedido ALTER COLUMN id_pedido DROP DEFAULT;
ALTER TABLE public.notificacao ALTER COLUMN id_notificacao DROP DEFAULT;
ALTER TABLE public.modelo_log ALTER COLUMN id_modelo_log DROP DEFAULT;
ALTER TABLE public.modelo ALTER COLUMN id_modelo DROP DEFAULT;
ALTER TABLE public.item_log ALTER COLUMN id_item_log DROP DEFAULT;
ALTER TABLE public.item ALTER COLUMN id_item DROP DEFAULT;
ALTER TABLE public.categoria_log ALTER COLUMN id_categoria_log DROP DEFAULT;
ALTER TABLE public.categoria ALTER COLUMN id_categoria DROP DEFAULT;
ALTER TABLE public.ban_log ALTER COLUMN id_ban_log DROP DEFAULT;
ALTER TABLE public.ban ALTER COLUMN id_ban DROP DEFAULT;
DROP VIEW public.ver_todos_users;
DROP VIEW public.ver_todos_movimentos_hoje;
DROP VIEW public.ver_todos_modelos;
DROP VIEW public.ver_reservados;
DROP VIEW public.ver_requisitados;
DROP VIEW public.ver_novos_utilizadores;
DROP VIEW public.ver_modelos_disponiveis;
DROP VIEW public.ver_modelos_categoria;
DROP SEQUENCE public.utilizador_id_utilizador_seq;
DROP TABLE public.utilizador;
DROP SEQUENCE public.pedido_log_id_pedido_log_seq;
DROP TABLE public.pedido_log;
DROP SEQUENCE public.pedido_id_pedido_seq;
DROP TABLE public.pedido;
DROP TABLE public.operador;
DROP SEQUENCE public.notificacao_id_notificacao_seq;
DROP TABLE public.notificacao;
DROP SEQUENCE public.modelo_log_id_modelo_log_seq;
DROP TABLE public.modelo_log;
DROP SEQUENCE public.modelo_id_modelo_seq;
DROP TABLE public.modelo;
DROP SEQUENCE public.item_log_id_item_log_seq;
DROP TABLE public.item_log;
DROP SEQUENCE public.item_id_item_seq;
DROP TABLE public.item;
DROP TABLE public.gestor;
DROP SEQUENCE public.categoria_log_id_categoria_log_seq;
DROP TABLE public.categoria_log;
DROP SEQUENCE public.categoria_id_categoria_seq;
DROP TABLE public.categoria_gestor;
DROP TABLE public.categoria;
DROP SEQUENCE public.ban_log_id_ban_log_seq;
DROP TABLE public.ban_log;
DROP SEQUENCE public.ban_id_ban_seq;
DROP TABLE public.ban;
DROP SEQUENCE public."Administrador_idUtilizador_seq";
DROP TABLE public.administrador;
DROP FUNCTION public.add_novo_operador_gestor();
DROP FUNCTION public.add_novo_gestor_admin();
DROP TYPE public.estadopedido;
DROP TYPE public.estadoitem;
DROP TYPE public.contas;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: lbaw1644
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO lbaw1644;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: lbaw1644
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: contas; Type: TYPE; Schema: public; Owner: lbaw1644
--

CREATE TYPE contas AS ENUM (
    'aluno',
    'docente',
    'funcionário',
    'novo_utilizador'
);


ALTER TYPE contas OWNER TO lbaw1644;

--
-- Name: estadoitem; Type: TYPE; Schema: public; Owner: lbaw1644
--

CREATE TYPE estadoitem AS ENUM (
    'disponível',
    'reparação',
    'indisponível'
);


ALTER TYPE estadoitem OWNER TO lbaw1644;

--
-- Name: estadopedido; Type: TYPE; Schema: public; Owner: lbaw1644
--

CREATE TYPE estadopedido AS ENUM (
    'emCurso',
    'rejeitado',
    'atrasado',
    'terminado',
    'aguardaResposta',
    'aguardaRecolha',
    'aceite'
);


ALTER TYPE estadopedido OWNER TO lbaw1644;

--
-- Name: add_novo_gestor_admin(); Type: FUNCTION; Schema: public; Owner: lbaw1644
--

CREATE FUNCTION add_novo_gestor_admin() RETURNS trigger
    LANGUAGE plpgsql
    AS $$BEGIN
    INSERT INTO gestor VALUES (NEW.fk_id_utilizador);
END;$$;


ALTER FUNCTION public.add_novo_gestor_admin() OWNER TO lbaw1644;

--
-- Name: add_novo_operador_gestor(); Type: FUNCTION; Schema: public; Owner: lbaw1644
--

CREATE FUNCTION add_novo_operador_gestor() RETURNS trigger
    LANGUAGE plpgsql
    AS $$BEGIN
    INSERT INTO operador VALUES (NEW.id_utilizador);
END;$$;


ALTER FUNCTION public.add_novo_operador_gestor() OWNER TO lbaw1644;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: administrador; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE administrador (
    fk_id_utilizador integer NOT NULL
);


ALTER TABLE administrador OWNER TO lbaw1644;

--
-- Name: Administrador_idUtilizador_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE "Administrador_idUtilizador_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Administrador_idUtilizador_seq" OWNER TO lbaw1644;

--
-- Name: Administrador_idUtilizador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE "Administrador_idUtilizador_seq" OWNED BY administrador.fk_id_utilizador;


--
-- Name: ban; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE ban (
    id_ban integer NOT NULL,
    data_fim date,
    id_utilizador integer NOT NULL,
    id_admin integer NOT NULL
);


ALTER TABLE ban OWNER TO lbaw1644;

--
-- Name: ban_id_ban_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE ban_id_ban_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ban_id_ban_seq OWNER TO lbaw1644;

--
-- Name: ban_id_ban_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE ban_id_ban_seq OWNED BY ban.id_ban;


--
-- Name: ban_log; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE ban_log (
    id_ban_log integer NOT NULL,
    data date NOT NULL,
    descricao character varying,
    id_ban integer NOT NULL
);


ALTER TABLE ban_log OWNER TO lbaw1644;

--
-- Name: ban_log_id_ban_log_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE ban_log_id_ban_log_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ban_log_id_ban_log_seq OWNER TO lbaw1644;

--
-- Name: ban_log_id_ban_log_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE ban_log_id_ban_log_seq OWNED BY ban_log.id_ban_log;


--
-- Name: categoria; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE categoria (
    id_categoria integer NOT NULL,
    nome_categoria character varying NOT NULL
);


ALTER TABLE categoria OWNER TO lbaw1644;

--
-- Name: categoria_gestor; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE categoria_gestor (
    id_gestor integer NOT NULL,
    id_categoria integer NOT NULL
);


ALTER TABLE categoria_gestor OWNER TO lbaw1644;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE categoria_id_categoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categoria_id_categoria_seq OWNER TO lbaw1644;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE categoria_id_categoria_seq OWNED BY categoria.id_categoria;


--
-- Name: categoria_log; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE categoria_log (
    id_categoria_log integer NOT NULL,
    data date NOT NULL,
    descricao character varying,
    id_categoria integer NOT NULL
);


ALTER TABLE categoria_log OWNER TO lbaw1644;

--
-- Name: categoria_log_id_categoria_log_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE categoria_log_id_categoria_log_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categoria_log_id_categoria_log_seq OWNER TO lbaw1644;

--
-- Name: categoria_log_id_categoria_log_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE categoria_log_id_categoria_log_seq OWNED BY categoria_log.id_categoria_log;


--
-- Name: gestor; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE gestor (
    id_utilizador integer NOT NULL
);


ALTER TABLE gestor OWNER TO lbaw1644;

--
-- Name: item; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE item (
    id_item integer NOT NULL,
    "estadoItem" estadoitem DEFAULT 'disponível'::estadoitem NOT NULL,
    id_modelo integer NOT NULL
);


ALTER TABLE item OWNER TO lbaw1644;

--
-- Name: item_id_item_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE item_id_item_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE item_id_item_seq OWNER TO lbaw1644;

--
-- Name: item_id_item_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE item_id_item_seq OWNED BY item.id_item;


--
-- Name: item_log; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE item_log (
    id_item_log integer NOT NULL,
    data date NOT NULL,
    descricao character varying,
    id_item integer NOT NULL,
    id_gestor integer NOT NULL
);


ALTER TABLE item_log OWNER TO lbaw1644;

--
-- Name: item_log_id_item_log_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE item_log_id_item_log_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE item_log_id_item_log_seq OWNER TO lbaw1644;

--
-- Name: item_log_id_item_log_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE item_log_id_item_log_seq OWNED BY item_log.id_item_log;


--
-- Name: modelo; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE modelo (
    nome character varying NOT NULL,
    foto character varying NOT NULL,
    descricao character varying NOT NULL,
    localizacao character varying NOT NULL,
    id_modelo integer NOT NULL,
    id_categoria integer NOT NULL,
    quantidade integer DEFAULT 0 NOT NULL
);


ALTER TABLE modelo OWNER TO lbaw1644;

--
-- Name: modelo_id_modelo_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE modelo_id_modelo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE modelo_id_modelo_seq OWNER TO lbaw1644;

--
-- Name: modelo_id_modelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE modelo_id_modelo_seq OWNED BY modelo.id_modelo;


--
-- Name: modelo_log; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE modelo_log (
    id_modelo_log integer NOT NULL,
    data date NOT NULL,
    descricao character varying,
    id_modelo integer NOT NULL
);


ALTER TABLE modelo_log OWNER TO lbaw1644;

--
-- Name: modelo_log_id_modelo_log_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE modelo_log_id_modelo_log_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE modelo_log_id_modelo_log_seq OWNER TO lbaw1644;

--
-- Name: modelo_log_id_modelo_log_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE modelo_log_id_modelo_log_seq OWNED BY modelo_log.id_modelo_log;


--
-- Name: notificacao; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE notificacao (
    id_notificacao integer NOT NULL,
    lida integer NOT NULL,
    informacao character varying,
    id_utilizador integer NOT NULL
);


ALTER TABLE notificacao OWNER TO lbaw1644;

--
-- Name: notificacao_id_notificacao_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE notificacao_id_notificacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notificacao_id_notificacao_seq OWNER TO lbaw1644;

--
-- Name: notificacao_id_notificacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE notificacao_id_notificacao_seq OWNED BY notificacao.id_notificacao;


--
-- Name: operador; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE operador (
    id_utilizador integer NOT NULL
);


ALTER TABLE operador OWNER TO lbaw1644;

--
-- Name: pedido; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE pedido (
    id_pedido integer NOT NULL,
    data_inicio date NOT NULL,
    data_fim date NOT NULL,
    estado_pedido estadopedido DEFAULT 'aguardaResposta'::estadopedido NOT NULL,
    id_utilizador integer NOT NULL,
    id_item integer NOT NULL
);


ALTER TABLE pedido OWNER TO lbaw1644;

--
-- Name: pedido_id_pedido_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE pedido_id_pedido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pedido_id_pedido_seq OWNER TO lbaw1644;

--
-- Name: pedido_id_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE pedido_id_pedido_seq OWNED BY pedido.id_pedido;


--
-- Name: pedido_log; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE pedido_log (
    id_pedido_log integer NOT NULL,
    data date NOT NULL,
    descricao character varying,
    id_pedido integer NOT NULL,
    id_gestor integer
);


ALTER TABLE pedido_log OWNER TO lbaw1644;

--
-- Name: pedido_log_id_pedido_log_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE pedido_log_id_pedido_log_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pedido_log_id_pedido_log_seq OWNER TO lbaw1644;

--
-- Name: pedido_log_id_pedido_log_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE pedido_log_id_pedido_log_seq OWNED BY pedido_log.id_pedido_log;


--
-- Name: utilizador; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE utilizador (
    id_utilizador integer NOT NULL,
    nome character varying,
    email character varying,
    password character varying,
    foto character varying,
    estatuto contas
);


ALTER TABLE utilizador OWNER TO lbaw1644;

--
-- Name: utilizador_id_utilizador_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE utilizador_id_utilizador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utilizador_id_utilizador_seq OWNER TO lbaw1644;

--
-- Name: utilizador_id_utilizador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE utilizador_id_utilizador_seq OWNED BY utilizador.id_utilizador;


--
-- Name: ver_modelos_categoria; Type: VIEW; Schema: public; Owner: lbaw1644
--

CREATE VIEW ver_modelos_categoria AS
 SELECT modelo.quantidade,
    modelo.localizacao,
    modelo.id_categoria,
    modelo.foto,
    modelo.nome,
    modelo.descricao,
    modelo.id_modelo,
    categoria.nome_categoria
   FROM (modelo
     JOIN categoria ON ((modelo.id_categoria = categoria.id_categoria)));


ALTER TABLE ver_modelos_categoria OWNER TO lbaw1644;

--
-- Name: ver_modelos_disponiveis; Type: VIEW; Schema: public; Owner: lbaw1644
--

CREATE VIEW ver_modelos_disponiveis AS
 SELECT item.id_item,
    item.id_modelo,
    modelo.nome
   FROM (item
     JOIN modelo ON ((item.id_modelo = modelo.id_modelo)))
  WHERE (modelo.quantidade > 0);


ALTER TABLE ver_modelos_disponiveis OWNER TO lbaw1644;

--
-- Name: ver_novos_utilizadores; Type: VIEW; Schema: public; Owner: lbaw1644
--

CREATE VIEW ver_novos_utilizadores AS
 SELECT utilizador.id_utilizador,
    utilizador.nome,
    utilizador.email
   FROM utilizador
  WHERE (utilizador.estatuto = 'novo_utilizador'::contas);


ALTER TABLE ver_novos_utilizadores OWNER TO lbaw1644;

--
-- Name: ver_requisitados; Type: VIEW; Schema: public; Owner: lbaw1644
--

CREATE VIEW ver_requisitados AS
 SELECT item.id_item,
    item.id_modelo,
    modelo.nome AS nome_modelo,
    pedido.id_utilizador,
    utilizador.nome,
    pedido.data_fim,
    pedido.data_inicio
   FROM (((pedido
     JOIN utilizador ON ((pedido.id_utilizador = utilizador.id_utilizador)))
     JOIN item ON ((pedido.id_item = item.id_item)))
     JOIN modelo ON ((item.id_modelo = modelo.id_modelo)))
  WHERE ((pedido.data_fim > now()) AND (pedido.estado_pedido <> 'emCurso'::estadopedido));


ALTER TABLE ver_requisitados OWNER TO lbaw1644;

--
-- Name: ver_reservados; Type: VIEW; Schema: public; Owner: lbaw1644
--

CREATE VIEW ver_reservados AS
 SELECT item.id_item,
    item.id_modelo,
    modelo.nome,
    utilizador.nome AS nome_utilizador,
    pedido.data_fim,
    pedido.data_inicio
   FROM (((pedido
     JOIN utilizador ON ((pedido.id_utilizador = utilizador.id_utilizador)))
     JOIN item ON ((pedido.id_item = item.id_item)))
     JOIN modelo ON ((item.id_modelo = modelo.id_modelo)))
  WHERE ((pedido.data_inicio > now()) AND (pedido.estado_pedido = 'aceite'::estadopedido));


ALTER TABLE ver_reservados OWNER TO lbaw1644;

--
-- Name: ver_todos_modelos; Type: VIEW; Schema: public; Owner: lbaw1644
--

CREATE VIEW ver_todos_modelos AS
 SELECT modelo.nome,
    modelo.foto,
    modelo.descricao,
    modelo.localizacao,
    modelo.id_modelo,
    modelo.id_categoria,
    modelo.quantidade
   FROM modelo;


ALTER TABLE ver_todos_modelos OWNER TO lbaw1644;

--
-- Name: ver_todos_movimentos_hoje; Type: VIEW; Schema: public; Owner: lbaw1644
--

CREATE VIEW ver_todos_movimentos_hoje AS
 SELECT utilizador.id_utilizador,
    utilizador.nome,
    item.id_item,
    item.id_modelo,
    pedido.estado_pedido
   FROM (((pedido
     JOIN utilizador ON ((pedido.id_utilizador = utilizador.id_utilizador)))
     JOIN item ON ((pedido.id_item = item.id_item)))
     JOIN modelo ON ((item.id_modelo = modelo.id_modelo)))
  WHERE (((pedido.data_fim = ('now'::text)::date) AND ((pedido.estado_pedido = 'emCurso'::estadopedido) OR (pedido.estado_pedido = 'atrasado'::estadopedido))) OR ((pedido.data_inicio = ('now'::text)::date) AND (pedido.estado_pedido = 'aguardaRecolha'::estadopedido)));


ALTER TABLE ver_todos_movimentos_hoje OWNER TO lbaw1644;

--
-- Name: ver_todos_users; Type: VIEW; Schema: public; Owner: lbaw1644
--

CREATE VIEW ver_todos_users AS
 SELECT utilizador.id_utilizador,
    utilizador.nome,
    utilizador.estatuto
   FROM utilizador
  WHERE (utilizador.estatuto <> 'novo_utilizador'::contas);


ALTER TABLE ver_todos_users OWNER TO lbaw1644;

--
-- Name: id_ban; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY ban ALTER COLUMN id_ban SET DEFAULT nextval('ban_id_ban_seq'::regclass);


--
-- Name: id_ban_log; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY ban_log ALTER COLUMN id_ban_log SET DEFAULT nextval('ban_log_id_ban_log_seq'::regclass);


--
-- Name: id_categoria; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY categoria ALTER COLUMN id_categoria SET DEFAULT nextval('categoria_id_categoria_seq'::regclass);


--
-- Name: id_categoria_log; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY categoria_log ALTER COLUMN id_categoria_log SET DEFAULT nextval('categoria_log_id_categoria_log_seq'::regclass);


--
-- Name: id_item; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY item ALTER COLUMN id_item SET DEFAULT nextval('item_id_item_seq'::regclass);


--
-- Name: id_item_log; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY item_log ALTER COLUMN id_item_log SET DEFAULT nextval('item_log_id_item_log_seq'::regclass);


--
-- Name: id_modelo; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY modelo ALTER COLUMN id_modelo SET DEFAULT nextval('modelo_id_modelo_seq'::regclass);


--
-- Name: id_modelo_log; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY modelo_log ALTER COLUMN id_modelo_log SET DEFAULT nextval('modelo_log_id_modelo_log_seq'::regclass);


--
-- Name: id_notificacao; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY notificacao ALTER COLUMN id_notificacao SET DEFAULT nextval('notificacao_id_notificacao_seq'::regclass);


--
-- Name: id_pedido; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY pedido ALTER COLUMN id_pedido SET DEFAULT nextval('pedido_id_pedido_seq'::regclass);


--
-- Name: id_pedido_log; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY pedido_log ALTER COLUMN id_pedido_log SET DEFAULT nextval('pedido_log_id_pedido_log_seq'::regclass);


--
-- Name: id_utilizador; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY utilizador ALTER COLUMN id_utilizador SET DEFAULT nextval('utilizador_id_utilizador_seq'::regclass);


--
-- Name: Administrador_fk_idUtilizador_key; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY administrador
    ADD CONSTRAINT "Administrador_fk_idUtilizador_key" UNIQUE (fk_id_utilizador);


--
-- Name: Gestor_idUtilizador_key; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY gestor
    ADD CONSTRAINT "Gestor_idUtilizador_key" UNIQUE (id_utilizador);


--
-- Name: ban_log_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY ban_log
    ADD CONSTRAINT ban_log_pkey PRIMARY KEY (id_ban_log);


--
-- Name: ban_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY ban
    ADD CONSTRAINT ban_pkey PRIMARY KEY (id_ban);


--
-- Name: categoria_gestor_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY categoria_gestor
    ADD CONSTRAINT categoria_gestor_pkey PRIMARY KEY (id_gestor, id_categoria);


--
-- Name: categoria_log_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY categoria_log
    ADD CONSTRAINT categoria_log_pkey PRIMARY KEY (id_categoria_log);


--
-- Name: categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- Name: item_log_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY item_log
    ADD CONSTRAINT item_log_pkey PRIMARY KEY (id_item_log);


--
-- Name: item_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id_item);


--
-- Name: modelo_log_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY modelo_log
    ADD CONSTRAINT modelo_log_pkey PRIMARY KEY (id_modelo_log);


--
-- Name: modelo_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY modelo
    ADD CONSTRAINT modelo_pkey PRIMARY KEY (id_modelo);


--
-- Name: notificacao_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY notificacao
    ADD CONSTRAINT notificacao_pkey PRIMARY KEY (id_notificacao);


--
-- Name: pedido_log_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY pedido_log
    ADD CONSTRAINT pedido_log_pkey PRIMARY KEY (id_pedido_log);


--
-- Name: pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id_pedido);


--
-- Name: utilizador_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY utilizador
    ADD CONSTRAINT utilizador_pkey PRIMARY KEY (id_utilizador);


--
-- Name: create_gestor_admin; Type: TRIGGER; Schema: public; Owner: lbaw1644
--

CREATE TRIGGER create_gestor_admin BEFORE INSERT ON administrador FOR EACH ROW EXECUTE PROCEDURE add_novo_gestor_admin();


--
-- Name: create_operador_gestor; Type: TRIGGER; Schema: public; Owner: lbaw1644
--

CREATE TRIGGER create_operador_gestor BEFORE INSERT ON gestor FOR EACH ROW EXECUTE PROCEDURE add_novo_operador_gestor();


--
-- Name: ban_id_admin_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY ban
    ADD CONSTRAINT ban_id_admin_fkey FOREIGN KEY (id_admin) REFERENCES administrador(fk_id_utilizador);


--
-- Name: ban_id_utilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY ban
    ADD CONSTRAINT ban_id_utilizador_fkey FOREIGN KEY (id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: ban_log_id_ban_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY ban_log
    ADD CONSTRAINT ban_log_id_ban_fkey FOREIGN KEY (id_ban) REFERENCES ban(id_ban);


--
-- Name: categoria_gestor_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY categoria_gestor
    ADD CONSTRAINT categoria_gestor_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);


--
-- Name: categoria_gestor_id_gestor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY categoria_gestor
    ADD CONSTRAINT categoria_gestor_id_gestor_fkey FOREIGN KEY (id_gestor) REFERENCES gestor(id_utilizador);


--
-- Name: categoria_log_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY categoria_log
    ADD CONSTRAINT categoria_log_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);


--
-- Name: gestor_id_utilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY gestor
    ADD CONSTRAINT gestor_id_utilizador_fkey FOREIGN KEY (id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: item_id_modelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY item
    ADD CONSTRAINT item_id_modelo_fkey FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo);


--
-- Name: item_log_id_gestor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY item_log
    ADD CONSTRAINT item_log_id_gestor_fkey FOREIGN KEY (id_gestor) REFERENCES utilizador(id_utilizador);


--
-- Name: item_log_id_item_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY item_log
    ADD CONSTRAINT item_log_id_item_fkey FOREIGN KEY (id_item) REFERENCES item(id_item);


--
-- Name: modelo_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY modelo
    ADD CONSTRAINT modelo_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);


--
-- Name: modelo_log_id_modelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY modelo_log
    ADD CONSTRAINT modelo_log_id_modelo_fkey FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo);


--
-- Name: notificacao_id_utilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY notificacao
    ADD CONSTRAINT notificacao_id_utilizador_fkey FOREIGN KEY (id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: operador_id_utilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY operador
    ADD CONSTRAINT operador_id_utilizador_fkey FOREIGN KEY (id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: pedido_id_item_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_id_item_fkey FOREIGN KEY (id_item) REFERENCES item(id_item);


--
-- Name: pedido_id_utilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_id_utilizador_fkey FOREIGN KEY (id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: pedido_log_id_gestor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY pedido_log
    ADD CONSTRAINT pedido_log_id_gestor_fkey FOREIGN KEY (id_gestor) REFERENCES gestor(id_utilizador);


--
-- Name: pedido_log_id_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY pedido_log
    ADD CONSTRAINT pedido_log_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido);


--
-- Name: public; Type: ACL; Schema: -; Owner: lbaw1644
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM lbaw1644;
GRANT ALL ON SCHEMA public TO lbaw1644;


--
-- PostgreSQL database dump complete
--


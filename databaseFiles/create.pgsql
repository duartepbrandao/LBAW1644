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
    'aguardaRecolha'
);


ALTER TYPE estadopedido OWNER TO lbaw1644;

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
-- Name: Notificacao_idNotificacao_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE "Notificacao_idNotificacao_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Notificacao_idNotificacao_seq" OWNER TO lbaw1644;

--
-- Name: Notificacao_idNotificacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE "Notificacao_idNotificacao_seq" OWNED BY notificacao.id_notificacao;


--
-- Name: Notificacao_lida_seq; Type: SEQUENCE; Schema: public; Owner: lbaw1644
--

CREATE SEQUENCE "Notificacao_lida_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Notificacao_lida_seq" OWNER TO lbaw1644;

--
-- Name: Notificacao_lida_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lbaw1644
--

ALTER SEQUENCE "Notificacao_lida_seq" OWNED BY notificacao.lida;


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
-- Name: categoria; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE categoria (
    id_categoria integer NOT NULL,
    nome_categoria character varying NOT NULL
);


ALTER TABLE categoria OWNER TO lbaw1644;

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
-- Name: modelo; Type: TABLE; Schema: public; Owner: lbaw1644; Tablespace: 
--

CREATE TABLE modelo (
    nome character varying NOT NULL,
    foto character varying NOT NULL,
    descricao character varying NOT NULL,
    localizacao character varying NOT NULL,
    id_modelo integer NOT NULL,
    id_categoria integer NOT NULL,
    quantidade integer NOT NULL
);


ALTER TABLE modelo OWNER TO lbaw1644;

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
     JOIN categoria ON ((modelo.id_categoria = categoria.id_categoria)))
  WHERE ((categoria.nome_categoria)::text ~~ '123'::text);


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
-- Name: ver_reservados_utilizador; Type: VIEW; Schema: public; Owner: lbaw1644
--

CREATE VIEW ver_reservados_utilizador AS
 SELECT item.id_item,
    item.id_modelo,
    modelo.nome
   FROM (((pedido
     JOIN utilizador ON ((pedido.id_utilizador = utilizador.id_utilizador)))
     JOIN item ON ((pedido.id_item = item.id_item)))
     JOIN modelo ON ((item.id_modelo = modelo.id_modelo)))
  WHERE (((pedido.data_inicio < now()) AND (pedido.data_fim > now())) AND (pedido.estado_pedido = 'emCurso'::estadopedido));


ALTER TABLE ver_reservados_utilizador OWNER TO lbaw1644;

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
-- Name: ver_todos_requisitados_utilizador; Type: VIEW; Schema: public; Owner: lbaw1644
--

CREATE VIEW ver_todos_requisitados_utilizador AS
 SELECT item.id_item,
    item.id_modelo,
    modelo.nome AS estado_pedido
   FROM (((pedido
     JOIN utilizador ON ((pedido.id_utilizador = utilizador.id_utilizador)))
     JOIN item ON ((pedido.id_item = item.id_item)))
     JOIN modelo ON ((item.id_modelo = modelo.id_modelo)))
  WHERE ((pedido.data_fim > now()) AND (pedido.estado_pedido <> 'emCurso'::estadopedido));


ALTER TABLE ver_todos_requisitados_utilizador OWNER TO lbaw1644;

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
-- Name: id_notificacao; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY notificacao ALTER COLUMN id_notificacao SET DEFAULT nextval('"Notificacao_idNotificacao_seq"'::regclass);


--
-- Name: lida; Type: DEFAULT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY notificacao ALTER COLUMN lida SET DEFAULT nextval('"Notificacao_lida_seq"'::regclass);


--
-- Name: Administrador_fk_idUtilizador_key; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY administrador
    ADD CONSTRAINT "Administrador_fk_idUtilizador_key" UNIQUE (fk_id_utilizador);


--
-- Name: Ban_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY ban
    ADD CONSTRAINT "Ban_pkey" PRIMARY KEY (id_ban);


--
-- Name: CategoriaLog_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY categoria_log
    ADD CONSTRAINT "CategoriaLog_pkey" PRIMARY KEY (id_categoria_log);


--
-- Name: Categoria_nomeCategoria_key; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT "Categoria_nomeCategoria_key" UNIQUE (nome_categoria);


--
-- Name: Categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT "Categoria_pkey" PRIMARY KEY (id_categoria);


--
-- Name: Gestor_idUtilizador_key; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY gestor
    ADD CONSTRAINT "Gestor_idUtilizador_key" UNIQUE (id_utilizador);


--
-- Name: ItemLog_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY item_log
    ADD CONSTRAINT "ItemLog_pkey" PRIMARY KEY (id_item_log);


--
-- Name: Item_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY item
    ADD CONSTRAINT "Item_pkey" PRIMARY KEY (id_item);


--
-- Name: ModeloLog_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY modelo_log
    ADD CONSTRAINT "ModeloLog_pkey" PRIMARY KEY (id_modelo_log);


--
-- Name: Modelo_nome_key; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY modelo
    ADD CONSTRAINT "Modelo_nome_key" UNIQUE (nome);


--
-- Name: Modelo_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY modelo
    ADD CONSTRAINT "Modelo_pkey" PRIMARY KEY (id_modelo);


--
-- Name: Notificacao_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY notificacao
    ADD CONSTRAINT "Notificacao_pkey" PRIMARY KEY (id_notificacao);


--
-- Name: PedidoLog_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY pedido_log
    ADD CONSTRAINT "PedidoLog_pkey" PRIMARY KEY (id_pedido_log);


--
-- Name: Pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT "Pedido_pkey" PRIMARY KEY (id_pedido);


--
-- Name: Utilizador_pkey; Type: CONSTRAINT; Schema: public; Owner: lbaw1644; Tablespace: 
--

ALTER TABLE ONLY utilizador
    ADD CONSTRAINT "Utilizador_pkey" PRIMARY KEY (id_utilizador);


--
-- Name: Administrador_idUtilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY administrador
    ADD CONSTRAINT "Administrador_idUtilizador_fkey" FOREIGN KEY (fk_id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: BanLog_idBan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY ban_log
    ADD CONSTRAINT "BanLog_idBan_fkey" FOREIGN KEY (id_ban) REFERENCES ban(id_ban);


--
-- Name: Ban_idAdmin_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY ban
    ADD CONSTRAINT "Ban_idAdmin_fkey" FOREIGN KEY (id_admin) REFERENCES administrador(fk_id_utilizador);


--
-- Name: Ban_idUtilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY ban
    ADD CONSTRAINT "Ban_idUtilizador_fkey" FOREIGN KEY (id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: CategoriaLog_idCategoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY categoria_log
    ADD CONSTRAINT "CategoriaLog_idCategoria_fkey" FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);


--
-- Name: Gestor_idUtilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY gestor
    ADD CONSTRAINT "Gestor_idUtilizador_fkey" FOREIGN KEY (id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: ItemLog_idGestor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY item_log
    ADD CONSTRAINT "ItemLog_idGestor_fkey" FOREIGN KEY (id_gestor) REFERENCES gestor(id_utilizador);


--
-- Name: ItemLog_idItem_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY item_log
    ADD CONSTRAINT "ItemLog_idItem_fkey" FOREIGN KEY (id_item) REFERENCES item(id_item);


--
-- Name: Item_idModelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY item
    ADD CONSTRAINT "Item_idModelo_fkey" FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo);


--
-- Name: ModeloLog_idModelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY modelo_log
    ADD CONSTRAINT "ModeloLog_idModelo_fkey" FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo);


--
-- Name: Modelo_idCategoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY modelo
    ADD CONSTRAINT "Modelo_idCategoria_fkey" FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);


--
-- Name: Notificacao_idUtilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY notificacao
    ADD CONSTRAINT "Notificacao_idUtilizador_fkey" FOREIGN KEY (id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: Operador_idUtilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY operador
    ADD CONSTRAINT "Operador_idUtilizador_fkey" FOREIGN KEY (id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: PedidoLog_idGestor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY pedido_log
    ADD CONSTRAINT "PedidoLog_idGestor_fkey" FOREIGN KEY (id_gestor) REFERENCES gestor(id_utilizador);


--
-- Name: PedidoLog_idPedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY pedido_log
    ADD CONSTRAINT "PedidoLog_idPedido_fkey" FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido);


--
-- Name: Pedido_idItem_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT "Pedido_idItem_fkey" FOREIGN KEY (id_item) REFERENCES item(id_item);


--
-- Name: Pedido_idUtilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lbaw1644
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT "Pedido_idUtilizador_fkey" FOREIGN KEY (id_utilizador) REFERENCES utilizador(id_utilizador);


--
-- Name: public; Type: ACL; Schema: -; Owner: lbaw1644
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM lbaw1644;
GRANT ALL ON SCHEMA public TO lbaw1644;


--
-- PostgreSQL database dump complete
--
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

insert into categoria (nome_categoria) values ('Audiovisual');
insert into categoria (nome_categoria) values ('Sala');
insert into categoria (nome_categoria) values ('Projeção');
insert into categoria (nome_categoria) values ('Didático');
insert into categoria (nome_categoria) values ('Informática');

insert into utilizador (nome, email, password, foto, estatuto) values ('João Miguel', 'up200011000@gmail.com', 'hyftbunj', '/foo', 'novo_utilizador'); 
insert into utilizador (nome, email, password, foto, estatuto) values ('Aníbal Silva', 'up200011001@fe.up.pt', 'qwerty', '/foo', 'aluno');
insert into utilizador (nome, email, password, foto, estatuto) values ('José Carvalho', 'up200011002@fe.up.pt', 'asdfgh', '/foo', 'aluno');
insert into utilizador (nome, email, password, foto, estatuto) values ('Paulo Seixo', 'up200011003@fe.up.pt', 'zxcvbn', 'foo', 'aluno');
insert into utilizador (nome, email, password, foto, estatuto) values ('Jaime Emanuel', 'up200011004@fe.up.pt', 'fghjk', '/foo', 'aluno');
insert into utilizador (nome, email, password, foto, estatuto) values ('Carlos Costa', 'up200011005@fe.up.pt', 'gyuhjkl', '/foo', 'aluno');
insert into utilizador (nome, email, password, foto, estatuto) values ('António Carreira', 'tony@fe.up.pt', 'htfvytdrv', '/foo', 'docente');
insert into utilizador (nome, email, password, foto, estatuto) values ('Manuel António', 'manu@fe.up.pt', 'jygnumlig', '/foo', 'docente');
insert into utilizador (nome, email, password, foto, estatuto) values ('Jorge Miranda', 'jm@fe.up.pt', 'gesctded', '/foo', 'funcionário');

insert into operador (id_utilizador) values (7);
insert into operador (id_utilizador) values (8);
insert into operador (id_utilizador) values (9);

insert into gestor (id_utilizador) values (8);
insert into gestor (id_utilizador) values (9);

insert into administrador (fk_id_utilizador) values (8);

insert into modelo (nome, foto, descricao, localizacao, id_categoria) values ('Epson Videoprojector EH-TW570', '/foo', 'Projetor de resolução 1280 x 800', 'B001', 3);
insert into modelo (nome, foto, descricao, localizacao, id_categoria) values ('Philips Videoprojector PICO PPX4010', '/foo', 'Projetor de resolução 854 x 480', 'B001', 3);
insert into modelo (nome, foto, descricao, localizacao, id_categoria) values ('Nikon D3300', '/foo', 'Camarã com sensor de 24.2 MP', 'B001', 1);
insert into modelo (nome, foto, descricao, localizacao, id_categoria) values ('Microfone Dinâmico para Voz P5','/foo', 'Microfone dinâmico de alto desempenho', 'B0001', 1);
insert into modelo (nome,foto,descricao,localizacao, id_categoria) values ('Sala B201','/foo', 'B201','B201', 2);
insert into modelo (nome,foto,descricao, localizacao, id_categoria) values ('Sala B202','/foo', 'B202','B202', 2);
insert into modelo (nome, foto, descricao, localizacao, id_categoria) values ('Teclado Logitech', '/foo', 'Alcance wireless até 10 metros', 'B001', 5);
insert into modelo (nome, foto, descricao, localizacao, id_categoria) values ('Rato Steelseries Rival 100', '/foo', 'Compatível com Windows e Mac', 'B001', 5);

insert into item (id_modelo) values (8); --Projetor1
insert into item (id_modelo) values (8);
insert into item (id_modelo) values (9); --Projetor2
insert into item (id_modelo) values (9);
insert into item (id_modelo) values (10); --Maquina fotografica
insert into item (id_modelo) values (10);
insert into item (id_modelo) values (11); --Microfone
insert into item (id_modelo) values (11);
insert into item (id_modelo) values (13); --Sala B201
insert into item (id_modelo) values (14); --Sala B202
insert into item (id_modelo) values (15); --Teclado
insert into item (id_modelo) values (15);
insert into item (id_modelo) values (16); --Rato
insert into item (id_modelo) values (16);

--insert into ban ()

insert into pedido (data_inicio, data_fim, id_utilizador, id_ item) values (to_date('2017-03-30', 'YYYY-MM-DD'), to_date('2017-03-31', 'YYYY-MM-DD'), 2, 6);
insert into pedido (data_inicio, data_fim, id_utilizador, id_ item) values (to_date('2017-04-01', 'YYYY-MM-DD'), to_date('2017-04-02', 'YYYY-MM-DD'), 2, 2);
insert into pedido (data_inicio, data_fim, id_utilizador, id_ item) values (to_date('2017-04-02', 'YYYY-MM-DD'), to_date('2017-04-02', 'YYYY-MM-DD'), 3, 3);
insert into pedido (data_inicio, data_fim, id_utilizador, id_ item) values (to_date('2017-04-01', 'YYYY-MM-DD'), to_date('2017-04-03', 'YYYY-MM-DD'), 4, 4);
insert into pedido (data_inicio, data_fim, id_utilizador, id_ item) values (to_date('2017-03-30', 'YYYY-MM-DD'), to_date('2017-03-31', 'YYYY-MM-DD'), 5, 8);
insert into pedido (data_inicio, data_fim, id_utilizador, id_ item) values (to_date('2017-03-30', 'YYYY-MM-DD'), to_date('2017-03-31', 'YYYY-MM-DD'), 7, 9);




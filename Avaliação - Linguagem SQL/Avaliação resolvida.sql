/*
 @Author: MaurosMJ
 Utilizado Sintaxe ORACLE
*/

/*
(4,5 Pontos) Aspectos estruturais:
    (3,0 Pontos) Comandos para definição das estruturas do modelo (tabelas, campos e restrições de PK e FK);
    (0,5 Ponto) Comando para criação de uma tabela denominada “SALA_EXIBICAO” com os seguintes campos: CD_SALA (numérico inteiro), NM_SALA (caractere) e NR_CAPACIDADE (numérico inteiro). Utilize a racionalidade para indicar os tipos de dados para os respectivos campos;
    (0,5 Ponto) Comando para alteração da tabela “FILME” incluindo um campo (não obrigatório) que será FK para a tabela “SALA_EXIBICAO”;
    (0,5 Ponto) Comando para alteração da estrutura já existente de forma a incluir uma restrição de unicidade para o campo “nm_ator” da tabela Ator.
*/

--Criandos as tabelas
CREATE TABLE genero (
    cd_genero NUMBER(8),
    ds_genero VARCHAR2(30)
);

CREATE TABLE ator (
    cd_ator NUMBER(8),
    nm_ator VARCHAR2(50)
);

CREATE TABLE filme_ator (
    cd_filme NUMBER(8),
    cd_ator  NUMBER(8)
);

CREATE TABLE censura (
    cd_censura NUMBER(8),
    ds_censura VARCHAR2(30)
);

CREATE TABLE filme (
    cd_filme      NUMBER(8),
    cd_censura    NUMBER(8),
    cd_genero     NUMBER(8),
    nm_filme      VARCHAR(50),
    ds_sinopse    VARCHAR2(250),
    nr_duracao    VARCHAR2(20),
    dt_lancamento DATE,
    fl_dublado    CHAR(1)
);

--Criando as Contrainsts 
ALTER TABLE genero ADD CONSTRAINT genero_cd_genero_pk PRIMARY KEY ( cd_genero );

ALTER TABLE ator ADD CONSTRAINT ator_cd_ator_pk PRIMARY KEY ( cd_ator );

ALTER TABLE censura ADD CONSTRAINT censura_cd_censura_pk PRIMARY KEY ( cd_censura );

ALTER TABLE filme ADD CONSTRAINT filme_cd_filme_pk PRIMARY KEY ( cd_filme );

ALTER TABLE filme
    ADD CONSTRAINT filme_cd_censura_fk FOREIGN KEY ( cd_censura )
        REFERENCES censura ( cd_censura );

ALTER TABLE filme
    ADD CONSTRAINT filme_cd_genero_fk FOREIGN KEY ( cd_genero )
        REFERENCES genero ( cd_genero );

ALTER TABLE filme_ator
    ADD CONSTRAINT filme_ator_cd_filme_fk FOREIGN KEY ( cd_filme )
        REFERENCES filme ( cd_filme );

ALTER TABLE filme_ator
    ADD CONSTRAINT filme_ator_cd_ator_fk FOREIGN KEY ( cd_ator )
        REFERENCES ator ( cd_ator );
        
-- Criando Sequences
CREATE SEQUENCE genero_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 20;

CREATE SEQUENCE ator_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 20;

CREATE SEQUENCE censure_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 20;

CREATE SEQUENCE filme_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 20;

--(1,0 Ponto) Inserção de, no mínimo: 05 filmes, 05 atores, 03 gêneros e 03 censuras - todos (atores, gêneros e censuras associados a filmes);

-- Inserindo Gêneros
INSERT INTO genero (
    cd_genero,
    ds_genero
) VALUES (
    genero_seq.NEXTVAL,
    'Ação'
);

INSERT INTO genero (
    cd_genero,
    ds_genero
) VALUES (
    genero_seq.NEXTVAL,
    'Comédia'
);

INSERT INTO genero (
    cd_genero,
    ds_genero
) VALUES (
    genero_seq.NEXTVAL,
    'Drama'
);

-- Inserindo Censuras
INSERT INTO censura (
    cd_censura,
    ds_censura
) VALUES (
    censure_seq.NEXTVAL,
    'Livre'
);

INSERT INTO censura (
    cd_censura,
    ds_censura
) VALUES (
    censure_seq.NEXTVAL,
    '12 anos'
);

INSERT INTO censura (
    cd_censura,
    ds_censura
) VALUES (
    censure_seq.NEXTVAL,
    '16 anos'
);

-- Inserindo Atores
INSERT INTO ator (
    cd_ator,
    nm_ator
) VALUES (
    ator_seq.NEXTVAL,
    'Ator 1'
);

INSERT INTO ator (
    cd_ator,
    nm_ator
) VALUES (
    ator_seq.NEXTVAL,
    'Ator 2'
);

INSERT INTO ator (
    cd_ator,
    nm_ator
) VALUES (
    ator_seq.NEXTVAL,
    'Ator 3'
);

INSERT INTO ator (
    cd_ator,
    nm_ator
) VALUES (
    ator_seq.NEXTVAL,
    'Ator 4'
);

INSERT INTO ator (
    cd_ator,
    nm_ator
) VALUES (
    ator_seq.NEXTVAL,
    'Ator 5'
);

-- Inserindo Filmes
INSERT INTO filme (
    cd_filme,
    cd_censura,
    cd_genero,
    nm_filme,
    ds_sinopse,
    nr_duracao,
    dt_lancamento,
    fl_dublado
) VALUES (
    filme_seq.NEXTVAL,
    1,
    1,
    'Filme 1',
    'Sinopse do Filme 1',
    '120 min',
    TO_DATE('2024-01-01', 'YYYY-MM-DD'),
    'S'
);

INSERT INTO filme (
    cd_filme,
    cd_censura,
    cd_genero,
    nm_filme,
    ds_sinopse,
    nr_duracao,
    dt_lancamento,
    fl_dublado
) VALUES (
    filme_seq.NEXTVAL,
    2,
    2,
    'Filme 2',
    'Sinopse do Filme 2',
    '90 min',
    TO_DATE('2024-02-01', 'YYYY-MM-DD'),
    'N'
);

INSERT INTO filme (
    cd_filme,
    cd_censura,
    cd_genero,
    nm_filme,
    ds_sinopse,
    nr_duracao,
    dt_lancamento,
    fl_dublado
) VALUES (
    filme_seq.NEXTVAL,
    3,
    3,
    'Filme 3',
    'Sinopse do Filme 3',
    '150 min',
    TO_DATE('2024-03-01', 'YYYY-MM-DD'),
    'S'
);

INSERT INTO filme (
    cd_filme,
    cd_censura,
    cd_genero,
    nm_filme,
    ds_sinopse,
    nr_duracao,
    dt_lancamento,
    fl_dublado
) VALUES (
    filme_seq.NEXTVAL,
    1,
    1,
    'Filme 4',
    'Sinopse do Filme 4',
    '110 min',
    TO_DATE('2024-04-01', 'YYYY-MM-DD'),
    'N'
);

INSERT INTO filme (
    cd_filme,
    cd_censura,
    cd_genero,
    nm_filme,
    ds_sinopse,
    nr_duracao,
    dt_lancamento,
    fl_dublado
) VALUES (
    filme_seq.NEXTVAL,
    2,
    2,
    'Filme 5',
    'Sinopse do Filme 5',
    '130 min',
    TO_DATE('2024-05-01', 'YYYY-MM-DD'),
    'S'
);

-- Associando Atores aos Filmes
INSERT INTO filme_ator (
    cd_filme,
    cd_ator
) VALUES (
    1,
    1
);

INSERT INTO filme_ator (
    cd_filme,
    cd_ator
) VALUES (
    1,
    2
);

INSERT INTO filme_ator (
    cd_filme,
    cd_ator
) VALUES (
    2,
    3
);

INSERT INTO filme_ator (
    cd_filme,
    cd_ator
) VALUES (
    3,
    4
);

INSERT INTO filme_ator (
    cd_filme,
    cd_ator
) VALUES (
    4,
    5
);

INSERT INTO filme_ator (
    cd_filme,
    cd_ator
) VALUES (
    5,
    1
);

COMMIT;

--(1.0 Ponto) Exibir as informações sobre os filmes (nome, descrição do gênero e cencura, duração e indicação de dublagem ou não), assim como o(s) ator(es) envolvido(s) no respectivo filme;
SELECT
    f.nm_filme   AS "Nome do Filme",
    g.ds_genero  AS "Genero",
    c.ds_censura AS "Censura",
    f.nr_duracao AS "Duração",
    f.fl_dublado AS "Dublado",
    a.nm_ator    AS "Nome do(s) ator(es)"
FROM
    filme      f,
    genero     g,
    censura    c,
    filme_ator fa,
    ator       a
WHERE
    ( g.cd_genero = f.cd_genero )
    AND ( f.cd_censura = c.cd_censura )
    AND ( f.cd_filme = fa.cd_filme )
    AND ( fa.cd_ator = a.cd_ator );

--(1,0 Ponto) Listagem dos nomes dos filmes, com a respectiva descrição da censura e a quantidade de atores cadastrados;
SELECT
    f.nm_filme                 "Nome do filme",
    c.ds_censura               AS "Censura",
    COUNT(DISTINCT fa.cd_ator) AS "Quantidade Ator(es)"
FROM
    filme      f,
    censura    c,
    filme_ator fa
WHERE
    ( f.cd_censura = c.cd_censura )
    AND ( f.cd_filme = fa.cd_filme )
GROUP BY
    f.nm_filme,
    c.ds_censura
ORDER BY
    3 DESC;

--(1,0 Ponto) Recuperação das descrições dos gêneros com a respectiva quantidade de filmes agrupada a cada gênero;
SELECT
    g.ds_genero       AS "Genero",
    COUNT(f.cd_filme) AS "Quantidade por Genero"
FROM
    censura c,
    filme   f,
    genero  g
WHERE
    ( f.cd_censura = c.cd_censura )
    AND ( f.cd_genero = g.cd_genero )
GROUP BY
    g.ds_genero;

--(1,5 Pontos) Exibir o(s) nome(s) do(s) ator(es) que não está(ão) associado(s) a nenhum filme em que a data de lançamento do filme tenha sido no ano de 2019.

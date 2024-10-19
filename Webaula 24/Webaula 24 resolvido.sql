/*
 @Author: MaurosMJ
 Utilizado Sintaxe ORACLE
*/

--a) Criação de uma view para listar a descrição da marca e a descrição do modelo de todos os veículos cadastrados;

CREATE OR REPLACE VIEW v_marca_modelo_desc AS
    SELECT
        ma.ds_marca  AS "Marca",
        mo.ds_modelo AS "Modelo"
    FROM
        marca   ma,
        modelo  mo,
        veiculo v
    WHERE
        ( v.cd_modelo = mo.cd_modelo )
        AND ( mo.cd_modelo = ma.cd_marca );

--Testando:
SELECT
    *
FROM
    v_marca_modelo_desc;

--b) Criação de uma view para listar os dados dos veículos como: placa, descrição da marca, descrição do modelo, ano modelo, ano fabricação e quantidade de km rodado e quantidade de portas;

CREATE OR REPLACE VIEW v_desc_veiculos AS
    SELECT
        v.nr_placa   AS "Placa",
        ma.ds_marca  "Marca",
        mo.ds_modelo "Modelo",
        v.nr_ano_mod AS "Ano Modelo",
        v.nr_ano_fab AS "Ano Fabricação",
        v.qt_porta   AS "Portas"
    FROM
        veiculo v,
        marca   ma,
        modelo  mo
    WHERE
        ( ma.cd_marca = mo.cd_marca )
        AND ( v.cd_modelo = mo.cd_modelo );

-- Testando:
SELECT
    *
FROM
    v_desc_veiculos;

--c) Criação de uma view para listar dados completos dos veículos: placa, descrição da marca, descrição do modelo, descrição da cor, ano modelo, ano fabricação, quantidade de km rodado, quantidade de portas, descrição dos acessórios e descrição do combustível que o move;

CREATE OR REPLACE VIEW v_desc_veiculos AS
    SELECT
        v.nr_placa         AS "Placa",
        ma.ds_marca        AS "Marca",
        mo.ds_modelo       AS "Modelo",
        c.ds_cor           AS "Cor",
        v.nr_ano_mod       AS "Ano Modelo",
        v.nr_ano_fab       AS "Ano Fabricação",
        v.qt_km_rodado     AS "Quilômetros Rodados",
        v.qt_porta         AS "Portas",
        a.ds_acessorio     AS "Acessorio",
        com.ds_combustivel AS "Combustivel"
    FROM
        veiculo             v,
        marca               ma,
        cor                 c,
        modelo              mo,
        veiculo_acessorio   va,
        acessorio           a,
        veiculo_combustivel vc,
        combustivel         com
    WHERE
        ( ma.cd_marca = mo.cd_marca )
        AND ( v.cd_modelo = mo.cd_modelo )
        AND ( v.cd_cor = c.cd_cor )
        AND ( v.nr_placa = va.nr_placa )
        AND ( va.cd_acessorio = a.cd_acessorio )
        AND ( v.nr_placa = vc.nr_placa )
        AND ( vc.cd_combustivel = com.cd_combustivel )
    ORDER BY
        1;

-- Testando:
SELECT
    *
FROM
    v_desc_veiculos;


--d) Criação de uma view para listar a descrição da marca e a descrição do modelo com a respectiva quantidade de veículos cadastrados;

CREATE OR REPLACE VIEW v_qtd_veiculos AS
    SELECT
        ma.ds_marca  "Marca",
        mo.ds_modelo "Modelo",
        COUNT(*)     AS "Quantidade de veiculos"
    FROM
        marca   ma,
        modelo  mo,
        veiculo v
    WHERE
        ( v.cd_modelo = mo.cd_modelo )
        AND ( mo.cd_modelo = ma.cd_marca )
    GROUP BY
        ma.ds_marca,
        mo.ds_modelo;

--Testando:
SELECT
    *
FROM
    v_qtd_veiculos;

--e) Criação de uma view para listar o nome da localidade com a respectiva quantidade proprietários associada (que residem na respectiva localidade);

CREATE OR REPLACE VIEW v_qtd_por_localidade AS
    SELECT
        l.nm_localidade AS "Localidade",
        COUNT(*)        AS "Proprietarios"
    FROM
        proprietario p,
        localidade   l
    WHERE
        ( p.cd_localidade = l.cd_localidade )
    GROUP BY
        l.nm_localidade;

-- Testando
SELECT
    *
FROM
    v_qtd_por_localidade;

--f) Criação de uma view para listar a descrição da cor com a respectiva quantidade de veículos associados a cada cor;

CREATE OR REPLACE VIEW v_qtd_por_cor AS
    SELECT
        c.ds_cor AS "Cor",
        COUNT(*) AS "Quantidade"
    FROM
        veiculo v,
        cor     c
    WHERE
        ( v.cd_cor = c.cd_cor )
    GROUP BY
        c.ds_cor;

-- Testando:
SELECT
    *
FROM
    v_qtd_por_cor;

--g) Criação de uma view para listar quais veículos (número da placa, descrição da marca e modelo) que são movidos por mais de um combustível.

WITH tabela AS (
    SELECT
        v.nr_placa,
        ma.ds_marca,
        mo.ds_modelo
    FROM
        veiculo v,
        marca   ma,
        modelo  mo
    WHERE
        ( v.cd_modelo = mo.cd_modelo )
        AND ( mo.cd_marca = ma.cd_marca )
)
SELECT DISTINCT
    t.nr_placa  AS "Placa",
    t.ds_marca  AS "Marca",
    t.ds_modelo AS "Modelo"
FROM
    veiculo_combustivel vc,
    tabela              t
WHERE
    ( t.nr_placa = vc.nr_placa )
GROUP BY
    t.nr_placa,
    t.ds_marca,
    t.ds_modelo
HAVING
    COUNT(*) > 1;
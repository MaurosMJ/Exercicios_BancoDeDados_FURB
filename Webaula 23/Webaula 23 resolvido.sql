/*
 @Author: MaurosMJ
*/

--a) Listar a descrição da marca e a descrição do modelo de todos os veículos com data de fabricação acima da média de fabricação (ano) entre os veículos cadastrados;

SELECT
    ma.ds_marca,
    mo.ds_modelo
FROM
    veiculo v,
    marca   ma,
    modelo  mo
WHERE
    ( ma.cd_marca = mo.cd_modelo )
    AND ( v.cd_modelo = mo.cd_modelo )
    AND v.nr_ano_fab > (
        SELECT
            round(AVG(nr_ano_fab))
        FROM
            veiculo
    );

--b) Listar a placa e a descrição do modelo do(s) veículo(s) mais novo(s) cadastrado(s) - considerar o ano modelo;

SELECT
    v.nr_placa,
    mo.ds_modelo
FROM
    veiculo v,
    modelo  mo
WHERE
        nr_ano_mod = (
            SELECT
                MAX(v.nr_ano_mod)
            FROM
                veiculo v
        )
    AND ( v.cd_modelo = mo.cd_modelo );

--c) Listar dados dos veículos: placa, descrição da marca, descrição do modelo que são movidos por mais de um combustível;

WITH tabela AS (
    SELECT
        nr_placa,
        COUNT(*)
    FROM
        veiculo_combustivel
    GROUP BY
        nr_placa
    HAVING
        COUNT(*) > 1
)
SELECT
    v.nr_placa,
    ma.ds_marca,
    mo.ds_modelo
FROM
    veiculo v,
    modelo  mo,
    marca   ma,
    tabela  t
WHERE
    ( v.cd_modelo = mo.cd_modelo )
    AND ( mo.cd_marca = ma.cd_marca )
    AND ( t.nr_placa = v.nr_placa );

--d) Listar a descrição da marca que possui o maior número de veículos cadastrado;

-- Consulta que atende o problema tem melhor performance:
WITH tabela AS (
    SELECT
        mo.ds_modelo,
        ma.ds_marca,
        COUNT(*) AS qtd_carros
    FROM
        veiculo v,
        modelo  mo,
        marca   ma
    WHERE
        ( v.cd_modelo = mo.cd_modelo )
        AND ( mo.cd_marca = ma.cd_marca )
    GROUP BY
        mo.ds_modelo,
        ma.ds_marca
)
SELECT
    ds_modelo,
    ds_marca,
    qtd_carros
FROM
    tabela
WHERE
    qtd_carros = (
        SELECT
            MAX(qtd_carros)
        FROM
            tabela
    );


--e) Listar a descrição do(s) modelo(s) que possui(em) o maior número de veículos cadastrado;

WITH tabela AS (
    SELECT
        cd_modelo,
        COUNT(*) AS qtd_carros
    FROM
        veiculo
    GROUP BY
        cd_modelo
)
SELECT
    mo.ds_modelo
FROM
    tabela t,
    modelo mo
WHERE
    ( mo.cd_modelo = t.cd_modelo )
    AND qtd_carros = (
        SELECT
            MAX(qtd_carros)
        FROM
            tabela
    );

--f) Listar a descrição do acessório mais popular (que mais é encontrado) entre os veículos cadastrados fabricados entre os anos de 2015 e 2018;

WITH tabela AS (
    SELECT
        cd_acessorio,
        COUNT(*) AS qtd_acessorio
    FROM
        veiculo_acessorio va,
        veiculo           v
    WHERE
        ( nr_ano_fab BETWEEN 2015 AND 2018 )
        AND ( v.nr_placa = va.nr_placa )
    GROUP BY
        va.cd_acessorio
)
SELECT
    a.ds_acessorio AS "Acessorio mais popular"
FROM
    tabela    t,
    acessorio a
WHERE
    ( t.cd_acessorio = a.cd_acessorio )
    AND t.qtd_acessorio = (
        SELECT
            MAX(qtd_acessorio)
        FROM
            tabela
    );

--g) Listar qual(is) acessórios não estão associados a veículos fabricados a partir do ano de 2010;
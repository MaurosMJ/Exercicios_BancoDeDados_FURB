/*
 @Author: MaurosMJ
*/

--a) Listar a descrição da marca e a descrição do modelo de todos os veículos com data de fabricação acima da média de fabricação (ano) entre os veículos cadastrados;

select ma.ds_marca, mo.ds_modelo from veiculo v, marca ma , modelo mo where (ma.cd_marca = mo.cd_modelo) and (v.cd_modelo = mo.cd_modelo)
and v.nr_ano_fab > (select round(avg(nr_ano_fab)) from veiculo);

--b) Listar a placa e a descrição do modelo do(s) veículo(s) mais novo(s) cadastrado(s) - considerar o ano modelo;

--c) Listar dados dos veículos: placa, descrição da marca, descrição do modelo que são movidos por mais de um combustível;

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

-- Consulta que atende o problema, mas não performática, é ineficiente e redundante:
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
HAVING
    COUNT(*) = ( (
        SELECT
            MAX(COUNT(*)) AS qtd_carros
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
    ) );


--e) Listar a descrição do(s) modelo(s) que possui(em) o maior número de veículos cadastrado;

--f) Listar a descrição do acessório mais popular (que mais é encontrado) entre os veículos cadastrados fabricados entre os anos de 2015 e 2018;

--g) Listar qual(is) acessórios não estão associados a veículos fabricados a partir do ano de 2010;
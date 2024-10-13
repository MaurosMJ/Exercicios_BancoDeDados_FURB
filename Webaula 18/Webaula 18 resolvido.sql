/*
 @Author: MaurosMJ
 SGBD: ORACLE DATABASE
*/

CREATE TABLE cor (
    cd_cor NUMBER(9),
    ds_cor VARCHAR(30)
);

CREATE TABLE veiculo_acessorio (
    nr_placa     CHAR(7),
    cd_acessorio NUMBER(7)
);

CREATE TABLE acessorio (
    cd_acessorio NUMBER(9),
    ds_acessorio VARCHAR(50)
);

--Tabela cor PK
ALTER TABLE cor ADD CONSTRAINT cor_cd_cor_pk PRIMARY KEY ( cd_cor );

--Tabela veiculo PK
ALTER TABLE veiculo ADD cd_cor NUMBER(9);

ALTER TABLE veiculo ADD CONSTRAINT veiculo_nr_placa_pk PRIMARY KEY ( nr_placa );

--Tabela acessorio PK
ALTER TABLE acessorio ADD CONSTRAINT acessorio_cd_acessorio_pk PRIMARY KEY ( cd_acessorio );

--Tabela Modelo PK
ALTER TABLE modelo ADD CONSTRAINT modelo_cd_modelo_pk PRIMARY KEY ( cd_modelo );

--Tabela Proprietario PK
ALTER TABLE proprietario ADD CONSTRAINT proprietario_cd_proprietario_pk PRIMARY KEY ( cd_proprietario );

--Tabela Combustivel PK
ALTER TABLE combustivel ADD CONSTRAINT combustivel_cd_combustivel_pk PRIMARY KEY ( cd_combustivel );

--Tabela Marca PK
ALTER TABLE marca ADD CONSTRAINT marca_cd_marca_pk PRIMARY KEY ( cd_marca );

--Tabela Localidade PK
ALTER TABLE localidade ADD CONSTRAINT localidade_cd_localidade_pk PRIMARY KEY ( cd_localidade );

--Tabela veiculo FK
ALTER TABLE veiculo
    ADD CONSTRAINT veiculo_cd_cor_fk FOREIGN KEY ( cd_cor )
        REFERENCES cor ( cd_cor );

ALTER TABLE veiculo
    ADD CONSTRAINT veiculo_cd_proprietario_fk FOREIGN KEY ( cd_proprietario )
        REFERENCES proprietario ( cd_proprietario );

ALTER TABLE veiculo
    ADD CONSTRAINT veiculo_cd_modelo_fk FOREIGN KEY ( cd_modelo )
        REFERENCES modelo ( cd_modelo );

--Tabela veiculo_acessorio FK
ALTER TABLE veiculo_acessorio
    ADD CONSTRAINT veiculo_acessorio_nr_placa_fk FOREIGN KEY ( nr_placa )
        REFERENCES veiculo ( nr_placa );

ALTER TABLE veiculo_acessorio
    ADD CONSTRAINT veiculo_acessorio_cd_acessorio_fk FOREIGN KEY ( cd_acessorio )
        REFERENCES acessorio ( cd_acessorio );

--Tabela veiculo_combustivel FK
ALTER TABLE veiculo_combustivel
    ADD CONSTRAINT veiculo_combustivel_cd_combustivel_fk FOREIGN KEY ( cd_combustivel )
        REFERENCES combustivel ( cd_combustivel );

ALTER TABLE veiculo_combustivel
    ADD CONSTRAINT veiculo_combustivel_nr_placa_fk FOREIGN KEY ( nr_placa )
        REFERENCES veiculo ( nr_placa );

--Tabela Modelo FK
ALTER TABLE modelo
    ADD CONSTRAINT modelo_cd_marca_fk FOREIGN KEY ( cd_marca )
        REFERENCES marca ( cd_marca );

--Tabela Modelo FK
ALTER TABLE proprietario
    ADD CONSTRAINT proprietario_cd_localidade_fk FOREIGN KEY ( cd_localidade )
        REFERENCES localidade ( cd_localidade );

SELECT
    co.table_name,
    co.constraint_name                            AS "Nome da Constraint",
    decode(co.constraint_type, 'P', 'PRIMARY KEY (PK)', 'U', 'UNIQUE (UK)',
           'R', 'FOREIGN KEY (FK)', 'CHECK (CK)') AS "Tipo da Constraint",
    cc.column_name                                AS "Coluna Referenciada",
    co.search_condition                           AS "Condição",
    nvl(co.r_constraint_name, 'Sem referência')   AS "Constraint Referenciada",
    (
        SELECT
            table_name
        FROM
            user_constraints
        WHERE
            constraint_name = co.r_constraint_name
    )                                             AS "Tabela Referenciada (FK)",
    nvl(co.delete_rule, 'NO ACTION')              AS "Regra de Deleção",
    cc.position                                   AS "Posição da Constraint"
FROM
         user_constraints co
    JOIN user_cons_columns cc ON ( co.constraint_name = cc.constraint_name )
                                 AND ( co.table_name = cc.table_name )
ORDER BY
    co.constraint_name,
    cc.position;
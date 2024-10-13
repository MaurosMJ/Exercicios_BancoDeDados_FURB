--@Author: MaurosMJ

CREATE TABLE combustivel (
    cd_combustivel NUMBER(9),
    ds_combustivel VARCHAR2(30)
);

CREATE TABLE veiculo_combustivel (
    cd_combustivel NUMBER(9),
    nr_placa       char(7)
);

CREATE TABLE marca (
    cd_marca NUMBER(9),
    ds_marca VARCHAR2(30)
);

CREATE TABLE veiculo (
    nr_placa        char(7),
    cd_proprietario NUMBER(9),
    cd_modelo       NUMBER(9),
    cd_ano_fab      NUMBER(4),
    cd_ano_mod      NUMBER(4),
    qt_km_rodado    NUMBER(9),
    qt_porta        NUMBER(2),
    ds_observacao   VARCHAR2(100)
);

CREATE TABLE localidade (
    cd_localidade NUMBER(9),
    nm_localidade VARCHAR(50)
);

CREATE TABLE modelo (
    cd_modelo NUMBER(9),
    cd_marca  NUMBER(9),
    ds_modelo VARCHAR2(50)
);

CREATE TABLE proprietario (
    cd_proprietario NUMBER(9),
    cd_localidade   NUMBER(9),
    nm_proprietario VARCHAR2(50),
    nm_logradouro   VARCHAR2(50),
    nm_complemento  VARCHAR2(50),
    ds_bairro       VARCHAR2(50),
    nr_telefone     VARCHAR(15),
    ds_email        VARCHAR2(50),
    sg_uf           CHAR(2)
);
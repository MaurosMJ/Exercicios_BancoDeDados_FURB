/*
 @Author: MaurosMJ
 SGBD: ORACLE DATABASE
*/

-- Criando Sequences
CREATE SEQUENCE cor_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 10;
CREATE SEQUENCE modelo_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 10;
CREATE SEQUENCE proprietario_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 10;
CREATE SEQUENCE acessorio_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 10;
CREATE SEQUENCE combustivel_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 10;
CREATE SEQUENCE marca_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 10;
CREATE SEQUENCE localidade_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCYCLE CACHE 10;


--Insert na tabela Combustivel
INSERT INTO combustivel VALUES (combustivel_seq.nextval, 'Gasolina');
INSERT INTO combustivel VALUES (combustivel_seq.nextval, 'Álcool');
INSERT INTO combustivel VALUES (combustivel_seq.nextval, 'Diesel');
INSERT INTO combustivel VALUES (combustivel_seq.nextval, 'GNV');
INSERT INTO combustivel VALUES (combustivel_seq.nextval, 'Flex');
INSERT INTO combustivel VALUES (combustivel_seq.nextval, 'Híbrido');
INSERT INTO combustivel VALUES (combustivel_seq.nextval, 'Elétrico');
INSERT INTO combustivel VALUES (combustivel_seq.nextval, 'Biodiesel');
INSERT INTO combustivel VALUES (combustivel_seq.nextval, 'Hidrogênio');
INSERT INTO combustivel VALUES (combustivel_seq.nextval, 'Etanol');
COMMIT;

--Insert na tabela Marca
INSERT INTO marca VALUES (marca_seq.nextval, 'Honda');
INSERT INTO marca VALUES (marca_seq.nextval, 'Toyota');
INSERT INTO marca VALUES (marca_seq.nextval, 'Ford');
INSERT INTO marca VALUES (marca_seq.nextval, 'Volkswagen');
INSERT INTO marca VALUES (marca_seq.nextval, 'Chevrolet');
INSERT INTO marca VALUES (marca_seq.nextval, 'Hyundai');
INSERT INTO marca VALUES (marca_seq.nextval, 'Fiat');
INSERT INTO marca VALUES (marca_seq.nextval, 'Nissan');
INSERT INTO marca VALUES (marca_seq.nextval, 'Renault');
INSERT INTO marca VALUES (marca_seq.nextval, 'Peugeot');
COMMIT;

--Insert na tabela Localidade
INSERT INTO localidade VALUES (localidade_seq.nextval, 'São Paulo');
INSERT INTO localidade VALUES (localidade_seq.nextval, 'Rio de Janeiro');
INSERT INTO localidade VALUES (localidade_seq.nextval, 'Belo Horizonte');
INSERT INTO localidade VALUES (localidade_seq.nextval, 'Porto Alegre');
INSERT INTO localidade VALUES (localidade_seq.nextval, 'Curitiba');
INSERT INTO localidade VALUES (localidade_seq.nextval, 'Salvador');
INSERT INTO localidade VALUES (localidade_seq.nextval, 'Recife');
INSERT INTO localidade VALUES (localidade_seq.nextval, 'Goiânia');
INSERT INTO localidade VALUES (localidade_seq.nextval, 'Florianópolis');
INSERT INTO localidade VALUES (localidade_seq.nextval, 'Brasília');
COMMIT;


--Insert na tabela Modelo:
INSERT INTO modelo VALUES (modelo_seq.nextval, 1, 'Civic');
INSERT INTO modelo VALUES (modelo_seq.nextval, 2, 'Corolla');
INSERT INTO modelo VALUES (modelo_seq.nextval, 3, 'Focus');
INSERT INTO modelo VALUES (modelo_seq.nextval, 4, 'Golf');
INSERT INTO modelo VALUES (modelo_seq.nextval, 5, 'Cruze');
INSERT INTO modelo VALUES (modelo_seq.nextval, 6, 'Onix');
INSERT INTO modelo VALUES (modelo_seq.nextval, 7, 'HB20');
INSERT INTO modelo VALUES (modelo_seq.nextval, 8, 'Polo');
INSERT INTO modelo VALUES (modelo_seq.nextval, 9, 'Jetta');
INSERT INTO modelo VALUES (modelo_seq.nextval, 10, 'Tiguan');
COMMIT;

--Insert na tabela Proprietario:
INSERT INTO proprietario VALUES (proprietario_seq.nextval, 1, 'João Silva', 'Rua A', '101', 'Bairro A', '99999-1234', 'joao@gmail.com', 'SP');
INSERT INTO proprietario VALUES (proprietario_seq.nextval, 2, 'Maria Santos', 'Rua B', '202', 'Bairro B', '99999-2345', 'maria@gmail.com', 'RJ');
INSERT INTO proprietario VALUES (proprietario_seq.nextval, 3, 'Carlos Lima', 'Rua C', '303', 'Bairro C', '99999-3456', 'carlos@gmail.com', 'MG');
INSERT INTO proprietario VALUES (proprietario_seq.nextval, 4, 'Ana Costa', 'Rua D', '404', 'Bairro D', '99999-4567', 'ana@gmail.com', 'RS');
INSERT INTO proprietario VALUES (proprietario_seq.nextval, 5, 'Pedro Oliveira', 'Rua E', '505', 'Bairro E', '99999-5678', 'pedro@gmail.com', 'SP');
INSERT INTO proprietario VALUES (proprietario_seq.nextval, 6, 'Clara Souza', 'Rua F', '606', 'Bairro F', '99999-6789', 'clara@gmail.com', 'PE');
INSERT INTO proprietario VALUES (proprietario_seq.nextval, 7, 'Lucas Melo', 'Rua G', '707', 'Bairro G', '99999-7890', 'lucas@gmail.com', 'BA');
INSERT INTO proprietario VALUES (proprietario_seq.nextval, 8, 'Fernanda Nunes', 'Rua H', '808', 'Bairro H', '99999-8901', 'fernanda@gmail.com', 'GO');
INSERT INTO proprietario VALUES (proprietario_seq.nextval, 9, 'Paulo Almeida', 'Rua I', '909', 'Bairro I', '99999-9012', 'paulo@gmail.com', 'SC');
INSERT INTO proprietario VALUES (proprietario_seq.nextval, 10, 'Juliana Ferreira', 'Rua J', '1010', 'Bairro J', '99999-0123', 'juliana@gmail.com', 'PR');
COMMIT;

--Insert na tabela Acessorio:
INSERT INTO acessorio VALUES (acessorio_seq.nextval, 'Airbag');
INSERT INTO acessorio VALUES (acessorio_seq.nextval, 'Ar condicionado');
INSERT INTO acessorio VALUES (acessorio_seq.nextval, 'Teto solar');
INSERT INTO acessorio VALUES (acessorio_seq.nextval, 'Rodas de liga leve');
INSERT INTO acessorio VALUES (acessorio_seq.nextval, 'Central multimídia');
INSERT INTO acessorio VALUES (acessorio_seq.nextval, 'Câmera de ré');
INSERT INTO acessorio VALUES (acessorio_seq.nextval, 'Faróis de neblina');
INSERT INTO acessorio VALUES (acessorio_seq.nextval, 'Travas elétricas');
INSERT INTO acessorio VALUES (acessorio_seq.nextval, 'Sensor de estacionamento');
INSERT INTO acessorio VALUES (acessorio_seq.nextval, 'Volante multifuncional');
COMMIT;

--Insert na tabela Veiculo
INSERT INTO veiculo VALUES ('ABC1234', 1, 1, 2018, 2017, 50000, 4, 'Nenhuma', 1);
INSERT INTO veiculo VALUES ('DEF5678', 2, 2, 2020, 2019, 30000, 4, 'Nenhuma', 2);
INSERT INTO veiculo VALUES ('GHI9012', 3, 3, 2019, 2018, 45000, 4, 'Nenhuma', 3);
INSERT INTO veiculo VALUES ('JKL3456', 4, 4, 2017, 2016, 60000, 4, 'Nenhuma', 4);
INSERT INTO veiculo VALUES ('MNO7890', 5, 5, 2021, 2020, 10000, 4, 'Nenhuma', 5);
INSERT INTO veiculo VALUES ('PQR1234', 6, 6, 2016, 2015, 75000, 4, 'Nenhuma', 6);
INSERT INTO veiculo VALUES ('STU5678', 7, 7, 2015, 2014, 80000, 4, 'Nenhuma', 7);
INSERT INTO veiculo VALUES ('VWX9012', 8, 8, 2022, 2021, 5000, 4, 'Nenhuma', 8);
INSERT INTO veiculo VALUES ('YZA3456', 9, 9, 2014, 2013, 85000, 4, 'Nenhuma', 9);
INSERT INTO veiculo VALUES ('BCD7890', 10, 10, 2013, 2012, 90000, 4, 'Nenhuma', 10);
COMMIT;

--Insert na tabela Veiculo_acessorio
INSERT INTO veiculo_acessorio VALUES ('ABC1234', 1);
INSERT INTO veiculo_acessorio VALUES ('DEF5678', 2);
INSERT INTO veiculo_acessorio VALUES ('GHI9012', 3);
INSERT INTO veiculo_acessorio VALUES ('JKL3456', 4);
INSERT INTO veiculo_acessorio VALUES ('MNO7890', 5);
INSERT INTO veiculo_acessorio VALUES ('PQR1234', 6);
INSERT INTO veiculo_acessorio VALUES ('STU5678', 7);
INSERT INTO veiculo_acessorio VALUES ('VWX9012', 8);
INSERT INTO veiculo_acessorio VALUES ('YZA3456', 9);
INSERT INTO veiculo_acessorio VALUES ('BCD7890', 10);
COMMIT;

-- Insert na tabela Veiculo_Combustivel
INSERT INTO veiculo_combustivel (cd_combustivel, nr_placa) VALUES (1, 'ABC1234'); -- Gasolina for ABC1234
INSERT INTO veiculo_combustivel (cd_combustivel, nr_placa) VALUES (2, 'DEF5678'); -- Álcool for DEF5678
INSERT INTO veiculo_combustivel (cd_combustivel, nr_placa) VALUES (3, 'GHI9012'); -- Diesel for GHI9012
INSERT INTO veiculo_combustivel (cd_combustivel, nr_placa) VALUES (4, 'JKL3456'); -- GNV for JKL3456
INSERT INTO veiculo_combustivel (cd_combustivel, nr_placa) VALUES (5, 'MNO7890'); -- Flex for MNO7890
INSERT INTO veiculo_combustivel (cd_combustivel, nr_placa) VALUES (6, 'PQR1234'); -- Híbrido for PQR1234
INSERT INTO veiculo_combustivel (cd_combustivel, nr_placa) VALUES (7, 'STU5678'); -- Elétrico for STU5678
INSERT INTO veiculo_combustivel (cd_combustivel, nr_placa) VALUES (8, 'VWX9012'); -- Biodiesel for VWX9012
INSERT INTO veiculo_combustivel (cd_combustivel, nr_placa) VALUES (9, 'YZA3456'); -- Hidrogênio for YZA3456
INSERT INTO veiculo_combustivel (cd_combustivel, nr_placa) VALUES (10, 'BCD7890'); -- Etanol for BCD7890
COMMIT;

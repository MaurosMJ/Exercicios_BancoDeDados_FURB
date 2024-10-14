/*
 @Author: MaurosMJ
 SGBD: ORACLE DATABASE
 Para união das tabelas foi utilizado SINTAXE ORACLE
*/

--a) Listar a média de km rodados entre os veículos cadastrados;
select avg(qt_km_rodado) as "Media KM rodado" from veiculo;

--b) Listar o ano de fabricação do(s) veículo(s) mais novo e ano de fabricação do(s) veículo(s) mais antigo cadastrado na base de dados;
select min(nr_ano_fab) as "Ano de fabricação mais antigo", max(nr_ano_fab) as "Ano de fabricação mais novo" from veiculo;

--c) Listar o ano modelo do veículo com a respectiva quantidade de veículos correspondente ao respectivo ano;
select nr_ano_mod,count(nr_ano_mod) from veiculo group by nr_ano_mod;

--d) Listar a descrição do combustível com a respectiva quantidade de veículos que apresentam o combustível, ordenando pelo maior número de veículos descendente;
select ds_combustivel as "Tipo de combutivel", count(ds_combustivel) as "Qtd de veiculos" from combustivel c, veiculo v, veiculo_combustivel vc where (v.nr_placa = vc.nr_placa) and (vc.cd_combustivel = c.cd_combustivel) group by ds_combustivel order by 2 desc;

--e) Listar a descrição do modelo com a respectiva quantidade de veículo(s) correspondente ao modelo listado;
select ds_modelo, count(ds_modelo) as "Qtd veiculos" from veiculo v, modelo m where (v.cd_modelo = m.cd_modelo) group by ds_modelo;

--f) Listar todas as marcas (descrição) disponíveis com o respetivo modelo (descrição), bem como a quantidade de veículo associada a marca e modelo listado;
select ma.ds_marca, mo.ds_modelo, count(*) as "Qtd" from marca ma, modelo mo, veiculo v where (v.cd_modelo = mo.cd_modelo) and (mo.cd_marca = ma.cd_marca) group by ma.ds_marca, mo.ds_modelo;

--g) Listar a descrição do acessório com a respectiva quantidade de veículo que possuem o referido acessório listado.
select a.ds_acessorio, count(*) as "Qtd" from veiculo v, veiculo_acessorio va, acessorio a where (v.nr_placa = va.nr_placa) and (va.cd_acessorio = a.cd_acessorio) group by a.ds_acessorio;

--h) Listar o nome da localidade com a respectiva quantidade de proprietários vinculado(s) a cada localidade, restringindo ao estado de "SC";
select l.nm_localidade, count(*) as "Qtd proprietarios"  from proprietario p, localidade l where (p.cd_localidade = l.cd_localidade) and p.sg_uf = 'SC' group by nm_localidade;

--i) Listar dados dos veículos: placa, descrição da marca, descrição do modelo e quantidade de acessórios associado a cada veículo listado, sendo que os veículos devem apresentar dois ou mais acessórios.
select v.nr_placa, ma.ds_marca, mo.ds_modelo, count(*) as "Qtd acessorios" from veiculo v, marca ma, modelo mo, veiculo_acessorio va, acessorio a where (v.nr_placa = va.nr_placa) and (va.cd_acessorio = a.cd_acessorio) and (v.cd_modelo = mo.cd_modelo) and (mo.cd_marca = ma.cd_marca) group by v.nr_placa, ma.ds_marca, mo.ds_modelo;

/*
Um veiculo pode aceitar vários acessorios, exemplo: AIRBAG/AR Condicionado/Teto solar,etc., para testar pode ser inserido varios acessorios:
insert into veiculo_acessorio values ('ABC1234',1);
insert into veiculo_acessorio values ('ABC1234',2);
insert into veiculo_acessorio values ('ABC1234',3);
insert into veiculo_acessorio values ('ABC1234',4);
insert into veiculo_acessorio values ('DEF5678',5);
insert into veiculo_acessorio values ('DEF5678',6);
insert into veiculo_acessorio values ('DEF5678',7);
*/

--j) Listar dados dos veículos: placa, descrição da marca, descrição do modelo e quantidade de combustíveis associados a cada veículo listado.
select v.nr_placa, ma.ds_marca, mo.ds_modelo, count(*) as "Qtd combustivel" from veiculo v, marca ma, modelo mo, veiculo_combustivel vc, combustivel c where (v.nr_placa = vc.nr_placa) and (vc.cd_combustivel = c.cd_combustivel) and (v.cd_modelo = mo.cd_modelo) and (mo.cd_marca = ma.cd_marca) group by v.nr_placa, ma.ds_marca, mo.ds_modelo;

/*
Um veiculo pode aceitar vários combustiveis, exemplo: ETANOL/GASOLINA, para testar pode ser inserido um combustivel a mais:
insert into veiculo_combustivel values (2,'ABC1234');
*/

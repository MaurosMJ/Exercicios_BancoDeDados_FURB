/*
 @Author: MaurosMJ
 SGBD: ORACLE DATABASE
 Para união de tabelas foi utilizado SINTAXE ORACLE
*/

--a) Listar os nomes dos proprietários com a respectiva localidade (nome) em que residem;
select p.nm_proprietario, l.nm_localidade from proprietario p, localidade l where (p.cd_localidade = l.cd_localidade);

--b) Listar todos os modelos da marca "FIAT" ordenados pelo descrição do modelo;
select mo.ds_modelo from modelo mo, marca ma where (lower(ma.ds_marca) = 'fiat') and (mo.cd_marca = ma.cd_marca);

--c) Listar todas as marcas (descrição) disponíveis com o respetivo modelo (descrição), ordenando em ordem crescente de marca, seguida de modelo;
select ma.ds_marca, mo.ds_modelo from marca ma, modelo mo where (ma.cd_marca = mo.cd_marca) order by 1, 2;

--d) Listar a placa, o ano modelo e a descrição da cor de todos os veículos cadastrados, ordenando pelo ano modelo, seguido da descrição da cor;
select v.nr_placa, v.nr_ano_mod, c.ds_cor from veiculo v, cor c where (v.cd_cor = c.cd_cor) order by 2,3;

--e) Listar os seguintes dados do veículo: placa, nome do proprietário e nome da localidade que o mesmo reside, desde que sua UF seja "SC";
select v.nr_placa, p.nm_proprietario, l.nm_localidade from veiculo v, proprietario p, localidade l where (v.cd_proprietario = p.cd_proprietario) and (p.cd_localidade = l.cd_localidade) and p.sg_uf = 'SC';

--f) Listar dados dos veículos: placa, descrição da marca, descrição do modelo, ano modelo, ano fabricação, quantidade de km rodado e quantidade de portas, ordenando pelo veículo mais novo;
select v.nr_placa, ma.ds_marca, mo.ds_modelo, v.nr_ano_mod, v.nr_ano_fab, v.qt_km_rodado, v.qt_porta from veiculo v, marca ma, modelo mo where (v.cd_modelo = mo.cd_modelo) and (ma.cd_marca = mo.cd_marca) order by 5 desc;

--g) Listar os veículos com placa, descrição da marca, descrição do modelo, ano do modelo e a(s) respectiva(s) descrição(ões) do(s) combustível(is) que é movido;
select v.nr_placa, ma.ds_marca, mo.ds_modelo, v.nr_ano_mod, c.ds_combustivel from veiculo v, marca ma, modelo mo, veiculo_combustivel vc, combustivel c where (v.cd_modelo = mo.cd_modelo) and (ma.cd_marca = mo.cd_marca) and (v.nr_placa = vc.nr_placa) and (vc.cd_combustivel = c.cd_combustivel);

--h) Listar os veículos (com placa, descrição da marca, descrição do modelo) que possuem como acessório "Direção hidráulica";
select v.nr_placa, ma.ds_marca, mo.ds_modelo from veiculo v, marca ma, modelo mo, veiculo_acessorio va, acessorio a  where (v.cd_modelo = mo.cd_modelo) and (mo.cd_marca = ma.cd_marca) and (v.nr_placa = va.nr_placa) and (va.cd_acessorio = a.cd_acessorio) and lower(ds_acessorio) = 'direção hidráulica';

--i) Listar dados completos dos veículos: placa, descrição da marca, descrição do modelo, descrição da cor, ano modelo, ano fabricação, quantidade de km rodado, quantidade de portas, descrição dos acessórios e descrição do combustível que o move;
select v.nr_placa, ma.ds_marca, mo.ds_modelo, c.ds_cor, v.nr_ano_mod, v.nr_ano_fab, v.qt_km_rodado, v.qt_porta, a.ds_acessorio, com.ds_combustivel from veiculo v, marca ma, modelo mo, veiculo_acessorio va, acessorio a, cor c, veiculo_combustivel vc, combustivel com  where (v.cd_cor = c.cd_cor) and (v.cd_modelo = mo.cd_modelo) and (mo.cd_marca = ma.cd_marca) and (v.nr_placa = va.nr_placa) and (va.cd_acessorio = a.cd_acessorio) and (v.nr_placa = vc.nr_placa) and (vc.cd_combustivel = com.cd_combustivel);

--j) Listar os veículos (placa, descrição da marca, descrição do modelo) cadastrados que apresentam cor "branco(a)", são movidos a diesel, e apresentam ano modelo superior a 2010;
select v.nr_placa, ma.ds_marca, mo.ds_modelo from veiculo v, marca ma, modelo mo, cor c, veiculo_combustivel vc, combustivel com where (v.cd_modelo = mo.cd_modelo) and (ma.cd_marca = mo.cd_marca) and (v.cd_cor = c.cd_cor) and (v.nr_placa = vc.nr_placa) and (vc.cd_combustivel = com.cd_combustivel) and lower(c.ds_cor) like '%branco%' and lower(com.ds_combustivel) = 'diesel' and v.nr_ano_mod > 2010;
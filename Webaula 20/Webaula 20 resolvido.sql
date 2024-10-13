/*
 @Author: MaurosMJ
 SGBD: ORACLE DATABASE
*/

--A) Listar todos os modelos disponíveis;
select ds_modelo as "Modelo disponível" from modelo;

--B) Listar todas as marcas disponíveis;
select ds_marca as "Marca disponível" from marca;

--C) Listar qual(is) proprietário(s) residem nos estados de "SC" ou "PR";
select nm_proprietario as "Proprietario" from proprietario where sg_uf in ('SC', 'PR');

--D) Listar qual(is) proprietário(s) não possuem e-mail, mas que possuem número de telefone cadastrado;
select nm_proprietario, nr_telefone, ds_email from proprietario where (ds_email is null) and (nr_telefone is not null);

--E) Listar qual(is) proprietário(s) apresentam "Silva" no nome;
select nm_proprietario from proprietario where upper(nm_proprietario) like '%SILVA%';

--F) Listar todos as colunas do(s) veículo(s) que apresenta(m) ano de fabricação diferente do ano modelo;
select * from veiculo where nr_ano_fab != nr_ano_mod;

--G) Listar o número da placa, o ano do modelo, a quantidade de km rodados e a quantidade de portas dos veículos fabricados após ano de 2000, inclusive ano 2000;
select nr_placa, nr_ano_mod, qt_km_rodado, qt_porta from veiculo where nr_ano_fab >= 2000;

--h) Listar o número da placa do(s) veículo(s) que não possui(em) uma informação adicional cadastrada (coluna observação);
select nr_placa from veiculo where (ds_observacao is null) or (ds_observacao = 'Nenhuma');

--i) Listar os dados do(s) veículo(s) que apresenta(m) quatro portas ou mais, ordenados pelo ano do modelo descendente;
select * from veiculo where qt_porta >= 4 order by nr_ano_mod desc;

--j) Listar todos os acessórios ordenados pela descrição;
select ds_acessorio from acessorio order by ds_acessorio;

--k) Listar o número da placa do veículo, ano de fabricação e modelo do(s) veículos fabricados a partir de 2010, com km rodada menor de 10000, com 4 portas ou mais e que não possui(am) observações;
select nr_placa, nr_ano_fab, cd_modelo from veiculo where (nr_ano_fab >= 2010) and (qt_km_rodado < 10000) and (qt_porta >= 4) and ((ds_observacao is null) or (ds_observacao = 'Nenhuma'));

-- l) Listar o nome do(s) proprietário(s) que residem em um bairro em que o nome tenha a palavra "Novo" ou "Nova" e que a UF seja de "SC";
select nm_proprietario from proprietario where (lower(ds_bairro) like '%novo%' or lower(ds_bairro) like '%nova%') and sg_uf = 'SC';
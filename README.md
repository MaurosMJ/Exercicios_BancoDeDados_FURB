# Atividade Webaula 17: Prática dos comandos DDL - Parte 1
##### Atividade Prática dos comandos DDL (1)

Você pôde perceber em determinado momento da disciplina que as ferramentas CASE, em geral, oferecem o recurso de gerar o script de comandos SQL para a criação das estruturas do modelo projetado. Mesmo assim, é fundamental que você pratique o uso dos comandos DDL, pois nem sempre será possível fazer uso do recurso da ferramenta CASE.

Para esta atividade você deve considerar o seguinte modelo de dados:
<div style="text-align:center;">
    <img src="https://imgur.com/DIxNgYa.png" alt="Img">
</div>

##### Por onde começar
Recomendo a você utilizar um editor de textos padrão ASCII (ex.: bloco de notas) e, a partir deste, iniciar a confecção dos comandos de criação das tabelas. Para evitar eventuais problemas, sugiro iniciar pelas tabelas mãe. Lembra deste conceito? São as tabelas que servem de referência a outra(s). Não se preocupe, neste momento, com as restrições (chave primária, estrangeira, etc.). Atenha-se à criação das tabelas com os respectivo atributos apresentados. 

Após a conclusão do script, execute os comandos um a um no SGBD escolhido por você, pois dessa forma poderá identificar eventuais problemas de sintaxe e corrigi-los mais facilmente. 

Qualquer dúvida utilize o fórum geral do ciclo e compartilhe suas dúvidas e descobertas.

# Atividade Webaula 18: Prática dos comandos DDL - Parte 2
##### Atividade Prática dos comandos DDL (2)

Na atividade prática anterior você criou um script de comandos para a definição das estruturas de um projeto de banco de dados. No entanto, como você não havia conhecido o conceito de restrições de tabelas nos SGBDs, orientei para que não indicasse as restrições de chave primária (PK) e chave estrangeira (FK). Mas agora que você já o conhece, convido-o(a) a concluir a atividade iniciada na Aula anterior adicionando as restrições nas tabelas já criados do modelo de dados. Mas atenção, você deverá utilizar o comando ALTER TABLE para efetuar as modificações. Ainda, fique atento(a) pois há 03 novas tabelas, as quais deverão ser incluídas com as respectivas restrições.

Para esta atividade você deve considerar o seguinte modelo de dados:
<div style="text-align:center;">
    <img src="https://imgur.com/RU57r3V.png" alt="Img">
</div>

##### Por onde começar
Agora está fácil, não é mesmo? Sim, pois agora você conhece os conceitos que envolvem as restrições em um SGBD. Então vamos concluir nossa atividade de definição das estruturas do modelo adicionando as restrições das tabelas.

Não esqueça, você deve utilizar o comando ALTER TABLE para indicar a chave primária de cada tabela, assim como a(s) chave(s) estrangeira(s). Após a conclusão do script, execute os comandos um por um no SGBD escolhido por você, pois dessa forma você poderá identificar eventuais problemas de sintaxe e corrigi-los mais facilmente.

Depois dessa atividade você poderá então adotar a estratégia de, no momento da construção do comando CREATE TABLE, já indicar determinadas restrições, se entender ser mais adequado e conveniente.

Qualquer dúvida utilize o fórum geral do ciclo e compartilhe suas dúvidas e descobertas.

Bom trabalho.

# Atividade Webaula 19: Prática dos comandos DML
##### Atividade ─ Prática dos comandos DML

Nas atividades práticas anteriores você criou scripts de comandos para a definição das estruturas de um projeto de banco de dados. Agora é chegado o momento de você praticar os comandos DML, em especial, o comando insert.

Para esta atividade você deve considerar o seguinte modelo de dados, o qual corresponde as atividades anteriores (webaulas 17 e 18):

Para esta atividade você deve considerar o seguinte modelo de dados:
<div style="text-align:center;">
    <img src="https://imgur.com/Mrn3Glt.png" alt="Img">
</div>

##### Por onde começar
Crie um arquivo no bloco de notas (ou outro de sua preferência - eu recomendo o notepad ++). Construa comandos de inserção para as tabelas. Não há um limite mínimo, mas como iremos utilizar este mesmo conjunto de dados para praticas comandos de seleção mais adiante... recomendo em torno de 10 (dez) registros por tabela, sendo as tabelas filhas, em especial "Veiculo_Acessorio" e "Veiculo_Combustivel", com um número ainda maior.

Após a criação do script, execute os mesmos no SGBD de sua escolha e verifique se está em conformidade com o padrão adotado. Qualquer dúvida utilize o fórum geral do ciclo e compartilhe suas dúvidas e descobertas.

Bom trabalho e, qualquer dúvida, estou à disposição!

# Atividade Webaula 20: Prática do SELECT Básico
##### Atividade ─ Prática do SELECT Básico

Agora que temos uma base de dados criada e povoada, é chegado o momento de você praticar o uso do principal comando da SQL, o SELECT.

Para esta atividade você deve considerar o seguinte modelo de dados já conhecido por você:

<div style="text-align:center;">
    <img src="https://imgur.com/8jdZBnK.png" alt="Img">
</div>

##### Por onde começar
Crie um arquivo no bloco de notas (ou outro de sua preferência - eu recomendo o notepad ++). Construa sentenças SQL para atender as seguintes questões:


a)     Listar todos os modelos disponíveis;

b)     Listar todas as marcas disponíveis;

c)     Listar qual(is) proprietário(s) residem nos estados de "SC" ou "PR";

d)     Listar qual(is) proprietário(s) não possuem e-mail, mas que possuem número de telefone cadastrado;

e)     Listar qual(is) proprietário(s) apresentam "Silva" no nome;

f)      Listar todos as colunas do(s) veículo(s) que apresenta(m) ano de fabricação diferente do ano modelo;

g)     Listar o número da placa, o ano do modelo, a quantidade de km rodados e a quantidade de portas dos veículos fabricados após ano de 2000, inclusive ano 2000;

h)     Listar o número da placa do(s) veículo(s) que não possui(em) uma informação adicional cadastrada (coluna observação);

i)      Listar os dados do(s) veículo(s) que apresenta(m) quatro portas ou mais, ordenados pelo ano do modelo descendente;

j)      Listar todos os acessórios ordenados pela descrição;

k)     Listar o número da placa do veículo, ano de fabricação e modelo do(s) veículos fabricados a partir de 2010, com km rodada menor de 10000, com 4 portas ou mais e que não possui(am) observações;

l)      Listar o nome do(s) proprietário(s) que residem em um bairro em que o nome tenha a palavra "Novo" ou "Nova" e que a UF seja de "SC";

Após a criação do script, execute os mesmos no SGBD de sua escolha e verifique se está em conformidade com o padrão adotado. Qualquer dúvida utilize o fórum geral do ciclo e compartilhe suas dúvidas e descobertas.

Não esqueça de postar o arquivo com a indicação de cada questão com a respectiva sentença SELECT criada.

Bom trabalho e, qualquer dúvida, estou à disposição!

# Atividade Webaula 21: Prática do SELECT múltiplas tabelas
##### Atividade ─ Prática do SELECT múltiplas tabelas

Nesta atividade vamos praticar o comando SELECT utilizando mais de uma tabela como fonte de recuperação de dados. Seguimos com o modelo de dados já conhecido por você:

<div style="text-align:center;">
    <img src="https://imgur.com/ueSmPpH.png" alt="Img">
</div>

##### Por onde começar
Crie um arquivo no bloco de notas (ou outro de sua preferência - eu recomendo o notepad ++). Construa sentenças SQL para atender as seguintes questões:

a)     Listar os nomes dos proprietários com a respectiva localidade (nome) em que residem;

b)     Listar todos os modelos da marca "FIAT" ordenados pelo descrição do modelo;

c)     Listar todas as marcas (descrição) disponíveis com o respetivo modelo (descrição), ordenando em ordem crescente de marca, seguida de modelo;

d)     Listar a placa, o ano modelo e a descrição da cor de todos os veículos cadastrados, ordenando pelo ano modelo, seguido da descrição da cor;

e)     Listar os seguintes dados do veículo: placa, nome do proprietário e nome da localidade que o mesmo reside, desde que sua UF seja "SC";

f)     Listar dados dos veículos: placa, descrição da marca, descrição do modelo, ano modelo, ano fabricação, quantidade de km rodado e quantidade de portas, ordenando pelo veículo mais novo;

g)      Listar os veículos com placa, descrição da marca, descrição do modelo, ano do modelo e a(s) respectiva(s) descrição(ões) do(s) combustível(is) que é movido;

h)     Listar os veículos (com placa, descrição da marca, descrição do modelo) que possuem como acessório "Direção hidráulica";

i)     Listar dados completos dos veículos: placa, descrição da marca, descrição do modelo, descrição da cor, ano modelo, ano fabricação, quantidade de km rodado, quantidade de portas, descrição dos acessórios e descrição do combustível que o move;

i)      Listar os veículos (placa, descrição da marca, descrição do modelo) cadastrados que apresentam cor "branco(a)", são movidos a diesel, e apresentam ano modelo superior a 2010;

Após a criação do script, execute os mesmos no SGBD de sua escolha e verifique se está em conformidade com o padrão adotado. Qualquer dúvida utilize o fórum geral do ciclo e compartilhe suas dúvidas e descobertas.

Não esqueça de postar o arquivo com a indicação de cada questão com a respectiva sentença SELECT criada.

Bom trabalho e, qualquer dúvida, estou à disposição!

# Atividade Webaula 22: Prática do SELECT funções de grupo
##### Atividade ─ Prática do SELECT com funções de grupo

Nesta atividade vamos praticar o comando SELECT utilizando funções de grupo. Seguimos com o modelo de dados já conhecido por você:

<div style="text-align:center;">
    <img src="https://imgur.com/OppcBRD.png" alt="Img">
</div>

##### Por onde começar
Crie um arquivo no bloco de notas (ou outro de sua preferência - eu recomendo o notepad ++). Construa sentenças SQL para atender as seguintes questões:

Crie um arquivo no bloco de notas (ou outro de sua preferência - eu recomendo o notepad ++). Construa sentenças SQL para atender as seguintes questões:

a)     Listar a média de km rodados entre os veículos cadastrados;

b)     Listar o ano de fabricação do(s) veículo(s) mais novo e ano de fabricação do(s) veículo(s) mais antigo cadastrado na base de dados;

c)     Listar o ano modelo do veículo com a respectiva quantidade de veículos correspondente ao respectivo ano;

d)     Listar a descrição do combustível com a respectiva quantidade de veículos que apresentam o combustível, ordenando pelo maior número de veículos descendente;

e)     Listar a descrição do modelo com a respectiva quantidade de veículo(s) correspondente ao modelo listado;

f)      Listar todas as marcas (descrição) disponíveis com o respetivo modelo (descrição), bem como a quantidade de veículo associada a marca e modelo listado;

g)     Listar a descrição do acessório com a respectiva quantidade de veículo que possuem o referido acessório listado.

h)     Listar o nome da localidade com a respectiva quantidade de proprietários vinculado(s) a cada localidade, restringindo ao estado de "SC";

i)      Listar dados dos veículos: placa, descrição da marca, descrição do modelo e quantidade de acessórios associado a cada veículo listado, sendo que os veículos devem apresentar dois ou mais acessórios.

j)     Listar dados dos veículos: placa, descrição da marca, descrição do modelo e quantidade de combustíveis associados a cada veículo listado.

Após a criação do script, execute os mesmos no SGBD de sua escolha e verifique se está em conformidade com o padrão adotado. Qualquer dúvida utilize o fórum geral do ciclo e compartilhe suas dúvidas e descobertas.

Não esqueça de postar o arquivo com a indicação de cada questão com a respectiva sentença SELECT criada.

Bom trabalho e, qualquer dúvida, estou à disposição!

# Atividade Webaula 23: Prática do SELECT - Sub-consultas
##### Atividade ─ Prática do SELECT Sub-consultas

Nesta atividade vamos praticar o comando SELECT utilizando mais de uma tabela como fonte de recuperação de dados. Seguimos com o modelo de dados já conhecido por você:

<div style="text-align:center;">
    <img src="https://imgur.com/YXXO1DK.png" alt="Img">
</div>

##### Por onde começar
Crie um arquivo no bloco de notas (ou outro de sua preferência - recomendo o notepad ++). Construa sentenças SQL para atender as seguintes questões:

a)     Listar a descrição da marca e a descrição do modelo de todos os veículos com data de fabricação acima da média de fabricação (ano) entre os veículos cadastrados;

b)     Listar a placa e a descrição do modelo do(s) veículo(s) mais novo(s) cadastrado(s) - considerar o ano modelo;

c)     Listar dados dos veículos: placa, descrição da marca, descrição do modelo que são movidos por mais de um combustível;

d)     Listar a descrição da marca que possui o maior número de veículos cadastrado;

e)     Listar a descrição do(s) modelo(s) que possui(em) o maior número de veículos cadastrado;

f)     Listar a descrição do acessório mais popular (que mais é encontrado) entre os veículos cadastrados fabricados entre os anos de 2015 e 2018;

g)      Listar qual(is) acessórios não estão associados a veículos fabricados a partir do ano de 2010;

Após a criação do script, execute os mesmos no SGBD de sua escolha e verifique se está em conformidade com o padrão adotado. Qualquer dúvida utilize o fórum geral do ciclo e compartilhe suas dúvidas e descobertas.

Não esqueça de postar o arquivo com a indicação de cada questão com a respectiva sentença SELECT criada.

Bom trabalho e, qualquer dúvida, estou à disposição!

# Atividade Webaula 24: Prática do SELECT - Visões
##### Atividade ─ Prática do SELECT Visões

Nesta atividade vamos praticar o comando SELECT utilizando mais de uma tabela como fonte de recuperação de dados. Seguimos com o modelo de dados já conhecido por você:

<div style="text-align:center;">
    <img src="https://imgur.com/w2P74zD.png" alt="Img">
</div>

##### Por onde começar
Crie um arquivo no bloco de notas (ou outro de sua preferência - recomendo o notepad ++). Construa sentenças SQL para atender as seguintes questões:

a)     Criação de uma view para listar a descrição da marca e a descrição do modelo de todos os veículos cadastrados;

b)     Criação de uma view para listar os dados dos veículos como: placa, descrição da marca, descrição do modelo, ano modelo, ano fabricação e quantidade de km rodado e quantidade de portas;

c)     Criação de uma view para listar dados completos dos veículos: placa, descrição da marca, descrição do modelo, descrição da cor, ano modelo, ano fabricação, quantidade de km rodado, quantidade de portas, descrição dos acessórios e descrição do combustível que o move;

d)     Criação de uma view para listar a descrição da marca e a descrição do modelo com a respectiva quantidade de veículos cadastrados;

e)     Criação de uma view para listar o nome da localidade com a respectiva quantidade proprietários associada (que residem na respectiva localidade);

f)      Criação de uma view para listar a descrição da cor com a respectiva quantidade de veículos associados a cada cor;

g)     Criação de uma view para listar quais veículos (número da placa, descrição da marca e modelo) que são movidos por mais de um combustível.

Após a criação do script, execute os mesmos no SGBD de sua escolha e verifique se está em conformidade com o padrão adotado. Qualquer dúvida utilize o fórum geral do ciclo e compartilhe suas dúvidas e descobertas.

Não esqueça de postar o arquivo com a indicação de cada questão com a respectiva sentença SELECT criada.

Bom trabalho e, qualquer dúvida, estou à disposição!

# 3a. Avaliação - Linguagem SQL
##### Prática com Consulta
(não é permitido o uso de Ferramenta CASE para geração dos scripts DDL)

O cenário a seguir corresponde a parte da modelagem de dados de um sistema de informação que gerencia salas de cinema de uma rede no sul do Brasil. Entende-se por gênero: drama, ação, comédia, infantil, entre outros. Censura indica a classificação do filme, ou seja: livre, 12 anos, adulto, entre outros. Ainda, tem-se a figura do(s) ator(es) principal(is) do filme.

<div style="text-align:center;">
    <img src="https://imgur.com/ZsgEhdj.png" alt="Img">
</div>

Dado o MER Físico a cima, crie um arquivo e dentro deste a identificação de cada questão, contemplando o(s) script(s) correspondente(s) que implemente os comandos SQL para execução, em um SGBD de sua escolha, para as seguintes operações:

 

1. (4,5 Pontos) Aspectos estruturais:

    *  (3,0 Pontos) Comandos para definição das estruturas do modelo (tabelas, campos e restrições de PK e FK);
    * (0,5 Ponto) Comando para criação de uma tabela denominada “SALA_EXIBICAO” com os seguintes campos: CD_SALA (numérico inteiro), NM_SALA (caractere) e NR_CAPACIDADE (numérico inteiro). Utilize a racionalidade para indicar os tipos de dados para os respectivos campos;
    * (0,5 Ponto) Comando para alteração da tabela “FILME” incluindo um campo (não obrigatório) que será FK para a tabela “SALA_EXIBICAO”;
    * (0,5 Ponto) Comando para alteração da estrutura já existente de forma a incluir uma restrição de unicidade para o campo “nm_ator” da tabela Ator.

2. (1,0 Ponto) Inserção de, no mínimo: 05 filmes, 05 atores, 03 gêneros e 03 censuras - todos (atores, gêneros e censuras associados a filmes);

3. (1.0 Ponto) Exibir as informações sobre os filmes (nome, descrição do gênero e sencura, duração e indicação de dublagem ou não), assim como o(s) ator(es) envolvido(s) no respectivo filme;

4. (1,0 Ponto) Listagem dos nomes dos filmes, com a respectiva descrição da censura e a quantidade de atores cadastrados;

5. (1,0 Ponto) Recuperação das descrições dos gêneros com a respectiva quantidade de filmes agrupada a cada gênero;

6. (1,5 Pontos) Exibir o(s) nome(s) do(s) ator(es) que não está(ão) associado(s) a nenhum filme em que a data de lançamento do filme tenha sido no ano de 2019.

No AVA3, utilize o recurso denominado “3ª Avaliação – Linguagem SQL” para submeter o arquivo único para correção do professor.

Boa Avaliação!

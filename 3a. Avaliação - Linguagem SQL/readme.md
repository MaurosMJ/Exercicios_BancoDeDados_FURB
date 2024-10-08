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
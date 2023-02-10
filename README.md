# :heavy_check_mark: Projeto Finalizado :heavy_check_mark:

## La Vie - Desafio 3 - Gama Academy

Foi solicitado a criação de uma API para melhor atender, agilizar e documentar todas as consultas da clínica de saúde mental La Vie, criada por amigos psicólogos para oferecer diversos tipos de terapia aos seus pacientes.

## Instruções para iniciar o projeto

Para executá-lo, primeiramente é necessário informar e direcionar a um banco de dados MySQL. Vá no arquivo src/database/dbsecret.js e preencha os campos "usuario" e "senha" com suas informações para conectar ao seu MySQL. 

Após feito isso, basta digitar no node o comando "npm run start" para iniciar o projeto junto ao nodemon.

## Documentação da API

Clique no botão abaixo para ser redirecionado a documentação pelo Insomnia

Markdown Snippet

[![Run in Insomnia}](https://insomnia.rest/images/run.svg)](https://insomnia.rest/run/?label=La%20Vie%20-%20Clinica%20de%20Psic%C3%B3logos&uri=Grupo%201)


## API

As tecnologias e pacotes utilizados nesse projeto foram Sequelize e Express, sendo divididos em 4 endpoints:

:white_medium_square:Login<br>
:white_medium_square:Pacientes<br>
:white_medium_square:Psicólogos<br>
:white_medium_square:Atendimento<br>

## Login

No área de login é feito uma autenticação de e-mail e senha que retorna um token gerado pelo [JWT](https://www.npmjs.com/package/jsonwebtoken)

## Pacientes

Feito um CRUD de acordo com a documentação.

## Psicólogos

No CRUD foi utilizado o pacote [bcrypt](https://www.npmjs.com/package/bcrypt) fazendo a criptografia na senha do psicólogo.

### Atendimentos

Para criação do atendimento é necessário uma autorização. Essa autorização é feita pelo token JWT.

## Desenvolvedores responsáveis pelo projeto - Grupo nº 1
  
[Daniel Alejandro](https://github.com/FullDevDaniel) e 
[Arthur Pinheiro](https://github.com/arturpinheiro0)


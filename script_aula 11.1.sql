-- Use o comando para selecionar a base de dados

USE locadora_db;

-- E responda as questões a seguir

--  Agora, escreva uma consulta SELECT para responder a cada uma das seguintes perguntas:


SELECT * FROM filmes;

-- 1 Clássicos do Século XX: Quais filmes do catálogo foram lançados antes do ano 2000?

SELECT * FROM filmes WHERE ano_lancamento < 2000 ;

-- 2 Aclamados pela Crítica: Quais filmes têm uma nota de avaliação maior ou igual a 8.8?

SELECT * FROM filmes WHERE avaliacao >= 8.8 ;

-- 3 Ficção Científica Moderna: Quais filmes são do gênero 'Ficção Científica' E foram lançados a partir de 2010?

SELECT * FROM filmes WHERE genero = 'Ficcão Científica' AND ano_lancamento >= 2010 ;

-- 4 Sessão da Tarde: Quais filmes são do gênero 'Drama' OU do gênero 'Animação'?

SELECT * FROM filmes WHERE genero = 'Drama' OR genero = 'Animação' ;

-- 5 Excluindo um Título: Liste todos os filmes, exceto o filme com o título 'Matrix'.

SELECT * FROM filmes WHERE titulo <> 'Matrix' ;
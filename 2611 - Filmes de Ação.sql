/* Filmes de Ação
Uma Vídeo locadora contratou seus serviços para catalogar os filmes dela. Eles
precisam que você selecione o código e o nome dos filmes cuja descrição do gênero
seja 'Action'.

## Tabela "movies"

| id  | name                         | id_genres |
| --- | ---------------------------- | --------- |
| 1   | Batman                       | 3         |
| 2   | The Battle of the Dark River | 3         |
| 3   | White Duck                   | 1         |
| 4   | Breaking Barriers            | 4         |
| 5   | The Two Hours                | 2         |

## Tabela "genres"

| id  | description |
| --- | ----------- |
| 1   | Animation   |
| 2   | Horror      |
| 3   | Action      |
| 4   | Drama       |
| 5   | Comedy      |
*/

SELECT
  m.id,
  m.name
FROM
  genres g,
  movies m
WHERE
  g.id = m.id_genres
  AND g.description = 'Action'
/* Filmes em Promoção
Antigamente a locadora fez um evento em que vários filmes estavam em promoção,
queremos saber que filmes eram esses.
Seu trabalho para nós ajudar é selecionar o ID e o nome dos filmes cujo preço for
menor que 2.00.

## Tabela "movies"

| id  | name                         | id_prices |
| --- | ---------------------------- | --------- |
| 1   | Batman                       | 3         |
| 2   | The Battle of the Dark River | 3         |
| 3   | White Duck                   | 5         |
| 4   | Breaking Barriers            | 4         |
| 5   | The Two Hours                | 2         |

## Tabela "prices"

| id  | categorie    | value |
| --- | -----------  | ----- |
| 1   | Releases     | 3.50  |
| 2   | Bronze Seal  | 2.00  |
| 3   | Silver Seal  | 2.50  |
| 4   | Gold Seal    | 3.00  |
| 5   | Promotion    | 1.50  |
*/

SELECT
  movies.id,
  movies.name
FROM
  movies,
  prices
WHERE
  movies.id_prices = prices.id
  AND prices.value < 2.00
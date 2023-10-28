/* Produtos por Categorias
Como de costume o setor de vendas está fazendo uma análise de quantos produtos temos em estoque, e
você poderá ajudar eles.
Então seu trabalho será exibir o nome e a quantidade de produtos de cada uma categoria.

## Tabela "products"

| id  | name                | amount | price  | id_categories |
| --- | ------------------- | ------ | -------| ------------- |
| 1   | Two-doors wardrobe  | 100    | 800.00 | 1             |
| 2   | Dining table        | 1000   | 560.00 | 3             |
| 3   | Towel holder        | 10000  | 25.50  | 4             |
| 4   | Computer desk       | 350    | 320.50 | 2             |
| 5   | Chair               | 3000   | 210.64 | 4             |
| 6   | Single bed          | 750    | 460.00 | 1             |

## Tabela "categories"

| id  | name         |
| --- | ------------ |
| 1   | wood         |
| 2   | luxury       |
| 3   | vintage      |
| 4   | modern       |
| 5   | super luxury |
*/

SELECT
  ctgr.name,
  sum(pdct.amount)
FROM
  categories ctgr,
  products pdct
WHERE
  pdct.id_categories = ctgr.id
GROUP BY 
  ctgr.name
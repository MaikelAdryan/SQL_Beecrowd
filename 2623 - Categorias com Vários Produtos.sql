/* Categorias com Vários Produtos
O setor de vendas precisa de um relatório para saber quais produtos estão
sobrando em estoque.
Para você ajudar o setor de vendas, exiba o nome do produto e o nome da categoria,
para os produtos cuja quantidade seja maior que 100 e o código da categoria seja
1,2,3,6 ou 9. Mostre essas informações em ordem crescente pelo código da categoria.

**Tabela "products"**

| id  | name             | amount | price   | id_categories |
| --- | ---------------- | ------ | ------- | ------------- |
| 1   | Blue Chair       | 30     | 300.00  | 9             |
| 2   | Red Chair        | 200    | 2150.00 | 2             |
| 3   | Disney Wardrobe  | 400    | 829.50  | 4             |
| 4   | Blue Toaster     | 20     | 9.90    | 3             |
| 5   | Solar Panel      | 30     | 3000.25 | 4             |

**Tabela "categories"**

| id  | name         |
| --- | ------------ |
| 1   | Superior     |
| 2   | Super Luxury |
| 3   | Modern       |
| 4   | Nerd         |
| 5   | Infantile    |
| 6   | Robust       |
| 9   | Wood         |
*/
SELECT
  p.name,
  c.name
FROM
  products p,
  categories c
WHERE
  p.id_categories = c.id
  AND p.amount > 100
  AND c.id IN (1, 2, 3, 6, 9)
ORDER BY
  c.id ASC
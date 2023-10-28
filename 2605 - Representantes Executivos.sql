/* Representantes Executivos
O setor financeiro precisa de um relatório sobre os fornecedores dos produtos
que vendemos. Os relatórios contemplam todas as categorias, mas por algum motivo,
os fornecedores dos produtos cuja categoria é a executiva, não estão no relatório.
Seu trabalho é retornar os nomes dos produtos e dos fornecedores cujo código da categoria é 6.

## Tabela "products"

| id  | name               | amount | price  | id_providers | id_categories |
| --- | ------------------ | ------ | ------ | ------------ | ------------- |
| 1   | Two-door wardrobe  | 100    | 800.00 | 6            | 8             |
| 2   | Dining table       | 1000   | 560.00 | 1            | 9             |
| 3   | Towel holder       | 10000  | 25.50  | 5            | 1             |
| 4   | Computer desk      | 350    | 320.50 | 4            | 6             |
| 5   | Chair              | 3000   | 210.64 | 3            | 6             |
| 6   | Single bed         | 750    | 460.00 | 1            | 2             |

## Tabela "providers"

| id  | name            | street              | city             | state |
| --- | --------------- | ------------------- | ---------------- | ----- |
| 1   | Henrique        | Av Brasil           | Rio de Janeiro   | RJ    |
| 2   | Marcelo Augusto | Rua Imigrantes      | Belo Horizonte   | MG    |
| 3   | Caroline Silva  | Av São Paulo        | Salvador         | BA    |
| 4   | Guilerme Staff  | Rua Central         | Porto Alegre     | RS    |
| 5   | Isabela Moraes  | Av Juiz Grande      | Curitiba         | PR    |
| 6   | Francisco Accerr| Av Paulista         | São Paulo        | SP    |

## Tabela "categories"

| id  | name         |
| --- | ------------ |
| 1   | old stock    |
| 2   | new stock    |
| 3   | modern       |
| 4   | commercial   |
| 5   | recyclable   |
| 6   | executive    |
| 7   | superior     |
| 8   | wood         |
| 9   | super luxury |
| 10  | vintage      |

*/

SELECT
  pd.name,
  pv.name
FROM
  products pd,
  providers pv
WHERE
  pd.id_categories = 6
  AND pd.id_providers = pv.id
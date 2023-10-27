/* Produtos Importados
O setor de importação da nossa empresa precisa de um relatório sobre a importação de
produtos do nosso fornecedor Sansul.
Sua tarefa é exibir o nome dos produtos, o nome do fornecedor e o nome da categoria,
para os produtos fornecidos pelo fornecedor ‘Sansul SA’ e cujo nome da categoria seja
'Imported'.

## Tabelas de Dados

### Tabela "products":
| id  | name            | amount | price   | id_providers | id_categories |
| --- | --------------- | ------ | ------- | -----------  | ------------- |
| 1   | Blue Chair      | 30     | 300.00  | 5            | 5             |
| 2   | Red Chair       | 50     | 2150.00 | 2            | 1             |
| 3   | Disney Wardrobe | 400    | 829.50  | 4            | 1             |
| 4   | Blue Toaster    | 20     | 9.90    | 3            | 1             |
| 5   | TV              | 30     | 3000.25 | 2            | 2             |

### Tabela "providers":
| id  | name         | street                         | city           | state |
| --- | ------------ | ------------------------------ | -------------  | ----- |
| 1   | Ajax SA      | Rua Presidente Castelo Branco  | Porto Alegre   | RS    |
| 2   | Sansul SA    | Av Brasil                      | Rio de Janeiro | RJ    |
| 3   | South Chairs | Rua do Moinho                  | Santa Maria    | RS    |
| 4   | Elon Electro | Rua Apolo                      | São Paulo      | SP    |
| 5   | Mike Electro | Rua Pedro da Cunha             | Curitiba       | PR    |

### Tabela "categories":
| id  | name         |
| --- | -----------  |
| 1   | Super Luxury |
| 2   | Imported     |
| 3   | Tech         |
| 4   | Vintage      |
| 5   | Supreme      |

*/

SELECT
  pd.name,
  pv.name,
  c.name
FROM
  providers pv,
  categories c,
  products pd
WHERE
  pd.id_providers = pv.id
  AND pd.id_categories = c.id
  AND pv.name = 'Sansul SA'
  AND c.name = 'Imported'
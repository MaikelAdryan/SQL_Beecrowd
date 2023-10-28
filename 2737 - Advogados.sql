/* Advogados
O diretor da Mangojata Advogados ordenou que lhe fosse entregue um relatório sobre
seus advogados atuais.
O diretor quer que você mostre para ele o nome do advogado que têm mais clientes, o
nome do advogado que tem menos clientes e a média de clientes entre todos os advogados.
OBS: Antes de apresentar a média mostre um campo chamado Average a fim de deixar o
relatório mais apresentável. A média deverá ser apresentada em inteiros.

**Tabela "lawyers"**

| register | name               | customers_number |
|----------|--------------------|------------------|
| 1648     | Marty M. Harrison  | 5                |
| 2427     | Jonathan J. Blevins| 15               |
| 3365     | Chelsey D. Sanders | 20               |
| 4153     | Dorothy W. Ford    | 16               |
| 5525     | Penny J. Cormier   | 6                |
*/
SELECT name, customers_number
FROM (
  SELECT name, customers_number, 1 as sort_order
  FROM lawyers
  WHERE customers_number = (SELECT MAX(customers_number) FROM lawyers)
  UNION ALL
  SELECT name, customers_number, 2 as sort_order
  FROM lawyers
  WHERE customers_number = (SELECT MIN(customers_number) FROM lawyers)
  UNION ALL
  SELECT 'Average' AS name, ROUND(AVG(customers_number)) AS customers_number, 3 as sort_order
  FROM lawyers
) AS combined
ORDER BY sort_order;
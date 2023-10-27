/* Nenhuma Locação
A locadora pretende fazer uma promoção para os clientes que ainda não fizeram nenhuma locação.

Seu trabalho é nos entregar o ID e o nome dos clientes que não realizaram nenhuma locação. Ordene a saída por ID.

|       customers                                                                      |
| --------------------------------- | ------------------------------ | --------------- |
| id  | name                        | street                         | city            |
| --- | --------------------------- | ------------------------------ | --------------- |
| 1   | Giovanna Goncalves Oliveira | Rua Mato Grosso                | Canoas          |
| 2   | Kauã Azevedo Ribeiro        | Travessa Ibiá                  | Uberlândia      |
| 3   | Rebeca Barbosa Santos       | Rua Observatório Meteorológico | Salvador        |
| 4   | Sarah Carvalho Correia      | Rua Antônio Carlos da Silva    | Uberlândia      |
| 5   | João Almeida Lima           | Rua Rio Taiuva                 | Ponta Grossa    |
| 6   | Diogo Melo Dias             | Rua Duzentos e Cinqüenta       | Várzea Grande   |

|     locations                       |
| ----------------------------------- |
| id  | locations_date | id_customers |
| --- | -------------- | ------------ |
| 1   | 2016-10-09     | 3            |
| 2   | 2016-09-02     | 1            |
| 3   | 2016-08-02     | 4            |
| 4   | 2016-09-02     | 2            |
| 5   | 2016-03-02     | 6            |
| 6   | 2016-04-04     | 4            |

*/
SELECT
  c.id,
  c.name
FROM
  customers c
WHERE
  c.id NOT IN (SELECT locations.id_customers FROM locations) 
GROUP BY c.id
ORDER BY c.id

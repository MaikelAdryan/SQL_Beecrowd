/* Locações de Setembro
A vídeo locadora está fazendo seu relatório semestral e precisa da sua ajuda.
Basta você selecionar o nome dos clientes e a data de locação, das locações
realizadas no mês de setembro de 2016.

## Tabela "customers"

| id  | name                           | street                          | city            |
| --- | ------------------------------ | ------------------------------- | --------------- |
| 1   | Giovanna Goncalves Oliveira    | Rua Mato Grosso                 | Canoas          |
| 2   | Kauã Azevedo Ribeiro           | Travessa Ibiá                   | Uberlândia      |
| 3   | Rebeca Barbosa Santos          | Rua Observatório Meteorológico  | Salvador        |
| 4   | Sarah Carvalho Correia         | Rua Antônio Carlos da Silva     | Apucarana       |
| 5   | João Almeida Lima              | Rua Rio Taiuva                  | Ponta Grossa    |
| 6   | Diogo Melo Dias                | Rua Duzentos e Cinqüenta        | Várzea Grande   |

## Tabela "rentals"

| id  | rentals_date  | id_customers |
| --- | ------------- | ------------ |
| 1   | 2016-09-10    | 3            |
| 2   | 2016-02-09    | 1            |
| 3   | 2016-02-08    | 4            |
| 4   | 2016-02-09    | 2            |
| 5   | 2016-02-03    | 6            |
| 6   | 2016-04-04    | 4            |
*/

SELECT
  c.name,
  r.rentals_date
FROM
  customers c,
  rentals r
WHERE
  c.id = r.id_customers
  AND EXTRACT(MONTH FROM r.rentals_date) = 09
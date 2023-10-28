/* Select Básico
Sua empresa está fazendo um levantamento de quantos clientes estão cadastrados nos estados, porém,
faltou levantar os dados do estado do Rio Grande do Sul.
Então você deve Exibir o nome de todos os clientes cujo estado seja ‘RS’.

## Tabela "customers"

| id | name                     | street                   | city             | state | credit_limit |
| -- | ------------------------ | ------------------------ | ---------------- | ----- | ------------ |
| 1  | Pedro Augusto da Rocha   | Rua Pedro Carlos Hoffman | Porto Alegre     | RS    | 700,00       |
| 2  | Antonio Carlos Mamel     | Av. Pinheiros            | Belo Horizonte   | MG    | 3500,50      |
| 3  | Luiza Augusta Mhor       | Rua Salto Grande         | Niteroi          | RJ    | 4000,00      |
| 4  | Jane Ester               | Av 7 de setembro         | Erechim          | RS    | 800,00       |
| 5  | Marcos Antônio dos Santos| Av Farrapos              | Porto Alegre     | RS    | 4250,25      |

*/

SELECT name FROM customers WHERE state = 'RS'
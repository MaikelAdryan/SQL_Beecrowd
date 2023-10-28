/* Pessoas Jurídicas
O setor de vendas quer fazer uma promoção para todos os clientes que são pessoas jurídicas. Para isso você deve exibir o nome dos clientes que sejam
pessoa jurídica.


**customers**

| id | name                                    | street                                | city            | state | credit_limit |
|----|-----------------------------------------|---------------------------------------|-----------------|-------|--------------|
| 1  | Nicolas Diogo Cardoso                   | Acesso Um                             | Porto Alegre    | RS    | 475          |
| 2  | Cecília Olivia Rodrigues                | Rua Sizuka Usuy                       | Cianorte        | PR    | 3170         |
| 3  | Augusto Fernando Carlos Eduardo Cardoso | Rua Baldomiro Koerich                 | Palhoça         | SC    | 1067         |
| 4  | Nicolas Diogo Cardoso                   | Acesso Um                             | Porto Alegre    | RS    | 475          |
| 5  | Sabrina Heloisa Gabriela Barros         | Rua Engenheiro Tito Marques Fernandes | Porto Alegre    | RS    | 4312         |
| 6  | Joaquim Diego Lorenzo Araújo            | Rua Vitorino                          | Novo Hamburgo   | RS    | 2314         |

**legal_person**

| id_customers | cnpj           | contact    |
|-------------|-----------------|------------|
| 4           | 85883842000191  | 99767-0562 |
| 5           | 47773848000117  | 99100-8965 |
*/
SELECT
  c.name
FROM
  customers c,
  legal_person l
WHERE
  c.id = l.id_customers
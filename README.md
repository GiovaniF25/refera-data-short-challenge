Desafio da Refera 
    
Pergunta 1:

Qual foi os top 2 filmes mais alugados de todos os tempos?
R: 
film_id |       title        | num_rentals 
---------+--------------------+-------------
     103 | Bucket Brotherhood |          34
     738 | Rocketeer Mother   |          33


Dentre os top 16 filmes mais alugados, qual o nome completo do ator mais presente nesses filmes?
R:
 actor_id |    actor_name     | num_films 
----------+-------------------+-----------
      111 | Cameron Zellweger |         3


Pergunta 3:

Quantos clientes novos a empresa adquiriu por mês? Considere a data de início de um novo cliente como sendo a data do primeiro filme que esse cliente alugou.
R:
month | new_customers 
-------+---------------
     2 |           158
     5 |           520
     6 |           590
     7 |           599
     8 |           599
(5 rows)Saída esperada: 2 colunas ( mês_entrada_cliente:date | quantidade_de_clientes:int ) e 3 linhas.

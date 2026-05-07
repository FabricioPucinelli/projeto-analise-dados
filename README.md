# Sistema de Vendas — Banco de Dados Relacional

Modelagem relacional de um sistema de vendas com clientes, produtos e pedidos,
com análise dos dados em Python usando pandas e visualização com matplotlib e seaborn.

## Tecnologias

- MySQL
- SQL
- Python
- pandas
- matplotlib
- seaborn

## Como rodar

Execute os scripts SQL na seguinte ordem:

1. `cadastro_clientes.sql` — cria o banco e as tabelas
2. `seed.sql` — popula as tabelas com dados de exemplo
3. `queries.sql` — consultas de análise em SQL

Para rodar a análise em Python:

4. Crie um arquivo `.env` na pasta do projeto com o conteúdo: `DB_PASSWORD=sua_senha`
5. Abra o `analise_vendas.ipynb` no Jupyter Notebook e rode todas as células

## Estrutura do banco

- `clientes` — cadastro de clientes
- `produtos` — catálogo de produtos
- `pedidos` — registro de pedidos por cliente
- `pedido_produto` — itens de cada pedido (tabela intermediária)

## Análises

- Total gasto por cliente
- Produto mais vendido
- Produtos que nunca foram vendidos
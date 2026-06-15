# Sistema de Análise de Vendas com Banco de Dados Relacional

## Objetivo do projeto

Este projeto simula um cenário real de análise de vendas de uma empresa, com o objetivo de modelar um banco de dados relacional, realizar consultas em SQL e gerar insights de negócio utilizando Python.

O foco é demonstrar habilidades em:

* Modelagem de dados
* Consultas SQL
* Análise de dados com Python (Pandas)
* Visualização de dados

---

## Problema de negócio

Uma empresa de e-commerce precisa entender melhor:

* Quem são seus melhores clientes
* Quais produtos mais vendem
* Quais produtos não têm saída
* O volume total de compras por cliente

---

## Tecnologias utilizadas

* MySQL
* SQL
* Python
* Pandas
* Matplotlib
* Seaborn

---

## Estrutura do banco de dados

O sistema é composto pelas seguintes tabelas:

* `clientes` → cadastro de clientes
* `produtos` → catálogo de produtos
* `pedidos` → registros de pedidos
* `pedido_produto` → itens de cada pedido (tabela de relação)

---

## Como executar o projeto

### 1. Banco de dados

Execute os scripts na seguinte ordem:

```text
cadastro_clientes.sql
seed.sql
queries.sql
```

---

### 2. Configuração do Python

Crie um arquivo `.env`:

```text
DB_PASSWORD=sua_senha
```

---

### 3. Análise de dados

Abra o notebook:

```text
analise_vendas.ipynb
```

Execute todas as células.

---

## Análises realizadas

O projeto responde perguntas como:

* Qual cliente mais gastou na empresa?
* Quais são os produtos mais vendidos?
* Quais produtos nunca foram vendidos?
* Qual o faturamento por cliente?

---

## Principais insights

* Identificação de clientes de maior valor
* Produtos com baixa ou nenhuma saída
* Análise de comportamento de compra
* Visão geral do faturamento

---

## O que este projeto demonstra

Este projeto mostra capacidade de:

* Modelar banco de dados relacional
* Criar consultas SQL para análise
* Manipular dados com Python
* Gerar insights a partir de dados reais
* Trabalhar com pipeline simples de dados

---

## Próximos passos

* Automatizar análises
* Criar dashboard interativo
* Expandir base de dados

# Sistema de Controle de Vendas de Café - BomGosto

Este projeto é um sistema de gerenciamento de vendas de café para a cafeteria **BomGosto**, desenvolvido em SQL. O sistema permite registrar comandas, itens vendidos e calcular faturamento, total por comanda e relatórios por data.

---

## Estrutura do Banco de Dados

O banco de dados possui as seguintes tabelas principais:

### 1. `Cardapio`
Armazena os cafés disponíveis no cardápio.

| Coluna          | Tipo        | Descrição                       |
|-----------------|------------|---------------------------------|
| cod_cardapio    | INT        | Código único do café            |
| nome            | VARCHAR    | Nome do café (único)            |
| descricao       | TEXT       | Descrição da composição         |
| preco_unitario  | DECIMAL    | Preço unitário do café          |

### 2. `Comanda`
Registra cada pedido realizado na cafeteria.

| Coluna          | Tipo        | Descrição                       |
|-----------------|------------|---------------------------------|
| cod_comanda     | INT        | Código único da comanda         |
| data            | DATE       | Data da comanda                 |
| mesa            | INT        | Número da mesa                  |
| nome_cliente    | VARCHAR    | Nome do cliente                 |

### 3. `ItemComanda`
Relaciona os cafés vendidos em cada comanda.

| Coluna          | Tipo        | Descrição                       |
|-----------------|------------|---------------------------------|
| cod_comanda     | INT        | Código da comanda (FK)          |
| cod_cardapio    | INT        | Código do café (FK)             |
| quantidade      | INT        | Quantidade solicitada           |


## Consultas SQL Implementadas

1. **Listagem do cardápio ordenada por nome**
2. **Listagem de comandas com itens detalhados** (nome do café, descrição, quantidade, preço unitário e total)
3. **Valor total de cada comanda**
4. **Filtrar comandas com mais de um tipo de café**
5. **Faturamento total por data**


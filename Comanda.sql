SELECT 
    com.cod_comanda AS codigo_comanda,
    com.data,
    com.mesa,
    com.nome_cliente,
    caf.nome AS nome_cafe,
    caf.descricao,
    item.quantidade,
    caf.preco_unitario,
    (item.quantidade * caf.preco_unitario) AS preco_total_cafe
FROM 
    Comanda com
JOIN 
    ItemComanda item ON com.cod_comanda = item.cod_comanda
JOIN 
    Cardapio caf ON item.cod_cardapio = caf.cod_cardapio
ORDER BY 
    com.data ASC,
    com.cod_comanda ASC,
    caf.nome ASC;

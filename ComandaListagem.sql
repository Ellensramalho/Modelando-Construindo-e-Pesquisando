SELECT 
    com.cod_comanda AS codigo_comanda,
    com.data,
    com.mesa,
    com.nome_cliente,
    SUM(ic.quantidade * ca.preco_unitario) AS valor_total_comanda
FROM 
    Comanda com
JOIN 
    ItemComanda ic ON com.cod_comanda = ic.cod_comanda
JOIN 
    Cardapio ca ON ic.cod_cardapio = ca.cod_cardapio
GROUP BY 
    com.cod_comanda, com.data, com.mesa, com.nome_cliente
ORDER BY 
    com.data ASC;

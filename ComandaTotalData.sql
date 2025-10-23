SELECT 
    com.data,
    SUM(ic.quantidade * ca.preco_unitario) AS faturamento_total
FROM 
    Comanda com
JOIN 
    ItemComanda ic ON com.cod_comanda = ic.cod_comanda
JOIN 
    Cardapio ca ON ic.cod_cardapio = ca.cod_cardapio
GROUP BY 
    com.data
ORDER BY 
    com.data ASC;

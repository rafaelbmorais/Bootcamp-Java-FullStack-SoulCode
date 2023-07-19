USE lojadb;

-- JUNÇÃO: unir tabelas para realizar consultas mais elaboradas, baseadas em seus relacionamentos.

SELECT nome, email, UF, cidade -- podemos escolher quais colunas exibir da junção.
FROM vendedor
	JOIN endereco
	ON idVendedor = fkVendedor; -- o que faz o vinculo entre as tabelas.
    
-- Como filtrar os vendedores de SP?
SELECT nome, email, UF, cidade -- podemos escolher quais colunas exibir da junção.
FROM vendedor
	JOIN endereco
	ON idVendedor = fkVendedor	 -- o que faz o vinculo entre as tabelas.
WHERE uf = "SP";

-- Q1: Junte produto + categoria.
SELECT *
FROM produto
	JOIN categoria
    ON idCategoria = fkCategoria;

SELECT produto.nome, preco, descricao, categoria.nome AS categoria
FROM produto
	JOIN categoria
    ON idCategoria = fkCategoria;
    
SELECT P.nome, C.nome
FROM produto AS P
	JOIN categoria AS C
    ON C.idCategoria = P.fkCategoria;
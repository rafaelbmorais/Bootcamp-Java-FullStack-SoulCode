USE lojadb;

-- JOIN: usado quando é necessário fazer consultas que precisam de mais de uma tabela ao mesmo tempo.ALTER

SELECT *
FROM produto
	JOIN categoria
    ON fkCategoria = idCategoria; -- é necessário o ON para poder fazer a junção por pelas chaves FK e ID, assim não repete muitas informações.


SELECT produto.nome AS produto, preco, estoque, categoria.nome AS categoria -- nas tabelas produto e categoria tem o campo 'nome' em ambas, quando fizer a junção dará erro. 
FROM produto																-- nesse caso pode se usar um alias (Apelido) para cada coluna com o nome equivalente.
	JOIN categoria
    ON fkCategoria = idCategoria;
    
SELECT *					-- essa é uma outra alternativa quando as tabelas tem nomes de colunas iguais
FROM produto AS P
	JOIN categoria AS C
    ON P.fkCategoria = C.idCategoria;

SELECT *
FROM produto AS P
	JOIN categoria AS C
    ON P.fkCategoria = C.idCategoria
WHERE C.nome = "Livros";

SELECT V.nome, V.email, E.uf, E.cidade
FROM vendedor AS V
	JOIN endereco AS E
	ON E.fkVendedor = V.idVendedor
WHERE E.uf = "SP";

SELECT E.uf, COUNT(*) AS total
FROM vendedor AS V
	JOIN endereco AS E
	ON E.fkVendedor = V.idVendedor
GROUP BY E.uf;

-- ---
SELECT *
FROM produto AS P
	JOIN vendedor AS V
	ON P.fkVendedor = V.idVendedor
	JOIN endereco AS E
    ON E.fkVendedor = V.idVendedor;    
    
SELECT *
FROM produto AS P
	JOIN endereco AS E
    ON E.fkVendedor = P.fkVendedor; -- junta as linhas onde o vendedor é o mesmo.

-- Q1: FIltrar os produtos por estados CE, SP e MG que estão acima de 10% de desconto.
SELECT *			-- traz todas as colunas das tabelas
FROM produto AS P
	JOIN endereco AS E
    ON E.fkVendedor = P.fkVendedor
WHERE E.uf IN("CE", "SP", "MG") AND P.percentualDesconto > 0.10;

SELECT P.nome AS produto, P.preco, P.percentualDesconto, E.uf  -- traz somente essas colunas
FROM produto AS P
	JOIN endereco AS E
    ON E.fkVendedor = P.fkVendedor
WHERE E.uf IN("CE", "SP", "MG") AND P.percentualDesconto > 0.10;

-- Q2: Conte quantos produtos cada vendedor possui
SELECT V.idVendedor, COUNT(*) AS total_produtos
FROM produto AS P
	JOIN vendedor AS V
	ON P.fkVendedor = V.idVendedor
GROUP BY V.idVendedor; -- é muito importante ter um critério no GROUP BY pois pode agrupar trazendo informações equivocadas

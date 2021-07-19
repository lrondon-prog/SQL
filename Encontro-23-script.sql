SELECT * FROM produto
GO

SELECT COUNT(*) FROM produtos
GO

SELECT MAX(catid) AS maiorcatid FROM produto
GO

SELECT MIN(catid) AS menorcatid FROM produto
GO

SELECT	
	MIN(catid) AS menorcatid,
	MAX(catid) AS maiorcatid,
	COUNT(*) AS totalprodutos
FROM produto

SELECT        produtoid, subcatid, catid, descricao, datainsert
FROM            produto
WHERE catid = 14
GO


SELECT 
	PRO.produtoid, 
	PRO.subcatid, 
	SUBCAT.descricao AS 'Descricao da Subcategoria',
	PRO.catid, 
	PRO.descricao AS 'Descricao do Produto', 
	PRO.datainsert
FROM produto AS PRO
INNER JOIN subcategoria AS SUBCAT ON
PRO.subcatid = SUBCAT.subcatid
WHERE PRO.catid = 14
GO

SELECT 
	PRO.produtoid, 
	PRO.subcatid, 
	SUBCAT.descricao AS 'Descricao da Subcategoria',
	PRO.catid, 
	CAT.descricao AS 'Descricao do Categoria', 
	PRO.descricao AS 'Descricao do Produto',
	PRO.datainsert
FROM produto AS PRO
INNER JOIN subcategoria AS SUBCAT ON
PRO.subcatid = SUBCAT.subcatid
INNER JOIN categoria AS CAT ON
	PRO.catid = CAT.catid
WHERE PRO.catid = 14
GO

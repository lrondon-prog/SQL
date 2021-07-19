CREATE PROCEDURE sp_PesquisarPorIBGE7

(@pesquisaIBGE7 INT)
AS
SELECT 
		UFS.Descricao AS Estado,
		MES.Descricao AS MesoregiaoNome,
		MIC.Descricao AS MicroregiaoNome,
	    MUN.CEP
FROM Municipio AS MUN
INNER JOIN Mesoregiao AS MES
	ON MUN.MesoregiaoID = MES.MesoregiaoID
INNER JOIN Microregiao AS MIC
	ON MUN.MicroregiaoID = MIC.MicroregiaoID
INNER JOIN UnidadesFederacao AS UFS
	ON MUN.UFID = UFS.UFID
WHERE MUN.IBGE7 = @IBGE7;
GO
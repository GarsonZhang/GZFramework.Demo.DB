SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_SO_SearchTopList]
	@TopNum INT
AS
BEGIN
	/***************************************************
		-- 功能：销售统计
		-- 作者：GarsonZhang
		-- 时间：2017-05-05 12:59:59
		-- 备注：
		-- 测试：
		usp_SO_SearchTopList 20
	***************************************************/
	
	DECLARE @SQL VARCHAR(500)
	SET @SQL='SELECT TOP '+CAST(@TopNum AS VARCHAR)+' * FROM dbo.tb_SODetail ORDER BY CreateDate DESC'
	EXEC( @SQL)
	
END
GO

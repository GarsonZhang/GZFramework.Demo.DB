SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[ufn_GetChildCategory](
	@CategoryID VARCHAR(10)
)
RETURNS @RESULT TABLE(
	CategoryID VARCHAR(10)
)
AS
BEGIN
	/***************************************************
		-- 功能：获得子类别
		-- 作者：GarsonZhang
		-- 时间：2017-05-03 13:51:57
		-- 备注：
		-- 测试：
	***************************************************/
	INSERT INTO @RESULT( CategoryID )
	SELECT CategoryID 
	FROM dbo.tb_ProductCategory 
	WHERE CategoryID=@CategoryID
		
	WHILE EXISTS(SELECT * FROM dbo.tb_ProductCategory WHERE ParentCategoryID IN(SELECT CategoryID FROM @RESULT) AND CategoryID NOT IN (SELECT CategoryID FROM @RESULT))
	BEGIN
		INSERT INTO @RESULT( CategoryID )
		SELECT CategoryID FROM dbo.tb_ProductCategory WHERE ParentCategoryID IN(SELECT CategoryID FROM @RESULT) AND CategoryID NOT IN (SELECT CategoryID FROM @RESULT)
	END
	RETURN;
END
GO

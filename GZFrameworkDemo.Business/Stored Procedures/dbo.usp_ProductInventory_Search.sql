SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_ProductInventory_Search]
	@ProductCategory VARCHAR(20)=''
AS
BEGIN
	/***************************************************
		-- 功能：库存查询
		-- 作者：GarsonZhang
		-- 时间：2017-05-03 13:55:25
		-- 备注：
		-- 测试：
		usp_ProductInventory_Search 'C001-'
	***************************************************/
	IF(ISNULL(@ProductCategory,'')='')
		SELECT a.*,b.CategoryName,Tag=a.ItemNo+'    '+a.ItemName FROM dbo.tb_ProductInventory AS a LEFT JOIN dbo.tb_ProductCategory AS b ON b.CategoryID = a.CategoryID
	ELSE
	BEGIN
		SELECT a.*,b.CategoryName,Tag=a.ItemNo+'    '+a.ItemName FROM dbo.tb_ProductInventory AS a LEFT JOIN dbo.tb_ProductCategory AS b ON b.CategoryID = a.CategoryID
		WHERE  a.CategoryID IN (SELECT CategoryID from dbo.ufn_GetChildCategory(@ProductCategory))
	END
END	
GO

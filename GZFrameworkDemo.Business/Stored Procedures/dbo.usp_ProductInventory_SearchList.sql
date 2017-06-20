SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_ProductInventory_SearchList]
	@ProductCategory VARCHAR(20)=''
AS
BEGIN
	/***************************************************
		-- 功能：库存查询
		-- 作者：GarsonZhang
		-- 时间：2017-05-03 13:55:25
		-- 备注：
		-- 测试：
		usp_ProductInventory_SearchList ''
	***************************************************/
	IF(ISNULL(@ProductCategory,'')='')
		SELECT ItemNo,ItemName,CategoryID,SOPrice,Qty=SUM(ISNULL(Qty,0))
		FROM dbo.tb_ProductInventory 
		GROUP BY ItemNo,ItemName,CategoryID,SOPrice
	ELSE
	BEGIN
		SELECT ItemNo,ItemName,CategoryID,SOPrice,Qty=SUM(ISNULL(Qty,0))
		FROM dbo.tb_ProductInventory 
		WHERE  CategoryID IN (SELECT CategoryID from dbo.ufn_GetChildCategory(@ProductCategory))
		GROUP BY ItemNo,ItemName,CategoryID,SOPrice
	END
END	
GO

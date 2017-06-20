SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_ProductInventory_GetDetail]
	@ItemNo VARCHAR(50)=''
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

	SELECT ItemImage FROM dbo.tb_ProductInventory WHERE ItemNo=@ItemNo
	SELECT a.* FROM dbo.tb_ProductInventoryDetail AS a LEFT JOIN dbo.vw_Size AS b ON a.Size=b.DataName
	WHERE ItemNo=@ItemNo
	ORDER BY b.SortIndex
END	
GO

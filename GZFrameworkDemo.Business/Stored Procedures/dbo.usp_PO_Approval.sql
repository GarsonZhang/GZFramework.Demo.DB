SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_PO_Approval]
	@DocNo VARCHAR(50),
	@Account VARCHAR(20),
	@AppStatus INT
AS
BEGIN
	/***************************************************
		-- 功能：入库审核
		-- 作者：GarsonZhang
		-- 时间：2017-05-03 20:30:33
		-- 备注：
		-- 测试：
	***************************************************/
	UPDATE dbo.tb_PO SET AppStatus=@AppStatus,AppUser=@Account,APPDate=GETDATE() WHERE DocNo=@DocNo
	--SELECT * FROM dbo.tb_PO
	IF(ISNULL(@AppStatus,0)<1) RETURN;
	
	SELECT * INTO #tmp FROM dbo.tb_PODetail WHERE DocNo=@DocNo 
		
	IF(ISNULL(@AppStatus,0)=2)--审核通过 增加库存
		UPDATE #tmp SET Qty=ISNULL(Qty,0)*-1
		
	SELECT bisid=b.isid ,a.* INTO #union
	FROM #tmp AS a INNER JOIN dbo.tb_ProductInventory AS b 
		ON b.ItemNo = a.ItemNo AND b.Color = a.Color AND b.Size = a.Size AND b.BarCode = a.BarCode
	WHERE DocNo=@DocNo 
		
	
	--存在，增加库存
	UPDATE dbo.tb_ProductInventory SET Qty=ISNULL(dbo.tb_ProductInventory.Qty,0)+ISNULL(b.Qty,0),CategoryID=b.CategoryID FROM #union AS b 
	WHERE b.bisid=dbo.tb_ProductInventory.isid
	
	--不存在，新增一条
	INSERT INTO dbo.tb_ProductInventory(BarCode,ItemNo,ItemName,CategoryID,SOPrice,Color,Size,Qty)
	SELECT BarCode,ItemNo,ItemName,CategoryID,SOPrice,Color,Size,Qty FROM #tmp WHERE isid NOT IN(SELECT isid FROM #union)
END	
GO

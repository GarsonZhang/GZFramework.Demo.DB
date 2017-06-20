SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_SO_Approval]
	@DocNo VARCHAR(20)
AS
BEGIN

	SELECT BarCode,Size,Color,Qty=SUM(ISNULL(Qty,0)) INTO #tmp FROM dbo.tb_SODetail 
	WHERE DocNo=@DocNo
	GROUP BY BarCode,Size,Color
	
	UPDATE dbo.tb_ProductInventory SET Qty=ISNULL(dbo.tb_ProductInventory.Qty,0)-ISNULL(a.Qty,0) FROM #tmp AS a 
	WHERE a.BarCode=dbo.tb_ProductInventory.BarCode AND dbo.tb_ProductInventory.Size=a.Size AND dbo.tb_ProductInventory.Color=a.Color
	
END	

GO

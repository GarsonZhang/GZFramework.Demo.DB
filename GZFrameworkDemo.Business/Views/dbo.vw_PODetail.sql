SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_PODetail]
AS
	SELECT DocNo,BarCode,ItemNo,ItemName,Color,Size,SUM(Qty) AS Qty FROM dbo.tb_PODetail GROUP BY DocNo,BarCode,ItemNo,ItemName,Color,Size
GO

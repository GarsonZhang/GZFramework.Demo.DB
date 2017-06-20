SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_SO_SearchList]
	@Date1 DATETIME,
	@Date2 DATETIME
AS
BEGIN
	/***************************************************
		-- 功能：销售统计
		-- 作者：GarsonZhang
		-- 时间：2017-05-05 12:59:59
		-- 备注：
		-- 测试：
		usp_SO_SearchList '2017-05-05','2017-05-05'
	***************************************************/
	--PRINT CONVERT(VARCHAR(2),GETDATE(),8)
	
	DECLARE @Time2 DATETIME
	SET @Time2=DATEADD(SECOND,-1,DATEADD(DAY,1,@Date2))
	SELECT *,CONVERT(VARCHAR(2),CreateDate,8)+':00' AS [Hour] FROM dbo.tb_SODetail WHERE CreateDate BETWEEN @Date1 AND @Time2 ORDER BY CreateDate DESC
END
GO

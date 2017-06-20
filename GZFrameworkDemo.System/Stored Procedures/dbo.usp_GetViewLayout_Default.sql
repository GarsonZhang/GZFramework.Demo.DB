SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_GetViewLayout_Default]
	@ViewCode VARCHAR(200)
	
AS
BEGIN
	/******************************************************
		-- 功能：获得数据控件布局
		usp_GetViewLayoutUser '',''
		
	******************************************************/

		DECLARE @LayoutID VARCHAR(50)
		SELECT @LayoutID=LayoutID FROM dbo.sys_GridViewLayout WHERE ViewCode=@ViewCode AND IsDefault='Y'
		
		SELECT * FROM dbo.sys_GridViewLayout WHERE LayoutID=@LayoutID
		SELECT * FROM dbo.sys_GridViewLayoutDetail WHERE LayoutID=@LayoutID ORDER BY isid
		SELECT * FROM dbo.sys_GridViewLayoutUser WHERE LayoutID=@LayoutID
END
GO

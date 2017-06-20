SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_GetViewLayoutLayoutID]
	@ViewCode VARCHAR(200),
	@LayoutID VARCHAR(50)
AS
BEGIN
	/******************************************************
		-- 功能：获得数据控件布局
		usp_GetViewLayoutUser '',''
	******************************************************/

		SELECT * FROM dbo.sys_GridViewLayout WHERE LayoutID=@LayoutID
		SELECT * FROM dbo.sys_GridViewLayoutDetail WHERE LayoutID=@LayoutID ORDER BY isid
		SELECT * FROM dbo.sys_GridViewLayoutUser WHERE LayoutID=@LayoutID
END
GO

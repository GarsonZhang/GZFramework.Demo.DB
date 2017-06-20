SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_GetViewLayoutUser]
	@ViewCode VARCHAR(200),
	@Account VARCHAR(20)
AS
BEGIN
	/******************************************************
		-- 功能：获得数据控件布局
		usp_GetViewLayoutUser '',''
	******************************************************/
	DECLARE @LayoutID VARCHAR(50)
	
	SELECT * INTO #tmp FROM dbo.sys_GridViewLayoutUser 
	WHERE LayoutID IN(SELECT LayoutID FROM dbo.sys_GridViewLayout WHERE ViewCode=@ViewCode) 
	
	SELECT TOP 1 @LayoutID=LayoutID FROM #tmp 
	WHERE (ConfigType=1 AND ConfigValue=@Account) OR (ConfigType=2 AND ConfigValue IN (SELECT RoleID FROM dbo.dt_MyUserRole WHERE Account=@Account))
	ORDER BY isid DESC
	
	IF(ISNULL(@LayoutID,'')='') SELECT @LayoutID=LayoutID FROM dbo.sys_GridViewLayout WHERE ViewCode=@ViewCode AND IsDefault='Y'
	
	IF(ISNULL(@LayoutID,'')='')
	BEGIN
		SELECT TOP 0 * FROM dbo.sys_GridViewLayout
		SELECT TOP 0 * FROM dbo.sys_GridViewLayoutDetail
	END
	ELSE
	BEGIN
		SELECT * FROM dbo.sys_GridViewLayout WHERE LayoutID=@LayoutID
		SELECT * FROM dbo.sys_GridViewLayoutDetail WHERE LayoutID=@LayoutID
	END
END
GO

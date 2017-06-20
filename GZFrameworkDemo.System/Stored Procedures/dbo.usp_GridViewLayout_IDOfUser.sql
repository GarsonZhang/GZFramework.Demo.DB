SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_GridViewLayout_IDOfUser]
	@ViewCode VARCHAR(200),
	@Account VARCHAR(20)
AS
BEGIN
	/*****************************************
		usp_GridViewLayout_IDOfUser '',''
	*****************************************/
		DECLARE @LayoutID VARCHAR(50)
	
	SELECT * INTO #tmp FROM dbo.sys_GridViewLayoutUser 
	WHERE LayoutID IN(SELECT LayoutID FROM dbo.sys_GridViewLayout WHERE ViewCode=@ViewCode) 
	
	SELECT TOP 1 @LayoutID=LayoutID FROM #tmp 
	WHERE (ConfigType=1 AND ConfigValue=@Account) OR (ConfigType=2 AND ConfigValue IN (SELECT RoleID FROM dbo.dt_MyUserRole WHERE Account=@Account))
	ORDER BY isid DESC
	
	IF(ISNULL(@LayoutID,'')='') SELECT @LayoutID=LayoutID FROM dbo.sys_GridViewLayout WHERE ViewCode=@ViewCode AND IsDefault='Y'
	
	SELECT @LayoutID AS LayoutID
END
GO

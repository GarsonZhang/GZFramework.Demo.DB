SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE procedure [dbo].[usp_MyUser_GetUserModules] 
	@DBCode VARCHAR(50),
	@Account VARCHAR(20) 
AS
BEGIN
	/**************************************************
		-- 功能：获得当前用户的权限菜单
		-- 时间：2015-2-2 14:01:23
		-- 作者：GarsonZhang
		-- 备注：
		-- 测试：
		usp_MyUser_GetUserModules 'Data','garson'
		usp_MyUser_GetUserModules 'Data','admin'
		usp_MyUser_GetUserModules 'Data','zgs'
		
	
	**************************************************/
	
		
		DECLARE @Admin INT
		
		SELECT @Admin=ISNULL(@Admin,0)+ COUNT(*) FROM dbo.dt_MyUser WHERE Account=@Account AND IsSysAdmain='Y'
		SELECT @Admin=ISNULL(@Admin,0)+ COUNT(*) FROM dbo.dt_MyUserDBs WHERE Account=@Account AND DBCode=@DBCode AND IsDBAdmin='Y' 
		
		IF (@Admin>0)--管理员
		BEGIN
			SELECT * FROM dbo.sys_Modules ORDER BY Sort
			SELECT *,1073741823 AS UserAuthority FROM dbo.sys_ModulesFunction ORDER BY GroupIndex,ItemIndex	
		END
		ELSE--非管理员
		BEGIN
			--SELECT FunctionID,dbo.BinaryOrOperation(Authority) AS Authority INTO #tmpAuthorityUser
			--FROM dbo.dt_MyRoleAuthority WHERE RoleID IN(SELECT RoleID FROM dbo.dt_MyUserRole WHERE Account=@Account)
			--GROUP BY FunctionID
			
			SELECT RoleID INTO #tmp FROM dbo.dt_MyUserRole  WHERE Account=@Account

			SELECT FunctionID,0 AS Authority INTO #tmpAuthorityUser
			FROM dbo.dt_MyRoleAuthority 
			WHERE RoleID IN(SELECT * FROM #tmp)
			GROUP BY FunctionID

			DECLARE @RoleID VARCHAR(20)

			WHILE EXISTS(SELECT * FROM #tmp)
			BEGIN
				SELECT TOP 1 @RoleID=RoleID FROM #tmp
				UPDATE #tmpAuthorityUser SET Authority=b.Authority|a.Authority
				FROM (SELECT * FROM dbo.dt_MyRoleAuthority WHERE RoleID=@RoleID) AS a INNER JOIN #tmpAuthorityUser AS b ON b.FunctionID = a.FunctionID
				DELETE FROM #tmp WHERE RoleID=@RoleID
			END

			
			SELECT * INTO #tmpAuthorityDB FROM dbo.sys_DataBaseListAuthority WHERE DBCode=@DBCode
			
			
			SELECT a.FunctionID,a.Authority&b.Authority AS UserAuthority INTO #tmpAuthority FROM #tmpAuthorityUser AS a INNER JOIN #tmpAuthorityDB AS b ON b.FunctionID = a.FunctionID
			
			SELECT a.*,b.UserAuthority INTO #ResultFunction FROM dbo.sys_ModulesFunction AS a INNER JOIN #tmpAuthority AS b ON b.FunctionID = a.FunctionID
			
			SELECT * FROM dbo.sys_Modules WHERE ModuleID IN(SELECT DISTINCT ModuleID FROM #ResultFunction )
			
			SELECT * FROM #ResultFunction
		END
		
		

	
END
GO

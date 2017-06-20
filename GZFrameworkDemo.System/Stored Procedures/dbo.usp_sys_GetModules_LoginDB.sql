SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_sys_GetModules_LoginDB]
	@DBCode VARCHAR(50)
AS
BEGIN
		/**************************************************
			-- 功能：获得模块列表
			-- 时间：2015年1月29日17:04:34
			-- 作者：GarsonZhang
			-- 备注：
			-- 测试：
			
			
			SELECT * FROM dbo.sys_Modules
			SELECT * FROM dbo.sys_ModulesFunction
			SELECT * FROM dbo.sys_ModulesFunctionAuthority



			usp_sys_GetModules_LoginDB ''
		**************************************************/

		SELECT FunctionID,Authority INTO #tmp FROM sys_DataBaseListAuthority WHERE DBCode=@DBCode
		
		SELECT a.*,b.Authority AS DBAuthority,a.AuthorityID&ISNULL(b.Authority,0) AS Flag INTO #ModulesFunctionAuthorityID FROM dbo.sys_ModulesFunctionAuthority AS a LEFT JOIN #tmp AS b ON b.FunctionID = a.FunctionID
		
		DELETE FROM #ModulesFunctionAuthorityID WHERE Flag<>AuthorityID
		
		
		
		SELECT * INTO #ModulesFunction FROM dbo.sys_ModulesFunction WHERE FunctionID IN(SELECT DISTINCT FunctionID FROM #ModulesFunctionAuthorityID)
		
		SELECT * INTO #Modules FROM dbo.sys_Modules WHERE ModuleID IN(SELECT DISTINCT ModuleID FROM #ModulesFunction)
		

		
		CREATE TABLE #Result(
			PKey VARCHAR(200),
			ParentKey VARCHAR(200),
			DisplayName VARCHAR(200),
			ModuleID VARCHAR(200),
			FunctionID VARCHAR(200),
			AuthorityID INT
		)

		INSERT INTO #Result(PKey,ParentKey,DisplayName,ModuleID)
		SELECT ModuleID,'',ModuleName,ModuleID FROM #Modules

		INSERT INTO #Result(PKey,ParentKey,DisplayName,FunctionID)
		SELECT FunctionID,ModuleID,FunctionName,FunctionID FROM #ModulesFunction

		INSERT INTO #Result(PKey,ParentKey,DisplayName,AuthorityID)
		SELECT FunctionID+'.'+CAST(AuthorityID AS VARCHAR),FunctionID,AuthorityName,AuthorityID FROM #ModulesFunctionAuthorityID

		SELECT * FROM #Result
		
		
		
END

GO

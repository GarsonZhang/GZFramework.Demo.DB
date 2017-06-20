SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_sys_GetModules]
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



			usp_sys_GetModules
		**************************************************/
		CREATE TABLE #Result(
			PKey VARCHAR(200),
			ParentKey VARCHAR(200),
			DisplayName VARCHAR(200),
			ModuleID VARCHAR(200),
			FunctionID VARCHAR(200),
			AuthorityID INT
		)

		INSERT INTO #Result(PKey,ParentKey,DisplayName,ModuleID)
		SELECT ModuleID,'',ModuleName,ModuleID FROM dbo.sys_Modules

		INSERT INTO #Result(PKey,ParentKey,DisplayName,FunctionID)
		SELECT FunctionID,ModuleID,FunctionName,FunctionID FROM dbo.sys_ModulesFunction

		INSERT INTO #Result(PKey,ParentKey,DisplayName,AuthorityID)
		SELECT FunctionID+'.'+CAST(AuthorityID AS VARCHAR),FunctionID,AuthorityName,AuthorityID FROM dbo.sys_ModulesFunctionAuthority

		SELECT * FROM #Result
END

GO

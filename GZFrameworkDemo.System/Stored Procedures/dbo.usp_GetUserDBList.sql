SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_GetUserDBList]
	@Account VARCHAR(20)
AS
BEGIN
	/************************************************************
		-- 功能：获得用户的数据库权限列表
		-- 时间：2016年1月23日09:52:02
		-- 作者：GarsonZhang
		-- 备注：
		-- 测试:
	************************************************************/
	IF EXISTS(SELECT * FROM dbo.dt_MyUser WHERE Account=@Account AND IsSysAdmain='Y')
	BEGIN
		SELECT * FROM sys_DataBaseList
	END
	ELSE
	BEGIN
		SELECT a.* FROM dbo.sys_DataBaseList AS a INNER JOIN dbo.dt_MyUserDBs AS b ON b.DBCode = a.DBCode WHERE b.Account=@Account	
	END
	
END

GO

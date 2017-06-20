SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_UserLogin]
	@Account VARCHAR(20),
	@Pwd VARCHAR(200),
	@LoginDBCode VARCHAR(50)=''
AS
BEGIN
	/************************************************************
		-- 功能：验证账套 用户名密码
		-- 时间：2016年1月23日09:52:02
		-- 作者：GarsonZhang
		-- 备注：
		-- 测试:
		usp_UserLogin 'admin','ovj25JBDGEc=',''
		usp_UserLogin 'admin','ovj25JBDGEc=','DBData'
	************************************************************/	
	SELECT * INTO #tmpuser FROM dbo.dt_MyUser WHERE Account=@Account AND [Password]=@Pwd
	
	SELECT * INTO #tmpuserdb FROM dbo.dt_MyUserDBs WHERE Account=@Account AND DBCode=@LoginDBCode
	
	SELECT a.*,b.DBCode,b.IsDBLock,b.IsDBAdmin FROM #tmpuser AS a LEFT JOIN #tmpuserdb AS b ON b.Account = a.Account
	
END	
GO

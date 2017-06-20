SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_CommonSearchUser_Search]
	@SearchCode VARCHAR(200),
	@Account VARCHAR(20)
AS
BEGIN
	SELECT * INTO #tmp FROM dbo.sys_CommonSearch WHERE SearchCode=@SearchCode
	
	SELECT * INTO #tmpu FROM dbo.sys_CommonSearchUser WHERE Account=@Account AND RowID IN (SELECT RowID FROM dbo.sys_CommonSearch WHERE SearchCode=@SearchCode)
	
	SELECT b.isid,
			Account=ISNULL(b.Account,@Account),
			a.RowID,a.strColumnName,a.strSQL ,b.Flag,b.CreateUser,b.CreateDate,b.LastUpdateUser,b.LastUpdateDate
	FROM  #tmp AS a LEFT JOIN #tmpu AS b ON b.RowID = a.RowID
END	
	
GO

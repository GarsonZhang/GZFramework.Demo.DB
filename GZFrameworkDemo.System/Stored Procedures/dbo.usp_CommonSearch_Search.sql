SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_CommonSearch_Search]
	@SearchCode VARCHAR(200)
AS
BEGIN
	SELECT * FROM dbo.sys_CommonSearch WHERE SearchCode=@SearchCode
END	
	
GO

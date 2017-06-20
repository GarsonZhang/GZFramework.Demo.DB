SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Stored Procedure

create procedure [dbo].[_DataInitialization] 
as
BEGIN
	/*******************************************************
		-- 删除模块
	*******************************************************/
    INSERT INTO dbo.dt_MyUser( Account ,[Password] ,UserName,IsSysAdmain)
    VALUES('admin','ovj25JBDGEc=','管理员','Y')
END

GO

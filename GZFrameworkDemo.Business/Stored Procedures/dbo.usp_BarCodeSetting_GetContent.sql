SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_BarCodeSetting_GetContent]
AS
BEGIN
	IF NOT EXISTS(SELECT * FROM dbo.tb_BarCodeSetting)
		INSERT INTO dbo.tb_BarCodeSetting
		        ( Head1 ,
		          Head2 ,
		          Head3 ,
		          Item1 ,
		          Item2 ,
		          Item3
		        )
		VALUES  ( N'' , -- Head1 - nvarchar(20)
		          N'' , -- Head2 - nvarchar(20)
		          N'' , -- Head3 - nvarchar(20)
		          N'[款号]' , -- Item1 - nvarchar(20)
		          N'[颜色]' , -- Item2 - nvarchar(20)
		          N'[尺码]'  -- Item3 - nvarchar(20)
		        )
	SELECT ISNULL(Head1,'')+ISNULL(Item1,'')+ISNULL(Head2,'')+ISNULL(Item2,'')+ISNULL(Head3,'')+ISNULL(Item3,'') FROM dbo.tb_BarCodeSetting 
END
GO

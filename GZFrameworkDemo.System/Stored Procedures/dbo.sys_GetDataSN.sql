SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE procedure [dbo].[sys_GetDataSN] 
    @DocCode VARCHAR(50),
    @CustomerSeed VARCHAR(50)='',
    @CustomerHead VARCHAR(50)=''
AS
BEGIN
/*-------------------------------------------------------------------------------------
  程序说明:返回单据号码
  返回结果:MAX_NO
  -------------------------------------------------------------------------------------

sys_GetDataSN 'BANK'

SELECT * FROM dbo.sys_DataSN

-------------------------------------------------------------------------------------*/

	IF NOT EXISTS(SELECT * FROM sys_DataSN WHERE DocCode=@DocCode)
	BEGIN
		SELECT ''
		RETURN;
	END
	
	DECLARE @DocHeader VARCHAR(50),@DocType VARCHAR(50),@Length INT,@Separate VARCHAR(2)

	SELECT @DocHeader=DocHeader,@DocType=DocType,@Length=[Length],@Separate=Separate FROM sys_DataSN WHERE DocCode=@DocCode
	
		
	DECLARE @DocSeed VARCHAR(100)
	IF(@DocType='Year')--年,递增
		SET @DocSeed=CONVERT(VARCHAR(4),GETDATE(),23)
	IF(@DocType='Year-Month')--年-月,递增
		SET @DocSeed=CONVERT(VARCHAR(7),GETDATE(),23)
	IF(@DocType='Year-Month-dd')--年-月-日,递增
		SET @DocSeed=CONVERT(VARCHAR(10),GETDATE(),23)
	IF(@DocType='Up')--直接递增
		SET @DocSeed=@DocCode
	IF(@DocType='Customer')--自定义
		SET @DocSeed=@CustomerSeed
	
	DECLARE @Value VARCHAR(100)
	EXEC sys_GetDataSNBase @DocCode,@DocSeed,@Length,@Value OUTPUT
	
	IF(@DocType='Customer')
		SELECT ISNULL(@CustomerHead,'')+@Value
	ELSE
		SELECT ISNULL(@DocHeader,'')+ISNULL(@Separate,'')+@Value
  -----------------------------------------END--------------------------------------------
END

GO

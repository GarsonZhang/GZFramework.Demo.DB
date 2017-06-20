SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[sys_GetDataSNBase] 
    @DocCode VARCHAR(50),
    @Seed VARCHAR(50),
    @Length INT =4, --预设4位长度 
    @Result VARCHAR(50) OUT
AS
BEGIN
/*-------------------------------------------------------------------------------------
  程序说明:返回单据号码
  返回结果:MAX_NO
  -------------------------------------------------------------------------------------
--delete FROM sys_DataSN
select FROM sys_DataSN

---测试--------


sys_GetDataSNBase 'A',4 

select * from sys_DataSN
select * from sys_DataSNDetail

DECLARE @param1 VARCHAR(100)
EXEC sys_GetDataSNBase '9','',4,@param1 OUTPUT
SELECT @param1

-------------------------------------------------------------------------------------*/
	DECLARE @Value INT

	SELECT @Value=MaxID FROM dbo.sys_DataSNDetail WHERE DocCode=@DocCode AND Seed=@Seed

	IF (@Value IS NULL)
	BEGIN
	    SELECT @Value=0
		INSERT INTO dbo.sys_DataSNDetail(DocCode,Seed,MaxID)
		VALUES (@DocCode,@Seed,0)
	END

	SET @Value=ISNULL(@Value,0)+1 /*取最大值+1,为返回的流水号,过滤掉带4的号码*/

	WHILE(CHARINDEX('4',@Value)>0)
	BEGIN
		SET @Value=@Value+1
	END
	WHILE(CHARINDEX('47',@Value)>0)/*过滤掉带47的号码*/
	BEGIN
		SET @Value=@Value+1
	END
	
	UPDATE dbo.sys_DataSNDetail SET MaxID=@Value WHERE DocCode=@DocCode AND Seed=@Seed /*更新流水号*/

	SET @Result=RIGHT(REPLACE(SPACE(@Length),' ','0')+CAST(@Value AS VARCHAR),@Length)	


	RETURN
  -----------------------------------------END--------------------------------------------
END

GO

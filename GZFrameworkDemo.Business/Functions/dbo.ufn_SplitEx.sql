SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE FUNCTION [dbo].[ufn_SplitEx]
(
	@C VARCHAR(8000), --字符串
	@SPLIT VARCHAR(2), --分隔符
	@DeleEmpty INT--1,删除空值，2，不删除空
)
RETURNS @T TABLE(COL VARCHAR(50))   
AS   
BEGIN   

/***************************************************************
功能：SQL分割字符串并返回表

--测试案例：
SELECT * FROM dbo.ufn_SplitEx('11 ,22,33,44,55 ',',',1)
SELECT * FROM dbo.ufn_SplitEx(',22,',',',1)
SELECT * FROM dbo.ufn_SplitEx('10a0c745bd9f454baed387c02975dbce,382f031293214b15bd7f900ac0652a2b,8d0b1424ea6a4029bc13429fa9eb3398,9dfa32b6c61543c2b027b96c0693c1a2,c60520184e8d47f6b6dd3d9033d76877,c7f091144a2149c2a509343d1bac62d9,',',',1)
***************************************************************/
	IF ISNULL(@C,'')='' RETURN
	
	
	DECLARE @tmp VARCHAR(2000)
	
	WHILE(CHARINDEX(@SPLIT,@C)<>0)   
	BEGIN   
		SET @tmp=''
		SET @tmp=RTRIM(LTRIM(SUBSTRING(@C,1,CHARINDEX(@SPLIT,@C)-1)))
		
		--IF((SELECT COUNT(*) FROM @T WHERE COL=@tmp)=0)
			INSERT @T(COL) VALUES (@tmp)   
		SET @C=STUFF(@C,1,CHARINDEX(@SPLIT,@C),'')
	END 
	--IF((SELECT COUNT(*) FROM [@T] WHERE COL=@tmp)=0)  
		INSERT @T(COL) VALUES (RTRIM(LTRIM(@C)))  
	
	IF(@DeleEmpty=1)
		DELETE @T WHERE ISNULL(COL,'')=''
	
	RETURN   
END
GO

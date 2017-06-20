SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE FUNCTION [dbo].[ufn_GetDiffYear](
	@Date1 DATETIME,
	@Date2 DATETIME
)
RETURNS INT
AS
BEGIN
	--PRINT dbo.ufn_GetDiffYear('1990-02-17','2015-03-01')
	DECLARE @Years INT
	SET @Years=DATEDIFF(YEAR,@Date1,@Date2)

	IF(DATEADD(YEAR,@Years,@Date1)<@Date2)
		SET @Years=@Years+1
	
	IF(DATEADD(YEAR,@Years,@Date1)>@Date2)
		SET @Years=@Years-1

	RETURN @Years
END

GO

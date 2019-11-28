CREATE FUNCTION [dbo].[udf_GetAllStudentsPerClass]
(
	@classId int
)
RETURNS INT
AS
BEGIN
	DECLARE @result int

	IF EXISTS (SELECT 1 FROM Student)
	BEGIN
		SELECT COUNT(1) FROM Student_Class WHERE ClassId = @classId

		IF (@result IS NULL)
		BEGIN
			SET @result = 0
		END
	END


	RETURN @result
END

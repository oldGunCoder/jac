CREATE FUNCTION [dbo].[udf_GetAllClassesAStudentTakes]
(
	@StudentId INT
)
RETURNS TABLE
AS

RETURN
    SELECT 
        *
    FROM
        Student
    WHERE
        Id = @StudentId;
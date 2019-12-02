CREATE FUNCTION [dbo].[udtf_GetAllStudentsByAge]
(
	@StudentAge INT
)
RETURNS TABLE

AS
RETURN
    SELECT 
        *
    FROM
        Student
    WHERE
        Age = @StudentAge;

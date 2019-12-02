CREATE PROCEDURE [dbo].[sp_GetStudentAndClassInfoByAge]
	@StudentAge int
AS
BEGIN
	SELECT *
	FROM dbo.udtf_GetAllStudentsByAge(@StudentAge) fn
	INNER JOIN Class
	ON fn.Id = Class.Id
END
GO;



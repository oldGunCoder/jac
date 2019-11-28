/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if((SELECT COUNT(1) FROM Student) = 0)
begin

	INSERT INTO Student VALUES ('FirstName1','LastName1', 21, GETDATE(), NULL) 
	INSERT INTO Student VALUES ('FirstName2','LastName2', 22, GETDATE(), NULL) 
	INSERT INTO Student VALUES ('FirstName3','LastName3', 23, GETDATE(), NULL) 
	INSERT INTO Student VALUES ('FirstName4','LastName4', 24, GETDATE(), NULL) 

end


INSERT INTO Class VALUES ('Class1', 201, GETDATE(), NULL) 
INSERT INTO Class VALUES ('Class2', 202, GETDATE(), NULL) 
INSERT INTO Class VALUES ('Class3', 203, GETDATE(), NULL) 
INSERT INTO Class VALUES ('Class4', 204, GETDATE(), NULL) 

INSERT INTO Student_Class VALUES (1,1,GETDATE(),NULL)
INSERT INTO Student_Class VALUES (1,2,GETDATE(),NULL) 
INSERT INTO Student_Class VALUES (1,3,GETDATE(),NULL) 
INSERT INTO Student_Class VALUES (2,1,GETDATE(),NULL)
INSERT INTO Student_Class VALUES (2,2,GETDATE(),NULL) 
INSERT INTO Student_Class VALUES (3,3,GETDATE(),NULL)
INSERT INTO Student_Class VALUES (3,2,GETDATE(),NULL) 
INSERT INTO Student_Class VALUES (3,3,GETDATE(),NULL) 
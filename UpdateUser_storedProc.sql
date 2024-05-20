CREATE PROCEDURE UpdateUser
    @UserID INT,
    @UserName NVARCHAR(50),
    @Email NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Users
    SET UserName = @UserName,
        Email = @Email
    WHERE UserID = @UserID;
END
GO

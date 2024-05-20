CREATE PROCEDURE StartConversation
    @UserID INT,
    @ConversationID INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Conversations (UserID)
    VALUES (@UserID);

    SET @ConversationID = SCOPE_IDENTITY();
END
GO

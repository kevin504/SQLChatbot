CREATE PROCEDURE LogMessage
    @ConversationID INT,
    @Sender NVARCHAR(50),
    @MessageText NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Messages (ConversationID, Sender, MessageText)
    VALUES (@ConversationID, @Sender, @MessageText);
END
GO

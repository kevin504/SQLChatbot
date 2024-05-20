CREATE PROCEDURE GetConversationHistory
    @ConversationID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        m.MessageID,
        m.Sender,
        m.MessageText,
        m.SentAt
    FROM Messages m
    WHERE m.ConversationID = @ConversationID
    ORDER BY m.SentAt;
END
GO

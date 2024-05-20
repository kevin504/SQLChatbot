CREATE PROCEDURE SetContext
    @ConversationID INT,
    @Key NVARCHAR(50),
    @Value NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Context (ConversationID, Key, Value)
    VALUES (@ConversationID, @Key, @Value);
END
GO

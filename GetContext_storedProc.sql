CREATE PROCEDURE GetContext
    @ConversationID INT,
    @Keyid NVARCHAR(50),
    @Value NVARCHAR(255) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @Value = Value
    FROM Context
    WHERE ConversationID = @ConversationID AND Keyid = @Keyid;
END
GO

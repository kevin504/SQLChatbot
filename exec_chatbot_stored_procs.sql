--Start a new Convo
DECLARE @ConversationID INT;
EXEC StartConversation @UserID = 1, @ConversationID = @ConversationID OUTPUT;
SELECT @ConversationID;
GO

--Log Message
EXEC LogMessage @ConversationID = 1, @Sender = 'User', @MessageText = 'Hello, Chatbot!';
GO

--Retrieve Conversation History:
EXEC GetConversationHistory @ConversationID = 1;
GO

--update user info

EXEC UpdateUser @UserID = 1, @UserName = 'John Doe', @Email = 'john.doe@example.com';
GO


--set context
EXEC SetContext @ConversationID = 1, @Key = 'LastQuestion', @Value = 'What is your name?';
GO



--Get context
DECLARE @Value NVARCHAR(255);
EXEC GetContext @ConversationID = 1, @Key = 'LastQuestion', @Value = @Value OUTPUT;
SELECT @Value;
GO


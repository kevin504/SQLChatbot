CREATE DATABASE Chatbot;
GO


USE Chatbot;
GO


CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    UserName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE Conversations (
    ConversationID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    StartedAt DATETIME DEFAULT GETDATE(),
    EndedAt DATETIME NULL
);
GO


CREATE TABLE Context (
    ContextID INT PRIMARY KEY IDENTITY(1,1),
	Keyid NVARCHAR(50) NOT NULL,
    Value NVARCHAR(255) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    ConversationID INT FOREIGN KEY REFERENCES Conversations(ConversationID),
    
);
GO

CREATE TABLE [dbo].[Account] (
    [AccountId]   UNIQUEIDENTIFIER NOT NULL,
    [DateCreated] DATE             NOT NULL,
    [AccountType] NVARCHAR (45)    NOT NULL,
    [OwnerId]     UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED ([AccountId] ASC),
    CONSTRAINT [FK_Account_Account] FOREIGN KEY ([OwnerId]) REFERENCES [dbo].[Owner] ([OwnerId]) ON UPDATE CASCADE
);


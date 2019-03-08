CREATE TABLE [dbo].[Posts] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Title]    NVARCHAR (256) NOT NULL,
    [DateTime] DATETIME       NOT NULL,
    [Body]     NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


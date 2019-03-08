CREATE TABLE [blog].[Comments] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [PostID]   INT            NOT NULL,
    [DateTime] DATETIME       NOT NULL,
    [Name]     NVARCHAR (128) NOT NULL,
    [Email]    NVARCHAR (128) NOT NULL,
    [Body]     NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


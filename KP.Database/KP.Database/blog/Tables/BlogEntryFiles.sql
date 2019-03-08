CREATE TABLE [blog].[BlogEntryFiles] (
    [Id]          INT            NOT NULL,
    [Name]        NVARCHAR (100) NOT NULL,
    [Extension]   NVARCHAR (4)   NOT NULL,
    [Counter]     INT            NOT NULL,
    [BlogEntryId] INT            NOT NULL,
    [Created]     DATETIME       NOT NULL,
    [Modified]    DATETIME       NULL,
    CONSTRAINT [PK_BlogEntryFiles] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BlogEntryFiles_BlogEntries] FOREIGN KEY ([BlogEntryId]) REFERENCES [dbo].[BlogEntries] ([Id])
);


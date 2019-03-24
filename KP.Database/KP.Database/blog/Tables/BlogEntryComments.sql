CREATE TABLE [blog].[BlogEntryComments] (
    [Id]          INT             NOT NULL,
    [Name]        NVARCHAR (50)   NOT NULL,
    [Comment]     NVARCHAR (2500) NOT NULL,
    [Email]       NVARCHAR (50)   NULL,
    [Homepage]    NVARCHAR (100)  NULL,
    [AdminPost]   BIT             NOT NULL,
    [BlogEntryId] INT             NOT NULL,
    [Created]     DATETIME        NOT NULL,
    [Modified]    DATETIME        NULL,
    CONSTRAINT [PK_BlogEntryComments] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BlogEntryComments_BlogEntries] FOREIGN KEY ([BlogEntryId]) REFERENCES [blog].[BlogEntries] ([Id])
);


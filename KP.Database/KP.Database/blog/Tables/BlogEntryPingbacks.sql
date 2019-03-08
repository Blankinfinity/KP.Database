CREATE TABLE [blog].[BlogEntryPingbacks] (
    [Id]          INT             NOT NULL,
    [Homepage]    NVARCHAR (4000) NOT NULL,
    [BlogEntryId] INT             NOT NULL,
    [Created]     DATETIME        NOT NULL,
    [Modified]    DATETIME        NULL,
    CONSTRAINT [PK_BlogEntryPingbacks] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BlogEntryPingbacks_BlogEntries] FOREIGN KEY ([BlogEntryId]) REFERENCES [dbo].[BlogEntries] ([Id])
);


CREATE TABLE [admin].[WebSites] (
    [Id]       INT          IDENTITY (1, 1) NOT NULL,
    [siteName] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_WebSites] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

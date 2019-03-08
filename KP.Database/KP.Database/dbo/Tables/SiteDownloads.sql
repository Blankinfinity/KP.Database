CREATE TABLE [dbo].[SiteDownloads] (
    [ID]             INT            IDENTITY (1, 1) NOT NULL,
    [SiteName]       NVARCHAR (MAX) NULL,
    [isDownloaded]   BIT            NULL,
    [rssSubscribed]  BIT            NULL,
    [dateDownloaded] DATETIME       NULL,
    [LastVisited]    DATETIME       NULL,
    [isActive]       BIT            CONSTRAINT [DF_SiteDownloads_isActive] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_SiteDownloads] PRIMARY KEY CLUSTERED ([ID] ASC)
);


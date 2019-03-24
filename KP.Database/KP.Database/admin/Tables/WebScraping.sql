CREATE TABLE [admin].[WebScraping]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [siteId] INT NOT NULL, 
    [isDownloaded] BIT NOT NULL, 
    [rssSubscribed] BIT NULL, 
    [dateDowloaded] DATETIME NOT NULL, 
    [lastVisited] DATETIME NULL, 
    [isActive] BIT NULL DEFAULT 0, 
    [isFromWayback] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_WebScraping_WebSites] FOREIGN KEY ([siteId]) REFERENCES [admin].[WebSites]([Id])
)

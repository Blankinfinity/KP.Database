CREATE TABLE [dbo].[FeedStatistics] (
    [Id]          INT           NOT NULL,
    [Application] NVARCHAR (50) NULL,
    [Identifier]  NVARCHAR (40) NULL,
    [Users]       INT           NOT NULL,
    [Visits]      INT           NOT NULL,
    [Created]     DATETIME      NOT NULL,
    [Modified]    DATETIME      NOT NULL,
    CONSTRAINT [PK_FeedStatistics] PRIMARY KEY CLUSTERED ([Id] ASC)
);


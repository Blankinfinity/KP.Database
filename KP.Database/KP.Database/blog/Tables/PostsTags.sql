CREATE TABLE [dbo].[PostsTags] (
    [PostID] INT NOT NULL,
    [TagID]  INT NOT NULL,
    PRIMARY KEY CLUSTERED ([TagID] ASC, [PostID] ASC)
);


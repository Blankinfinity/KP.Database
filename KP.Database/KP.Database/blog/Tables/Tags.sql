CREATE TABLE [blog].[Tags] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (64) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [blog].[Images] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (50) NOT NULL,
    [Extension] NVARCHAR (4)  NOT NULL,
    [Created]   DATETIME      NOT NULL,
    [Modified]  DATETIME      NULL,
    CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED ([Id] ASC)
);


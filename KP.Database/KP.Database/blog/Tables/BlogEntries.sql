CREATE TABLE [blog].[BlogEntries] (
    [Id]           INT             IDENTITY (1, 1) NOT NULL,
    [Header]       NVARCHAR (150)  NOT NULL,
    [HeaderUrl]    NVARCHAR (150)  NOT NULL,
    [Author]       NVARCHAR (100)  NULL,
    [ShortContent] NVARCHAR (1500) NOT NULL,
    [Content]      NTEXT           NULL,
    [Visits]       INT             NOT NULL,
    [Visible]      BIT             NOT NULL,
    [PublishDate]  DATETIME        NOT NULL,
    [Created]      DATETIME        NOT NULL,
    [Modified]     DATETIME        NULL,
    CONSTRAINT [PK_BlogEntries] PRIMARY KEY CLUSTERED ([Id] ASC)
);


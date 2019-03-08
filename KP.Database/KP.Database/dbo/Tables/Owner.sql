CREATE TABLE [dbo].[Owner] (
    [OwnerId]     UNIQUEIDENTIFIER NOT NULL,
    [Name]        NVARCHAR (60)    NOT NULL,
    [DateOfBirth] DATE             NOT NULL,
    [Address]     NVARCHAR (100)   NOT NULL,
    CONSTRAINT [PK_Owner] PRIMARY KEY CLUSTERED ([OwnerId] ASC)
);


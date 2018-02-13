CREATE TABLE [dbo].[People] (
    [PersonId]             INT            IDENTITY (1, 1) NOT NULL,
    [SocialSecurityNumber] INT            NOT NULL,
    [FirstName]            NVARCHAR (MAX) NULL,
    [LastName]             NVARCHAR (MAX) NULL,
    [RowVersion]           BINARY (8)     NULL,
    CONSTRAINT [PK_dbo.People] PRIMARY KEY CLUSTERED ([PersonId] ASC)
);


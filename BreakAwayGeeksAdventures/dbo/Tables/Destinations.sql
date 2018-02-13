CREATE TABLE [dbo].[Destinations] (
    [DestinationId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (MAX) NOT NULL,
    [Country]       NVARCHAR (MAX) NULL,
    [Description]   NVARCHAR (500) NULL,
    [Photo]         IMAGE          NULL,
    CONSTRAINT [PK_dbo.Destinations] PRIMARY KEY CLUSTERED ([DestinationId] ASC)
);


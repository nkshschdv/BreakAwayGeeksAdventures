CREATE TABLE [dbo].[Lodgings] (
    [LodgingId]                 INT            IDENTITY (1, 1) NOT NULL,
    [Name]                      NVARCHAR (200) NOT NULL,
    [Owner]                     NVARCHAR (MAX) NULL,
    [IsResort]                  BIT            NOT NULL,
    [Destination_DestinationId] INT            NULL,
    [MilesFromNearestAirport] DECIMAL(18, 2) NULL, 
    CONSTRAINT [PK_dbo.Lodgings] PRIMARY KEY CLUSTERED ([LodgingId] ASC),
    CONSTRAINT [FK_dbo.Lodgings_dbo.Destinations_Destination_DestinationId] FOREIGN KEY ([Destination_DestinationId]) REFERENCES [dbo].[Destinations] ([DestinationId])
);


GO
CREATE NONCLUSTERED INDEX [IX_Destination_DestinationId]
    ON [dbo].[Lodgings]([Destination_DestinationId] ASC);


CREATE TABLE [dbo].[Trips] (
    [Identifier] UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [StartDate]  DATETIME         NOT NULL,
    [EndTime]    DATETIME         NOT NULL,
    [CostUSD]    DECIMAL (18, 2)  NOT NULL,
    [RowVersion] ROWVERSION       NOT NULL,
    CONSTRAINT [PK_dbo.Trips] PRIMARY KEY CLUSTERED ([Identifier] ASC)
);


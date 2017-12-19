CREATE TABLE [dbo].[Books] (
    [ISBN]     NVARCHAR (13) NOT NULL,
    [Name]     NVARCHAR (20) NOT NULL,
    [Author]   NVARCHAR (20) NOT NULL,
    [Genre]    NCHAR (10)    NOT NULL,
    [Pages]    NUMERIC (18)  NOT NULL,
    [Landed]   CHAR (1)      DEFAULT ('N') NOT NULL,
    [Friend]   NVARCHAR (20) NULL,
    [Comments] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ISBN] ASC)
);


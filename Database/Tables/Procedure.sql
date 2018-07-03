CREATE TABLE [dbo].[Procedure]
(
	[ProcedureID] INT NOT NULL,
	[Description] CHAR(30) NOT NULL,
	[Price] MONEY NOT NULL
	CONSTRAINT [PK_PROCEDURE] PRIMARY KEY ([ProcedureID])
)

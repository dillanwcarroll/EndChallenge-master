﻿CREATE TABLE [dbo].[Owner]
(
	[OwnerID] INT NOT NULL,
	[Surname] CHAR(20) NOT NULL,
	[GivenName] CHAR(20) NOT NULL,
	[Phone] INT NOT NULL
	CONSTRAINT [PK_OWNER] PRIMARY KEY ([OwnerID])
	CONSTRAINT [CHK_PHONE] CHECK ([PHONE] NOT LIKE '%[^0-9]%')
)
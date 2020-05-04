USE Covid19DB
GO

INSERT INTO dbo.DatiRegioni
SELECT * FROM dbo.DatiRegioniStaging
GO

DROP TABLE dbo.DatiRegioniStaging
GO    
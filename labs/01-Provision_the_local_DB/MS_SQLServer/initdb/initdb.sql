DROP DATABASE Covid19DB
GO

CREATE DATABASE Covid19DB
GO

USE Covid19DB
GO

CREATE TABLE DatiRegioniStaging
(
    data VARCHAR(255),
    stato VARCHAR(255),
    codice_regione VARCHAR(255),
    denominazione_regione VARCHAR(255),
    lat FLOAT,
    long FLOAT,
    ricoverati_con_sintomi INT,
    terapia_intensiva INT,
    totale_ospedalizzati INT,
    isolamento_domiciliare INT,
    totale_positivi INT,
    variazione_totale_positivi INT,
    nuovi_positivi INT,
    dimessi_guariti INT,
    deceduti INT,
    totale_casi INT,
    tamponi INT,
    casi_testati INT,
    note_it VARCHAR(255),
    note_en VARCHAR(255)
)
GO

CREATE TABLE DatiRegioni
(
    data DATETIME,
    stato VARCHAR(255),
    codice_regione VARCHAR(255),
    denominazione_regione VARCHAR(255),
    lat FLOAT,
    long FLOAT,
    ricoverati_con_sintomi INT,
    terapia_intensiva INT,
    totale_ospedalizzati INT,
    isolamento_domiciliare INT,
    totale_positivi INT,
    variazione_totale_positivi INT,
    nuovi_positivi INT,
    dimessi_guariti INT,
    deceduti INT,
    totale_casi INT,
    tamponi INT,
    casi_testati INT,
    note_it VARCHAR(255),
    note_en VARCHAR(255)
)
GO

EXEC sys.sp_cdc_enable_db
GO


EXEC sys.sp_cdc_enable_table
@source_schema = N'dbo',
@source_name   = N'DatiRegioni',
@role_name = NULL,
@supports_net_changes = 0
GO



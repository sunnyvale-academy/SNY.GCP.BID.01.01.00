DROP DATABASE Covid19DB
GO

CREATE DATABASE Covid19DB
GO

USE Covid19DB
GO

CREATE TABLE DatiRegioni
(
    data SQLDATETIME,
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



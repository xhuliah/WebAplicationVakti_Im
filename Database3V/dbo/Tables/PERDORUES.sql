CREATE TABLE [dbo].[PERDORUES] (
    [perdorues_id]        INT           IDENTITY (1, 1) NOT NULL,
    [emri]                VARCHAR (255) NOT NULL,
    [mbiemri]             VARCHAR (255) NOT NULL,
    [telefon]             VARCHAR (15)  NULL,
    [aktiv]               BIT           NOT NULL DEFAULT 1,
    [username]            VARCHAR (100) NOT NULL,
    [krijimPerdorues]     DATETIME      NOT NULL,
    [modifikimPerdoruesi] DATETIME      NULL,
    [rol_id]              INT      NOT NULL     DEFAULT 3 ,
    [passwordi]           VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([perdorues_id] ASC),
    CONSTRAINT [PERDORUES_fk3] FOREIGN KEY ([rol_id]) REFERENCES [dbo].[ROLI] ([rol_id]),
    UNIQUE NONCLUSTERED ([username] ASC)
);


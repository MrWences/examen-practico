create database examen
use examen

CREATE TABLE Prospecto (
Nombre varchar(50)NOT NULL,
PApellido varchar(50)NOT NULL,
SApellido varchar(50),
Calle varchar(50)NOT NULL,
Numero float NOT NULL,
Colonia varchar(50)NOT NULL,
CodigoP float NOT NULL,
Telefono float NOT NULL,
RFC varchar(13)NOT NULL,
Estatus varchar(50)NOT NULL,
Observacion varchar(5000),

CONSTRAINT PK_Prospecto PRIMARY KEY (RFC)
)



CREATE TABLE Documentos (
ID int identity NOT NULL,
Nombre varchar (100)NOT NULL,
NombreDocumento varchar(100)NOT NULL,
Documento varbinary(MAX),
RFCDocumentos varchar(13)NOT NULL,
FOREIGN KEY(RFCDocumentos) REFERENCES Prospecto(RFC),
PRIMARY KEY (ID)
)

SELECT * FROM Documentos


DROP TABLE Documentos

DROP TABLE Prospecto








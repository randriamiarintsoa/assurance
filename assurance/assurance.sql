
create table ADMIN (
   IDADMIN              SERIAL               not null,
   LOGIN                VARCHAR(50)          not null,
   MOTDEPASSE           VARCHAR(50)          not null,
   constraint PK_ADMIN primary key (IDADMIN)
);



create table CLIENT (
   IDCLIENT             SERIAL               not null,
   NOM                  VARCHAR(50)          not null,
   PRENOM               VARCHAR(50)          not null,
   ADRESSE              VARCHAR(50)          not null,
   TELEPHONE            VARCHAR(50)          not null,
   MAIL                 VARCHAR(50)          not null,
   constraint PK_CLIENT primary key (IDCLIENT)
);


create table EVALUATIONACCIDENT (
   IDEVALUATIONACCIDENT SERIAL               not null,
   IMMATRICULATIONVOITURE VARCHAR(50)          not null,
   NUMEROPERMISCHAUFFEUR VARCHAR(50)          not null,
   LIEUACCIDENT         VARCHAR(50)          not null,
   HEUREACCIDENT        VARCHAR(50)          not null,
   NOMBREPESRBLESSE     VARCHAR(50)          not null,
   NOMBREPERSMORT       VARCHAR(50)          not null,
   TYPEASSURANCE        VARCHAR(50)          not null,
   POSITION           VARCHAR(50)          not null,
   MONTANT              INT8                 not null,
   NUMCLIENT            INT8                 not null,
   DATEACCIDENT         DATE                 null,
   constraint PK_EVALUATIONACCIDENT primary key (IDEVALUATIONACCIDENT)
);


create table GRILLECOUVREMENT (
   IDGRILLECOUVREMENT   SERIAL               not null,
   COUVREDESC           VARCHAR(50)          not null,
   POURCENTAGE          VARCHAR(50)          not null,
   constraint PK_GRILLECOUVREMENT primary key (IDGRILLECOUVREMENT)
);


create table GRILLEPUISSANCE (
   IDGRILLEPUISSANCE    SERIAL               not null,
   PUISSANCES           VARCHAR(50)          not null,
   VALEUR               VARCHAR(50)          not null,
   constraint PK_GRILLEPUISSANCE primary key (IDGRILLEPUISSANCE)
);

create table VOITURE (
   IDVOITURE            SERIAL               not null,
   IMMATRICULTION       VARCHAR(50)          not null,
   TYPE                 VARCHAR(50)          not null,
   GENRE                VARCHAR(50)          not null,
   SOURCEENERGIE        VARCHAR(50)          not null,
   PUISSANCE            VARCHAR(50)          not null,
   COUVREMENT           VARCHAR(50)          not null,
   DUREE                VARCHAR(50)          not null,
   TOTAL                INT8                 not null,
   NUMEROCLIENT         INT8                 not null,
   DATE                 INT8                 not null,
   constraint PK_VOITURE primary key (IDVOITURE)
);



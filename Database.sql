/* Création table CLI */
CREATE TABLE baltimore.cli (
    NumCli NUMBER PRIMARY KEY,
    NomCli VARCHAR (50) NOT NULL,
    Pays VARCHAR (50) NOT NULL,
    Tel VARCHAR(20),
    Ville VARCHAR(50),
    Dept VARCHAR(50),
    Nat VARCHAR(50)
);

/* Création table COM */
CREATE TABLE baltimore.com (
    NumCom NUMBER PRIMARY KEY,
    NumCli NUMBER NOT NULL,
    FraisPort VARCHAR(50) NOT NULL,
    DateCom DATE NOT NULL,
    Payment VARCHAR(20) NOT NULL,
    FOREIGN KEY(NumCli) REFERENCES baltimore.cli(NumCli)
);

/* Création table FOU */
CREATE TABLE baltimore.fou (
    NumFou NUMBER PRIMARY KEY,
    NomFou VARCHAR (50) NOT NULL,
    Pays VARCHAR (50) NOT NULL,
    Tel VARCHAR(20)
);

/* Création table PRO */
CREATE TABLE baltimore.pro (
    NumPro NUMBER PRIMARY KEY,
    NumFou NUMBER NOT NULL,
    NomPro VARCHAR (50) NOT NULL,
    TypePro VARCHAR(50) NOT NULL,
    PrixUnit VARCHAR(50) NOT NULL,
    FOREIGN KEY(NumFou) REFERENCES baltimore.fou(NumFou)
);

/* Création table DET */
CREATE TABLE baltimore.det (
    NumCom NUMBER NOT NULL,
    NumPro NUMBER NOT NULL,
    Qte VARCHAR (50) NOT NULL,
    Remise VARCHAR (50) NOT NULL,
    FOREIGN KEY(NumCom) REFERENCES baltimore.com(NumCom),
    FOREIGN KEY(NumPro) REFERENCES baltimore.pro(NumPro)
);


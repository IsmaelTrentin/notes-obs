-- inserire le specializzazioni: ‘ortopedia’, ‘psicologia’, ‘pediatria’
CREATE SEQUENCE spec_id START WITH 1 INCREMENT BY 1;
INSERT INTO SPECIALIZZAZIONE(ID,DESCRIZIONE) VALUES(spec_id.NEXTVAL, 'ortopedia');
INSERT INTO SPECIALIZZAZIONE(ID,DESCRIZIONE) VALUES(spec_id.NEXTVAL, 'psicologia');
INSERT INTO SPECIALIZZAZIONE(ID,DESCRIZIONE) VALUES(spec_id.NEXTVAL, 'pediatria');
SELECT * FROM SPECIALIZZAZIONE;

-- aggiungere 'cardiologia'
INSERT INTO SPECIALIZZAZIONE(ID,DESCRIZIONE) VALUES(spec_id.NEXTVAL, 'cardiologia');

-- eliminare 'pediatria'
DELETE FROM SPECIALIZZAZIONE WHERE DESCRIZIONE='pediatria';

-- aggiungere 'geriatria'
INSERT INTO SPECIALIZZAZIONE(ID,DESCRIZIONE) VALUES(spec_id.NEXTVAL, 'geriatria');

-- modificare ‘geriatria’ in ‘medicina generale’
UPDATE SPECIALIZZAZIONE SET SPECIALIZZAZIONE.DESCRIZIONE='medicina generale'
WHERE SPECIALIZZAZIONE.DESCRIZIONE='geriatria';

-- inserire le seguenti diagnosi:
-- cardiologia: ‘infarto del miocardio’, ‘lesione valvolare’, …
-- psicologia: ‘stress da troppo studio’, ‘stress da espe’, ‘depressione’, …
-- ortopedia: ‘strappo legamento anteriore ginocchio’, ‘strappo legamento crociato ginocchio’, 
CREATE SEQUENCE diag_id START WITH 1 INCREMENT BY 1;
INSERT INTO DIAGNOSI(NUMERO, TESTO, SPECIALIZZAZIONE) VALUES (diag_id.NEXTVAL, 'infarto del miocardio', 4);
INSERT INTO DIAGNOSI(NUMERO, TESTO, SPECIALIZZAZIONE) VALUES (diag_id.NEXTVAL, 'lesione valvolare', 4);
INSERT INTO DIAGNOSI(NUMERO, TESTO, SPECIALIZZAZIONE) VALUES (diag_id.NEXTVAL, 'stress da troppo studio', 2);
INSERT INTO DIAGNOSI(NUMERO, TESTO, SPECIALIZZAZIONE) VALUES (diag_id.NEXTVAL, 'stress da espe', 2);
INSERT INTO DIAGNOSI(NUMERO, TESTO, SPECIALIZZAZIONE) VALUES (diag_id.NEXTVAL, 'depressione', 2);
INSERT INTO DIAGNOSI(NUMERO, TESTO, SPECIALIZZAZIONE) VALUES (diag_id.NEXTVAL, 'strappo legamento anteriore ginocchio', 1);
INSERT INTO DIAGNOSI(NUMERO, TESTO, SPECIALIZZAZIONE) VALUES (diag_id.NEXTVAL, 'strappo legamento crociato ginocchio', 1);
SELECT * FROM DIAGNOSI;

-- inserire un medico interno con specializzazione a scelta
CREATE SEQUENCE med_id START WITH 1 INCREMENT BY 1;
INSERT INTO MEDICO_INTERNO(ID, NOME, COGNOME, SPECIALIZZAZIONE) VALUES(
  med_id.NEXTVAL,
  'nome dr.',
  'cognome dr.',
  4
);

-- provare ad inserire 1 medico esterno senza specializzazione (riflettere sul comportamento del sistema)
CREATE SEQUENCE med_ext_id START WITH 1 INCREMENT BY 1;
INSERT INTO MEDICO_ESTERNO(ID, NOME, COGNOME, VIA, CAP, CITTA) VALUES (
  med_ext_id.NEXTVAL,
  'nome dr. ext',
  'cognome dr. ext',
  'via zurigo',
  '6900',
  'lugano'
);
-- -> ORA-01400 cannot insert NULL into "SPECIALIZZAZIONE"

-- inserire 2 medici esterni con una specializzazione
INSERT INTO MEDICO_ESTERNO(ID, NOME, COGNOME, VIA, CAP, CITTA, SPECIALIZZAZIONE) VALUES (
  med_ext_id.NEXTVAL,
  'nome dr. ext',
  'cognome dr. ext',
  'via zurigo',
  '6900',
  'lugano',
  1
);
INSERT INTO MEDICO_ESTERNO(ID, NOME, COGNOME, VIA, CAP, CITTA, SPECIALIZZAZIONE) VALUES (
  med_ext_id.NEXTVAL,
  'ext dr.',
  'ext surname dr.',
  'via lugano',
  '6900',
  'lugano',
  2
);

-- aggiornare i medici esterni in modo che risultino tutti specialisti in ‘medicina generale’ (1 solo comando)
UPDATE MEDICO_ESTERNO SET SPECIALIZZAZIONE=6;

-- inserire un paziente
CREATE SEQUENCE paziente_id START WITH 1 INCREMENT BY 1;
INSERT INTO PAZIENTE(ID, NOME, COGNOME, NASCITA, VIA, CAP, CITTA) VALUES(
  paziente_id.NEXTVAL,
  'nome paz',
  'cognome paz',
  '07.07.2004',
  'via brunico',
  '6900',
  'lugano'
);

-- inserire una visita, senza data, e un resoconto della stessa con 2 diagnosi
CREATE SEQUENCE visita_id START WITH 1 INCREMENT BY 1;
INSERT INTO VISITA(NUMERO, MEDICO_INTERNO, MEDICO_ESTERNO, PAZIENTE) VALUES(
  visita_id.NEXTVAL,
  1,
  2,
  1
);

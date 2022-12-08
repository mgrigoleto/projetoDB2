
CREATE TABLE vitaminas (
                codVitaminas NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2(80) NOT NULL,
                nomeComercial VARCHAR2(80) NOT NULL,
                nomeGenerico VARCHAR2(80) NOT NULL,
                nomeEtiqueta VARCHAR2(80) NOT NULL,
                nomeOrdemP VARCHAR2(80) NOT NULL,
                CONSTRAINT CODVITAMINAS PRIMARY KEY (codVitaminas, idClass)
);

CREATE TABLE solucoesFisiologicas (
                codSolucoes NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2(80) NOT NULL,
                nomeComercial VARCHAR2(80) NOT NULL,
                nomeGenerico VARCHAR2(80) NOT NULL,
                nomeEtiqueta VARCHAR2(80) NOT NULL,
                nomeOrdemP VARCHAR2(80) NOT NULL,
                CONSTRAINT CODSOLUCOES PRIMARY KEY (codSolucoes, idClass)
);

CREATE TABLE oligoelementos (
                codOligo NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2(80) NOT NULL,
                nomeComercial VARCHAR2(80) NOT NULL,
                nomeGenerico VARCHAR2(80) NOT NULL,
                nomeEtiqueta VARCHAR2(80) NOT NULL,
                nomeOrdemP VARCHAR2(80) NOT NULL,
                CONSTRAINT CODOLIGO PRIMARY KEY (codOligo, idClass)
);

CREATE TABLE lipidios (
                codLipidio NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2(80) NOT NULL,
                nomeComercial VARCHAR2(80) NOT NULL,
                nomeGenerico VARCHAR2(80) NOT NULL,
                nomeEtiqueta VARCHAR2(80) NOT NULL,
                nomeOrdemP VARCHAR2(80) NOT NULL,
                CONSTRAINT CODLIPIDIO PRIMARY KEY (codLipidio, idClass)
);

CREATE TABLE glicoses (
                codGlicose NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2(80) NOT NULL,
                nomeComercial VARCHAR2(80) NOT NULL,
                nomeGenerico VARCHAR2(80) NOT NULL,
                nomeEtiqueta VARCHAR2(80) NOT NULL,
                nomeOrdemP VARCHAR2(80) NOT NULL,
                CONSTRAINT CODGLICOSE PRIMARY KEY (codGlicose, idClass)
);

CREATE TABLE eletrolitos (
                codEletrolito NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2(80) NOT NULL,
                nomeComercial VARCHAR2(80) NOT NULL,
                nomeGenerico VARCHAR2(80) NOT NULL,
                nomeEtiqueta VARCHAR2(80) NOT NULL,
                nomeOrdemP VARCHAR2(80) NOT NULL,
                CONSTRAINT CODELETROLITO PRIMARY KEY (codEletrolito, idClass)
);

CREATE TABLE aminoacidos (
                codAminoacido NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2(80) NOT NULL,
                nomeComercial VARCHAR2(80) NOT NULL,
                nomeGenerico VARCHAR2(80) NOT NULL,
                nomeEtiqueta VARCHAR2(80) NOT NULL,
                nomeOrdemP VARCHAR2(80) NOT NULL,
                CONSTRAINT CODAMINOACIDO PRIMARY KEY (codAminoacido, idClass)
);

CREATE TABLE hospital (
                idHospital NUMBER NOT NULL,
                CNPJ VARCHAR2(18) NOT NULL,
                nomeHospital VARCHAR2(80) NOT NULL,
                razaoSocial VARCHAR2(80) NOT NULL,
                CONSTRAINT IDHOSPITAL PRIMARY KEY (idHospital, CNPJ)
);

CREATE TABLE secao (
                idSecao NUMBER NOT NULL,
                CNPJ VARCHAR2(18) NOT NULL,
                idHospital NUMBER NOT NULL,
                local VARCHAR2(80) NOT NULL,
                nome VARCHAR2(80) NOT NULL,
                CONSTRAINT IDSECAO PRIMARY KEY (idSecao)
);

CREATE TABLE leito (
                idLeito NUMBER NOT NULL,
                idSecao NUMBER NOT NULL,
                numero VARCHAR2(80) NOT NULL,
                local VARCHAR2(80) NOT NULL,
                CONSTRAINT IDLEITO PRIMARY KEY (idLeito)
);

CREATE TABLE convenio (
                idConvenio NUMBER NOT NULL,
                nome VARCHAR2(20) NOT NULL,
                CONSTRAINT IDCONVENIO PRIMARY KEY (idConvenio)
);

CREATE TABLE medico (
                idMedico NUMBER NOT NULL,
                CRM VARCHAR2(80) NOT NULL,
                CNPJ VARCHAR2(18) NOT NULL,
                idHospital NUMBER NOT NULL,
                idConvenio NUMBER NOT NULL,
                nome VARCHAR2(80) NOT NULL,
                sobrenome VARCHAR2(80) NOT NULL,
                especializacao VARCHAR2(80),
                ativo CHAR(1) DEFAULT '1',
                CONSTRAINT IDMEDICO PRIMARY KEY (idMedico, CRM)
);

CREATE TABLE paciente (
                idPaciente NUMBER NOT NULL,
                idConvenio NUMBER NOT NULL,
                CRM VARCHAR2(80) NOT NULL,
                idMedico NUMBER NOT NULL,
                CPF VARCHAR2(14) NOT NULL,
                nome VARCHAR2(25) NOT NULL,
                sobrenome VARCHAR2(60) NOT NULL,
                dataNasc DATE NOT NULL,
                sexo CHAR NOT NULL,
                CONSTRAINT CPF PRIMARY KEY (idPaciente, idConvenio)
);

CREATE TABLE acessoNutri (
                idAcesso NUMBER NOT NULL,
                tipoAcesso VARCHAR2(20) NOT NULL,
                CONSTRAINT IDACESSO PRIMARY KEY (idAcesso)
);

CREATE TABLE formNutri (
                idNutri NUMBER NOT NULL,
                idMedico NUMBER NOT NULL,
                CRM VARCHAR2(80) NOT NULL,
                peso NUMBER NOT NULL,
                idHospital NUMBER NOT NULL,
                CNPJ VARCHAR2(18) NOT NULL,
                idSecao NUMBER NOT NULL,
                idLeito NUMBER NOT NULL,
                idConvenio NUMBER NOT NULL,
                idPaciente NUMBER NOT NULL,
                idAcesso NUMBER NOT NULL,
                data DATE NOT NULL,
                velocidadeInfusao VARCHAR2(80) NOT NULL,
                horas NUMBER NOT NULL,
                volumeTotal NUMBER NOT NULL,
                volumeEquipo NUMBER NOT NULL,
                observacao VARCHAR2(80),
                mudanca VARCHAR2(120),
                codVitaminaNutri NUMBER,
                codSolucaoNutri NUMBER,
                codOligoNutri NUMBER,
                codLipiNutri NUMBER,
                codGlicoNutri NUMBER,
                codEletroNutri NUMBER,
                codAminoNutri NUMBER,
                CONSTRAINT IDNUTRI PRIMARY KEY (idNutri)
);

CREATE TABLE vitaminaNutri (
                codVitaminaNutri NUMBER NOT NULL,
                codVitaminas NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODVITAMINANUTRI PRIMARY KEY (codVitaminaNutri)
);

CREATE TABLE solucaoNutri (
                codSolucaoNutri NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                codSolucoes NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODSOLUCAONUTRI PRIMARY KEY (codSolucaoNutri)
);

CREATE TABLE oligoNutri (
                codOligoNutri NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                codOligo NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODOLIGONUTRI PRIMARY KEY (codOligoNutri)
);

CREATE TABLE lipiNutri (
                codLipiNutri NUMBER NOT NULL,
                codLipidio NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODLIPINUTRI PRIMARY KEY (codLipiNutri)
);

CREATE TABLE glicoNutri (
                codGlicoNutri NUMBER NOT NULL,
                codGlicose NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODGLICONUTRI PRIMARY KEY (codGlicoNutri)
);

CREATE TABLE eletroNutri (
                codEletroNutri NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                codEletrolito NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODELETRONUTRI PRIMARY KEY (codEletroNutri)
);

CREATE TABLE aminoNutri (
                codAminoNutri NUMBER NOT NULL,
                codAminoacido NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODAMINONUTRI PRIMARY KEY (codAminoNutri)
);

CREATE TABLE formLog (
                idNutri NUMBER NOT NULL,
                CRM VARCHAR2(80) NOT NULL,
                dataMudanca DATE NOT NULL
);

ALTER TABLE vitaminaNutri ADD CONSTRAINT VITAMINAS_VITAMINANUTRI_FK
FOREIGN KEY (codVitaminas, idClass)
REFERENCES vitaminas (codVitaminas, idClass)
NOT DEFERRABLE;

ALTER TABLE solucaoNutri ADD CONSTRAINT SOLUCOESFISIOLOGICAS_SOLUCA374
FOREIGN KEY (codSolucoes, idClass)
REFERENCES solucoesFisiologicas (codSolucoes, idClass)
NOT DEFERRABLE;

ALTER TABLE oligoNutri ADD CONSTRAINT OLIGOELEMENTOS_OLIGONUTRI_FK
FOREIGN KEY (codOligo, idClass)
REFERENCES oligoelementos (codOligo, idClass)
NOT DEFERRABLE;

ALTER TABLE lipiNutri ADD CONSTRAINT LIPIDIOS_LIPINUTRI_FK
FOREIGN KEY (codLipidio, idClass)
REFERENCES lipidios (codLipidio, idClass)
NOT DEFERRABLE;

ALTER TABLE glicoNutri ADD CONSTRAINT GLICOSES_GLICONUTRI_FK
FOREIGN KEY (codGlicose, idClass)
REFERENCES glicoses (codGlicose, idClass)
NOT DEFERRABLE;

ALTER TABLE eletroNutri ADD CONSTRAINT ELETROLITOS_ELETRONUTRI_FK
FOREIGN KEY (codEletrolito, idClass)
REFERENCES eletrolitos (codEletrolito, idClass)
NOT DEFERRABLE;

ALTER TABLE aminoNutri ADD CONSTRAINT AMINOACIDOS_AMINONUTRI_FK
FOREIGN KEY (idClass, codAminoacido)
REFERENCES aminoacidos (idClass, codAminoacido)
NOT DEFERRABLE;

ALTER TABLE secao ADD CONSTRAINT NOME_SECAO_FK
FOREIGN KEY (idHospital, CNPJ)
REFERENCES hospital (idHospital, CNPJ)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT NOME_IDENTIFYNUTRI_FK
FOREIGN KEY (idHospital, CNPJ)
REFERENCES hospital (idHospital, CNPJ)
NOT DEFERRABLE;

ALTER TABLE medico ADD CONSTRAINT NOME_MEDICO_FK
FOREIGN KEY (idHospital, CNPJ)
REFERENCES hospital (idHospital, CNPJ)
NOT DEFERRABLE;

ALTER TABLE leito ADD CONSTRAINT SECAO_LEITO_FK
FOREIGN KEY (idSecao)
REFERENCES secao (idSecao)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT SECAO_IDENTIFYNUTRI_FK
FOREIGN KEY (idSecao)
REFERENCES secao (idSecao)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT LEITO_IDENTIFYNUTRI_FK
FOREIGN KEY (idLeito)
REFERENCES leito (idLeito)
NOT DEFERRABLE;

ALTER TABLE medico ADD CONSTRAINT CONVENIO_MEDICO_FK
FOREIGN KEY (idConvenio)
REFERENCES convenio (idConvenio)
NOT DEFERRABLE;

ALTER TABLE paciente ADD CONSTRAINT CONVENIO_PACIENTE_FK
FOREIGN KEY (idConvenio)
REFERENCES convenio (idConvenio)
NOT DEFERRABLE;

ALTER TABLE paciente ADD CONSTRAINT MEDICO_PACIENTE_FK
FOREIGN KEY (idMedico, CRM)
REFERENCES medico (idMedico, CRM)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT MEDICO_FORMNUTRI_FK
FOREIGN KEY (idMedico, CRM)
REFERENCES medico (idMedico, CRM)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT PACIENTE_IDENTIFYNUTRI_FK
FOREIGN KEY (idPaciente, idConvenio)
REFERENCES paciente (idPaciente, idConvenio)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT ACESSONUTRI_IDENTIFYNUTRI_FK
FOREIGN KEY (idAcesso)
REFERENCES acessoNutri (idAcesso)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT codVitaminaNutri_FK
FOREIGN KEY (codVitaminaNutri)
REFERENCES vitaminaNutri (codVitaminaNutri)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT codSolucaoNutri_FK
FOREIGN KEY (codSolucaoNutri)
REFERENCES solucaoNutri (codSolucaoNutri)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT codOligoNutri_FK
FOREIGN KEY (codOligoNutri)
REFERENCES oligoNutri  (codOligoNutri)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT codLipiNutri_FK
FOREIGN KEY (codLipiNutri)
REFERENCES lipiNutri  (codLipiNutri)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT codGlicoNutri_FK
FOREIGN KEY (codGlicoNutri)
REFERENCES glicoNutri  (codGlicoNutri)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT codEletroNutri_FK
FOREIGN KEY (codEletroNutri)
REFERENCES eletroNutri  (codEletroNutri)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT codAminoNutri_FK
FOREIGN KEY (codAminoNutri)
REFERENCES aminoNutri  (codAminoNutri)
NOT DEFERRABLE;

-- TRIGGERS

INSERT INTO formLog (crm, idNutri, dataMudanca)
VALUES (:new.crm, :new.idNutri, SYSDATE);

-- SELECT
select p.nome as Nome_Paciente
, h.razaoSocial as Hospital
, f.data as Data
, s.nome as Secao
, l.numero as Leito
, ac.tipoAcesso as Acesso
, co.nome as Convenio
, f.peso as Peso
, am.total as Aminoacido
, g.total as Glicose
, lip.total as Lipidio
, e.total as Eletrolito
, o.total as Oligoelemento
, v.total as Vitamina
, ag.total as Agua_Injecao
, f.velocidadeInfusao as Velocidade_Infusao
, f.horas as Horas
, f.volumeTotal as Volume_Total
, f.volumeEquipo as Voluma_Equipo
, m.nome as Medico
, m.CRM as CRM
from formNutri f
INNER JOIN paciente p ON (p.idPaciente = f.idPaciente)
INNER JOIN hospital h ON (h.idHospital = f.idHospital)
INNER JOIN secao s ON (s.idSecao = f.idSecao)
INNER JOIN leito l ON (l.idLeito = f.idLeito)
INNER JOIN acessoNutri ac ON (ac.idAcesso = f.idAcesso)
INNER JOIN convenio co ON (co.idConvenio = f.idConvenio)
INNER JOIN medico m ON (m.idMedico = f.idMedico)
INNER JOIN aminoNutri am ON (am.codAminoNutri = f.codAminoNutri)
INNER JOIN glicoNutri g ON (g.codGlicoNutri = f.codGlicoNutri)
INNER JOIN lipiNutri lip ON (lip.codLipiNutri = f.codLipiNutri)
INNER JOIN eletroNutri e ON (e.codEletroNutri = f.codEletroNutri)
INNER JOIN oligoNutri o ON (o.codOligoNutri = f.codOligoNutri)
INNER JOIN vitaminaNutri v ON (v.codVitaminaNutri = f.codVitaminaNutri)
INNER JOIN solucaoNutri ag ON (ag.codSolucaoNutri = f.codSolucaoNutri)
;

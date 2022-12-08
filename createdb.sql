
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
                peso FLOAT NOT NULL,
                idHospital NUMBER NOT NULL,
                CNPJ VARCHAR2(18) NOT NULL,
                idSecao NUMBER NOT NULL,
                idLeito NUMBER NOT NULL,
                idConvenio NUMBER NOT NULL,
                idPaciente NUMBER NOT NULL,
                idAcesso NUMBER NOT NULL,
                data DATE NOT NULL,
                velocidadeInfusao VARCHAR2(80) NOT NULL,
                horas FLOAT NOT NULL,
                volumeTotal FLOAT NOT NULL,
                volumeEquipo FLOAT NOT NULL,
                observacao VARCHAR2(80),
                mudanca VARCHAR2(120),
                CONSTRAINT IDNUTRI PRIMARY KEY (idNutri)
);

CREATE TABLE vitaminaNutri (
                codVitaminaNutri NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                codVitaminas NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODVITAMINANUTRI PRIMARY KEY (codVitaminaNutri)
);

CREATE TABLE solucaoNutri (
                codSolucaoNutri NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                codSolucoes NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODSOLUCAONUTRI PRIMARY KEY (codSolucaoNutri)
);

CREATE TABLE oligoNutri (
                codOligoNutri NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
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
                idNutri NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODLIPINUTRI PRIMARY KEY (codLipiNutri)
);

CREATE TABLE glicoNutri (
                codGlicoNutri NUMBER NOT NULL,
                codGlicose NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODGLICONUTRI PRIMARY KEY (codGlicoNutri)
);

CREATE TABLE eletroNutri (
                codEletroNutri NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                codEletrolito NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODELETRONUTRI PRIMARY KEY (codEletroNutri)
);

CREATE TABLE aminoNutri (
                codAminoNutri NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                codAminoacido NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                qtd VARCHAR2(10) NOT NULL,
                excesso VARCHAR2(10),
                total VARCHAR(10),
                CONSTRAINT CODAMINONUTRI PRIMARY KEY (codAminoNutri)
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

--------------- erro de tabela não criada
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

ALTER TABLE aminoNutri ADD CONSTRAINT FORMNUTRI_AMINONUTRI_FK
FOREIGN KEY (idNutri)
REFERENCES formNutri (idNutri)
NOT DEFERRABLE;

ALTER TABLE eletroNutri ADD CONSTRAINT FORMNUTRI_ELETRONUTRI_FK
FOREIGN KEY (idNutri)
REFERENCES formNutri (idNutri)
NOT DEFERRABLE;

ALTER TABLE glicoNutri ADD CONSTRAINT FORMNUTRI_GLICONUTRI_FK
FOREIGN KEY (idNutri)
REFERENCES formNutri (idNutri)
NOT DEFERRABLE;

ALTER TABLE lipiNutri ADD CONSTRAINT FORMNUTRI_LIPINUTRI_FK
FOREIGN KEY (idNutri)
REFERENCES formNutri (idNutri)
NOT DEFERRABLE;

ALTER TABLE oligoNutri ADD CONSTRAINT FORMNUTRI_OLIGONUTRI_FK
FOREIGN KEY (idNutri)
REFERENCES formNutri (idNutri)
NOT DEFERRABLE;

ALTER TABLE solucaoNutri ADD CONSTRAINT FORMNUTRI_SOLUCAONUTRI_FK
FOREIGN KEY (idNutri)
REFERENCES formNutri (idNutri)
NOT DEFERRABLE;

ALTER TABLE vitaminaNutri ADD CONSTRAINT FORMNUTRI_VITAMINANUTRI_FK
FOREIGN KEY (idNutri)
REFERENCES formNutri (idNutri)
NOT DEFERRABLE;

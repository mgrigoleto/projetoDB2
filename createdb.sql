
CREATE TABLE vitaminas (
                codVitaminas NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2 NOT NULL,
                nomeComercial VARCHAR2 NOT NULL,
                nomeGenerico VARCHAR2 NOT NULL,
                nomeEtiqueta VARCHAR2 NOT NULL,
                nomeOrdemP VARCHAR2 NOT NULL,
                CONSTRAINT CODVITAMINAS PRIMARY KEY (codVitaminas, idClass)
);
COMMENT ON COLUMN vitaminas.codVitaminas IS 'Código da vitamina';
COMMENT ON COLUMN vitaminas.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN vitaminas.idComercial IS 'Identificação comercial (nominal)';
COMMENT ON COLUMN vitaminas.nomeComercial IS 'Nome comercial';
COMMENT ON COLUMN vitaminas.nomeGenerico IS 'Nome genérico';
COMMENT ON COLUMN vitaminas.nomeEtiqueta IS 'Nome presente na etiqueta';
COMMENT ON COLUMN vitaminas.nomeOrdemP IS 'Nome presente na ordem de produção';


CREATE TABLE solucoesFisiologicas (
                codSolucoes NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2 NOT NULL,
                nomeComercial VARCHAR2 NOT NULL,
                nomeGenerico VARCHAR2 NOT NULL,
                nomeEtiqueta VARCHAR2 NOT NULL,
                nomeOrdemP VARCHAR2 NOT NULL,
                CONSTRAINT CODSOLUCOES PRIMARY KEY (codSolucoes, idClass)
);
COMMENT ON COLUMN solucoesFisiologicas.codSolucoes IS 'Código da solução fisiológica';
COMMENT ON COLUMN solucoesFisiologicas.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN solucoesFisiologicas.idComercial IS 'Identificação comercial (nominal)';
COMMENT ON COLUMN solucoesFisiologicas.nomeComercial IS 'Nome comercial';
COMMENT ON COLUMN solucoesFisiologicas.nomeGenerico IS 'Nome genérico';
COMMENT ON COLUMN solucoesFisiologicas.nomeEtiqueta IS 'Nome presente na etiqueta';
COMMENT ON COLUMN solucoesFisiologicas.nomeOrdemP IS 'Nome presente na ordem de produção';


CREATE TABLE oligoelementos (
                codOligo NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2 NOT NULL,
                nomeComercial VARCHAR2 NOT NULL,
                nomeGenerico VARCHAR2 NOT NULL,
                nomeEtiqueta VARCHAR2 NOT NULL,
                nomeOrdemP VARCHAR2 NOT NULL,
                CONSTRAINT CODOLIGO PRIMARY KEY (codOligo, idClass)
);
COMMENT ON COLUMN oligoelementos.codOligo IS 'Código do oligoelemento';
COMMENT ON COLUMN oligoelementos.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN oligoelementos.idComercial IS 'Identificação comercial (nominal)';
COMMENT ON COLUMN oligoelementos.nomeComercial IS 'Nome comercial';
COMMENT ON COLUMN oligoelementos.nomeGenerico IS 'Nome genérico';
COMMENT ON COLUMN oligoelementos.nomeEtiqueta IS 'Nome presente na etiqueta';
COMMENT ON COLUMN oligoelementos.nomeOrdemP IS 'Nome presente na ordem de produção';


CREATE TABLE lipidios (
                codLipidio NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2 NOT NULL,
                nomeComercial VARCHAR2 NOT NULL,
                nomeGenerico VARCHAR2 NOT NULL,
                nomeEtiqueta VARCHAR2 NOT NULL,
                nomeOrdemP VARCHAR2 NOT NULL,
                CONSTRAINT CODLIPIDIO PRIMARY KEY (codLipidio, idClass)
);
COMMENT ON COLUMN lipidios.codLipidio IS 'Código do lipídio';
COMMENT ON COLUMN lipidios.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN lipidios.idComercial IS 'Identificação comercial (nominal)';
COMMENT ON COLUMN lipidios.nomeComercial IS 'Nome comercial';
COMMENT ON COLUMN lipidios.nomeGenerico IS 'Nome genérico';
COMMENT ON COLUMN lipidios.nomeEtiqueta IS 'Nome presente na etiqueta';
COMMENT ON COLUMN lipidios.nomeOrdemP IS 'Nome presente na ordem de produção';


CREATE TABLE glicoses (
                codGlicose NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2 NOT NULL,
                nomeComercial VARCHAR2 NOT NULL,
                nomeGenerico VARCHAR2 NOT NULL,
                nomeEtiqueta VARCHAR2 NOT NULL,
                nomeOrdemP VARCHAR2 NOT NULL,
                CONSTRAINT CODGLICOSE PRIMARY KEY (codGlicose, idClass)
);
COMMENT ON COLUMN glicoses.codGlicose IS 'Código da glicose';
COMMENT ON COLUMN glicoses.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN glicoses.idComercial IS 'Identificação comercial (nominal)';
COMMENT ON COLUMN glicoses.nomeComercial IS 'Nome comercial';
COMMENT ON COLUMN glicoses.nomeGenerico IS 'Nome genérico';
COMMENT ON COLUMN glicoses.nomeEtiqueta IS 'Nome presente na etiqueta';
COMMENT ON COLUMN glicoses.nomeOrdemP IS 'Nome presente na ordem de produção';


CREATE TABLE eletrolitos (
                codEletrolito NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2 NOT NULL,
                nomeComercial VARCHAR2 NOT NULL,
                nomeGenerico VARCHAR2 NOT NULL,
                nomeEtiqueta VARCHAR2 NOT NULL,
                nomeOrdemP VARCHAR2 NOT NULL,
                CONSTRAINT CODELETROLITO PRIMARY KEY (codEletrolito, idClass)
);
COMMENT ON COLUMN eletrolitos.codEletrolito IS 'Código do eletrólito';
COMMENT ON COLUMN eletrolitos.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN eletrolitos.idComercial IS 'Identificação comercial (nominal)';
COMMENT ON COLUMN eletrolitos.nomeComercial IS 'Nome comercial';
COMMENT ON COLUMN eletrolitos.nomeGenerico IS 'Nome genérico';
COMMENT ON COLUMN eletrolitos.nomeEtiqueta IS 'Nome presente na etiqueta';
COMMENT ON COLUMN eletrolitos.nomeOrdemP IS 'Nome presente na ordem de produção';


CREATE TABLE aminoacidos (
                codAminoacido NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idComercial VARCHAR2 NOT NULL,
                nomeComercial VARCHAR2 NOT NULL,
                nomeGenerico VARCHAR2 NOT NULL,
                nomeEtiqueta VARCHAR2 NOT NULL,
                nomeOrdemP VARCHAR2 NOT NULL,
                CONSTRAINT CODAMINOACIDO PRIMARY KEY (codAminoacido, idClass)
);
COMMENT ON COLUMN aminoacidos.codAminoacido IS 'Código do aminoácido';
COMMENT ON COLUMN aminoacidos.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN aminoacidos.idComercial IS 'Identificação comercial (nominal)';
COMMENT ON COLUMN aminoacidos.nomeComercial IS 'Nome comercial';
COMMENT ON COLUMN aminoacidos.nomeGenerico IS 'Nome genérico';
COMMENT ON COLUMN aminoacidos.nomeEtiqueta IS 'Nome presente na etiqueta';
COMMENT ON COLUMN aminoacidos.nomeOrdemP IS 'Nome presente na ordem de produção';


CREATE TABLE nome (
                nome NUMBER NOT NULL,
                CNPJ VARCHAR2(18) NOT NULL,
                nome_1 VARCHAR2 NOT NULL,
                razaoSocial VARCHAR2 NOT NULL,
                CONSTRAINT IDHOSPITAL PRIMARY KEY (nome, CNPJ)
);
COMMENT ON TABLE nome IS 'Tabela contendo as informações do hospital';
COMMENT ON COLUMN nome.nome IS 'Identificação do hospital.';
COMMENT ON COLUMN nome.CNPJ IS 'Cadastro Nacional de Pessoa Jurídica da instituição.';
COMMENT ON COLUMN nome.nome_1 IS 'Nome registrado no CNPJ do Hospital';
COMMENT ON COLUMN nome.razaoSocial IS 'Razão social do hospital';


CREATE TABLE secao (
                idSecao NUMBER NOT NULL,
                CNPJ VARCHAR2(18) NOT NULL,
                nome NUMBER NOT NULL,
                local VARCHAR2 NOT NULL,
                nome_1 VARCHAR2 NOT NULL,
                CONSTRAINT IDSECAO PRIMARY KEY (idSecao)
);
COMMENT ON TABLE secao IS 'Tabela que armazena as informações das seções do hospital';
COMMENT ON COLUMN secao.idSecao IS 'Identificação da seção';
COMMENT ON COLUMN secao.CNPJ IS 'Cadastro Nacional de Pessoa Jurídica da instituição.';
COMMENT ON COLUMN secao.nome IS 'Identificação do hospital.';
COMMENT ON COLUMN secao.local IS 'Onde a seção fica localizada no hospital';
COMMENT ON COLUMN secao.nome_1 IS 'Nome da seção';


CREATE TABLE leito (
                idLeito NUMBER NOT NULL,
                idSecao NUMBER NOT NULL,
                numero VARCHAR2 NOT NULL,
                local VARCHAR2 NOT NULL,
                CONSTRAINT IDLEITO PRIMARY KEY (idLeito)
);
COMMENT ON TABLE leito IS 'Tabela com os dados dos leitos da seção';
COMMENT ON COLUMN leito.idLeito IS 'Identificação do leito';
COMMENT ON COLUMN leito.idSecao IS 'Identificação da seção';
COMMENT ON COLUMN leito.numero IS 'Numero do leito';
COMMENT ON COLUMN leito.local IS 'Localização do leito';


CREATE TABLE convenio (
                idConvenio NUMBER NOT NULL,
                nome VARCHAR2(20) NOT NULL,
                CONSTRAINT IDCONVENIO PRIMARY KEY (idConvenio)
);
COMMENT ON TABLE convenio IS 'Tabela para armazenar os convênios';
COMMENT ON COLUMN convenio.idConvenio IS 'Identificação do convênio';
COMMENT ON COLUMN convenio.nome IS 'Nome do convênio';


CREATE TABLE medico (
                idMedico NUMBER NOT NULL,
                CRM VARCHAR2 NOT NULL,
                CNPJ VARCHAR2(18) NOT NULL,
                nome NUMBER NOT NULL,
                idConvenio NUMBER NOT NULL,
                nome_1 VARCHAR2 NOT NULL,
                sobrenome VARCHAR2 NOT NULL,
                especializacao VARCHAR2,
                CONSTRAINT IDMEDICO PRIMARY KEY (idMedico, CRM)
);
COMMENT ON TABLE medico IS 'Tabela contento informações sobre o médico';
COMMENT ON COLUMN medico.idMedico IS 'Identificação do médico no banco de dados';
COMMENT ON COLUMN medico.CRM IS 'Número de registro do médico';
COMMENT ON COLUMN medico.CNPJ IS 'Cadastro Nacional de Pessoa Jurídica da instituição.';
COMMENT ON COLUMN medico.nome IS 'Identificação do hospital.';
COMMENT ON COLUMN medico.idConvenio IS 'Identificação do convênio';
COMMENT ON COLUMN medico.nome_1 IS 'Primeiro nome do médico';
COMMENT ON COLUMN medico.sobrenome IS 'Sobrenome do médico';
COMMENT ON COLUMN medico.especializacao IS 'Nível de especialização do médico';


CREATE TABLE paciente (
                idPaciente NUMBER NOT NULL,
                idConvenio NUMBER NOT NULL,
                CRM VARCHAR2 NOT NULL,
                idMedico NUMBER NOT NULL,
                CPF VARCHAR2(14) NOT NULL,
                nome VARCHAR2(25) NOT NULL,
                sobrenome VARCHAR2(60) NOT NULL,
                dataNasc DATE NOT NULL,
                sexo CHAR NOT NULL,
                CONSTRAINT CPF PRIMARY KEY (idPaciente, idConvenio)
);
COMMENT ON TABLE paciente IS 'Tabela contendo as informações do paciente';
COMMENT ON COLUMN paciente.idPaciente IS 'ID do paciente no banco de dados.';
COMMENT ON COLUMN paciente.idConvenio IS 'Identificação do convênio';
COMMENT ON COLUMN paciente.CRM IS 'Número de registro do médico';
COMMENT ON COLUMN paciente.idMedico IS 'Identificação do médico no banco de dados';
COMMENT ON COLUMN paciente.CPF IS 'Cadastro de Pessoa Física do paciente.';
COMMENT ON COLUMN paciente.nome IS 'Primeiro nome do paciente.';
COMMENT ON COLUMN paciente.sobrenome IS 'Sobrenome do paciente';
COMMENT ON COLUMN paciente.dataNasc IS 'Data de nascimento do paciente';
COMMENT ON COLUMN paciente.sexo IS 'Sexo do paciente';


CREATE TABLE acessoNutri (
                idAcesso NUMBER NOT NULL,
                tipoAcesso VARCHAR2(20) NOT NULL,
                CONSTRAINT IDACESSO PRIMARY KEY (idAcesso)
);
COMMENT ON TABLE acessoNutri IS 'Tabela para armazenar os tipos de acesso da nutrição parenteral';
COMMENT ON COLUMN acessoNutri.idAcesso IS 'Chave primária do tipo de acesso';
COMMENT ON COLUMN acessoNutri.tipoAcesso IS 'Nome do tipo de acesso à nutrição parenteral.';


CREATE TABLE formNutri (
                idNutri NUMBER NOT NULL,
                idMedico NUMBER NOT NULL,
                CRM VARCHAR2 NOT NULL,
                peso FLOAT NOT NULL,
                nome NUMBER NOT NULL,
                CNPJ VARCHAR2(18) NOT NULL,
                idSecao NUMBER NOT NULL,
                idLeito NUMBER NOT NULL,
                idConvenio NUMBER NOT NULL,
                idPaciente NUMBER NOT NULL,
                idAcesso NUMBER NOT NULL,
                data DATE NOT NULL,
                velocidadeInfusao VARCHAR2 NOT NULL,
                horas FLOAT NOT NULL,
                volumeTotal FLOAT NOT NULL,
                volumeEquipo FLOAT NOT NULL,
                CONSTRAINT IDNUTRI PRIMARY KEY (idNutri)
);
COMMENT ON TABLE formNutri IS 'Tabela que armazena os dados do formulário da nutrição parenteral.';
COMMENT ON COLUMN formNutri.idNutri IS 'Chave primária da tabela.';
COMMENT ON COLUMN formNutri.idMedico IS 'Identificação do médico no banco de dados';
COMMENT ON COLUMN formNutri.CRM IS 'Número de registro do médico';
COMMENT ON COLUMN formNutri.peso IS 'Peso do paciente';
COMMENT ON COLUMN formNutri.nome IS 'Identificação do hospital.';
COMMENT ON COLUMN formNutri.CNPJ IS 'Cadastro Nacional de Pessoa Jurídica da instituição.';
COMMENT ON COLUMN formNutri.idSecao IS 'Identificação da seção';
COMMENT ON COLUMN formNutri.idLeito IS 'Identificação do leito';
COMMENT ON COLUMN formNutri.idConvenio IS 'Identificação do convênio';
COMMENT ON COLUMN formNutri.idPaciente IS 'ID do paciente no banco de dados.';
COMMENT ON COLUMN formNutri.idAcesso IS 'Chave primária do tipo de acesso';
COMMENT ON COLUMN formNutri.data IS 'Data do pedido de nutrição';
COMMENT ON COLUMN formNutri.velocidadeInfusao IS 'Velocidade da infusão da nutrição';
COMMENT ON COLUMN formNutri.horas IS 'Duração da aplicação da nutrição';
COMMENT ON COLUMN formNutri.volumeTotal IS 'Volume total da nutrição';
COMMENT ON COLUMN formNutri.volumeEquipo IS 'Volume do equipo utilizado na nutrição';


CREATE TABLE vitaminaNutri (
                codVitaminaNutri NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                codVitaminas NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                qtd VARCHAR2 NOT NULL,
                CONSTRAINT CODVITAMINANUTRI PRIMARY KEY (codVitaminaNutri)
);
COMMENT ON TABLE vitaminaNutri IS 'Tabela para registro das vitaminas presentes na prescrição';
COMMENT ON COLUMN vitaminaNutri.codVitaminaNutri IS 'ID da prescrição de vitamina';
COMMENT ON COLUMN vitaminaNutri.idNutri IS 'Chave primária da tabela.';
COMMENT ON COLUMN vitaminaNutri.codVitaminas IS 'Código da vitamina';
COMMENT ON COLUMN vitaminaNutri.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN vitaminaNutri.qtd IS 'Quantidade a ser utilizada na prescrição';


CREATE TABLE solucaoNutri (
                codSolucaoNutri NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                codSolucoes NUMBER NOT NULL,
                qtd VARCHAR2 NOT NULL,
                CONSTRAINT CODSOLUCAONUTRI PRIMARY KEY (codSolucaoNutri)
);
COMMENT ON TABLE solucaoNutri IS 'Tabela para registro das soluções fisiológicas presentes na prescrição';
COMMENT ON COLUMN solucaoNutri.codSolucaoNutri IS 'ID da prescrição de solução fisiológica';
COMMENT ON COLUMN solucaoNutri.idNutri IS 'Chave primária da tabela.';
COMMENT ON COLUMN solucaoNutri.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN solucaoNutri.codSolucoes IS 'Código da solução fisiológica';
COMMENT ON COLUMN solucaoNutri.qtd IS 'Quantidade a ser utilizada na prescrição';


CREATE TABLE oligoNutri (
                codOligoNutri NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                codOligo NUMBER NOT NULL,
                qtd VARCHAR2 NOT NULL,
                CONSTRAINT CODOLIGONUTRI PRIMARY KEY (codOligoNutri)
);
COMMENT ON TABLE oligoNutri IS 'Tabela para registro dos oligoelementos presentes na prescrição';
COMMENT ON COLUMN oligoNutri.codOligoNutri IS 'ID da prescrição de oligoelemento';
COMMENT ON COLUMN oligoNutri.idNutri IS 'Chave primária da tabela.';
COMMENT ON COLUMN oligoNutri.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN oligoNutri.codOligo IS 'Código do oligoelemento';
COMMENT ON COLUMN oligoNutri.qtd IS 'Quantidade a ser utilizada na prescrição';


CREATE TABLE lipiNutri (
                codLipiNutri NUMBER NOT NULL,
                codLipidio NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                qtd VARCHAR2 NOT NULL,
                CONSTRAINT CODLIPINUTRI PRIMARY KEY (codLipiNutri)
);
COMMENT ON TABLE lipiNutri IS 'Tabela para registro dos lipídios presentes na prescrição';
COMMENT ON COLUMN lipiNutri.codLipiNutri IS 'ID da prescrição de lipídio';
COMMENT ON COLUMN lipiNutri.codLipidio IS 'Código do lipídio';
COMMENT ON COLUMN lipiNutri.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN lipiNutri.idNutri IS 'Chave primária da tabela.';
COMMENT ON COLUMN lipiNutri.qtd IS 'Quantidade a ser utilizada na prescrição';


CREATE TABLE glicoNutri (
                codGlicoNutri NUMBER NOT NULL,
                codGlicose NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                qtd VARCHAR2 NOT NULL,
                CONSTRAINT CODGLICONUTRI PRIMARY KEY (codGlicoNutri)
);
COMMENT ON TABLE glicoNutri IS 'Tabela para registro das glicoses presentes na prescrição';
COMMENT ON COLUMN glicoNutri.codGlicoNutri IS 'ID da prescrição de glicose';
COMMENT ON COLUMN glicoNutri.codGlicose IS 'Código da glicose';
COMMENT ON COLUMN glicoNutri.idNutri IS 'Chave primária da tabela.';
COMMENT ON COLUMN glicoNutri.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN glicoNutri.qtd IS 'Quantidade a ser utilizada na prescrição';


CREATE TABLE eletroNutri (
                codEletroNutri NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                codEletrolito NUMBER NOT NULL,
                qtd VARCHAR2 NOT NULL,
                CONSTRAINT CODELETRONUTRI PRIMARY KEY (codEletroNutri)
);
COMMENT ON TABLE eletroNutri IS 'Tabela para registro dos eletrólitos presentes na prescrição';
COMMENT ON COLUMN eletroNutri.codEletroNutri IS 'ID da prescrição de eletrólitos';
COMMENT ON COLUMN eletroNutri.idNutri IS 'Chave primária da tabela.';
COMMENT ON COLUMN eletroNutri.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN eletroNutri.codEletrolito IS 'Código do eletrólito';
COMMENT ON COLUMN eletroNutri.qtd IS 'Quantidade a ser utilizada na prescrição';


CREATE TABLE aminoNutri (
                codAminoNutri NUMBER NOT NULL,
                idNutri NUMBER NOT NULL,
                codAminoacido NUMBER NOT NULL,
                idClass NUMBER NOT NULL,
                qtd VARCHAR2 NOT NULL,
                CONSTRAINT CODAMINONUTRI PRIMARY KEY (codAminoNutri)
);
COMMENT ON TABLE aminoNutri IS 'Tabela para registro dos aminoácidos presentes na prescrição';
COMMENT ON COLUMN aminoNutri.codAminoNutri IS 'ID da prescrição de aminoácidos';
COMMENT ON COLUMN aminoNutri.idNutri IS 'Chave primária da tabela.';
COMMENT ON COLUMN aminoNutri.codAminoacido IS 'Código do aminoácido';
COMMENT ON COLUMN aminoNutri.idClass IS 'Classe de aminoácido presente no formulário';
COMMENT ON COLUMN aminoNutri.qtd IS 'Quantidade a ser utilizada na prescrição';


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
FOREIGN KEY (nome, CNPJ)
REFERENCES nome (nome, CNPJ)
NOT DEFERRABLE;

ALTER TABLE formNutri ADD CONSTRAINT NOME_IDENTIFYNUTRI_FK
FOREIGN KEY (nome, CNPJ)
REFERENCES nome (nome, CNPJ)
NOT DEFERRABLE;

ALTER TABLE medico ADD CONSTRAINT NOME_MEDICO_FK
FOREIGN KEY (nome, CNPJ)
REFERENCES nome (nome, CNPJ)
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

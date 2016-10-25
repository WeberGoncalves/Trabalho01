-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Movimento (
Custos Texto(1),
Despesas Texto(1),
Receita Texto(1),
cod-Serviço Texto(1),
Crm VARCHAR(10),
cod_Servico Texto(1),
PRIMARY KEY(cod-Serviço,Crm)
)

CREATE TABLE Funcionario_FuncionarioAdm_Dentista (
nome VARCHAR(10),
id_func VARCHAR(10) PRIMARY KEY,
CRM VARCHAR(10),
cod_Servico Texto(1)
)

CREATE TABLE Relacionado (
Valor VARCHAR(10),
id_func VARCHAR(10),
Cod_agend VARCHAR(10),
FOREIGN KEY(id_func) REFERENCES Funcionario_FuncionarioAdm_Dentista (id_func)
)

CREATE TABLE Serviço (
material Texto(1),
Descrição Texto(1),
cod_Servico Texto(1) PRIMARY KEY
)

CREATE TABLE Contatos_Funcionario (
Contatos_PK INTEGER PRIMARY KEY,
Codiigo_tipo VARCHAR(10),
Nome_tipo VARCHAR(10),
codigo_contato VARCHAR(10),
Descrição_contato VARCHAR(10),
id_func_FK VARCHAR(),
FOREIGN KEY(id_func_FK) REFERENCES Funcionario_FuncionarioAdm_Dentista (id_func)
)

CREATE TABLE Contatos_Cliente (
Contatos_PK INTEGER PRIMARY KEY,
codigo_tipo VARCHAR(10),
nome_tipo VARCHAR(10),
codigo_tipo1 VARCHAR(10),
nome_tipo1 VARCHAR(10),
codigo_tipo2 VARCHAR(10),
nome_tipo2 VARCHAR(10),
codigo_tipo3 VARCHAR(10),
nome_tipo3 VARCHAR(10),
codigo_tipo4 VARCHAR(10),
nome_tipo4 VARCHAR(10),
descricao_Contato VARCHAR(10),
codigo_contato VARCHAR(10),
CPF_FK Texto(1)
)

CREATE TABLE Cliente (
CPF Texto(1) PRIMARY KEY,
numero Texto(1),
Rua Texto(1),
Municipio VARCHAR(10),
Cep VARCHAR(10),
Bairro VARCHAR(10),
Nome Texto(1)
)

CREATE TABLE Agendamento (
Nome Texto(1),
data Texto(1),
Horario Texto(1),
Dentista Texto(1),
Cod_agend VARCHAR(10) PRIMARY KEY,
valor_pag VARCHAR(10),
CPF Texto(1),
FOREIGN KEY(CPF) REFERENCES Cliente (CPF)
)

CREATE TABLE status (
status_PK INTEGER PRIMARY KEY,
id VARCHAR(10),
descricao VARCHAR(10),
Cod_agend_FK VARCHAR(),
FOREIGN KEY(Cod_agend_FK) REFERENCES Agendamento (Cod_agend)
)

CREATE TABLE Marcardo (
id_func VARCHAR(10),
Cod_agend VARCHAR(10),
FOREIGN KEY(id_func) REFERENCES Funcionario_FuncionarioAdm_Dentista (id_func),
FOREIGN KEY(Cod_agend) REFERENCES Agendamento (Cod_agend)
)

CREATE TABLE tipo_pamento (
tipo_pamento_PK INTEGER PRIMARY KEY,
descricao VARCHAR(10),
id VARCHAR(10)
)

ALTER TABLE Movimento ADD FOREIGN KEY(cod_Servico) REFERENCES Serviço (cod_Servico)
ALTER TABLE Funcionario_FuncionarioAdm_Dentista ADD FOREIGN KEY(cod_Servico) REFERENCES Serviço (cod_Servico)
ALTER TABLE Relacionado ADD FOREIGN KEY(Cod_agend) REFERENCES Agendamento (Cod_agend)
ALTER TABLE Contatos_Cliente ADD FOREIGN KEY(CPF_FK) REFERENCES Cliente (CPF)

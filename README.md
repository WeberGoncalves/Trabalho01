# TRABALHO 01 
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
Weber Gonçalves da Silva<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados na área de Odontologia, tem como motivação facilitar o cadastro de cliente o agendamento dos serviços. <br>

###3	MINI-MUNDO<br>
#Consultório Odontológico 
Neste consultório se faz cadastro do cliente, onde se inseri o nome, CPF, endereço, CEP, município, e bairro, telefone e e-mail. É feito também o agendamento dos clientes, onde se inseri o CPF, e registra a data e horário e o dentista, depois tem uma visão dos clientes agendados onde exibe nome, CPF, data, horário e dentista. Ao realizar o serviço é descrito o que foi realizado, material utilizado, fica exibido seus valores com data e hora. Também é feito lançamento das receitas, despesas e custos materiais do tratamento. Numa outra visão é feita um gráfico com receitas, custos e despesas daquele mês. 
 <br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Para interagir com banco foi criado interface com oito telas de interação. Na primeira tela apresenta a chave de entrada no sistema, na segunda temos o menu com sub entradas para cadastro, agendar, agendados, serviços, gastos e rendimentos. Na tela cadastro temos nome, CPF, endereço, CEP, município, e bairro, telefone e e-mail. Na tela de agendamento inseri o CPF, e registra a data e horário e o dentista, na tela agendados exibe nome, CPF, data, horário e dentista, já na tela serviço é descrito o que foi realizado, material utilizado, fica exibido seus valores com data e hora, na próxima tela a de gastos temos lançamento das receitas, despesas e custos materiais do tratamento, por ultimo temos tela rendimento encontra um gráfico com receitas, custos e despesas daquele mês. <br>

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/OdontoFacil-1.JPG?raw=true "Tela 01")
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/OdontoFacil-2.JPG?raw=true "Tela 02")
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/OdontoFacil-3.JPG?raw=true "Tela 03")
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/OdontoFacil-4.JPG?raw=true "Tela 04")
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/OdontoFacil-5.JPG?raw=true "Tela 05")
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/OdontoFacil-6.JPG?raw=true "Tela 06")
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/OdontoFacil-7.JPG?raw=true "Tela 07")
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/OdontoFacil-8.JPG?raw=true "Tela 08")

### 5	MODELO CONCEITUAL<br>

###  5.1 NOTACAO ENTIDADE RELACIONAMENTO<br>
    
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/modelo%20Conceitual.JPG?raw=true "Modelo Conceitual")
    
##    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)<br>

####5.1 Validação do Modelo Conceitual
    [Grupo01]: [Mateus Lopes e Estevao Segatto]
    [Grupo02]: [Mateus Costa e Jorge Mateus]

####5.2 DECISÕES DE PROJETO<br>
    [atributo]: [descrição da decisão] 
    Na entidade Cliente escolhi o atributo multivalorado para endereço  para facilitar o cadastro,
    já em contados do cliente também  foi colocado um atributo multivalorado para cadastra os tipos de
    contatos com o seu código e descrição o mesmo ocorreu com a entidade funcionário. 
    <br>

####5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


###6	MODELO LÓGICO<br>
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/modelo%20Logico.JPG?raw=true "Modelo Conceitual")

###7	MODELO FÍSICO<br>

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/Modelo%20Fisico.png?raw=true "Modelo Conceitual")

###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES

Para as ideias afluisse foi necessario realizar pesquisas sobre software da area de odontologia em sites como: http://www.dentalis.com.br/ ,http://www.simplesdental.com/, https://www.xdentalcontrole.com.br/ e http://controleodonto.com.br/ .

Foi tambem entrevistado uma estudante de odontologia do sesto período que ja esta esta trabalhando na area, ela explico como funciona o sistema que ela usa no seu trabalho.     
     

        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS

        CREATE DATABASE OdontoFacil;
use OdontoFacil;

CREATE TABLE Clientes(
	idCliente INT NOT NULL AUTO_INCREMENT,
	CPF  VARCHAR(11),
    Nome varchar(40),
    sexo char,
	   numero int,
	   Rua varchar(30),
	   Municipio VARCHAR(30),
	   Cep VARCHAR(10),
   	Bairro VARCHAR(30),
PRIMARY KEY(idCliente));

CREATE TABLE Contatos_Clien(
	idContatoClien INT NOT NULL AUTO_INCREMENT,
    idCliente int,
   	id_tipo int,
	   nome_tipo VARCHAR(15),
	   numero VARCHAR(15),
	   Email VARCHAR(30),
	   PRIMARY KEY(idContatoClien),
FOREIGN KEY (idCliente)REFERENCES Clientes(idCliente))DEFAULT CHARSET=utf8;

CREATE TABLE Funcionario_Adm(
	   id_func INT NOT NULL AUTO_INCREMENT,
	   nome VARCHAR(30),
	   CRM VARCHAR(10),
PRIMARY KEY(id_func));

CREATE TABLE Contatos_Func(
	   id_contato_func INT NOT NULL AUTO_INCREMENT,
    id_func int,
	   id_tipo int,
	   nome_tipo VARCHAR(15),
	   numero VARCHAR(15),
   	Email VARCHAR(30),
   	PRIMARY KEY(id_contato_func),
FOREIGN KEY(id_func)REFERENCES Funcionario_Adm(id_func))DEFAULT CHARSET=utf8;

CREATE TABLE Agendamento(
	  id_agend INT NOT NULL AUTO_INCREMENT,
	  idCliente int,
	  agendado date,
	  Horario time,
	  Dentista_idfu int,
	  valor_pag  DECIMAL(10,2) NOT NULL,
	  PRIMARY KEY(id_agend),
FOREIGN KEY (idCliente)REFERENCES Clientes(idCliente))DEFAULT CHARSET=utf8;

CREATE TABLE Estado_Agend(
	  id_estd_agd int not null auto_increment,
   id_agend INT,
	  descricao varchar(40),
   primary key(id_estd_agd),
FOREIGN KEY(id_agend)REFERENCES Agendamento(id_agend))DEFAULT CHARSET=utf8;

CREATE TABLE tipo_pagamento(
	  id_pagto INT NOT NULL AUTO_INCREMENT,
   id_agend int,
	  forma VARCHAR(30),
	  PRIMARY KEY(id_pagto),
FOREIGN KEY(id_agend) REFERENCES agendamento(id_agend))DEFAULT CHARSET=utf8;

CREATE TABLE Marcado(
 	id_agend int,
 	id_func int,
  FOREIGN KEY(id_agend) REFERENCES agendamento(id_agend),
FOREIGN KEY(id_func) REFERENCES  Funcionario_Adm(id_func))DEFAULT CHARSET=utf8;

CREATE TABLE Tipo_servico(
	  id_tip_serv INT NOT NULL AUTO_INCREMENT,
   id_Serv int,
	  Despesa  DECIMAL(10,2) NOT NULL,
	  Custo  DECIMAL(10,2) NOT NULL,
PRIMARY KEY(id_tip_serv))DEFAULT CHARSET=utf8;

CREATE TABLE Servicos(
	  id_Serv INT NOT NULL AUTO_INCREMENT,
   id_tip_serv int,
   dentista_idf int,
	  material varchar(40),
   servico varchar(40),
	  PRIMARY KEY(id_Serv),
   FOREIGN KEY(dentista_idf) REFERENCES funcionario_adm(id_func),
FOREIGN KEY(id_tip_serv) REFERENCES Tipo_servico(id_tip_serv))DEFAULT CHARSET=utf8;

CREATE TABLE Realizado(
	   CRM int,
   	id_Serv int,
	   id_func int,
    primary key (CRM),
    FOREIGN KEY(id_Serv) REFERENCES  Servicos(id_Serv),
FOREIGN KEY(id_func) REFERENCES  Funcionario_Adm(id_func))DEFAULT CHARSET=utf8;

INSERT INTO clientes  VALUES 
 (default,'111.111.22','Thalles Eduardo','M','02','pau brasil','serra', '29145-130','feu rosa'),
 (default,'222.222.33','Maria silva oliveira','F', '66', 'chikunguya', 'serra', '29156-025', 'alterosa'),
 (default,'333.333.44','Jose gonçalves','M', '88', 'aedes egypsi', 'serra', '29658-354','jacaraipe'),
 (default,'444.444.55', 'Arthur lopes pereira','M', '77', 'dengue', 'vitoria', '30558-154', 'praia do suá'),
 (default,'555.555.66','Carla siqueira andrade','F', '23', 'mosquito', 'vitoria', '30578-055', 'jardim da penha'),
 (default,'666.666.77','Samuel henrique da silva','M','53', 'pernilongo', 'vitoria', '30357-987', 'goiabeiras'),
 (default,'777.777.88','Emanuelly siqueira silva','F', '357', 'virose', 'cariacica', '40369-123', 'jardim tropical'),
 (default,'888.888.99','Yan menezes silva','M','457', 'virose', 'vila velha', '50753-654', 'bairro vermelho'),
 (default,'999.999.10','Jéssica ferreira oliveira','F','09', 'eucalipto', 'vila velha', '50159-852', 'coqueral'),
 (default,'888.888.99','Recilda menezes silva','F', '87', 'chikunguya', 'cariacica', '40853-755', 'jardim tropical');

INSERT INTO Contatos_Clien  VALUES 
(default,'10', '01', 'TEL', '3256-5571','renecilda@gmail.com'),
(default,'9', '02', 'CEL', '8985-7755', 'jessica@gmail.com'),
(default,'8', '01', 'TEL', '3578-9922', 'yan_meneses@gmail.com'),
(default,'7', '02', 'CEL', '9245-1166', 'emanuelly@outlook.com'),
(default,'6', '01', 'TEL', '3265-5511', 'samuel@yahoo.com'),
(default,'5', '02', 'CEL', '8154-2288', 'carlasiq@hotmail.com'),
(default,'4', '02', 'CEL', '9265-5599', 'arthurlop@gmail.com'),
(default,'3', '02', 'CEL', '9955-7711', 'josegon@gmail.com'),
(default,'2', '02', 'CEL', '9826-4135', 'mariasil@hotmail.com'),
(default,'1', '02', 'CEL', '9757-6271', 'thalles@outlook.com');

INSERT INTO Funcionario_Adm  VALUES 
	   (default,'Thallita mendes',''),
    (default,'Eduardo silva','101A'),
    (default,'Eduarda pereira','102B'),
    (default,'sheila silva','103C'),
    (default,'Michelly silveira',''),
    (default,'Wagner secutti','104D');
    
    INSERT INTO Funcionario_Adm  VALUES (default,'Wagner secutti','104D');
    select * from Funcionario_Adm;
  
INSERT INTO Contatos_Func VALUES
   	(default,'1','1','TEL','3258-8865','tallita@odontofacil.com'),
    (default,'2','2','CEL','9988-7755','eduardosil@odontofacil.com'),
    (default,'3','2','CEL','8855-2255','eduardoper@odontofacil.com'),
    (default,'4','2','CEL','9757-6611','sheilasil@odontofacil.com');

INSERT INTO agendamento VALUES
    (default,'4','2016-10-22','08:00',2,'235'),
	   (default,'1','2016-02-01','09:00',4,'235'),
	   (default,'1','2016-09-05','08:30',3,'115'),
    (default,'3','2016-08-15','09:00',4,'97'),
    (default,'5','2016-07-15','09:30',2,'505'),
   	(default,'2','2016-07-18','10:00',2,'65'),
    (default,'6','2016-09-17','10:30',4,'235'),
    (default,'7','2016-06-25','14:00',3,'115'),
    (default,'4','2016-04-25','14:30',4,'97'),
    (default,'8','2016-04-10','15:00',3,'505'),
    (default,'4','2016-03-22','10:00',2,'65'),
    (default,'1','2016-02-01','09:00',3,'235'),
    (default,'6','2016-09-17','10:30',2,'235'),
    (default,'7','2016-10-25','14:00',3,'115'),
    (default,'4','2016-05-25','14:30',4,'97'),
    (default,'3','2016-04-10','15:00',3,'505'),
	   (default,'4','2016-03-22','10:00',2,'65'),
    (default,'2','2016-05-25','14:30',4,'97'),
    (default,'6','2016-07-10','15:00',4,'465'),
	   (default,'5','2016-09-22','10:00',4,'65');
  
INSERT INTO tipo_pagamento values
	   (default,2,'avista'),
    (default,1,'cartão de credito visa'),
    (default,3,'cartão de credito master card'),
    (default,5,'cartão de debito'),
    (default,4,'cartão de credito visa'),
    (default,7,'cartão de credito visa'),
    (default,6,'cartão de credito master card'),
    (default,9,'cartão de credito master card'),
    (default,8,'cartão de debito'),
    (default,11,'cartão de credito master card'),
    (default,10,'cartão de credito visa'),
    (default,13,'cartão de credito master card'),
    (default,12,'cartão de credito visa'),
    (default,15,'cartão de credito master card'),
    (default,14,'cartão de credito visa'),
    (default,17,'avista'),
    (default,16,'avista'),
    (default,19,'cartão de debito'),
    (default,20,'cartão de debito'),
    (default,18,'cartão de credito master card');
    
insert into estado_agend values
	(default,10,'marcado'),
    (default,9,'marcado'),
    (default,8,'marcado'),
    (default,7,'desmarcado'),
    (default,6,'marcado'),
    (default,5,'marcado'),
    (default,4,'marcado'),
    (default,2,'marcado'),
    (default,1,'marcado'),
    (default,3,'marcado'),
    (default,20,'desmarcado'),
    (default,18,'marcado'),
    (default,19,'marcado'),
    (default,15,'marcado'),
    (default,17,'marcado'),
    (default,16,'marcado'),
    (default,14,'desmarcado'),
    (default,13,'marcado'),
    (default,11,'marcado'),
    (default,12,'marcado');

insert into marcado values
   	(1,5),(2,5),(3,1),(4,5),
    (5,1),(6,5),(7,1),(8,5),
    (9,6),(10,5),(11,1),(12,5),
    (13,1),(14,5),(15,1),(16,6),
    (17,6),(18,5),(19,1),(20,6);

insert into tipo_servico values
   	(default,1,35,30),
    (default,2,25,40),
    (default,3,20,41),
    (default,4,35,39),
    (default,5,25,45),
    (default,6,20,37);

insert into servicos values
(default,1,2,'cimento resinoso dual panavia','Núcleo de preenchimento em resina'),
    (default,2,4,'filme radiografico e-speed','Faceta de resina foto'),
    (default,3,3,'silicone de adiçao scan','Restauração de amálgama 01 face'),
    (default,4,4,'luva de procedimento','Endodonticamente tratado'),
    (default,5,2,'alginato jeltrate plus','Restauração de ionômero de vidro'),
    (default,6,7,'clareador opalscence','Clareamento de dente'),
    (default,3,3,'silicone de condensação','Restauração de ionômero de vidro'),
    (default,2,4,'filme radiografico e-speed','Faceta de resina foto'),
    (default,5,3,'alginato jeltrate plus','Restauração de ionômero de vidro'),
    (default,6,2,'clareador opalscence','Clareamento de dente'),
    (default,1,3,'cimento resinoso dual panavia','Núcleo de preenchimento em resina'),
    (default,1,2,'cimento resinoso dual panavia','Núcleo de preenchimento em resina'),
    (default,2,4,'filme radiografico e-speed','Faceta de resina foto'),
    (default,3,7,'silicone de adiçao scan','Restauração de amálgama 01 face'),
    (default,4,2,'luva de procedimento','Endodonticamente tratado'),
    (default,5,4,'alginato jeltrate plus','Restauração de ionômero de vidro'),
    (default,6,4,'clareador opalscence','Clareamento de dente'),
    (default,3,3,'silicone de condensação','Restauração de ionômero de vidro'),
    (default,2,7,'filme radiografico e-speed','Faceta de resina foto'),
	  (default,5,7,'alginato jeltrate plus','Restauração de ionômero de vidro');

###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>
####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>
####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>
####9.6	CONSULTAS COM JUNÇÃO<br>
####9.7	CONSULTAS COM GROUP BY<br>
####9.8	CONSULTAS COM LEFT E RIGHT JOIN<br>
####9.9	CONSULTAS COM SELF JOIN E VIEW<br>
####9.10	SUBCONSULTAS<br>
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/





CREATE DATABASE OdontoFacil;
use OdontoFacil;

CREATE TABLE Clientes(
	idCliente INT NOT NULL AUTO_INCREMENT,
	CPF  int,
    Nome varchar(30),
    sexo char,
	numero int,
	Rua varchar(30),
	Municipio VARCHAR(30),
	Cep int,
	Bairro VARCHAR(30),
PRIMARY KEY(idCliente));

CREATE TABLE tipo_contato_Clien(
	tipo_Contato INT NOT NULL AUTO_INCREMENT,
	nome_tipo VARCHAR(25),
PRIMARY KEY(tipo_Contato));

CREATE TABLE Contatos_Clien(
	id_Contato INT NOT NULL AUTO_INCREMENT,
    idCliente int,
    tipo_Contato int,
	Descricao varchar(30),
	PRIMARY KEY(id_Contato),
FOREIGN KEY (idCliente)REFERENCES Clientes(idCliente))DEFAULT CHARSET=utf8;

CREATE TABLE Funcionario_Adm(
	id_func INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30),
	CRM VARCHAR(10),
PRIMARY KEY(id_func));

CREATE TABLE tipo_Contato_Func(
	tipo_Contato INT NOT NULL AUTO_INCREMENT,
	nome_tipo VARCHAR(25),
PRIMARY KEY(tipo_Contato))DEFAULT CHARSET=utf8;

CREATE TABLE Contatos_Func(
	id_contato INT NOT NULL AUTO_INCREMENT,
    id_func int,
	tipo_Contato int,
	Descricao varchar(30),
	PRIMARY KEY(id_contato),
FOREIGN KEY(id_func)REFERENCES Funcionario_Adm(id_func))DEFAULT CHARSET=utf8;

CREATE TABLE Agendamento(
	id_agend INT NOT NULL AUTO_INCREMENT,
	idCliente int,
	Data_agenda date,
	Horario time,
	Dentista_idfu int,
	valor_pag  DECIMAL(10,2) NOT NULL,
	PRIMARY KEY(id_agend),
FOREIGN KEY (idCliente)REFERENCES Clientes(idCliente))DEFAULT CHARSET=utf8;

CREATE TABLE Estado_Agenda(
	id_estado int not null auto_increment,
    id_agend INT,
	descricao varchar(15),
primary key(id_estado))DEFAULT CHARSET=utf8;

CREATE TABLE tipo_pagamento(
	id_tipo INT NOT NULL AUTO_INCREMENT,
	nome_tipo varchar(30),
PRIMARY KEY(id_tipo))DEFAULT CHARSET=utf8;

CREATE TABLE pagamento(
	id_pagto INT NOT NULL AUTO_INCREMENT,
    id_agend int,
    id_tipo int,
PRIMARY KEY(id_pagto))DEFAULT CHARSET=utf8;

CREATE TABLE Marcado(
	id_agend int,
	id_func int,
FOREIGN KEY(id_agend) REFERENCES agendamento(id_agend),
FOREIGN KEY(id_func) REFERENCES  Funcionario_Adm(id_func))DEFAULT CHARSET=utf8;

CREATE TABLE Tipo_servico(
	tipo_serv INT NOT NULL AUTO_INCREMENT,
	Despesa  DECIMAL(10,2) NOT NULL,
	Custo  DECIMAL(10,2) NOT NULL,
    servico varchar(40),
    material varchar(40),
PRIMARY KEY(tipo_serv))DEFAULT CHARSET=utf8;

CREATE TABLE Servicos(
	id_Serv INT NOT NULL AUTO_INCREMENT,
    tipo_serv int,
    dentista_idf int,
	PRIMARY KEY(id_Serv),
FOREIGN KEY(dentista_idf) REFERENCES funcionario_adm(id_func))DEFAULT CHARSET=utf8;

/*-------------------------------------------------------------------------INSERINDO DADOS NAS TABELAS*/

INSERT INTO clientes(CPF,Nome,sexo,numero,rua,municipio,cep,bairro) VALUES 
 (22291,'Thalles','M',02,'pau brasil','serra',29145130,'feu rosa'),
 (22202,'Maria','F', 66, 'chikunguya','serra',29156025,'alterosa'),
 (33302,'Jose','M', 88, 'aedes egypsi','serra',29658354,'jacaraipe'),
 (33305, 'Arthur','M', 77, 'dengue','vitoria',30558154, 'praia do suá'),
 (55503,'Recilda','F', 23, 'mosquito','vitoria',30578055,'jardim da penha'),
 (55503,'Samuel','M',53, 'pernilongo','vitoria',30357987,'goiabeiras'),
 (33310,'Emanuelly','F', 357, 'virose','cariacica',40369123,'jardim tropical'),
 (55510,'Amerindo','M',457, 'virose','vila velha',50753654,'bairro vermelho'),
 (22215,'Betania','F',09, 'eucalipto','vila velha',50159852,'coqueral'),
 (33355,'Carla','F', 87, 'chikunguya','cariacica',40853755,'jardim tropical');
 

INSERT INTO tipo_contato_Clien(nome_tipo) VALUES
('Tel.Residencial'),('Celular'),('Email');

INSERT INTO Contatos_Clien(idCliente,tipo_contato,Descricao) VALUES 
(10,2,'99752-6482'),
(8,2,'99752-5588'),
(8,3,'amerindo@gmail.com'),
(9,2,'99652-1155'),
(7,2,'99852-7766'),
(7,3,'emanuelly@gmail.com'),
(6,1,'3245-8824'),
(6,3,'samuel@gmail.com'),
(5,2,'9989-6482'),
(5,3,'renecilda@gmail.com'),
(4,2,'99752-6582'),
(3,1,'4122-9922'),
(3,3,'jose12@gmail.com'),
(2,2,'9852-6482'),
(2,3,'maria12@gmail.com'),
(1,2,'99852-3366');

INSERT INTO Funcionario_Adm (nome,CRM) VALUES 
('Thadila',''),
('Wagner',''),
('Eduardo','101A'),
('Amanda','102B'),
('sheila','103C'),
('Michelly','104D');

INSERT INTO tipo_Contato_Func(nome_tipo) VALUES
('Tel.Residencial'),('Celular'),('Email');

INSERT INTO Contatos_Func(id_func,tipo_Contato,Descricao) VALUES
(1,2,'99752-6482'),
(2,2,'99856-6985'),
(3,2,'98930-6481'),
(3,3,'eduardosil@odontofacil.com'),
(4,2,'98930-1133'),
(4,3,'amanda@odontofacil.com'),
(5,2,'99830-5522'),
(5,3,'sheilasil@odontofacil.com'),
(6,2,'97833-6644'),
(6,3,'Michelly@odontofacil.com');

INSERT INTO agendamento(idCliente,Data_agenda,Horario,Dentista_idfu,valor_pag) VALUES
('4','2016-10-22','08:00',3,'235'),
('1','2016-02-01','09:00',4,'235'),
('1','2016-09-05','08:30',5,'115'),
('3','2016-08-15','09:00',6,'97'),
('5','2016-07-15','09:30',6,'505'),
('2','2016-07-18','10:00',5,'86'),
('6','2016-09-17','10:30',4,'235'),
('7','2016-06-25','14:00',3,'115'),
('4','2016-04-25','14:30',4,'97'),
('8','2016-04-10','15:00',3,'505'),
('4','2016-03-22','10:00',5,'76'),
('1','2016-02-01','09:00',3,'235'),
('6','2016-09-17','10:30',6,'235'),
('7','2016-10-25','14:00',3,'115'),
('4','2016-05-25','14:30',4,'97'),
('3','2016-04-10','15:00',3,'505'),
('4','2016-03-22','10:00',6,'65'),
('2','2016-05-25','14:30',4,'97'),
('6','2016-07-10','15:00',4,'465'),
('5','2016-09-22','10:00',4,'65');

 INSERT INTO tipo_pagamento(nome_tipo) values
 ('avista'),
 ('cartão de debito'),
 ('cartão de credito visa'),
 ('cartão de credito master card');
 
INSERT INTO pagamento(id_agend,id_tipo) values
(2,1),(1,3),
(3,4),(5,2),
(4,3),(7,3),
(6,4),(9,4),
(8,2),(11,4),
(10,3),(13,4),
(12,3),(15,4),
(14,3),(17,1),
(16,1),(19,1),
(20,2),(18,4);

insert into estado_agenda(id_agend,descricao) values
	(10,'marcado'),
    (9,'marcado'),
    (8,'marcado'),
    (7,'desmarcado'),
    (6,'marcado'),
    (5,'marcado'),
    (4,'marcado'),
    (2,'marcado'),
    (1,'marcado'),
    (3,'marcado'),
    (20,'desmarcado'),
    (18,'marcado'),
    (19,'marcado'),
    (15,'marcado'),
    (17,'marcado'),
    (16,'marcado'),
    (14,'desmarcado'),
    (13,'marcado'),
    (11,'marcado'),
    (12,'marcado');

insert into marcado(id_agend,id_func) values
(1,2),(2,2),(3,1),(4,1),
(5,1),(6,2),(7,1),(8,1),
(9,2),(10,2),(11,1),(12,2),
(13,1),(14,2),(15,2),(16,1),
(17,2),(18,1),(19,1),(20,2);

select * from tipo_servico;
insert into tipo_servico(Despesa,Custo,servico,material) values
	(35,30,'Núcleo de preenchimento em resina','cimento resinoso dual panavia'),
    (25,40,'Faceta de resina foto','silicone de condensação'),
    (20,41,'Restauração de amálgama 01 face','luva de procedimento'),
    (35,27,'Endodonticamente tratado','alginato jeltrate plus'),
    (25,45,'Restauração de ionômero de vidro','filme radiografico e-speed'),
    (20,37,'Clareamento de dente','clareador opalscence');

select * from  servicos;
 
insert into servicos(tipo_serv,dentista_idf) values
(1,5),(3,3),
(2,3),(2,4),
(4,4),(1,6),
(5,6),(5,5),
(6,3),(2,6),
(3,4),(1,3),
(6,3),(1,6),
(5,4),(4,4),
(4,5),(3,6),
(5,5),(6,5);
truncate table servicos;

/*-----------------------------------------------------------------------------CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS*/
select * from clientes;
select * from agendamento;
select * from contatos_clien;
select * from tipo_contato_clien;
select * from funcionario_adm;
select * from contatos_func;
select * from tipo_contato_func;
select * from agendamento;
select * from estado_agenda;
select * from pagamento;
select * from tipo_pagamento;
select * from marcado;
select * from servicos;
select * from tipo_servico;

/*-----------------------------------------------------------------------------------------CONSULTAS DAS TABELAS COM FILTROS WHERE*/

select nome,sexo,rua from clientes WHERE Municipio ='cariacica';

select nome,Municipio,rua from clientes WHERE sexo = 'F';

select Horario,Data_agenda,valor_pag from agendamento where Horario = '9:00';


/*--------------------------------------------------------------CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS*/
select Horario,agendado,valor_pag from agendamento where agendado between'2016/02/01' and '2016/07/25';

select nome as 'Clientes',rua,numero from clientes where numero > 100;

select nome as 'Dentista',CRM from funcionario_adm where crm <> '' ;

select Data_agenda,valor_pag as 'Valor do serviço',valor_pag - 20 as 'Serviço com desconto' 
from agendamento where Horario > '12:00';


/*------------------------------------------------------------------------------------CONSULTAS QUE USAM OPERADORES LIKE*/

select nome as 'clientes' ,Bairro from clientes where nome like '_a%';

select Nome as 'Cliente',Bairro from clientes where nome like 'a%' or numero < 60;

select nome as 'Clientes',rua from clientes where NOME like '______' or nome like '%c%';

/*------------------------------------------------------------------------------------ATUALIZAÇÃO E EXCLUSÃO DE DADOS*/


update clientes set numero = 27,rua='eucalipto' where idCliente = 3;

update clientes set numero = 133,rua='Pupuaçu' where idCliente = 4;

update clientes set numero = 59,rua='Mentol' where idCliente = 5;

update clientes set numero = 11,rua='Floriano' where idCliente = 6;


delete from clientes where idCliente = 2;

update clientes set cpf='22202',nome='Mariana',sexo='F',numero = 53,rua='Jacanoa',
municipio='Serra',cep='29156025',bairro='Alterosa' where idCliente = 2;

update funcionario_adm set crm = 'NULL' where id_func = 2;

update funcionario_adm set crm = '' where id_func = 2;

select * from contatos_func;

/*------------------------------------------------------------------------------------------------CONSULTAS COM JUNÇÃO*/

select cl.Nome as 'Cliente',cl.Bairro,cl.Municipio,ag.Data_agenda,ag.Horario from clientes cl
inner join agendamento ag on (cl.idCliente = ag.idCliente)
where cl.Municipio = 'serra';

select cl.nome as 'Cliente',ag.Data_agenda,ag.Horario,fun.nome as 'Dentista' from clientes cl
inner join agendamento ag on (cl.idCliente = ag.idCliente)
inner join funcionario_adm fun on (fun.id_func= ag.Dentista_idfu)
where Horario='15:00';

select cl.nome as 'Cliente',ag.Data_agenda,ag.Horario,fun.nome as 'Dentista' from clientes cl
inner join agendamento ag on (cl.idCliente = ag.idCliente)
inner join funcionario_adm fun on (fun.id_func= ag.Dentista_idfu)
where fun.nome = 'Eduardo';

select adm.nome as 'Assist.Adm',count(marc.id_func) as 'Marcou' 
from funcionario_adm adm 
inner join marcado marc on (marc.id_func=adm.id_func)
group by adm.nome;
select * from tipo_contato_clien;

select cl.Nome,tcc.nome_tipo,cc.Descricao from clientes cl
inner join contatos_clien cc on (cc.idCliente=cl.idCliente)
inner join tipo_contato_clien tcc on (tcc.tipo_Contato=cc.tipo_Contato)
order by cl.Nome ;

select tserv.servico,ser.id_Serv from servicos ser
inner join tipo_servico tserv on (ser.tipo_serv=tserv.tipo_serv);

select tpag.nome_tipo,count(pag.id_pagto) from pagamento pag
inner join tipo_pagamento tpag on (pag.id_tipo= tpag.id_tipo)
group by tpag.nome_tipo;

/*--------------------------------------------------------------------------------------------CONSULTAS COM GROUP BY*/
select cl.sexo,count(cl.sexo)  from clientes cl group by cl.sexo;

select fun.nome as 'Dentistas',count(agto.Dentista_idfu) as 'Consultas' 
from agendamento agto inner join funcionario_adm fun
on (agto.Dentista_idfu = fun.id_func)
group by agto.Dentista_idfu asc;

select cl.nome as 'Cliente',count(ag.idCliente) as 'consultas' 
from clientes cl
inner join agendamento ag on (cl.idCliente = ag.idCliente)
inner join funcionario_adm fun on (fun.id_func= ag.Dentista_idfu)
group by ag.idCliente order by cl.nome;

select fun.nome as 'Dentista',sum(agto.valor_pag) as 'Produziu' 
from funcionario_adm fun 
inner join servicos serv on (fun.id_func = serv.dentista_idf)
inner join agendamento agto on (agto.Dentista_idfu= serv.dentista_idf)
inner join estado_agenda eag on (agto.id_agend=eag.id_agend)
where eag.descricao <> 'desmarcado'
group by agto.Dentista_idfu
order by fun.nome;

select tpag.nome_tipo as 'Forma de Pagamento',count(pag.id_tipo) as 'Ocorrencia' from pagamento pag
inner join tipo_pagamento tpag on(pag.id_tipo=tpag.id_tipo)
group by tpag.nome_tipo;

select tserv.servico,count(serv.id_Serv) as 'Ocorrencia' from servicos serv
inner join tipo_servico tserv on(serv.tipo_serv=tserv.tipo_serv)
group by tserv.servico;

/*---------------------------------------------------------------------------------------CONSULTAS COM LEFT E RIGHT JOIN*/

select cl.Nome,agto.Horario,cl.CPF from clientes cl
right outer join agendamento agto on (cl.idCliente=agto.idCliente);

select cl.Nome,agto.Horario,cl.CPF from clientes cl
left outer join agendamento agto on (cl.idCliente=agto.idCliente);

select cl.Nome,agto.Data_agenda,agto.Horario,cl.CPF from clientes cl
right outer join agendamento agto on (cl.idCliente=agto.idCliente);

select cl.Nome,agto.Data_agenda,agto.Horario,cl.CPF from clientes cl
left outer join agendamento agto on (cl.idCliente=agto.idCliente);


/*------------------------------------------------------------------------------------------CONSULTAS COM SELF JOIN E VIEW*/
select * from clientes Limit 3;

select dado1.nome as 'cliente',dado2.nome as 'Mesma rua que:' from clientes dado1
inner join clientes dado2 on (dado1.Cep= dado2.Cep) order by dado1.nome;

select dado1.Rua as 'Rua',count(dado2.rua) as 'Ocorrencia' from clientes dado1
inner join clientes dado2 on (dado1.Cep= dado2.Cep) 
group by dado2.Rua asc;

select dado1.Municipio as 'Municipio',count(dado2.rua) as 'Ocorrencia' from clientes dado1
inner join clientes dado2 on (dado1.Cep= dado2.Cep) 
group by dado2.Municipio asc;


select tpag.nome_tipo as 'Forma de pagamento',count(tpag.id_tipo) as 'Ocorrencia' 
from pagamento pag
inner join  tipo_pagamento tpag on (pag.id_tipo= tpag.id_tipo)
group by tpag.id_tipo order by Ocorrencia;


create view Formas_pagamento as
select tpag.nome_tipo as 'Forma de Pagamento',count(pag.id_tipo) as 'Ocorrencia' from pagamento pag
inner join tipo_pagamento tpag on(pag.id_tipo=tpag.id_tipo)
group by tpag.nome_tipo;

select * from Formas_pagamento;

create view Servicos_utilizados as
select tserv.servico,count(serv.id_Serv) as 'Ocorrencia' from servicos serv
inner join tipo_servico tserv on(serv.tipo_serv=tserv.tipo_serv)
group by tserv.servico;

select * from Servicos_utilizados;


create view Rendimento_Atual as
	select sum(tser.Despesa) as 'Despesas Adm',sum(tser.Custo) as 'Custos Produção',sum(agto.valor_pag) as 'Receitas',
	(sum(agto.valor_pag)-(sum(tser.Despesa)+sum(tser.Custo))) as 'Lucro' from agendamento agto
	inner join estado_agenda eag on (agto.id_agend=eag.id_agend)
	inner join servicos ser on (agto.Dentista_idfu= ser.dentista_idf)
	inner join tipo_servico tser on (ser.tipo_serv=tser.tipo_serv)
    where eag.descricao <> 'desmarcado';

select * from rendimento_atual;



/* ------------------------------------------------------------------------------------------------------------------SubConsultas*/

Select * from clientes where Municipio in (select Municipio from clientes where Municipio<>"serra");

Select * from clientes where rua in (select rua from clientes where rua<>"pau brasil");

select nome,CPF from clientes
where cpf >  (select avg(cpf) from clientes);



 
















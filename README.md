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
    
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/ModeloConceitual.JPG?raw=true "Modelo Conceitual")
    
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
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/ModeloLogico.JPG?raw=true "Modelo Conceitual")

###7	MODELO FÍSICO<br>

https://github.com/WeberGoncalves/Trabalho01/blob/master/ModeloFisicoOdontoFacil.sql

###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES

Para as ideias afluisse foi necessario realizar pesquisas sobre software da area de odontologia em sites como: http://www.dentalis.com.br/ ,http://www.simplesdental.com/, https://www.xdentalcontrole.com.br/ e http://controleodonto.com.br/ .
Também foifeito pesquisa para preencher as tabelas no que tange os materias e serviços odontologicos.
Foi tambem entrevistado uma estudante de odontologia do sesto período que ja esta esta trabalhando na area, ela explico como funciona o sistema que ela usa no seu trabalho.     
     

        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS

        
	
###9	TABELAS E PRINCIPAIS CONSULTAS<br>

####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-1%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-11%20%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-12%20%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-13%20%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-14%20%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-15%20%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-2%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-3%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-4%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-5%20%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-6%20%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-7%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS-9%20%20DAS%20TABELAS%20COM%20TODOS%20OS%20DADOS%20INSERIDOS.JPG?raw=true "")

####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_3%20DAS%20TABELAS%20COM%20FILTROS%20WHERE.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_2%20DAS%20TABELAS%20COM%20FILTROS%20WHERE.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_1%20DAS%20TABELAS%20COM%20FILTROS%20WHERE.JPG?raw=true "")


####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_1%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20CAMPOS%20RENOMEADOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_2%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20CAMPOS%20RENOMEADOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_3%20QUE%20USAM%20OPERADORES%20L%C3%93GICOS%2C%20ARITM%C3%89TICOS%20E%20CAMPOS%20RENOMEADOS.JPG?raw=true "")

####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/OPERADORES%20LIKE_1.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_2%20QUE%20USAM%20OPERADORES%20LIKE.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_3%20QUE%20USAM%20OPERADORES%20LIKE.JPG?raw=true "")

####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/ATUALIZA%C3%87%C3%83O_3%20E%20EXCLUS%C3%83O%20DE%20DADOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/ATUALIZA%C3%87%C3%83O_2%20E%20EXCLUS%C3%83O%20DE%20DADOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/ATUALIZA%C3%87%C3%83O_1%20E%20EXCLUS%C3%83O%20DE%20DADOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/ATUALIZA%C3%87%C3%83O_4%20E%20EXCLUS%C3%83O%20DE%20DADOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/ATUALIZA%C3%87%C3%83O_5%20E%20EXCLUS%C3%83O%20DE%20DADOS.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/ATUALIZA%C3%87%C3%83O_6%20E%20EXCLUS%C3%83O%20DE%20DADOS.JPG?raw=true "")


####9.6	CONSULTAS COM JUNÇÃO<br>
![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_1%20COM%20JUN%C3%87%C3%83O.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_2%20COM%20JUN%C3%87%C3%83O.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_3%20COM%20JUN%C3%87%C3%83O.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/JUN%C3%87%C3%83O_4.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/JUN%C3%87%C3%83O_5.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/JUN%C3%87%C3%83O_6.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/JUN%C3%87%C3%83O_7.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/JUN%C3%87%C3%83O_8.JPG?raw=true "")


####9.7	CONSULTAS COM GROUP BY<br>
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_1%20COM%20GROUP%20BY.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_2%20COM%20GROUP%20BY.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_3%20COM%20GROUP%20BY.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_4%20COM%20GROUP%20BY.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_5%20COM%20GROUP%20BY.JPG?raw=true "")



####9.8	CONSULTAS COM LEFT E RIGHT JOIN<br>
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/LEFT%20E%20RIGHT_1a%20JOIN.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/LEFT%20E%20RIGHT_1b%20JOIN.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_2%20COM%20LEFT%20E%20RIGHT%20JOIN.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_1%20COM%20LEFT%20E%20RIGHT%20JOIN.JPG?raw=true "")

####9.9	CONSULTAS COM SELF JOIN E VIEW<br>
![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_1%20COM%20SELF%20JOIN%20E%20VIEW.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_2%20COM%20SELF%20JOIN%20E%20VIEW.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_3%20COM%20SELF%20JOIN%20E%20VIEW.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_4%20COM%20SELF%20JOIN%20E%20VIEW.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_5%20COM%20SELF%20JOIN%20E%20VIEW.JPG?raw=true "")

![Alt text](
https://github.com/WeberGoncalves/Trabalho01/blob/master/CONSULTAS_6%20COM%20SELF%20JOIN%20E%20VIEW.JPG?raw=true "")


####9.10	SUBCONSULTAS<br>
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/SubConsultas_1.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/SubConsultas_2.JPG?raw=true "")

![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/SubConsultas_3.JPG?raw=true "")

###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>

https://github.com/WeberGoncalves/Trabalho01/blob/master/Apresentar-OdontoFacil.odp

###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
Gerar o modelo logico apartir do conceitual, e o modelo fisico apartir do logico, gera muitos erros.

###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/





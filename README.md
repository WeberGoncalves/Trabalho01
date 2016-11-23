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

###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](?raw=true "Modelo Conceitual")
    
    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)

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
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/Modelo%20L%C3%B3gico.PNG?raw=true "Modelo Conceitual")
###7	MODELO FÍSICO<br>
![Alt text](https://github.com/WeberGoncalves/Trabalho01/blob/master/Modelo%20F%C3%ADsico.sql?raw=true "Modelo Conceitual")
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários

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





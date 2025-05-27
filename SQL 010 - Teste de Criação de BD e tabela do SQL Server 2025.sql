/*
Arquivo.....: SQL 010 - Teste de Criação de BD e tabela do SQL Server 2025
Data........: 27/05/2025
Autor.......: Datalib Tecnologia e Treinamento em Dados (Saito)
Copyright...: Utilização somente para fins educacionais e didaticos com autorização do autor.
Referencias.: https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver17&tabs=cli&pivots=cs1-bash
Comentario..: Teste de criação de Banco de Dados, criação de tabelas, inserção de dados
			  e seleção de dados.
			  Apesar do teste ser feito no SQL Server 2025, esse código é bem simples e tem compatibilidade
			  com versões anteriores do SQL Server.
*/

--Criação de um banco de dados chamado TesteDB
CREATE DATABASE TestDB;

--Retorna todos os bancos de dados do seu servidor
SELECT name
FROM sys.databases;

--Os dois comandos anteriores não foram executados imediatamente. 
--Digite GO em uma nova linha para executar os comandos anteriores:
GO

--Alteração de contexto para o novo banco de dados TextDB
use TestDB;

--Criação de uma nova tabela
CREATE TABLE Inventory
(
    id INT,
    name NVARCHAR (50),
    quantity INT
);

--Inserção de dados na nova tabela:
INSERT INTO Inventory
VALUES (1, 'banana', 150);

INSERT INTO Inventory
VALUES (2, 'orange', 154);

--GO para executar os comandos anteriores
GO

--Seleção de dados, onde a quantidade é maior que 152
SELECT *
FROM Inventory
WHERE quantity > 152;




/*
   Ficou com alguma dúvida?
   Comentem! Responderemos o quanto antes a sua dúvida!

   Gostou dessa dica ou vídeo?
   Compartilhe, curta e assine o nosso canal!
  
   Siga as nossas redes sociais em:
   Youtube:    youtube.com/@datalib22
   X:          x.com/datalib_tec 
   Instagram:  instagram.com/datalib_tec 
   Blog:       www.datalib.com.br
   Github:     https://github.com/datalibtec

*/

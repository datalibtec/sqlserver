/*
Arquivo.....: SQL 010 - Teste de Cria��o de BD e tabela do SQL Server 2025
Data........: 27/05/2025
Autor.......: Datalib Tecnologia e Treinamento em Dados (Saito)
Copyright...: Utiliza��o somente para fins educacionais e didaticos com autoriza��o do autor.
Referencias.: https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver17&tabs=cli&pivots=cs1-bash
Comentario..: Teste de cria��o de Banco de Dados, cria��o de tabelas, inser��o de dados
			  e sele��o de dados.
			  Apesar do teste ser feito no SQL Server 2025, esse c�digo � bem simples e tem compatibilidade
			  com vers�es anteriores do SQL Server.
*/

--Cria��o de um banco de dados chamado TesteDB
CREATE DATABASE TestDB;

--Retorna todos os bancos de dados do seu servidor
SELECT name
FROM sys.databases;

--Os dois comandos anteriores n�o foram executados imediatamente. 
--Digite GO em uma nova linha para executar os comandos anteriores:
GO

--Altera��o de contexto para o novo banco de dados TextDB
use TestDB;

--Cria��o de uma nova tabela
CREATE TABLE Inventory
(
    id INT,
    name NVARCHAR (50),
    quantity INT
);

--Inser��o de dados na nova tabela:
INSERT INTO Inventory
VALUES (1, 'banana', 150);

INSERT INTO Inventory
VALUES (2, 'orange', 154);

--GO para executar os comandos anteriores
GO

--Sele��o de dados, onde a quantidade � maior que 152
SELECT *
FROM Inventory
WHERE quantity > 152;




/*
   Ficou com alguma d�vida?
   Comentem! Responderemos o quanto antes a sua d�vida!

   Gostou dessa dica ou v�deo?
   Compartilhe, curta e assine o nosso canal!
  
   Siga as nossas redes sociais em:
   Youtube:    youtube.com/@datalib22
   X:          x.com/datalib_tec 
   Instagram:  instagram.com/datalib_tec 
   Blog:       www.datalib.com.br
   Github:     https://github.com/datalibtec

*/

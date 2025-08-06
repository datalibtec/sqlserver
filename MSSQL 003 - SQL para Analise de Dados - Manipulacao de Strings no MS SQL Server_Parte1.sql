/* 
Arquivo.....: MSSQL 003 - SQL para Analise de Dados - Manipulacao de Strings no MS SQL Server_Parte1.sql
Data........: 17/06/2025
Autor.......: Datalib Tecnologia e Treinamento em Dados
Título......: Manipulacao de Strings no MS SQL Server
Copyright...: Utilizacao somente para fins educacionais e didaticos com autorizacao do autor.
Referencia..: https://learn.microsoft.com/pt-br/sql/t-sql/functions/string-split-transact-sql?view=sql-server-ver17
Comentario..: Demonstração dos comandos LEFT, RIGHT, SUBSTRING, LEN, LTRIM, RTRIM, TRIM,
			  REPLACE, CHARINDEX, UPPER, LOWER, CONCAT, STUFF, REVERSE	
*/


--Exemplos de LEFT e RIGHT
SELECT LEFT('DATALIB TECNOLOGIA', 7)

SELECT RIGHT('DATALIB TECNOLOGIA', 7)

--Exemplo de SUBSTRING
SELECT SUBSTRING('DATALIB TECNOLOGIA', 9, 10)

--Exemplo do LEN
SELECT LEN('DATALIB TECNOLOGIA')

--Exemplo de RTRIM e LTRIM
SELECT   LEN('     DATALIB TECNOLOGIA     ')
SELECT		('     DATALIB TECNOLOGIA     ')
SELECT LTRIM('     DATALIB TECNOLOGIA     ')
SELECT RTRIM('     DATALIB TECNOLOGIA     ')

--Exemplo de TRIM
SELECT   LEN('     DATALIB TECNOLOGIA     ')
SELECT		('     DATALIB TECNOLOGIA     ')
SELECT  TRIM('     DATALIB TECNOLOGIA     ')
SELECT  LEN(TRIM('     DATALIB TECNOLOGIA     '))

--Exemplo de Replace
SELECT REPLACE('DATALIB TECNOLOGIA E TREINAMENTO EM DADOS', 
			   'DADOS', 'INFORMAÇÃO')

--Exemplo de CharIndex
SELECT CHARINDEX('TECNOLOGIA', 'DATALIB TECNOLOGIA E TREINAMENTO EM DADOS')

--Exemplo de UPPER e LOWER
SELECT LOWER('Datalib Tecnologia e Treinamento em Dados')
SELECT UPPER('Datalib Tecnologia e Treinamento em Dados')

--Exemplo de CONCAT
SELECT CONCAT('Datalib ', 'Tecnologia e ', 'Treinamento em ','Dados') 

--Exemplo de STUFF
SELECT STUFF('Datalib Tecnlogia e Treinamento em Dados', 
			  18, 23, ' da Informação')

--Exemplo de REVERSE
SELECT REVERSE('Datalib Tecnologia')



/*
	Restauracao da base de dados AdventureWorks 2022
	Maiores instruções pode ser encontrado em:
	  https://www.datalib.com.br/post/como-restaurar-o-banco-de-dados-adventure-works-em-um-sql-server-no-docker
	
	Aplicando os comandos vistos em um banco de dados
*/

Use AdventureWorks2022

--Exemplos de LEFT e RIGHT
SELECT	[Name], LEFT([Name], 5)
FROM	[Production].[Product]

SELECT	[Name], RIGHT([Name], 5)
FROM	[Production].[Product]


--Exemplo de SUBSTRING
SELECT	[Name], SUBSTRING([NAME], 1, 5)
FROM	[Production].[Product]


--Exemplo do LEN
SELECT	[Name], LEN([NAME])
FROM	[Production].[Product]
WHERE	LEN([NAME]) > 10


--Exemplo de TRIM, RTRIM e LTRIM
SELECT	[FirstName], [MiddleName], [LastName], 
		[FirstName] + ' ' + TRIM([MiddleName]) + ' ' + [LastName] as [FullName]
FROM	[Person].[Person]

SELECT	[FirstName], [MiddleName], [LastName], 
		[FirstName] + ' ' + LTRIM([MiddleName]) + ' ' + [LastName] as [FullName]
FROM	[Person].[Person]

SELECT	[FirstName], [MiddleName], [LastName], 
		[FirstName] + ' ' + RTRIM([MiddleName]) + ' ' + [LastName] as [FullName]
FROM	[Person].[Person]

SELECT	[FirstName], [MiddleName], [LastName], 
		[FirstName] + ' ' + ISNULL([MiddleName],'') + ' ' + [LastName] as [FullName]
FROM	[Person].[Person]


--Exemplo de Replace
SELECT	[FirstName],  [LastName], 
		[FirstName] + ' ' + REPLACE([LastName],'Adams', 'Silva.') as [FirstLastName]
FROM	[Person].[Person]



--Exemplo de CharIndex
SELECT	[Name], CHARINDEX('Race', [Name])
FROM	[Production].[Product]


--Exemplo de UPPER e LOWER
SELECT	[Name], UPPER([Name]), LOWER([Name])
FROM	[Production].[Product]



--Exemplo de CONCAT
SELECT	[FirstName], [MiddleName], [LastName], 
		CONCAT([FirstName], [MiddleName], [LastName]) as [FullName]
FROM	[Person].[Person]

SELECT	[FirstName], [MiddleName], [LastName], 
		CONCAT([FirstName], ' ', [MiddleName], ' ', [LastName]) as [FullName]
FROM	[Person].[Person]


SELECT	[Name], STUFF([Name], 7, 10, 'Moscovado')
FROM	[Production].[Product]
WHERE	[Name] LIKE 'Chain%'


--Exemplo de REVERSE
SELECT	[FirstName], REVERSE([FirstName])
FROM	[Person].[Person]




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


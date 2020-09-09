SET XACT_ABORT ON
BEGIN TRAN
use G_Ponto

INSERT INTO emails (PADRAO,EMAIL,STATE_ID)
VALUES ('@fictives.com','',1)

INSERT INTO emails (PADRAO,EMAIL,STATE_ID,COD_FUNC)
select (select top 1 PADRAO From emails),
		LEFT(nome,1) + +
		CASE
			WHEN REPLACE(CHARINDEX(' ',REVERSE(LTRIM(RTRIM(SOBRE_NOME)))),' ','') > 0 THEN REPLACE(RIGHT(SOBRE_NOME, CHARINDEX(' ',REVERSE(LTRIM(RTRIM(SOBRE_NOME))))-0),' ','')
			ELSE ''
		END ++(select top 1 PADRAO From emails),
		1,
		CODE
from funcionarios

update emails set EMAIL = LOWER(EMAIL) where EMAIL <> ''


--SELECT 1/0 
COMMIT TRAN
SET XACT_ABORT OFF
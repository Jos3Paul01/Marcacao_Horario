SET XACT_ABORT ON
BEGIN TRAN
USE G_Ponto

INSERT INTO dbo.departamentos VALUES('Recursos Humanos','RH','1')
INSERT INTO dbo.departamentos VALUES('Contabilidade','CONT','1')
INSERT INTO dbo.departamentos VALUES('Infra Estrutura','IE','1')
INSERT INTO dbo.departamentos VALUES('Desenvolvimento','DV','1')
INSERT INTO dbo.departamentos VALUES('Banco de dados','DBA','1')
INSERT INTO dbo.departamentos VALUES('Suporte','SUP','1')
INSERT INTO dbo.departamentos VALUES('Secretariado','SEC','1')
INSERT INTO dbo.departamentos VALUES('Administrativo','ADM','1')
INSERT INTO dbo.departamentos VALUES('Marketing','MK','1')
INSERT INTO dbo.departamentos VALUES('Atendimento','AT','1')



--SELECT 1/0
COMMIT TRAN
SET XACT_ABORT OFF
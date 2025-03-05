/* 01 */

SELECT * FROM dbo.pessoa; 

/* 02 */

SELECT nome,email,data_nasc FROM dbo.pessoa;

/* 03  Não consegui fazer */

/* 04 */

SELECT nome,email,data_nasc FROM dbo.pessoa;

/* 05 */

SELECT COUNT(*) From dbo.agendamento;

/* 06 */

SELECT dh_consulta from dbo.agendamento;

/* 07 Não consegui fazer  */


/* 08 */

SELECT * from dbo.agendamento
	WHERE EXTRACT(MONTH FROM dh_consulta) = EXTRACT(MONTH FROM CURRENT_TIMESTAMP);
    
/* 09 */

SELECT cpf,nome,email from dbo.pessoa WHERE telefone ISNULL;

/* 10 */

SELECT dh_consulta from dbo.agendamento WHERE valor_consulta BETWEEN 50.00 AND 100.00;4

/* 11 */ 

SELECT cpf,nome,email from dbo.pessoa WHERE endereco LIKE '%Natal%';

/* 12 */

SELECT cpf,nome,email from dbo.pessoa ORDER By data_nasc;

/* 13 */

SELECT COUNT(*) from dbo.paciente WHERE plano_saude ISNULL;

/* 14 */

SELECT DATE(dh_consulta) AS data_consulta, MAX(valor_consulta) AS maior_valor, MIN(valor_consulta) AS menor_valor FROM dbo.agendamento GROUP BY DATE(dh_consulta) ORDER BY data_consulta;

/* 15 */
SELECT AVG(valor_consulta) AS media_valor_consulta from dbo.agendamento WHERE EXTRACT(MONTH FROM dh_consulta) = 12;

/* 16 Não consegui fazer  */


/* 17 */
SELECT nome,email,cpf from dbo.pessoa where cpf in (SELECT cpf_pessoa from dbo.medico);

/* 18 */ 
SELECT crm, (SELECT COUNT(*) FROM dbo.agendamento WHERE cpf_medico = cpf_pessoa) AS quantidade_consultas FROM dbo.medico cpf_pessoa;

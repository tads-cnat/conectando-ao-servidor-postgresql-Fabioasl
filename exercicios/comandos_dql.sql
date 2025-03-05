/* 01. Listar todos os dados de todas as pessoas cadastradas. */

SELECT * FROM dbo.pessoa; 

/* 02. Listar nome, e-mail e data de nascimento das pessoas cadastradas. */

SELECT nome,email,data_nasc FROM dbo.pessoa;

/* 03.Listar nome, e-mail e data de nascimento da 3a à 8a pessoa cadastrada.  (Não consegui fazer) */

/* 04. Listar nome, e-mail e idade das pessoas cadastradas. */

SELECT nome,email,data_nasc FROM dbo.pessoa;

/* 05. Listar a quantidade de agendamentos.*/

SELECT COUNT(*) From dbo.agendamento;

/* 06.  Listar a data/hora das consultas e os respectivos valores com desconto de 5%. Os valores devem ser precedidos com "R$". Por exemplo: R$ 150.00.
 */

SELECT dh_consulta from dbo.agendamento;

/* 07. Listar nome, cpf e e-mail dos pacientes que não possuem plano de saúde. */

SELECT nome,cpf,email from dbo.pessoa WHERE cpf in (SELECT cpf_pessoa from dbo.paciente WHERE plano_saude ISNULL);


/* 08. Listar os dados dos agendamentos registrados para o mesmo o mês da consulta.*/

SELECT * from dbo.agendamento
	WHERE EXTRACT(MONTH FROM dh_consulta) = EXTRACT(MONTH FROM CURRENT_TIMESTAMP);
    
/* 09. Listar cpf, nome e e-mail dos pacientes que não possuem telefone. */

SELECT cpf,nome,email from dbo.pessoa WHERE telefone ISNULL;

/* 10. Listar a data das consultas cujo o valor está entre R$ 50.00 e R$ 100.00. */

SELECT dh_consulta from dbo.agendamento WHERE valor_consulta BETWEEN 50.00 AND 100.00;

/* 11. Listar cpf, nome e e-mail dos pacientes que moram em "Natal". */ 

SELECT cpf,nome,email from dbo.pessoa WHERE endereco LIKE '%Natal%';

/* 12. Listar cpf, nome, e-mail e data de nascimento dos pacientes ordenados pela data de nascimento. */

SELECT cpf,nome,email from dbo.pessoa ORDER By data_nasc;

/* 13. Listar a quantidade de pacientes que não possuem plano de saúde. */

SELECT COUNT(*) from dbo.paciente WHERE plano_saude ISNULL;

/* 14. Listar o maior e o menor valor das consultas agendadas para cada dia que contém consulta. */

SELECT DATE(dh_consulta) AS data_consulta, MAX(valor_consulta) AS maior_valor, MIN(valor_consulta) AS menor_valor FROM dbo.agendamento GROUP BY DATE(dh_consulta) ORDER BY data_consulta;

/* 15. Listar a média dos valores das consultas agendadas para o mês de Dezembro. */
SELECT AVG(valor_consulta) AS media_valor_consulta from dbo.agendamento WHERE EXTRACT(MONTH FROM dh_consulta) = 12;

/* 16. Listar nome e e-mail das pessoas que agendaram alguma consulta para o dia do seu aniversário. (Não consegui fazer)  */


/* 17. Listar o nome, e-mail, cpf dos médicos e as suas respectivas especialidades. */
SELECT nome,email,cpf from dbo.pessoa where cpf in (SELECT cpf_pessoa from dbo.medico);

/* 18. Listar a quantidade de consultas para cada médico. */ 
SELECT crm, (SELECT COUNT(*) FROM dbo.agendamento WHERE cpf_medico = cpf_pessoa) AS quantidade_consultas FROM dbo.medico cpf_pessoa;

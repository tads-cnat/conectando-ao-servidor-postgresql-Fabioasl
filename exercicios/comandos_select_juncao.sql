/* 01. Listar o nome, e-mail e crm dos médicos.*/ 

SELECT nome,email,crm from dbo.pessoa  JOIN dbo.medico on cpf = cpf_pessoa;

/* 02. Listar o nome, e-mail e senha dos pacientes. */

SELECT nome,email,senha from dbo.pessoa join dbo.paciente ON cpf = cpf_pessoa;

/* 03. Listar os crm dos médicos e as descrições das suas respectivas especialidades. */

SELECT crm,descricao from dbo.medico JOin dbo.medicoespecialidade ON cpf_pessoa = cpf_medico JOIN dbo.especialidade on id_especialidade = id;

/* 04. Listar o crm de todos os médicos cardiologistas. */

SELECT crm FROM dbo.Medico  JOIN dbo.MedicoEspecialidade ON cpf_pessoa = cpf_medico JOIN dbo.Especialidade  ON id_especialidade = id WHERE descricao = 'Cardiologia';

/* 05. Listar o nome, cpf, crm e senha dos pacientes que também são médicos. */

SELECT P.nome, P.cpf, M.crm, PA.senha FROM dbo.Pessoa P JOIN dbo.Medico M ON P.cpf = M.cpf_pessoa JOIN dbo.Paciente PA ON P.cpf = PA.cpf_pessoa;

/* 06. Listar o nome dos médicos e as respectivas quantidades de consultas agendadas. Observem que alguns médicos podem não ter consulta agendada. */

SELECT nome, COUNT(dh_consulta) AS quantidade_consultas FROM dbo.Pessoa  LEFT JOIN dbo.Medico  ON cpf = cpf_pessoa LEFT JOIN dbo.Agendamento  ON cpf_pessoa = cpf_medico GROUP BY nome;

/* 07. Listar as especialidades e a quantidade de médicos cadastrados nessa especialidade. Observem que algumas especialidades podem não ter médicos associados. */

SELECT descricao, COUNT(cpf_pessoa) FROM dbo.Especialidade LEFT JOIN dbo.MedicoEspecialidade ON id = id_especialidade LEFT JOIN dbo.Medico ON cpf_pessoa = cpf_medico GROUP BY descricao;
/* 08. Listar os dados dos agendamentos, exibindo: (a) o nome e e-mail do paciente, (b) data/hora e valor da consulta, e (c) o nome e crm dos médicos.
 */
 
SELECT nome,email,dh_consulta,valor_consulta,crm from dbo.pessoa join dbo.agendamento on cpf = cpf_paciente join dbo.medico on cpf_medico = cpf_pessoa;

/* 09. Listar a data/hora das consultas agendadas para todos os cardiologistas cadastrados. (Não consegui fazer) */


/* 10. Listar o nome e crm dos médicos e a média das suas consultas agendadas para o mês de dezembro/2024. */

SELECT nome, crm, AVG(valor_consulta) FROM dbo.Pessoa JOIN dbo.Medico ON cpf = cpf_pessoa JOIN dbo.Agendamento ON cpf_pessoa = cpf_medico WHERE EXTRACT(MONTH FROM dh_consulta) = 12 AND EXTRACT(YEAR FROM dh_consulta) = 2024 GROUP BY nome, crm;


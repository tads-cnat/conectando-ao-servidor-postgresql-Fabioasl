/*Tarefa 1*/
INSERT INTO dbo.Pessoa(cpf,email,nome,data_nasc,endereco,telefone) values 
  ('002','pp@email.com','Pedro I','10-01-1479','R. Vasco',NULL),
  ('003','ps@email.com','Pedro II','10-02-1516','R. Flamengo','5501'),
  ('001','dj@email.com','D João VI','01-12-1415','R. Portugal',NULL),
  ('004','jj@email.com','JJ Xavier','12-11-1746','R. Minas','5502')
  
INSERT INTO dbo.Paciente(cpf_pessoa,senha,plano_saude) VALUES
  ('002','senha1',FALSE),
  ('003','senha2',TRUE);
 
INSERT INTO dbo.Medico(cpf_pessoa,crm) VALUES
  ('001','111'),
  ('004','112');
  
INSERT INTO dbo.Especialidade(descricao) VALUES
  ('Pediatra'),
  ('Pediatra'),
  ('Cardiologista'),
  ('Ortopedista');

INSERT INTO dbo.Agendamento (cpf_paciente, cpf_medico, dh_consulta, dh_agendamento, valor_consulta) VALUES 
    ('002', '001', '1782-04-14 16:00:00', '1782-03-14 10:04:45', 80.00),
    ('002', '004', '1782-04-15 10:00:00', '1782-03-14 10:04:45', 100.00),
    ('002', '004', '1783-05-17 08:00:00', '1783-05-10 16:32:00', 100.00),
    ('003', '001', '1783-05-17 08:30:00', '1783-05-09 09:05:56', 0.00);
    
/* Tarefa 2.a */
UPDATE dbo.Pessoa
	SET data_nasc = '1416-01-12' 
    WHERE nome = 'D João VI';
    
/* Tarefa 2.b */
UPDATE  dbo.Pessoa
	set telefone = '5503',
    email = 'pf@email.com'
    WHERE nome = 'D Pedro I';
 
/* Tarefa 2.c */
UPDATE dbo.Pessoa
	SET telefone = CONCAT('9', telefone)
	WHERE telefone IS NOT NULL;
 
/* Tarefa 2.d  (Não consegui fazer essa)*/
UPDATE dbo.Agendamento
	SET dh_consulta = '1783-05-19',
    valor_consulta = 150.00
    WHERE dh_consulta = 1783-05-17;
    
/* Tarefa 2.e */
UPDATE dbo.Especialidade
	SET descricao = 'Pediatra, Ortopedista'
    WHERE descricao like 'JJ Xavier';
    
/* Tarefa 3.a (Não consegui fazer)*/
 DELETE from dbo.Agendamento 
 	WHERE 
/* Tarefa 3.b (Não consegui fazer)*/
  DELETE FROM dbo.Agendamento
  
/* Tarefa 3.c */
DELETE FROM dbo.paciente
	WHERE plano_saude = TRUE;
    
DELETE FROM dbo.paciente
    	WHERE telefone == NULL;
/* Tarefa 3.d */
DELETE FROM dbo.agendamento
DELETE from dbo.medico
	
  
  

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
 
 INSERT INTO dbo.Agendamento(cpf_pessoa,cpf_medico,dh_consulta,dh_agendamento,valor_consulta) VALUES
 	('002','001','14-04-1782 16:00','14-03-1782 10:04:45','R$ 80'),
    ('002','004','15-04-1782 10:00:00','14-03-1782 10:04:45','R$ 100'),
    ('002','004','17-05-1783 08:00:00','10-05-1783 16:32:00','R$ 100'),
    ('003','001','17-05-1783 08:30:00','09-05-1783 09:05:56','R$ 0');
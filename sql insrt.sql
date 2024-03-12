use db_centro_cirurgico;

insert into tb_espec(nome_especialidade)
values ('NEUROLOGIA'), ('ORTOPEDIA'), ('CARDIOLOGIA');

insert into tb_paciente(nome_paciente, telefone_paciente, celular_paciente, email_paciente, nome_responsavel_paciente, telefone_responsavel_paciente)
values 
('AUGUSTO DOS ANJOS', '2587-9635', '2365-5897', 'augusto.anjos@gmail.com', '', ''), 
('MARIO DE ANDRADE', '2357-9514', '5923-5769', 'mario.andrade@gmail.com', '', ''),
('SANTOS DUMONT', '2357-2145', '2365-6987', 'santos.dumont@gmail.com', '', ''),
('ALBERT EINSTEIN', '2595-2587', '2354-8936', 'albert.einstein@gmail.com', '', ''),
('NIKOLA TESLA', '3217-5324', '2587-9122', 'nikola.tesla@gmail.com', '', '');

insert into tb_medico(id_espec, nome_medico, email_medico, telefone_medico, celular_medico)
values (1, 'JOÃO DA SILVA', 'joaosilva@gmail.com', '1234-5678', '17894-5612'),
(2, 'ANA MARIA', 'ana_mari@gmail.com', '1234-5678', '27894-5612'),
(3, 'CARLOS ALBERT', 'carlos.albert@gmail.com', '1234-5678', '27894-5612'),
(2, 'JUNIOR ALBERTO', 'j.alberto@gmail.com', '1234-5678', '27894-5612');

insert into tb_sala(nmr_sala, id_espec)
values  ('SALA 01', 1),
('SALA 02', 2),
('SALA 03', 3);

insert into tb_agenda(id_sala, id_medico, id_paciente, data_cirurgia, status_cirurgia)
values (1, 1, 1, '2017-09-05 12:00', 'AGENDADO'),
(1, 2, 1, '2017-10-15 13:00', 'AGENDADO'),
(1, 3, 1, '2017-11-01 14:00', 'AGENDADO');


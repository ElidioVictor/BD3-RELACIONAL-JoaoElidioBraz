alter table TB_MEDICO add constraint fk_especialidade_medico
foreign key(id_medico) references TB_ESPECIALIDADE(id_especialidade);

alter table TB_INSUMOS add constraint fk_insumo
foreign key(id_insumo) references TB_PACIENTE(id_paciente);

alter table TB_AGENDA add constraint fk_sala_agenda
foreign key(id_sala) references TB_SALA(id_sala);

alter table TB_AGENDA add constraint fk_sala
foreign key(id_medico) references TB_MEDICO(id_medico);

alter table TB_AGENDA add constraint fk_sala_paciente
foreign key(id_paciente) references TB_PACIENTE(id_paciente);

alter table TB_SALA add constraint fk_especialidade_sala 
foreign key(id_especialidade) references TB_ESPECIALIDADE(id_especialidade);

DESCRIBE TB_INSUMOS;

#INSERINDO DADOS NA TABELA ESPECIALIDADES.
INSERT INTO tb_especialidade(nome_especialidade)
VALUES ('NEUROLOGIA');

INSERT INTO tb_especialidade(nome_especialidade)
VALUES ('ORTOPEDIA');

INSERT INTO tb_especialidade(nome_especialidade)
VALUES ('CARDIOLOGIA');


#INSERÇÃO DE DADOS NA TABELA DE PACIENTES.

INSERT INTO TB_PACIENTE(nome_paciente, telefone_paciente, celular_paciente, email_paciente, nome_responsavel_paciente, telefone_responsavel_paciente)
VALUES ('AUGUSTO DOS ANJOS', '2587-9635', '2365-5897', 'augusto.anjos@gmail.com', '', '');

INSERT INTO TB_PACIENTE(nome_paciente, telefone_paciente, celular_paciente, email_paciente, nome_responsavel_paciente, telefone_responsavel_paciente)
VALUES ('MARIO DE ANDRADE', '2357-9514', '5923-5769', 'mario.andrade@gmail.com', '', '');

INSERT INTO TB_PACIENTE(nome_paciente, telefone_paciente, celular_paciente, email_paciente, nome_responsavel_paciente, telefone_responsavel_paciente)
VALUES ('SANTOS DUMONT', '2357-2145', '2365-6987', 'santos.dumont@gmail.com', '', '');

INSERT INTO TB_PACIENTE(nome_paciente, telefone_paciente, celular_paciente, email_paciente, nome_responsavel_paciente, telefone_responsavel_paciente)
VALUES ('ALBERT EINSTEIN', '2595-2587', '2354-8936', 'albert.einstein@gmail.com', '', '');

INSERT INTO TB_PACIENTE(nome_paciente, telefone_paciente, celular_paciente, email_paciente, nome_responsavel_paciente, telefone_responsavel_paciente)
VALUES ('NIKOLA TESLA', '3217-5324', '2587-9122', 'nikola.tesla@gmail.com', '', '');


#INSERÇÃO DE DADOS NA TABELA DE MEDICOS.

INSERT INTO TB_MEDICO(cod_especialidade, nome_medico, email_medico, telefone_medico,
 celular_medico)
VALUES (1, 'JOÃO DA SILVA', 'joaosilva@gmail.com', '1234-5678', '7894-5612');

INSERT INTO TB_MEDICO(cod_especialidade, nome_medico, email_medico, telefone_medico,
 celular_medico)
VALUES (2, 'ANA MARIA', 'ana_mari@gmail.com', '1234-5678', '7894-5612');

INSERT INTO TB_MEDICO(cod_especialidade, nome_medico, email_medico, telefone_medico,
 celular_medico)
VALUES (3, 'CARLOS ALBERT', 'carlos.albert@gmail.com', '1234-5678', '7894-5612');

INSERT INTO TB_MEDICO(cod_especialidade, nome_medico, email_medico, telefone_medico,
 celular_medico)
VALUES (1, 'JUNIOR ALBERTO', 'j.alberto@gmail.com', '1234-5678', '7894-5612');

INSERT INTO tb_sala(nmr_sala, id_especialidade)
VALUES ('SALA 01', 1);

INSERT INTO tb_sala(nmr_sala, id_especialidade)
VALUES ('SALA 02', 2);

INSERT INTO tb_sala(nmr_sala, id_especialidade)
VALUES ('SALA 03', 3);

#INSERÇÃO DE DADOS NA TABELA DE AGENDAMENTOS.
INSERT INTO tb_agenda
(id_sala, id_medico, id_paciente, data_cirurgia, status_cirurgia)
VALUES
(1, 4, 1, '05/09/2017', 'AGENDADO');

INSERT INTO tb_agenda
(id_sala, id_medico, id_paciente, data_cirurgia, status_cirurgia)
VALUES
(1, 4, 1, '15/10/2017', 'AGENDADO');

create view Medicos as
select * from tb_medico

medicos
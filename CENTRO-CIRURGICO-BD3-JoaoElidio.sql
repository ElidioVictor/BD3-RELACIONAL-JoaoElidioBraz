/*create database db_centro_cirurgico;
use db_centro_cirurgico;*/

create table tb_especialidades(
	id_especilidade int unsigned auto_increment primary key,
    nome_especialidade varchar(100) not null
);

create table tb_paciente(
	id_paciente int unsigned auto_increment primary key,
    nome_paciente varchar(200) not null,
    telefone_paciente char(10),
	celular_paciente char(11) not null,
    email_paciente varchar(200) not null,
    nome_responsavel_paciente varchar(200) not null,
    telefone_responsavel_paciente varchar(11) not null 
);

create table tb_medico(
	id_medico int unsigned auto_increment primary key,
    cod_especilidade int unsigned not null,
    nome_medico varchar(200) not null,
    telefone_medico char(10),
	celular_medico char(11) not null,
    email_medico varchar(200) not null
    );

create table tb_insumos(
	id_insumo int unsigned auto_increment primary key,
    id_paciente int not null,
    nome_insumo varchar(100) not null,
    quantidade_insumo decimal(10,2)
);

create table tb_sala(
	id_sala int unsigned auto_increment primary key,
	id_especialidade int not null,
    nmr_sala varchar(10) not null
);

create table tb_agenda(
	id_agenda int unsigned auto_increment primary key,
    id_sala int not null,
    id_medico int not null,
    id_paciente int not null,
    data_cirurgia datetime,
	status_cirurgia enum('agendado', 'concluido', 'cancelado')
);
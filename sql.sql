/*database*/

create database db_centro_cirurgico;
use db_centro_cirurgico;

create table tb_espec(
	id_espec int unsigned auto_increment primary key,
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
    id_espec int unsigned not null,
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
	id_espec int unsigned not null,
    nmr_sala varchar(10) not null
);

create table tb_agenda(
	id_agenda int unsigned auto_increment primary key,
    id_sala int unsigned not null,
    id_medico int unsigned not null,
    id_paciente int unsigned not null,
    data_cirurgia datetime,
	status_cirurgia enum('agendado', 'concluido', 'cancelado')
);

/*Views*/

create view Listagem_Medico_especialidade as

select  med.nome_medico , med.celular_medico, med.email_medico, pac.nome_especialidade
from tb_medico med
inner join tb_espec pac
on pac.id_espec = med.id_especlistagem_medico_especialidade
;

create view SALA as
select a.id_sala, b.nome_especialidade
from tb_sala a
inner join  tb_espec b
on a.id_espec = b.id_espec
;


create view Agenda_Aula as

select 
	a.data_cirurgia, a.status_cirurgia, 
    b.nmr_sala, c.nome_medico, 
    c.celular_medico, d.nome_paciente,
    d.nome_responsavel_paciente, d.telefone_responsavel_paciente
from tb_agenda as a
inner join tb_sala as b
on a.id_sala = b.id_sala
inner join tb_medico as c
on c.id_medico = a.id_medico
inner join tb_paciente as d
on d.id_paciente = a.id_paciente
; 


/*Fast reset*/

drop database db_centro_cirurgico;



/*triggers e backups*/

create table tb_paciente_back(
	id_paciente int unsigned auto_increment primary key,
    nome_paciente varchar(200) not null,
    telefone_paciente char(10),
	celular_paciente char(11) not null,
    email_paciente varchar(200) not null,
    nome_responsavel_paciente varchar(200) not null,
    telefone_responsavel_paciente varchar(11) not null,
    date_delete datetime
);


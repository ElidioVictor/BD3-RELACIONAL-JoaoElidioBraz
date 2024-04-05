use db_centro_cirurgico;

alter table tb_medico add constraint fk_espec
foreign key(id_espec) references tb_espec(id_espec);

alter table tb_insumos add constraint fk_insumos
foreign key(id_insumo) references tb_paciente(id_paciente);

alter table tb_sala add constraint fk_espec_sala
foreign key(id_espec) references tb_espec(id_espec);

alter table tb_agenda add constraint fk_sala
foreign key(id_sala) references tb_sala(id_sala);

alter table tb_agenda add constraint fk_medico_agenda
foreign key(id_medico) references tb_medico(id_medico);

alter table tb_agenda add constraint fk_sala_agenda
foreign key(id_paciente) references tb_paciente(id_paciente);

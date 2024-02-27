alter table tb_medico add constraint fk_especilidade
foreign key(id_medico) references tb_especilidade(id_especialidade);

alter table tb_insumos add constraint fk_insumo
foreign key(id_insumo) references tb_paciente(id_paciente);

alter table tb_sala add constraint fk_especialidade 
foreign key(id_especilidade) references tb_especilidade(id_especilidade);

alter table tb_agenda add constraint fk_sala
foreign key(id_sala) references tb_sala(id_sala);

alter table tb_agenda add constraint fk_sala
foreign key(id_medico) references tb_medico(id_medico);

alter table tb_agenda add constraint fk_sala
foreign key(id_paciente) references tb_paciente(id_paciente);

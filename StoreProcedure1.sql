#Criando Store Procedures

#listgem de dados de agendamento de cirurgia

delimiter $

create procedure listagem_agenda()
begin
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

end
$


call listagem_agenda();
use db_centro_cirurgico;

#delimiter seguido de um caractere qualquer marca o começo 
delimiter $ 

#declaração da trigger (crie a trigger, determine seu nome, determina se ela ocorre antes ou depois da ação, digite em seguida a ação e a tabela que sofrera a ação)#
create trigger trg_delete_paciente before delete on tb_paciente

for each row   #executa a trigger para cada linha q é deletada na tabela#
begin
insert into tb_paciente_back
set 
id_paciente = old.id_paciente,
nome_paciente = old.nome_paciente,
telefone_paciente = old.telefone_paciente,
celular_paciente = old.celular_paciente,
nome_responsavel_paciente = old.nome_responsavel_paciente,
telefone_responsavel_paciente = old.telefone_responsavel_paciente,
date_delete = now();
end $ 
#end e o mesmo caractere marca o fim
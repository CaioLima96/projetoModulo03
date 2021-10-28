#Quais e quantos sãos os sets de um "personagem"?
select `name` as 'set_nome',count(name) as 'qtd_set' from sets group by `name`, set_num having `name` like '%mcdonald%' limit 0,10;
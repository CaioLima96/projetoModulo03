# Quais sets são "True Set"?
select concat( set_num, ' ', name ) as 'set_nome', num_parts as 'qtd_peças', CASE
	WHEN num_parts >= 4000 THEN 'Sim'
    WHEN num_parts < 4000 THEN 'Não'
end as 'True Set' from sets group by set_num order by num_parts desc limit 0,20;
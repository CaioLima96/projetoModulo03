# Qual o id, nome e tema dos sets e quantos de cada tipo temos no inventário?
select sets.set_num as 'set_id', sets.name as 'set_nome', sets.theme_id as 'tema_id', th.name as 'tema_nome', sum(inv_set.quantity) as 'qtd_set'
	from sets inner join inventory_sets as inv_set
	on sets.set_num = inv_set.inventory_id
	inner join themes as th
	on sets.theme_id = th.id
group by sets.set_num, sets.name, th.id, th.name order by qtd_set desc limit 0,20;
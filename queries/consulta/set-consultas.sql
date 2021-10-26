#Qual ano produziram mais peças?
SELECT name as nome , year as ano, num_parts as numero_de_partes FROM sets ORDER BY num_parts DESC limit 0,20;

# Quais são e quantos sãos os sets de um "personagem"?
select `name` as 'set_nome',count(name) as 'qtd_set' from sets group by `name`, set_num having `name` like '%mcdonald%' limit 0,10;


# Qual set se repete?
select set_num as 'set_id', `name` as 'set_nome', count(year) as qtd_sets from sets group by set_num having count(set_num) >= 2 limit 0,20;


# Rank dos sets por quantidade de peças crescente ou decrecente. #item com -1 na quantidad de pecas
select name as 'set_nome', num_parts as 'qtd_peças' from sets order by num_parts desc limit 0,20;
select name as 'set_nome', num_parts as 'qtd_peças' from sets order by num_parts asc limit 0,20;


#Qual set possui mais peça? -- Com a col de nome, nao retorna o valor maximo
select `name`as 'set_nome', max(sets.num_parts) as 'qtd_maxima_peças' from sets group by set_num;


#Quantas peças tal set possui?
select name as 'set_nome', num_parts as 'qtd_peças' from sets where name like '%weetabix%' order by num_parts asc limit 0,20;
select name as 'set_nome', num_parts as 'qtd_peças' from sets where name like '%weetabix%' order by num_parts desc limit 0,20;


# Qual o id do set, nome, tema (id e nome) e quantos temos no inventário?
select sets.set_num as 'set_id', sets.name as 'set_nome', sets.theme_id as 'tema_id', th.name as 'tema_nome', sum(inv_set.quantity) as 'qtd_set'
	from sets inner join inventory_sets as inv_set
	on sets.set_num = inv_set.inventory_id
	inner join themes as th
	on sets.theme_id = th.id
group by sets.set_num, sets.name, th.id, th.name order by qtd_set desc limit 0,20;


# Quais sets são "True Set"?
select `name`as 'set_nome', num_parts as 'qtd_peças', CASE
	WHEN num_parts >= 4000 THEN 'Sim'
    WHEN num_parts < 4000 THEN 'Não'
end as 'True Set' from sets group by set_num order by num_parts desc limit 0,20;

#Qual ano produziram mais peças?

SELECT name as nome , year as ano, num_parts as numero_de_partes
FROM sets
ORDER BY num_parts 
DESC
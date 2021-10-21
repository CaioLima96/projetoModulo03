# Quais são e quantos sets de um "personagem" tem? -- aqui não quero o set_num, mas só consegui ir quando coloquei no group by, pq?
select set_num, `name`,count(name) as 'qtd_set' from sets group by `name`, set_num having `name` like '%mcdonald%';


# Qual set se repete?
select set_num, `name`, count(year) as qtd_sets from sets group by set_num having count(set_num) >= 2;


# Rank dos sets por quantidade de peças crescente ou decrecente. #item com -1 na quantidad de pecas
select name, num_parts as 'qtd_peças' from sets order by num_parts desc;
select name, num_parts as 'qtd_peças' from sets order by num_parts asc;



#Qual set possui mais peça? -- Também não consegui colocar o nome aqui
select `name`, max(sets.num_parts) as 'qtd_maxima_peças' from sets group by set_num;


#Quantas peças tal set possui?
select name, num_parts from sets where name like '%weetabix%' order by num_parts asc;
select name, num_parts from sets where name like '%weetabix%' order by num_parts desc;


# Qual o id do set, nome, tema e quantos temos no inventário?
select sets.set_num as 'set_id', sets.name as 'set_nome', sets.theme_id as 'tema_id', th.name as 'tema_nome', sum(inv_set.quantity) as 'qtd_set'
from sets inner join inventory_sets as inv_set
on sets.set_num = inv_set.inventory_id
inner join themes as th
on sets.theme_id = th.id
group by sets.set_num, sets.name, th.id, th.name order by qtd_set asc;

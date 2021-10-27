# Qual set se repete?
select set_num as 'set_id', `name` as 'set_nome', count(year) as qtd_sets from sets group by set_num having count(set_num) >= 2 limit 0,20;
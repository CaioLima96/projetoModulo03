#Quantas peças tal set possui?
select concat( set_num, ' ', name ) as 'set_nome', num_parts as 'qtd_peças' from sets where name like '%weetabix%' order by num_parts desc limit 0,20;
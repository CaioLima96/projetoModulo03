# Rank dos sets por quantidade de peças.
select concat( set_num, ' ', name ) as 'set_nome', num_parts as 'qtd_peças' from sets order by num_parts desc limit 0,20;
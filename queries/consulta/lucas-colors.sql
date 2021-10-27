#Quantas peças tem as cores Blue, Green e Dark Pink?
select c.name, count(inv.color_id) as "total" 
from inventory_parts as inv inner join colors as c 
on inv.color_id = c.id group by id having c.id in (1,2,5);

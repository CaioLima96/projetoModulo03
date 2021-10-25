# Qual o rank das categorias de partes que mais se repetem em parts?
select pc.name as 'Categoria_partes', count(p.part_cat_id) as 'Total'
from parts as p inner join part_categories as pc
on p.part_cat_id = pc.id 
group by id order by total desc limit 0,20;
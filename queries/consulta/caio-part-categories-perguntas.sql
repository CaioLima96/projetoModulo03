# Qual o rank das categorias de partes que mais se repetem em parts? -- VER PQ NÃO FOI O ORDER BY
select pc.name as 'Categoria', count(p.part_cat_id) as 'Total'
from parts as p inner join part_categories as pc
on p.part_cat_id = pc.id group by id limit 0,20;
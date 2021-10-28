# Quais os temas mais usados?
select concat( th.id, ' ', th.name ) as 'set_nome', count(st.theme_id) as 'Total' 
from themes as th inner join sets as st 
on th.id = st.theme_id 
group by id order by Total desc limit 0,20;
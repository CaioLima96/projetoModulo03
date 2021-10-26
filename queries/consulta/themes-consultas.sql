# Quais os temas e seus sets?
select th.name as tema_nome, st.name as set_nome
from themes as th left join sets as st
on th.id = st.theme_id limit 0,20 ;

# Qual tema não possui set?
select th.name as tema_nome, st.name as set_nome 
from themes as th left join sets as st 
on th.id = st.theme_id 
where st.theme_id is null limit 0,20;

# Quantos sets não possuem não possuem? - tirar?
select sum(st.theme_id is null) as 'Total' 
from themes as th left join sets as st 
on th.id = st.theme_id;

# Quais os temas mais usados?
select th.name as 'Nome_tema', count(st.theme_id) as 'Total' 
from themes as th inner join sets as st 
on th.id = st.theme_id 
group by id order by Total desc limit 0,20;
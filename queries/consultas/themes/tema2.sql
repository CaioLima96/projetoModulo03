# Qual tema não possui set?
select th.name as tema_nome, st.name as set_nome 
from themes as th left join sets as st 
on th.id = st.theme_id 
where st.theme_id is null limit 0,20;
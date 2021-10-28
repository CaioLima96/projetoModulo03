# Quais os temas e seus sets?
select th.name as tema_nome, st.name as set_nome
from themes as th left join sets as st
on th.id = st.theme_id limit 0,20;
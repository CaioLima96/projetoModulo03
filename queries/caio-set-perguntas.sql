# Quais são e quantos sets de um "personagem" tem?
select `name`, count(name) as 'qtd_set' from sets group by `name` having `name` like '%mcdonald%';


# Qual set se repete? -- Só não cosnegui adicionar o name. Botei no select e deu erro.
select set_num, count(set_num) as qtd_sets from sets group by set_num having count(set_num) > 1;


# Rank dos sets por quantidade de peças crescente ou decrecente.
select name, num_parts as 'qtd_peças' from sets order by num_parts desc;


#Qual set possui mais peça? -- Também não consegui colocar o nome aqui
select max(num_parts) as 'qtd_maxima_peças' from sets;


#Quantas peças tal set possui?
select name, num_parts from sets where name like '%weetabix%' order by num_parts asc;


#Quantos tijolos de tal tipo tem em maos sets?

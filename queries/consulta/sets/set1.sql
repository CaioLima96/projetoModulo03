#Qual ano produziram mais peças?
SELECT year as ano, num_parts as numero_de_partes
FROM sets
ORDER BY num_parts desc
limit 3;
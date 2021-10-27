#Quantas peças são transparentes?
SELECT count(is_trans) as quantidade_de_transparentes
FROM colors
WHERE is_trans like '%t';


#Quais são as cores de LEGO "transparentes"?
SELECT name AS nome_das_cores, count(*) 
FROM colors
WHERE is_trans = 't'
GROUP BY name
ORDER BY name 
ASC;



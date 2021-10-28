#Quais são as cores de LEGO "transparentes"?
SELECT name AS nome_das_cores, count(*) 
FROM colors
WHERE is_trans = 't'
GROUP BY name
ORDER BY name 
ASC;
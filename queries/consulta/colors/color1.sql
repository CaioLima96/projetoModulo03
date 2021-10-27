#Quantas são "transparentes"?
SELECT count(is_trans) as quantidade_de_transparentes
FROM colors
WHERE is_trans like '%t';
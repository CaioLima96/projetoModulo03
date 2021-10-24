#Quais são as cores de LEGO "transparentes"?
SELECT name as nome_da_cor , is_trans as peças_transparentes
FROM colors
WHERE is_trans like '%t';

#Quantas são "transparentes"?
SELECT count(is_trans) as quantidade_de_transparentes
FROM colors
WHERE is_trans like '%t';
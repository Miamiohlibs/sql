SELECT --names/authors, topical subject >650, names used subject 600-630
--index_entry, field
*
FROM 
sierra_view.catmaint
WHERE 
condition_code_num = 1 --do we really want to only look at first time headings? 
		     --what about updates to headings?
AND
index_tag = 'd'
;
/*
SELECT field, index_entry
FROM sierra_view.catmaint
WHERE --condition_code_num=1
AND
 field ^d[600-630]
AND
--index_tag= ‘a’
index_tag = ‘d’
AND
Author != ‘’ --give us only the name subject

*/

--could we pull out authority record numbers for invalid headings (
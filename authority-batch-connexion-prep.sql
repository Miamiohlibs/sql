SELECT --names/authors, topical subject >650, names used subject 600-630
--m.record_type_code || m.record_num || 'a',index_entry, field, c.index_tag
*
FROM 
sierra_view.catmaint AS c
JOIN
sierra_view.record_metadata AS m
ON
m.id = c.record_metadata_id
WHERE 
c.condition_code_num = 1 --do we really want to only look at first time headings? 
		     --what about updates to headings?
AND
(c.index_tag = 'a'
OR
c.index_tag = 'd'
)

--ORDER BY c.index_tag DESC
limit 100
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
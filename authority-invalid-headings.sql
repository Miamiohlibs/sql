SELECT 
*
--a.record_type_code || a.record_num || 'a' 

FROM sierra_view.catmaint AS c
JOIN
sierra_view.record_metadata AS m
ON
c.record_metadata_id = m.id
LEFT JOIN
sierra_view.authority_view AS a
ON
a.id = m.id

--WHERE condition_code_num = 2 
--an attempt here was made 

;

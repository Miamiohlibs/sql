SELECT
-- count(*)
-- COUNT( DISTINCT i.record_id )
m.record_type_code + m.record_num + 'a'
FROM
sierra_view.item_record AS i
JOIN
sierra_view.bib_record_item_record_link AS l
ON
l.item_record_id = i.record_id
JOIN
sierra_view.bib_record AS b
ON 
l.bib_record_id = b.record_id
JOIN
sierra_view.record_metadata AS m
ON
m.id = b.record_id
WHERE
i.location_code LIKE 'doc%'
AND
i.item_status_code = '-'
AND
b.bcode2 = 'a'
AND
m.record_type_code = 'b'


LIMIT 100;
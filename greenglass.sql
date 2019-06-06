SELECT
-- *
-- count(*)
-- COUNT( DISTINCT i.record_id )
-- count(DISTINCT m.record_type_code || m.record_num ||'a'
count(DISTINCT m.record_num)
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

i.item_status_code = '-'
AND
b.bcode1 = 'm'
AND
b.bcode2 = 'a'
AND
m.record_type_code = 'b'

LIMIT 100;
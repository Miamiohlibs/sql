SELECT
--*
--count(*)
ln.name,
il.location_code,
count(*) as count

FROM
sierra_view.item_record 	AS il

LEFT JOIN
sierra_view.record_metadata	AS r
ON
r.id = il.record_id

JOIN
sierra_view.location 		AS l
ON
l.code = il.location_code

JOIN
sierra_view.location_name 	AS ln
ON
l.id = ln.location_id

/*
JOIN
sierra_view.bib_record_item_record_link rl
ON
b.id = rl.bib_record_id
*/
WHERE
r.campus_code = ''
/*AND
b.bcode3 <> 'z'
AND
bl.location_code NOT IN
(
'lc',
'cc',
'lr',
'wc',
'om',
'int',
'lcs',
'lpb',
'lrc',
'lrd',
'ca2ug'

)*/

GROUP BY
il.location_code,
ln.name

ORDER BY
--count desc,
location_code



;
SELECT
--*
--count(*)
bl.location_code,
count(*) as count

FROM
sierra_view.bib_record_location	as bl

JOIN
sierra_view.record_metadata	as r
ON
r.id = bl.bib_record_id

JOIN
sierra_view.bib_view b
ON
b.id = r.id

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
bl.location_code

ORDER BY
--count desc,
location_code


;
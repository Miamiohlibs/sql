SELECT
*
FROM
sierra_view.varfield_view as v
WHERE
v.record_type_code = 'b'
AND
v.varfield_type_code = 't'
AND
v.marc_tag = '245'
AND
v.field_content LIKE '|a'
LIMIT 100;
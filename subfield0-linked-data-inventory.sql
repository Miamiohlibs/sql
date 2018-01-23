SELECT
--count(*)
*
--v.record_type_code || v.record_num || 'a'
FROM
sierra_view.subfield_view as v
WHERE
v.record_type_code = 'b'
AND
v.tag = '0'
ORDER BY v.content
--LIMIT 100;

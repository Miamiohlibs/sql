SELECT
m.deletion_date_gmt,
-- *
count(*)


FROM
sierra_view.record_metadata AS m
WHERE
m.record_type_code = 'b'
AND
m.campus_code = ''
AND
m.deletion_date_gmt IS NOT NULL

GROUP BY m.deletion_date_gmt
ORDER BY m.deletion_date_gmt DESC

LIMIT 365


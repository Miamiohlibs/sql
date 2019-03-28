SELECT
--r.record_num
--*
r.creation_date_gmt::date,
count(r.creation_date_gmt::date)
FROM
sierra_view.record_metadata AS r
WHERE
r.record_type_code = 'i'
GROUP BY
r.creation_date_gmt::date


ORDER BY r.creation_date_gmt::date DESC

limit 356



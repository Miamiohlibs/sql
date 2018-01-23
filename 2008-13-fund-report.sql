SELECT
--count(*) --if you only want to count order records
--DISTINCT 'o' || m.record_num || 'a' --if you only want order record numbers, you must also comment out order by at the end
* --if you want everything from these three tables
FROM
sierra_view.order_record AS o 
JOIN
sierra_view.order_record_cmf AS c
ON
c.order_record_id = o.id
JOIN
sierra_view.record_metadata m
ON
m.id = c.order_record_id
WHERE
o.order_date_gmt > '07-01-2008 00:00:00-00'
AND 
o.order_date_gmt < '06-30-2016 00:00:00-00'
AND
o.receiving_location_code != 'm'
AND
c.copies > 100

ORDER BY m.record_num
--LIMIT 100;
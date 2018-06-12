--purpose of this query will be to take in an ISBN and 
SELECT
*
FROM
sierra_view.order_view AS o
JOIN
sierra_view.record_metadata AS m
ON
m.id = o.id
WHERE
o.record_creation_date_gmt IS NOT NULL
ORDER BY o.record_creation_date_gmt DESC
LIMIT 100;
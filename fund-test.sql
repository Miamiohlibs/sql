SELECT
*
FROM
sierra_view.order_record AS o

/*
JOIN
sierra_view.record_metadata AS m
ON
o.id = m.id
*/

WHERE
o.record_id = 476741893381
;
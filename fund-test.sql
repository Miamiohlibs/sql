SELECT
*
FROM
sierra_view.order_record AS o


JOIN
sierra_view.order_record_paid AS orp
ON
o.id = orp.order_record_id


JOIN
sierra_view.record_metadata AS m
ON
o.id = m.id

JOIN
sierra_view.order_record_received AS orr
ON
o.id = orr.item_record_metadata_id


WHERE
m.record_num = 654887
;
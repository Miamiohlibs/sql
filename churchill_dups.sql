SELECT
--m.creation_date_gmt
*
FROM
sierra_view.item_record_property AS p
JOIN
sierra_view.item_record AS i
ON
p.item_record_id = i.record_id
JOIN
sierra_view.record_metadata AS m
ON
i.record_id = m.id
WHERE
p.barcode = '35054035185145'
AND
i.checkout_total > 0

ORDER by m.creation_date_gmt
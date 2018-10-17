SELECT
--count(*)
i.record_type_code || i.record_num || 'a' AS item_number,
i.barcode,
i.checkout_total,
i.last_checkout_gmt,
i.location_code


FROM 
sierra_view.item_view AS i
JOIN
sierra_view.record_metadata AS m
ON
i.id = m.id

WHERE
i.location_code SIMILAR TO 'rg%'
AND
m.campus_code = ''

offset 500000;
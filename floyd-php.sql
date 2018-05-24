SELECT
--*
--Nate wants call #, title, last check-in, total checkouts
p.call_number, b.best_title, i.last_checkin_gmt::date, i.checkout_total
FROM
sierra_view.item_record AS i
JOIN
sierra_view.item_record_property AS p
ON
p.item_record_id = i.record_id
JOIN
sierra_view.record_metadata AS m
ON
m.id = i.record_id
JOIN
sierra_view.bib_record_item_record_link AS l
ON
l.item_record_id = i.record_id
JOIN
sierra_view.bib_record_property as b
ON
b.bib_record_id = l.bib_record_id
WHERE
p.call_number_norm 
BETWEEN 'pn 1000' and 'pn 6000'
AND
m.creation_date_gmt::date < CURRENT_DATE - INTERVAL '10 YEARS'
AND
i.last_checkout_gmt::date < CURRENT_DATE - INTERVAL '10 YEARS'
AND
i.location_code = 'kngli'
AND
i.icode2 = '-'
AND
m.campus_code = ''

--ORDER BY p.call_number_norm ASC
--LIMIT 100;

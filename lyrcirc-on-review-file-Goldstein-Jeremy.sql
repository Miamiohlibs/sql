--Jeremy Goldstein at Minuteman Lib Network

Select
'b'||b.record_num||'a' AS "record_number",
SUM(i.checkout_total) AS "checkout_total",
SUM(i.last_year_to_date_checkout_total) AS "ly_checkout_total"
FROM
sierra_view.bib_view as b
JOIN
sierra_view.bib_record_item_record_link AS bilink 
ON 
b.id = bilink.bib_record_id
JOIN
sierra_view.item_view AS i
ON
bilink.item_record_id = i.id   
JOIN 
sierra_view.bool_set as sb 
ON 
b.id = sb.record_metadata_id AND sb.bool_info_id = '[review file #]'
GROUP BY 1

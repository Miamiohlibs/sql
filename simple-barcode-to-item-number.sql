SELECT
--*
b.record_type_code||b.record_num||'a', b.title, p.call_number, p.barcode, r.last_checkin_gmt, r.checkout_total, r.renewal_total
FROM
sierra_view.item_record_property AS p

JOIN
sierra_view.item_record AS r
ON
p.item_record_id = r.id

JOIN
sierra_view.record_metadata AS m
ON
r.id = m.id

JOIN 
sierra_view.bib_record_item_record_link AS L
ON
p.item_record_id = L.item_record_id

JOIN
sierra_view.bib_view AS b
ON
L.bib_record_id = b.id

WHERE
p.barcode 
IN
( 

'35054017924552',
'35054017924529',
'35054017924479',
'35054006552836',
'35054017924560',
'35054017924511',
'35054012715583',
'35054012715641',
'35054012715526',
'35054022509901',
'35054006552844',
'35054012997132',
'35054011612120',
'35054011864812',
'35054010801278',
'35054014949982',
'35054015913094',
'35054015912443',
'35054016119873',
'35054016119931',
'35054017436888',
'35054017436524',
'35054018439451',
'35054018439493',
'35054020204281',
'35054020203630',
'35054001262647',
'35054029147887'
)

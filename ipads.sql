SELECT
* 
FROM
sierra_view.circ_trans AS c
JOIN
sierra_view.item_record AS i
ON
c.item_record_id = i.record_id
JOIN
sierra_view.varfield AS v 
ON
i.record_id = v.record_id
WHERE
c.itype_code_num = 63 --ipad itype

ORDER BY c.transaction_gmt DESC
GROUP BY [c.id]
limit 100;

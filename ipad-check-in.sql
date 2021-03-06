﻿SELECT
*
--v.field_content
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
AND
c.op_code = 'i' --i for checkins ; o for check-outs
AND
c.source_code = 'local'
AND
v.varfield_type_code = 'd'
AND
i.location_code = 'kngco'
AND
i.item_status_code = '-'
AND 
c.transaction_gmt::timestamp > (CURRENT_TIMESTAMP(0) - INTERVAL '100 min')
;


﻿SELECT
m.record_type_code || m.record_num || 'x' 
--count(*)
FROM
sierra_view.varfield AS v
JOIN
sierra_view.record_metadata AS m
ON 
m.id = v.record_id
WHERE
--do not limit by varfield type code unless it corresponds to 
(v.marc_tag = '260'

)
AND
v.marc_ind1 < '2'
AND 
v.marc_ind1 != '' --null is also zero; must exclude nulls

--limit 100 --comment out limit after testing; conflicts with output
;

--add bib rec nums and delete cleanup 2nd ind's to show null or empty
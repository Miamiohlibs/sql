select
--count(*)
*
from
sierra_view.subfield_view AS v
WHERE
v.record_type_code = 'b' 
AND 
v.marc_tag = '245' 
AND
v.tag = 'b'
AND
v.occ_num > 0
LIMIT 1000
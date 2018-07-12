SELECT
count(*)
--'b'||record_num||'a'
FROM
sierra_view.subfield_view AS v

WHERE
v.record_type_code = 'b' 

AND 
v.marc_tag = '245' 

AND
v.tag = 'b'
group by v.record_num
having count(v.record_num) > 1 
ORDER BY v.record_num ASC
limit 1000;
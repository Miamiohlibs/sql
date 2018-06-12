SELECT
m.record_type_code || m.record_num || 'x' --count(*)
FROM
sierra_view.varfield AS v
JOIN
sierra_view.record_metadata AS m
ON 
m.id = v.record_id
WHERE
--do not limit by varfield type code unless it corresponds to 
(v.marc_tag = '700'
OR
v.marc_tag = '710'
OR
v.marc_tag = '711'

)
AND
v.marc_ind2 != ''
AND
v.marc_ind2 != '2'

--limit 100
;

--add bib rec nums and delete cleanup 2nd ind's to show null or empty
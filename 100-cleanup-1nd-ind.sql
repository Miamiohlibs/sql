SELECT --will require manual review
m.record_type_code || m.record_num || 'a' --count(*)
FROM
sierra_view.varfield AS v
JOIN
sierra_view.record_metadata AS m
ON 
m.id = v.record_id
WHERE
--do not limit by varfield type code unless it corresponds to 
v.marc_tag = '100'
/*OR
(v.marc_tag = '110'
OR
v.marc_tag = '111'
)*/
AND
(v.marc_ind1 != '0'
AND
v.marc_ind1 != '1'
AND
v.marc_ind1 != '3'
)


--limit 100
;

--add bib rec nums and delete cleanup 2nd ind's to show null or empty
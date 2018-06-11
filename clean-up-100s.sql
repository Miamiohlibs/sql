SELECT
count(*)
FROM
sierra_view.varfield AS v
WHERE
--do not limit by varfield type code unless it corresponds to 
(v.marc_tag = '100'
OR
v.marc_tag = '110'
OR
v.marc_tag = '111'

)
AND
v.marc_ind2 != ''
limit 100
;

--add bib rec nums and delete cleanup 2nd ind's to show null or empty
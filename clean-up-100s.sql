SELECT
*
FROM
sierra_view.varfield AS v
WHERE
v.varfield_type_code = 'b'
AND
v.marc_tag = '100'
AND
v.marc_ind2 != ''
limit 100
;
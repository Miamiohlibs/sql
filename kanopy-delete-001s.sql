SELECT
b.record_type_code || b.record_num || 'a'
FROM
sierra_view.bib_view AS b
JOIN
sierra_view.varfield AS v
ON
b.id = v.record_id
WHERE
v.marc_tag = '001'
AND
v.field_content IN
(
'kan1058928',
'kan1042768'


)

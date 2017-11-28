SELECT
r.record_type_code || r.record_num || 'a' as record_num,
r.creation_date_gmt,
r.record_last_updated_gmt,
v.varfield_type_code,
v.marc_tag,
v.marc_ind1,
v.marc_ind2,
v.field_content

FROM
sierra_view.record_metadata as r

-- this join causes the query to only look at 
-- records that have one or more varfields with title tags
JOIN
sierra_view.varfield as v
ON
  (v.record_id = r.id) 
  AND (v.varfield_type_code = 't')

LEFT OUTER JOIN
sierra_view.phrase_entry as p
ON
  (p.record_id = r.id) 
  AND (p.index_tag = 't')
  
WHERE
p.id is NULL -- indicates no matching phrase entry for what should be an indexed varfield
AND r.record_type_code || r.campus_code = 'b'
AND r.deletion_date_gmt IS NULL
AND r.creation_date_gmt IS NOT NULL

ORDER BY
r.creation_date_gmt DESC,
r.record_last_updated_gmt DESC
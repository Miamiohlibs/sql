SELECT
s.record_id,
count(s.record_id)

FROM
sierra_view.subfield as s

WHERE
s.field_type_code || s.marc_tag || s.tag = 't245b'

GROUP BY
s.record_id

HAVING 
count(s.record_id) > 1

_________
SELECT 
r.record_type_code || r.record_num || 'a' as record_num

FROM
sierra_view.record_metadata as r

WHERE
r.id IN
(
	SELECT
	s.record_id
	-- count(s.record_id)

	FROM
	sierra_view.subfield as s

	WHERE
	s.field_type_code || s.marc_tag || s.tag = 't245b'

	GROUP BY
	s.record_id

	HAVING 
	count(s.record_id) > 1
)
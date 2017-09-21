SELECT
r.record_type_code || r.record_num || 'a' as record_num

-- get the generic record metadata for the order record
FROM
sierra_view.record_metadata as r

-- get the multi-field data for the order record
JOIN
sierra_view.order_record_cmf as f
ON
  f.order_record_id = r.id

WHERE
-- limiting to a range of dates for example
r.creation_date_gmt >= '2017-01-01'
and r.creation_date_gmt < '2018-01-01'
and f.fund_code = '01208'

GROUP BY
r.record_type_code,
r.record_num
SELECT
count(*)
 
FROM
sierra_view.order_record AS o


JOIN
sierra_view.order_record_paid AS orp
ON
o.record_id = orp.order_record_id


JOIN
sierra_view.record_metadata AS m
ON
o.record_id = m.id

JOIN
sierra_view.order_record_cmf AS f
ON
o.record_id = f.order_record_id


JOIN
sierra_view.fund_master AS fm
ON
f.id = fm.id

JOIN
sierra_view.fund AS t
ON
fm.code = t.fund_code

--LIMIT 100
--WHERE

--m.record_num = 654887
--f.fund_code = '00993'--insert any local fund code here
;
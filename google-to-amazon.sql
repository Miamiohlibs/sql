--purpose of this query will be to take in an ISBN or title and return vendor code, etc
SELECT
* --vendor, isbn, title, 
FROM
sierra_view.order_view AS o
JOIN
sierra_view.record_metadata AS m
ON
m.id = o.id
JOIN
sierra_view.varfield AS v
ON
v.record_id = o.record_id


--doesn't return any indexed entries looking of ibsns
-- JOIN
-- sierra_view.phrase_entry AS p
-- ON
-- o.id = p.record_id 

WHERE
v.varfield_type_code = 
o.record_creation_date_gmt IS NOT NULL
ORDER BY o.record_creation_date_gmt DESC
LIMIT 100;
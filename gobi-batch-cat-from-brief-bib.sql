--towards a query that might allow automated batch Connexion query
--based on the brief bib ISBN for ebooks (work with Jennifer)

--primarily looks for uncataloged ebooks in the past week

SELECT
--count(*)
*
FROM
sierra_view.record_metadata AS m
JOIN
sierra_view.bib_record AS b --need to check bib rec for more info
ON
m.id = b.id
JOIN
sierra_view.bib_record_location AS l  --need another table with location
ON
m.id = l.bib_record_id
WHERE
m.record_type_code = 'b'
AND
m.creation_date_gmt::date > current_date-27 
AND
m.deletion_date_gmt IS NULL 
AND
m.campus_code = ''
AND
b.cataloging_date_gmt IS NULL
AND
l.location_code = 'onl'

ORDER BY m.creation_date_gmt DESC
LIMIT 100;
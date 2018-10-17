--to calculate average cataloging time for materials in the past 10 years
--this excludes items whose cataloging date precedes creation date and
--and excludes things that do not have a cataloging date at all, like
--batch record loads from large ebook packages

SELECT 
--count(*)
--*
AVG(b.cataloging_date_gmt - m.creation_date_gmt) 
--m.creation_date_gmt, b.cataloging_date_gmt

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

m.deletion_date_gmt IS NULL 
AND
m.campus_code = ''
AND
b.cataloging_date_gmt IS NOT NULL
AND
m.creation_date_gmt < b.cataloging_date_gmt
AND
m.creation_date_gmt::DATE > current_date- INTERVAL '10 years'

LIMIT 100
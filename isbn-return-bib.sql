﻿select
*

from
sierra_view.phrase_entry as p

WHERE
-- p.index_tag || p.index_entry = 'i' || 'PUT_ISBN_HERE'
p.index_tag || p.index_entry = 'i' || '9781781884652' --line provided by Ray Voelker





SELECT
*
FROM
sierra_view.phrase_entry AS p
WHERE
p.index_entry = '9781781884652'
LIMIT 100

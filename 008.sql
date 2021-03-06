﻿--code used to help analyze the 008 fields but may require more work to compare loc.gov/marc validaty rules based on material type http://www.loc.gov/marc/bibliographic/bd008.html

SELECT 
--*
--count(*)
r.record_type_code||r.record_num||'a' as bib_record,
concat(c.p00,c.p01,c.p02,c.p03,c.p04,c.p05,c.p06,c.p07,c.p08,c.p09,c.p10,c.p11,c.p12,c.p13,c.p14,c.p15,c.p16,c.p17,c.p18,c.p19,c.p20,c.p21,c.p22,c.p23,c.p24,c.p25,c.p26,c.p27,c.p28,c.p29,c.p30,c.p31,c.p32,c.p33,c.p34,c.p35,c.p36,c.p37,c.p38,c.p39,c.p40,c.p41,c.p42,c.p43,c.remainder) AS control
--merging control_field table into an 008 field
FROM 
sierra_view.control_field AS c
JOIN --Join and concat help by Ray Voelker
sierra_view.record_metadata as r
ON
r.id = c.record_id
WHERE
r.record_type_code = 'b'
AND
c.control_num = '8'
 
ORDER BY
r.creation_date_gmt ASC
limit 100


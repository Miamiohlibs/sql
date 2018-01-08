SELECT
c.transaction_gmt
--*
FROM
sierra_view.circ_trans AS c
WHERE
c.transaction_gmt::timestamp > CURRENT_TIMESTAMP(0) - INTERVAL '1 min'
ORDER BY 
c.transaction_gmt ASC
LIMIT 100;
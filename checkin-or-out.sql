SELECT
*
FROM
sierra_view.item_record AS i
WHERE
i.last_checkin_gmt BETWEEN '2017-11-14 03:00:00-05' AND '2017-11-14 15:00:00-05'
OR
i.last_checkout_gmt BETWEEN '2017-11-14 03:00:00-05' AND '2017-11-14 15:00:00-05'
LIMIT 100
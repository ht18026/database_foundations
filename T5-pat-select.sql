/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-pat-select.sql

--Student ID: 34479791
--Student Name: Wang Xijia


/* Comments for your marker:




*/


/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    lpad(l.locn_id, 10, ' ')        AS locn_id,
    trim(l.locn_name)               AS locn_name,
    l.locn_address,
    lt.locntype_description,
    lpad(count(t.trip_id), 10, ' ') AS "PICKUP/DROPOFF_COUNT"
FROM
    location      l
    INNER JOIN trip t
    ON l.locn_id IN(t.pickup_locn_id,
    t.dropoff_locn_id)
    INNER JOIN location_type lt
    ON l.locntype_id = lt.locntype_id
WHERE
    t.trip_act_pickupdt IS NOT NULL
    AND t.trip_act_dropoffdt IS NOT NULL
GROUP BY
    l.locn_id,
    trim(l.locn_name),
    l.locn_address,
    lt.locntype_description
ORDER BY
    count(t.trip_id) DESC,
    l.locn_id;

/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer




SELECT
    lpad(d.driver_id, 10, ' ') AS driver_id,
    d.driver_given
    ||' '
    ||d.driver_family          AS fullname,
    CASE
        WHEN to_char(sum((t.trip_act_dropoffdt - t.trip_act_pickupdt)*24 * 45.42), 'FM$999999999.00') IS NULL THEN
            'No Trips'
        ELSE
            to_char(sum((t.trip_act_dropoffdt - t.trip_act_pickupdt)*24 * 45.42), 'FM$999999999.00')
    END                        AS total_period_payment
FROM
    trip   t
    RIGHT JOIN driver d
    ON t.driver_id=d.driver_id and t.trip_act_dropoffdt BETWEEN TO_DATE('2024-08-01', 'YYYY-MM-DD') AND TO_DATE('2024-08-07', 'YYYY-MM-DD')
GROUP BY
    d.driver_id,
    d.driver_given
    ||' '
    ||d.driver_family
ORDER BY
    d.driver_id;


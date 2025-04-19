/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-pat-json.sql

--Student ID: 34479791
--Student Name: Wang Xijia


/* Comments for your marker:




*/

-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT TO GENERATE
-- THE COLLECTION OF JSON DOCUMENTS HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    json_object(
        '_id' value D.DRIVER_ID,
        'name' value trim(D.DRIVER_GIVEN) || ' ' || trim(D.DRIVER_FAMILY),
        'licence_num' value D.DRIVER_LICENCE,
        'no_of_trips' value COUNT(T.TRIP_ID),
        'suspended' value D.DRIVER_SUSPENDED,
        'trips_info' value JSON_arrayAGG(
            JSON_OBJECT(
                'trip_id' value T.TRIP_ID,
                'veh_vin' value V.VEH_VIN,
                'pick-up' value JSON_OBJECT(
                    'location_id' value T.PICKUP_LOCN_ID,
                    'location_name' value l1.LOCN_NAME,
                    'intended_datetime' value to_char(T.TRIP_INT_PICKUPDT,'DD/MM/YYYY HH24:MI'),
                    'actual_datetime' value to_char(T.TRIP_ACT_PICKUPDT,'DD/MM/YYYY HH24:MI')
                ),
                'drop off' value JSON_OBJECT(
                    'location_id' value T.DROPOFF_LOCN_ID,
                    'location_name' value l2.LOCN_NAME,
                    'intended_datetime' value to_char(T.TRIP_INT_DROPOFFDT,'DD/MM/YYYY HH24:MI'),
                    'actual_datetime' value to_char(T.TRIP_ACT_DROPOFFDT,'DD/MM/YYYY HH24:MI')
                )
            )
        )
    format json)||','
FROM
    DRIVER D
    JOIN TRIP T ON D.DRIVER_ID = T.DRIVER_ID
    JOIN VEHICLE V ON T.VEH_VIN = V.VEH_VIN
    JOIN LOCATION l1 ON T.PICKUP_LOCN_ID = l1.LOCN_ID
    JOIN LOCATION l2 ON T.DROPOFF_LOCN_ID = l2.LOCN_ID
WHERE
    T.TRIP_ACT_DROPOFFDT IS NOT NULL
GROUP BY
    D.DRIVER_ID,
    trim(D.DRIVER_GIVEN) || ' ' || trim(D.DRIVER_FAMILY),
    D.DRIVER_LICENCE,
    D.DRIVER_SUSPENDED
HAVING
    COUNT(T.TRIP_ID) > 0;
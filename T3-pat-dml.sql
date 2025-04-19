/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T3-pat-dml.sql

--Student ID: 34479791
--Student Name: Wang Xijia

/* Comments for your marker:




*/

/*(a)*/
DROP SEQUENCE official_seq;

DROP SEQUENCE trip_seq;

CREATE SEQUENCE official_seq
START WITH 100
INCREMENT BY 10;

CREATE SEQUENCE trip_seq
START WITH 100
INCREMENT BY 10;

COMMIT;

/*(b)*/
INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    official_seq.NEXTVAL,
    'Franklin',
    'Gateau',
    (SELECT cr_ioc_code FROM country_region WHERE upper(cr_name)= upper('St Vincent and the GRENADINES') ),
    NULL
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1C4SDHCT9FC614231',
    'aaa0456',
    TO_DATE('2023-01-01 00:00', 'YYYY-MM-DD HH24:MI'),
    1000,
    6,
    (SELECT vm_model_id FROM vehicle_model WHERE upper(vm_model)='ALPHARD')
);

COMMIT;

/*(c)*/
INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    trip_seq.NEXTVAL,
    5,
    TO_DATE('2024-07-30 12:30', 'YYYY-MM-DD HH24:MI'),
    NULL,
    TO_DATE('2023-07-30 14:00', 'YYYY-MM-DD HH24:MI'),
    NULL,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE upper(driver_given) = upper('Claire') AND upper(driver_family) = upper('Robert') AND upper(driver_licence) = upper('55052a543210')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Olympic and Paralympic Village')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Porte de la Chapelle Arena')),
    (SELECT lang_iso_code FROM language WHERE upper(lang_name) = upper('English')),
    (SELECT off_id FROM official WHERE upper(off_given)=upper('Franklin') AND upper(off_family)=upper('Gateau'))
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    trip_seq.NEXTVAL,
    5,
    TO_DATE('2024-07-30 20:00', 'YYYY-MM-DD HH24:MI'),
    NULL,
    TO_DATE('2023-07-30 21:15', 'YYYY-MM-DD HH24:MI'),
    NULL,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE upper(driver_given) = upper('Claire') AND upper(driver_family) = upper('Robert') AND upper(driver_licence) = upper('55052a543210')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Porte de la Chapelle Arena')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Olympic and Paralympic Village')),
    (SELECT lang_iso_code FROM language WHERE upper(lang_name) = upper('English')),
    (SELECT off_id FROM official WHERE upper(off_given)=upper('Franklin') AND upper(off_family)=upper('Gateau'))
);

COMMIT;

/*(d)*/
UPDATE trip
SET
    trip_act_pickupdt = TO_DATE(
        '2024-07-30 12:30',
        'YYYY-MM-DD HH24:MI'
    ),
    trip_act_dropoffdt = TO_DATE(
        '2024-07-30 14:15',
        'YYYY-MM-DD HH24:MI'
    )
WHERE
    driver_id = (
        SELECT
            driver_id
        FROM
            driver
        WHERE
            upper(driver_given) = upper('Claire')
            AND upper(driver_family) = upper('Robert')
            AND upper(driver_licence) = upper('55052a543210')
    )
    AND pickup_locn_id = ( (
        SELECT
            locn_id
        FROM
            location
        WHERE
            upper(locn_name) = upper('Olympic and Paralympic Village')
    ))
    AND dropoff_locn_id = (
        SELECT
            locn_id
        FROM
            location
        WHERE
            upper(locn_name) = upper('Porte de la Chapelle Arena')
    )
    AND trip_int_pickupdt = TO_DATE( '2024-07-30 12:30', 'YYYY-MM-DD HH24:MI' );

DELETE FROM trip
WHERE
    driver_id = (
        SELECT
            driver_id
        FROM
            driver
        WHERE
            upper(driver_given) = upper('Claire')
            AND upper(driver_family) = upper('Robert')
            AND upper(driver_licence) = upper('55052a543210')
    )
    AND trip_int_pickupdt > TO_DATE( '2024-07-30 17:00', 'YYYY-MM-DD HH24:MI')
    AND trip_int_pickupdt < TO_DATE( '2024-07-31 00:00', 'YYYY-MM-DD HH24:MI' );

COMMIT;
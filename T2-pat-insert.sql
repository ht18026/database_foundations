/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-pat-insert.sql

--Student ID: 34479791
--Student Name: Wang Xijia

/* Comments for your marker:




*/

--------------------------------------
--INSERT INTO official
--------------------------------------
INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    1,
    'Page',
    'Wang',
    'LIE',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    2,
    'Roy',
    'Amon',
    'MAD',
    1
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    3,
    'Alice',
    'Johnson',
    'MDA',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    4,
    'Even',
    'Ding',
    'AUS',
    2
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    5,
    'Eve',
    'Davis',
    'MLI',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    6,
    'Page',
    'Asuka',
    'LIE',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    7,
    'Roy',
    'Ben',
    'MAD',
    1
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    8,
    'Alice',
    'Jack',
    'MDA',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    9,
    'Even',
    'Liu',
    'AUS',
    2
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    10,
    'Eve',
    'Xu',
    'MLI',
    NULL
);

--------------------------------------
--INSERT INTO vehicle
--------------------------------------
INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1HGCM82633A987654',
    'XYZ1234',
    TO_DATE('2020-01-01', 'YYYY-MM-DD'),
    15342,
    5,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1HGCM82633A876543',
    'ABC5678',
    TO_DATE('2018-01-01', 'YYYY-MM-DD'),
    24987,
    5,
    2
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1HGCM82633A765432',
    'JKL2345',
    TO_DATE('2022-01-01', 'YYYY-MM-DD'),
    1200,
    7,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1HGCM82633A654321',
    'MNO6789',
    TO_DATE('2019-01-01', 'YYYY-MM-DD'),
    30125,
    5,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1HGCM82633A543210',
    'DEF9876',
    TO_DATE('2021-01-01', 'YYYY-MM-DD'),
    4500,
    4,
    2
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1HGCM82633A432109',
    'GHI1357',
    TO_DATE('2020-01-01', 'YYYY-MM-DD'),
    18765,
    6,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1HGCM82633A321098',
    'PQR2468',
    TO_DATE('2023-01-01', 'YYYY-MM-DD'),
    100,
    5,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1HGCM82633A210987',
    'STU3690',
    TO_DATE('2022-01-01', 'YYYY-MM-DD'),
    15999,
    7,
    2
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1HGCM82633A109876',
    'VWX4823',
    TO_DATE('2021-01-01', 'YYYY-MM-DD'),
    20000,
    4,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1HGCM82633A098765',
    'YZA5834',
    TO_DATE('2019-01-01', 'YYYY-MM-DD'),
    27000,
    5,
    1
);

--------------------------------------
--INSERT INTO trip
--------------------------------------
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
    1,
    2,
    TO_DATE('2023-10-01 08:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 08:45', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 09:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 09:15', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A987654',
    2001,
    101,
    103,
    'mh',
    1
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
    2,
    3,
    TO_DATE('2023-10-01 08:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 08:45', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 09:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 09:15', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A876543',
    2002,
    101,
    103,
    'mh',
    2
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
    3,
    1,
    TO_DATE('2023-10-01 10:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 10:15', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 10:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 10:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A987654',
    2001,
    104,
    105,
    'mh',
    1
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
    4,
    4,
    TO_DATE('2023-10-01 11:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 11:05', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 11:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 11:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A543210',
    2003,
    102,
    106,
    'mh',
    3
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
    5,
    2,
    TO_DATE('2023-10-01 12:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 12:15', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 12:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 12:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A654321',
    2002,
    103,
    104,
    'mh',
    2
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
    6,
    3,
    TO_DATE('2023-10-01 14:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 14:15', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 14:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 14:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A987654',
    2001,
    105,
    106,
    'mh',
    4
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
    7,
    4,
    TO_DATE('2023-10-01 14:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 14:05', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 14:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 14:50', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A543210',
    2003,
    106,
    101,
    'mh',
    3
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
    8,
    2,
    TO_DATE('2023-10-01 15:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 15:10', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 15:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 15:40', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A876543',
    2002,
    101,
    102,
    'mh',
    2
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
    9,
    1,
    TO_DATE('2023-10-01 16:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 16:15', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 16:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 16:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A654321',
    2003,
    102,
    103,
    'mh',
    3
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
    10,
    3,
    TO_DATE('2023-10-01 17:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 17:10', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 17:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 17:40', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A987654',
    2001,
    103,
    104,
    'mh',
    1
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
    11,
    4,
    TO_DATE('2023-10-01 18:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 18:05', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 18:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 18:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A543210',
    2004,
    102,
    105,
    'sq',
    4
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
    12,
    2,
    TO_DATE('2023-10-01 19:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 19:10', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 19:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 19:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A876543',
    2005,
    101,
    102,
    'mh',
    5
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
    13,
    3,
    TO_DATE('2023-10-01 20:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 20:05', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 20:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 20:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A321098',
    2001,
    104,
    105,
    'af',
    1
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
    14,
    4,
    TO_DATE('2023-10-01 21:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 21:05', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 21:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 21:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A987654',
    2005,
    105,
    106,
    'mh',
    5
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
    15,
    2,
    TO_DATE('2023-10-01 22:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 22:10', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 22:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 22:50', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A543210',
    2002,
    106,
    101,
    'mh',
    2
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
    16,
    1,
    TO_DATE('2023-10-01 23:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 23:05', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 23:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-01 23:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A654321',
    2003,
    102,
    104,
    'ab',
    3
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
    17,
    3,
    TO_DATE('2023-10-02 08:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 08:45', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 10:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 10:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A987654',
    2001,
    101,
    102,
    'mh',
    1
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
    18,
    2,
    TO_DATE('2023-10-02 08:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 08:45', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 09:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 09:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A876543',
    2002,
    103,
    104,
    'aa',
    2
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
    19,
    4,
    TO_DATE('2023-10-02 09:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 09:05', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 09:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 09:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A543210',
    2003,
    104,
    105,
    'mh',
    3
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
    20,
    1,
    TO_DATE('2023-10-02 10:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 10:15', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 10:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2023-10-02 10:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A987654',
    2001,
    101,
    102,
    'mh',
    6
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
    21,
    1,
    TO_DATE('2024-08-02 10:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2024-08-02 10:15', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2024-08-02 10:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2024-08-02 10:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A987654',
    2001,
    101,
    102,
    'mh',
    6
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
    22,
    1,
    TO_DATE('2024-08-03 10:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2024-08-03 10:15', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2024-08-03 11:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2024-08-03 11:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A210987',
    2001,
    101,
    102,
    'mh',
    6
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
    23,
    1,
    TO_DATE('2024-08-03 10:00', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2024-08-03 10:15', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2024-08-03 11:30', 'YYYY-MM-DD HH24:MI'),
    TO_DATE('2024-08-03 11:45', 'YYYY-MM-DD HH24:MI'),
    '1HGCM82633A432109',
    2002,
    101,
    102,
    'mh',
    6
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
    24,
    1,
    TO_DATE('2024-08-03 10:00', 'YYYY-MM-DD HH24:MI'),
    null,
    TO_DATE('2024-08-03 11:30', 'YYYY-MM-DD HH24:MI'),
    null,
    '1HGCM82633A321098',
    2003,
    101,
    102,
    'mh',
    6
);
COMMIT;
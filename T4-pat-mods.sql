/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T4-pat-mods.sql

--Student ID: 34479791
--Student Name: Wang Xijia


/* Comments for your marker:




*/

/*(a)*/
DROP TABLE roles;

CREATE TABLE roles (
    role_id int NOT NULL,
    role_name VARCHAR(50) NOT NULL
);

ALTER TABLE roles
    ADD CONSTRAINT role_pk PRIMARY KEY (
        role_id
    );

ALTER TABLE roles
    ADD CONSTRAINT role_uq UNIQUE (
        role_name
    );

INSERT INTO roles (
    role_id,
    role_name
) VALUES (
    1,
    'General'
);

INSERT INTO roles (
    role_id,
    role_name
) VALUES (
    2,
    'Administrator'
);

INSERT INTO roles (
    role_id,
    role_name
) VALUES (
    3,
    'Head Coach'
);

INSERT INTO roles (
    role_id,
    role_name
) VALUES (
    4,
    'Coach'
);

INSERT INTO roles (
    role_id,
    role_name
) VALUES (
    5,
    'Physician'
);

ALTER TABLE official
    ADD (
        role_id int
    );

ALTER TABLE official
    ADD CONSTRAINT fk_role FOREIGN KEY (
        role_id
    )
        REFERENCES roles(
            role_id
        );

UPDATE official
SET
    role_id = (
        SELECT
            role_id
        FROM
            roles
        WHERE
            upper(role_name) = upper('General')
    );

UPDATE official
SET
    role_id = (
        SELECT
            role_id
        FROM
            roles
        WHERE
            upper(role_name) = upper('Administrator')
    )
WHERE
    off_cdm IS NULL;

COMMIT;

SELECT
    *
FROM
    official;

desc official;

SELECT
    *
FROM
    roles;

desc roles;

/*(b)*/
DROP TABLE complaints;
DROP TABLE complaint_categories;

CREATE TABLE complaint_categories (
    category_id int,
    category_name VARCHAR(50) NOT NULL,
    demerit_points int NOT NULL
);

ALTER TABLE complaint_categories
    ADD CONSTRAINT complaint_categories_pk PRIMARY KEY (
        category_id
    );

ALTER TABLE complaint_categories
    ADD CONSTRAINT complaint_categories_uq UNIQUE (
        category_name
    );

INSERT INTO complaint_categories (
    category_id,
    category_name,
    demerit_points
) VALUES (
    1,
    'Late Arrival',
    1
);

INSERT INTO complaint_categories (
    category_id,
    category_name,
    demerit_points
) VALUES (
    2,
    'Rude Behaviour',
    2
);

INSERT INTO complaint_categories (
    category_id,
    category_name,
    demerit_points
) VALUES (
    3,
    'Poor Driving',
    2
);

INSERT INTO complaint_categories (
    category_id,
    category_name,
    demerit_points
) VALUES (
    4,
    'Failing to Assist',
    1
);


CREATE TABLE complaints (
    complaint_id int PRIMARY KEY,
    trip_id int NOT NULL,
    official_id NUMERIC(4) NOT NULL,
    category_id int NOT NULL,
    complaint_dt DATE NOT NULL,
    comment_ VARCHAR2(200),
    is_valid CHAR(1) DEFAULT 'N'
);

ALTER TABLE complaints
    ADD CONSTRAINT complaints_trip_fk FOREIGN KEY (
        trip_id
    )
        REFERENCES trip(
            trip_id
        );

ALTER TABLE complaints
    ADD CONSTRAINT complaints_official_fk FOREIGN KEY (
        official_id
    )
        REFERENCES official(
            off_id
        );

ALTER TABLE complaints
    ADD CONSTRAINT complaints_category_fk FOREIGN KEY (
        category_id
    )
        REFERENCES complaint_categories(
            category_id
        );

ALTER TABLE complaints
    ADD CONSTRAINT complaint_uq UNIQUE (
        trip_id,
        official_id
    );

COMMIT;

SELECT
    *
FROM
    complaints;

DESC complaints;

SELECT
    *
FROM
    complaint_categories;

DESC complaint_categories;
DROP TABLE IF EXISTS icc_world_cup;

CREATE TABLE
    icc_world_cup (
        Team_1 VARCHAR(20),
        Team_2 VARCHAR(20),
        Winner VARCHAR(20)
    );

INSERT INTO
    icc_world_cup
VALUES
    ('India', 'SL', 'India');

INSERT INTO
    icc_world_cup
VALUES
    ('SL', 'Aus', 'Aus');

INSERT INTO
    icc_world_cup
VALUES
    ('SA', 'Eng', 'Eng');

INSERT INTO
    icc_world_cup
VALUES
    ('Eng', 'NZ', 'NZ');

INSERT INTO
    icc_world_cup
VALUES
    ('Aus', 'India', 'India');

SELECT
    *
FROM
    icc_world_cup;
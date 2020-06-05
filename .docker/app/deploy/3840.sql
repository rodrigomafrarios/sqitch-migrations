BEGIN;

CREATE TABLE test_table (
    nickname  VARCHAR(512) PRIMARY KEY,
    password  VARCHAR(512) NOT NULL,
    timestamp DATETIME(6)  NOT NULL
);

COMMIT;
CREATE TABLE EMPLOYEES (
    ID BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    EMAIL VARCHAR(255) NOT NULL,
    ACTIVE BOOLEAN NOT NULL,
    CONSTRAINT name_unique UNIQUE (NAME)
);
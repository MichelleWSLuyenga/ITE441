DROP SCHEMA IF EXISTS ITE220_USERS;
CREATE SCHEMA IF NOT EXISTS ITE220_USERS;
USE ITE220_USERS;

CREATE TABLE IF NOT EXISTS USERS(
	ID INT AUTO_INCREMENT,
    USERNAME VARCHAR(100) NOT NULL,
    PASSWORD VARCHAR(200),
    FIRSTNAME VARCHAR(200),
    UNIQUE(USERNAME),
    PRIMARY KEY(ID)
);
INSERT INTO USERS(USERNAME, PASSWORD, FIRSTNAME) VALUES("admin", MD5("1234"), "Mintra Ruensuk");
-- SELECT * FROM USERS;
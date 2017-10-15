DROP SCHEMA IF EXISTS COMPANY;
CREATE SCHEMA IF NOT EXISTS COMPANY;
USE COMPANY;

CREATE TABLE IF NOT EXISTS EMPLOYEE (
	FNAME VARCHAR(30) NOT NULL,
    MINIT CHAR(1),
    LNAME VARCHAR(30),
    SSN CHAR(9) NOT NULL,
    BDATE DATE,
    ADDRESS VARCHAR(40),
    SEX CHAR,
    SALARY DECIMAL(10,2),
    SUPER_SSN CHAR(9),
    DNO INT NOT NULL,
    PRIMARY KEY(SSN)
);

CREATE TABLE IF NOT EXISTS DEPARTMENT (
	DNAME VARCHAR(20) NOT NULL,
    DNUMBER INT NOT NULL,
    MGR_SSN CHAR(9),
    MGR_START_DATE DATE,
    PRIMARY KEY(DNUMBER),
    UNIQUE(DNAME),
    FOREIGN KEY (MGR_SSN) REFERENCES EMPLOYEE(SSN)
);

ALTER TABLE EMPLOYEE ADD 
	FOREIGN KEY (SUPER_SSN) REFERENCES EMPLOYEE(SSN);
ALTER TABLE EMPLOYEE ADD
	FOREIGN KEY (DNO) REFERENCES DEPARTMENT(DNUMBER);
    
CREATE TABLE IF NOT EXISTS DEPT_LOCATIONS (
	DNUMBER INT NOT NULL,
    DLOCATION VARCHAR(40) NOT NULL,
    PRIMARY KEY (DLOCATION, DNUMBER),
    FOREIGN KEY (DNUMBER) REFERENCES DEPARTMENT(DNUMBER)
);

CREATE TABLE IF NOT EXISTS PROJECT (
	PNAME VARCHAR(30) NOT NULL,
    PNUMBER INT NOT NULL,
    PLOCATION VARCHAR(40) NOT NULL,
    DNUM INT NOT NULL,
    PRIMARY KEY(PNUMBER),
    FOREIGN KEY(DNUM) REFERENCES DEPARTMENT(DNUMBER)
);

CREATE TABLE IF NOT EXISTS WORKS_ON (
	ESSN CHAR(9) NOT NULL,
    PNO INT NOT NULL,
    HOURS DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (ESSN, PNO),
    FOREIGN KEY (ESSN) REFERENCES EMPLOYEE(SSN),
    FOREIGN KEY (PNO) REFERENCES PROJECT(PNUMBER)
);

CREATE TABLE IF NOT EXISTS DEPENDENT (
	ESSN CHAR(9) NOT NULL,
    DEPENDENT_NAME VARCHAR(30) NOT NULL,
    SEX CHAR,
    BDATE DATE,
    RELATIONSHIP VARCHAR(30) NOT NULL,
    PRIMARY KEY(ESSN,DEPENDENT_NAME),
    FOREIGN KEY (ESSN) REFERENCES EMPLOYEE(SSN)
);

insert into department values('Research', 5, null, null);
insert into department values('Administrator', 4, null, null);
insert into department values('Headquarters', 1, null, null);

insert into employee
values ('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, null, 5);

insert into employee
values ('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, null, 5);

update employee set super_ssn='333445555' where ssn='123456789';

update department set mgr_ssn='333445555' where dname='Research';

insert into dept_locations values(1, 'Houston');
insert into dept_locations values(4, 'Stafford');
insert into dept_locations values(5, 'Bellaire');
insert into dept_locations values(5, 'Sugarland');
insert into dept_locations values(5, 'Houston');

insert into project values('ProductX', 1, 'Bellaire', 5);
insert into project values('ProductY', 2, 'Sugarland', 5);
insert into project values('ProductZ', 3, 'Houston', 5);
insert into project values('Computerization', 10, 'Stafford', 4);
insert into project values('Reorganization', 20, 'Houston', 1);
insert into project values('Newbenefits', 30, 'Stafford', 4);

insert into works_on values('123456789', 1, 32.5);
insert into works_on values('123456789', 2, 7.5);
insert into works_on values('333445555', 3, 10);
insert into works_on values('333445555', 2, 10);
insert into works_on values('333445555', 10, 10);
insert into works_on values('333445555', 20, 10);


insert into dependent values('333445555', 'Alice', 'F', '1986-04-05', 'Daughter');
insert into dependent values('123456789', 'Michael', 'F', '1986-04-05', 'Daughter');








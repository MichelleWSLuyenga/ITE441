use company;
-- select * from department;
insert into employee
values ('Alicia', 
'J', 'Zelaya', '999887777', 
'1968-01-19', '3321 Castle, Spring, TX', 
'F', 25000, null, 4);
INSERT INTO employee
values ('Jennifer', 'S', 
'Wallace', '987654321','1941-06-20', 
'291 Berry, Bellaire, TX', 'F','43000',null,4);
insert into employee
values ('Ramesh','K', 'Narayan', 
'666884444', '1962-09-15', 
'291 Berry, Bellaire, TX', 'M', 
38000, '333445555', 5);
insert into employee
values ('Joyce','A','English', 
'453453453', '1972-07-31', 
'5631 Rice, Houston, TX', 'F', 
25000, '333445555', 5);
insert into employee
values ('Ahmad', 'V', 'Jabbar', 
'987987987', '1969-03-29', 
'980 Dallas, Houston, TX', 'M', 
25000, '987654321' , 4);
insert into employee
values ('James', 
'E', 'Borg', '888665555', 
'1937-11-10', '450 Stone, Houston, TX', 
'M', 55000, null, 1);

update employee
set super_ssn = '888665555'
where ssn = '333445555';

update employee
set super_ssn = '987654321'
where ssn = '999887777';

update employee
set super_ssn = '888665555'
where ssn = '987654321';








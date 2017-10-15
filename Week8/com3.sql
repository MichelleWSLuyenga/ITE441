 use company;
 
 #1.
-- select  *
-- from project, department
-- where dnum = dnumber
-- and dname = 'Research';

-- 2.
-- select *
-- from employee
-- where fname like 'J%';

-- 3.
-- select fname as firstname,
-- salary as max_salary
-- from employee
-- where salary in (select max(salary)
-- from employee)

#4.???????????
-- select fname, salary
-- from employee, department, project
-- where dno=dnumber
-- and dnumber=dnum
-- and pname='ProjectY'
-- and salary*0.10;

-- #5.
-- select fname, pname, hours
-- from employee, project, works_on
-- where dno=dnum
-- and pnumber=pno
-- order by hours;

#6.
-- select fname, lname
-- from employee, department, project, works_on
-- where dno=dnumber
-- and dnumber=5
-- and dnumber=dnum
-- and pname='ProductX'
-- and hours>10;

#7.
-- select fname, lname
-- from employee, dependent
-- where ssn=essn
-- and dependent_name=fname;

#8????
-- select fname, lname
-- from employee
-- where super_ssn=ssn
-- and ssn like 'Franklin_Wong';


















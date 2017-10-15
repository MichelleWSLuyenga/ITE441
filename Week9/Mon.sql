use company;

-- select fname, lname
-- from employee
-- where super_ssn is null;
-- 
-- #nested query

-- select *
-- from employee
-- where dno in (select dnumber from department
-- where dname = 'Research');


-- select * from employee department
-- where dno = dnumber and dname = 'Research';
-- Salary
-- select e.fname as employee_name, s.lname as supervisor_name,e.salary as my_salary
-- from employee as e, employee as s
-- where e.super_ssn=s.ssn and e.salary>30000;

-- select distinct essn
-- from works_on
-- where pno in (1, 2, 3);

-- select fname, lname, address
-- from (employee join department on dno=dnumber)
-- where dname='Research';
-- 
-- select fname, lname, address
-- from (employee join department)
-- where dname='Research';

-- select e.fname as employee_name,
--            s.fname as supervision_name
-- from employee as e left outer join
--          employee as s on e.super_ssn=s.ssn
         
select e.fname as employee_name,
           s.fname as supervision_name
from employee as e right outer join
         employee as s on e.super_ssn=s.ssn




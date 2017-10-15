use company;

-- SELECT SUM(Salary), MAX(Salary), MIN(Salary), AVG(Salary) 
-- FROM EMPLOYEE;

-- SELECT SUM(Salary) AS Total_Sal, MAX(Salary) AS Highest_Sal, MIN(Salary) AS Lowest_Sal, AVG(Salary) AS Average_Sal
-- FROM EMPLOYEE;

#Q20
-- SELECT SUM(Salary), MAX(Salary), MIN(Salary), AVG(Salary)
-- FROM (EMPLOYEE JOIN DEPARTMENT ON Dno=Dnumber)
-- WHERE Dname='Research';
-- 
#21
-- SELECT COUNT(*)
-- FROM EMPLOYEE;

#22
-- SELECT COUNT(*)
-- FROM EMPLOYEE, DEPARTMENT
-- WHERE DNO=DNUMBER AND DNAME='Research';

#Q24
-- SELECT Dno, DNAME, COUNT(*), AVG(Salary)
-- FROM EMPLOYEE join DEPARTMENT on dno=dnumber
-- GROUP BY Dno
-- ORDER BY DNAME;

#Q26   Not work!
-- select pnumber, pname, count(*)
-- from project, work_on
-- where pnumber=pno
-- group by pnumber, pname
-- having count(*) > 2;

# With command










use Abhidb;
CREATE TABLE EMPLOYEE3(empID INT PRIMARY KEY, Ename varchar(20) not null, Designation varchar(20) not null, Dept varchar(26),

Working_Hours VARCHAR(10), SALARY INTEGER(6));

#INSERTING DATAS INTO EMPLOYEE 2 TABLE

INSERT INTO EMPLOYEE3 VALUES

(1,'DERKANTA', 'ENGINEER', 'EE','8', '11900'),
(2,'Arnab', 'ENGINEER', 'bca','8', '17500'),
(3,'Abhi', 'database', 'cse','8', '11000'),
(4,'Akash', 'ENGINEER', 'bca','8', '11000'),
(5,'tiyasha', 'Admin', 'mca','8', '11200'),
(6,'Alka', 'Developer', 'cse','8', '11000'),
(7,'manisha', 'Developer', 'bca','8', '15800'),
(8,'rupali', 'database', 'csc','8', '19600'),
(9,'janwi', 'database', 'bca','8', '22000'),
(10,'Sakshi', 'ENGINEER', 'bca','8', '19000');
#aggeates function --count
select dept,count(dept)  As 'total emp in each dept' from EMPLOYEE3 group by dept;
#sum
select dept,sum(Working_Hours)  As 'total hours' from EMPLOYEE3 group by dept;
select dept,sum(Working_Hours)  As 'total hours' from EMPLOYEE3 where dept='bca';
select dept,sum(SALARY)  As 'total sal' from EMPLOYEE3 group by dept;
#avg
select dept,avg(SALARY)  As 'l avg sal' from EMPLOYEE3 group by dept;
#min 
select dept,min(SALARY)  As ' min   sal' from EMPLOYEE3 group by dept;
#max 
select dept,max(SALARY)  As 'max sal' from EMPLOYEE3 group by dept;
select max(salary) from employee3;
#having
Select dept,Sum(Working_Hours) as 'total hours' from EMPLOYEE3  group by dept having sum(Working_Hours)>15;

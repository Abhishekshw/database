use Abhidb;
create table emp1(ID NUMERIC(2),id_name varchar(10),
basic numeric(6),Designation varchar(10),age numeric(2));
alter table emp1 modify basic integer(6);
alter table emp1 modify ID integer(6);
alter table emp1 modify id_name varchar(15);
create table emp_trainee(Emp_id numeric(2),id_name varchar(10),basic numeric(6,2),Designation varchar(10),Age numeric(2));
insert into emp1 values(1,'Rohit',6700,'manager',28),
(2,'saroj',4700,'manager',28),
(3,'Priya',2500,'manager',24),
(4,'Rahul',6300,'manager',25),
(5,'Shyam',4500,'manager',28),
(6,'Raj',1000,'intern',19);
insert into emp_trainee select * from emp1;
select * from emp1,emp_trainee;
alter table emp1 Add Skills varchar(15) after age;
alter table emp1 Add DOJ date after Skills;
#
update emp1 set skills='java' where id=1;
update emp1 set skills='c++' where id=2;
update emp1 set skills='c' where id=3;
update emp1 set skills='python' where id=4;
update emp1 set skills='sql' where id=5;
update emp1 set skills='js' where id=6;
update emp1 set DOJ='2022-02-05' where id=1;
update emp1 set DOJ='2022-01-05' where id=2;
update emp1 set DOJ='2022-02-01' where id=3;
update emp1 set DOJ='2021-02-05' where id=4;
update emp1 set DOJ='2022-06-05' where id=5;
update emp1 set DOJ='2012-02-05' where id=6;
Alter Table emp_trainee modify Designation varchar(30);
update emp_trainee set Designation='it' where Designation ='manager';
Select * from emp1,emp_trainee;
delete from emp1
where Doj='2012-02-05';



use  Abhidb;
#creating table
create table emp(Eid int(7)not null unique,Ename varchar(15),sal int(6)not null,Dept_name varchar(10),Dept_no int(2));
#rename table
Alter table emp rename to employee;
#add atble
Alter table employee add hiredate   int;
# modify data type
Alter table employee modify  hiredate  varchar(20);
# adding values 
insert into employee value(001,'Abhishek',10000,'It',20,'4-jan-2008');
insert into employee value(002,'Shekhar',12000,'cs',15,'4-may-2008');
insert into employee value(003,'Subodh',15000,'It',20,'3-jan-2008');
insert into employee value(004,'pankaj ',15500,'PA',15,'28-jan-2003');
insert into employee value(005,'Manjit',18900,'officer',20,'4-mar-1992');
insert into employee value(006,'Sachin',10250,'Officer',15,'4-jan-2008');
# delete column
alter table employee DROP COLUMN hiredate;
truncate table employee;
drop table employee;




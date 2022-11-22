# create db
create database Abhidb;
use Abhidb;
create table Student(
id int primary key auto_increment,
sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(30) not null unique,
saddr varchar(50),
squalification varchar(10) not null,
sfees double,
sdob date,
sdept varchar(20)
);
# add new column
alter table Student ADD age int after sdob;
# modify datatype size
alter table Student MODIFY squalification varchar(20) not null;
#modify constraint
alter table Student MODIFY sfees double not null;
# drop column
alter table Student DROP COLUMN sdept;
# change column name
alter table Student CHANGE COLUMN age sage int;
# rename table name
alter table Student RENAME TO student_details;
# insert single row
insert into student_details values
(1,'Abhishek ',7003841768,'Abhi@gmail.com','kolkata','b.tech',1000.3,'1850-01-00',10);
# insert multiple rows
insert into student_details values
(2,'Babu',7278463874,'babu@gmail.com','delhi','MSC',1000.8,'1975-10-01',97),
(3,'sharma',82000288,'pal@gmail.com','kolkata','BE',1020.3,'1988-08-02',19),
(4,'Amup',834874288,'ganguli@gmail.com','delhi','B Tech',1700.3,'1597-07-03',13),
(5,'PUJA',88742288,'puja@gmail.com','pune','MCA',1902.3,'1988-06-04',65),
(6,'AVIJIT',834881458,'avijit@gmail.com','mumbai','BE',1450.3,'2001-05-05',29),
(7,'AKASH',834992288,'akash@gmail.com','goa','B Tech',1000.3,'1990-04-06',28),
(8,'ABHISHEK',834821188,'abhishek@gmail.com','darjeeling','MSc',1000.3,'1988-03-07',26),
(9,'BIDISHA',834824488,'bidi@gmail.com','jammu and kashmir','BE',1000.3,'1988-02-08',33),
(10,'TIYASA',834800288,'tiyasa@gmail.com','chennai','BSc',1000.3,'1979-12-09',40);
truncate table Student;
drop table Student;

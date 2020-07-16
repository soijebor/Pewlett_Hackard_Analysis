create table testTable (col1 varchar(10), col2 varchar(12), col3 int);
--CREATE TABLE testTaBLE (COL1 VARchar(10)) Sql is case insensitive
commit;

select * from testTable; --reads

--ANSI sql is the standard but its loosely followed. Each rdbms is a 

insert into testtable (col1,col2,col3) values ('a','b',1);

select * from testTable;

commit;
--rollback;

insert into testtable (col1,col2,col3) values ('a','b',2);
insert into testtable (col1,col2,col3) values ('a','b',3);
insert into testtable (col1,col2,col3) values ('a','b',4);
insert into testtable (col1,col2,col3) values ('a','b',5);

select * from testtable; --audit step

commit;

delete from testtable;
select * from testtable;
--oh no there goes the prod data
rollback;

truncate table testtable; --this is not rollbackable in most rdbms like sql
select * from testtable;
rollback;

--libraryManagementSystem
create table libraryUser (
	userId Serial Primary Key,
	FirstName varchar(15),
	LastName varchar(20),
	createDate Date,
	lastLogin Date,
	createdBy int,
	phone int 
	DOB Date,
	StreetNumber int,
	Street varchar (100),
	StateProvince varchar(75),
	Country varchar(5),
	Zip varchar(15)
);
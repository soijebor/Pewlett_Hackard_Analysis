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
Import random
Import datetime from datetime

# --libraryManagementSystem
# create table libraryUser (
# 	userId Serial Primary Key,
# 	FirstName varchar(15),
# 	LastName varchar(20),
# 	createDate Date,
# 	lastLogin Date,
# 	createdBy int,
# 	phone int 
# 	DOB Date,
# 	StreetNumber int,
# 	Street varchar (100),
# 	StateProvince varchar(75),
# 	Country varchar(5),
# 	Zip varchar(15)
# );

columnToInsert = ["FirstName","LastName","createDate"]
firstNameList = ["David","Shelly","Trish","Cory","Dan"]
timeNow = datetime.now()

sql = "insert into libraryUser ("

for column in columnToInsert:
    if column == columnToInsert[-1]:
        sql = sql + column + ")"
    else:
        sql = sql + column + ","

for i in range(0,len(firstNameList)):
    randomNumber = random.randiant(0,len(firstNameList))
    randomNumber2 = random.randiant(0,len(firstNameList))
    firstNmae = firstNameList[randomNumber]
    lastName = lastNameList[randomNumber2]
    sqlStatements.append( sqlBase + f" values ( '{firstName}', '{lastName}','{timeNow}');")
print(sqlStatements)
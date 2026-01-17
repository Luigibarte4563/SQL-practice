/*Selecting the table*/
SELECT * FROM tblemployees;

/*Selecting using LastName*/
SELECT * FROM tblemployees WHERE LastName = "Santos";

/*Conditional Operators*/
SELECT * FROM tblemployees WHERE Age >= 30;

/*Select ALL Employess EXCEPT if their Last Name is "Santos"*/
SELECT * FROM tblemployees WHERE NOT LastName = "Santos";

/*Select ALL Employees with the Last Name "Santos" and "Dela Cruz"*/
SELECT * FROM tblemployees WHERE LastName IN ("Santos", "Cruz");

/*Slect ALL Employees with the Last Name "Santos" and their age must be 30 and above*/
SELECT * FROM tblemployees WHERE LastName = "Santos" AND Age >= 18;

/*Select All Employees with the Last Name "Santos" or their age must be 30 and above*/
SELECT * FROM tblemployees WHERE LastName = "Santos" OR Age >= 18;
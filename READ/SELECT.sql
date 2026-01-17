/*Selecting the table*/
SELECT * FROM tblemployees;

/*Selecting using LastName*/
SELECT * FROM tblemployees WHERE LastName = "Santos";

/*Conditional Operators*/
SELECT * FROM tblemployees WHERE Age >= 30;

/*Selecting all Employess EXCEPT if their Last Name is "Santos"*/
SELECT * FROM tblemployees WHERE NOT LastName = "Santos";
/*this is for creating database*/
CREATE DATABASE dbskol;

/*this is for creating table*/
CREATE TABLE tblStudents(
	SID int primary key auto_increment,
    FirstName varchar(16) not null,
    LastName varchar(16) not null,
    PhoneNumber varchar(11),
    Schoolarship bool not null,
    DateEnrolled date not null
);

/*this is for insert data to table*/
INSERT INTO tblstudents (
	FirstName,
    LastName,
    PhoneNumber,
    Schoolarship,
    DateEnrolled
) VALUES (
	"Luigi",
    "Barte",
    "09334555678",
    TRUE,
    "2026-01-05"
), (
	"Lowi",
    "Bart",
    "09456837464",
    FALSE,
    "2026-01-10"
)
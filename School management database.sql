
use School;

create table Teachers (

insert into Teachers values('Ravi', 'Kumar','Mathematics','2018-01-06')
insert into Teachers values('Anita', 'Sharma','Science','2018-06-07')
insert into Teachers values('John', 'Due','English','2018-11-09')
insert into Teachers values('Meena', 'Gupta','Physics','2018-09-06')
insert into Teachers values('Arun', 'Singh','Chemistry','2018-10-09')


create table Classes (
ClassID int primary key identity(1,1),
ClassName varchar(20),
TeacherID int foreign key references Teachers(TeacherID)
);

insert into Classes values('Grade 6',1)
insert into Classes values('Grade 7',2)
insert into Classes values('Grade 8',3)
insert into Classes values('Grade 9',4)
insert into Classes values('Grade 10',5)


create table Students (
StudentID int primary key identity(1,1),
FirstName nvarchar(20),
LastName nvarchar(20),
DOB date,
Gender char(1),
ClassID int foreign key references Classes(ClassID)
);

insert into Students (FirstName, LastName, DOB, Gender, ClassID) values
('Suresh', 'Reddy', '2007-04-12', 'M', 1),
('Priya', 'Mehta', '2008-09-23', 'F', 2),
('Rahul', 'Verma', '2009-02-10', 'M', 3),
('Ananya', 'Sharma', '2010-11-05', 'F', 4),
('Karan', 'Malhotra', '2011-07-21', 'M', 5),
('Isha', 'Patel', '2007-12-15', 'F', 1),
('Vikram', 'Singh', '2008-05-18', 'M', 2),
('Neha', 'Gupta', '2009-09-30', 'F', 3),
('Arjun', 'Rao', '2010-03-14', 'M', 4),
('Simran', 'Kaur', '2011-08-25', 'F', 5);


create table Subjects (
SubjectID int primary key identity(1,1),
Subjectname varchar(20),
ClassID int foreign key references Classes(ClassID)
);

insert into Subjects (SubjectName, ClassID) values
('Mathematics', 1),
('Science', 1),
('English', 2),
('History', 3),
('Computer Science', 4),
('Physics', 5);


create table Fees (
FeeID int primary key identity(1,1),
StudentID int foreign key references Students(StudentID),
Amount decimal(10,2),
paymentDate date
);

insert into Fees (StudentID, Amount, PaymentDate) values
(1, 5000.00, '2024-04-01'),
(2, 5200.00, '2024-04-05'),
(3, 5000.00, '2024-04-10'),
(4, 5500.00, '2024-04-15'),
(5, 6000.00, '2024-04-20'),
(6, 5000.00, '2024-04-25'),
(7, 5200.00, '2024-04-28'),
(8, 5000.00, '2024-05-02'),
(9, 5500.00, '2024-05-06'),
(10, 6000.00, '2024-05-10');

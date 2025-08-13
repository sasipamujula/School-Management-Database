use School;

#List all students with their classname
SELECT s.FirstName, s.LastName, c.ClassName
FROM Students s
JOIN Classes c ON s.ClassID = c.ClassID;


#Find the total number of students in each class.
SELECT c.ClassName, COUNT(s.StudentID) AS TotalStudents
FROM Students s
JOIN Classes c ON s.ClassID = c.ClassID
GROUP BY c.ClassName;


#Show students who have paid fees above 2000.
SELECT s.FirstName, s.LastName, f.Amount
FROM Students s
JOIN Fees f ON s.StudentID = f.StudentID
WHERE f.Amount > 2000;


#Find the oldest student in the school.
SELECT TOP 1 FirstName, LastName, DOB
FROM Students
ORDER BY DOB ASC;


#Count how many male and female students are there.
SELECT Gender, COUNT(*) AS Count
FROM Students
GROUP BY Gender;


#Find students who have not paid any fees.
SELECT s.FirstName, s.LastName
FROM Students s
LEFT JOIN Fees f ON s.StudentID = f.StudentID
WHERE f.FeeID IS NULL;


#List students along with their teacher’s name.
SELECT s.FirstName AS StudentFirstName, 
       s.LastName AS StudentLastName,
       t.FirstName AS TeacherFirstName,
       t.LastName AS TeacherLastName
FROM Students s
JOIN Classes c ON s.ClassID = c.ClassID
JOIN Teachers t ON c.TeacherID = t.TeacherID;


#Find total fees collected per class.
SELECT c.ClassName, SUM(f.Amount) AS TotalFees
FROM Fees f
JOIN Students s ON f.StudentID = s.StudentID
JOIN Classes c ON s.ClassID = c.ClassID
GROUP BY c.ClassName;


Find the total number of subjects taught in each class
SELECT c.ClassName, COUNT(sub.SubjectID) AS TotalSubjects
FROM Classes c
JOIN Subjects sub ON c.ClassID = sub.ClassID
GROUP BY c.ClassName;


#Show the list of students who have not paid any fees
SELECT s.StudentID, s.FirstName, s.LastName
FROM Students s
LEFT JOIN Fees f ON s.StudentID = f.StudentID
WHERE f.FeeID IS NULL;
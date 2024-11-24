
use HighSchoolDB
go

-- 1. Show the number of students per zip code
SELECT ZipCode, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY ZipCode;

-- 2. Show a list of students who have already sent in the full tuition ($15,000)
SELECT FirstName, LastName, Grade, Class, TuitionReceived
FROM Students
WHERE TuitionReceived = 15000;

-- 3. Show a list of girls who have at least one sister in school with them
select s.LastName as SistersInSchool
from Students s
group by s.LastName, s.Address
having count(*) > 1




-- 4. Show the most popular favorite subject
SELECT TOP 1 FavoriteSubject, COUNT(*) AS SubjectCount
FROM Students
GROUP BY FavoriteSubject
ORDER BY SubjectCount DESC;

-- 5. Show a list of all students in the following format: LastName:FirstName-Grade(FavoriteSubject)
SELECT LastName + ': ' + FirstName + '-' + CAST(Grade AS VARCHAR(2)) + ' (' + FavoriteSubject + ')' AS StudentInfo
FROM Students;
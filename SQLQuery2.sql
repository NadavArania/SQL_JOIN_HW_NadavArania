USE University

-- Targil 2

SELECT c.CourseName, l.FirstName + ' ' + l.LastName as FullName FROM Courses c
FULL OUTER JOIN  Lecturer l ON c.LecturersId = l.Id
ORDER BY c.Id, l.LastName

-- Targil 3

SELECT c.CourseName FROM Courses c
LEFT JOIN  Lecturer l ON c.LecturersId = l.Id
WHERE C.LecturersId IS NOT NULL

-- Targil 4

SELECT l.FirstName + ' ' + l.LastName as FullName, c.CourseName FROM Lecturer l
LEFT JOIN Courses c ON l.Id = c.LecturersId

-- Targil 5

SELECT c.CourseName FROM Courses c
WHERE c.LecturersId IS NULL

-- Targil 6

SELECT l.FirstName + ' ' + l.LastName as FullName FROM Lecturer l
LEFT JOIN Courses c ON l.Id = c.LecturersId
WHERE LecturersId IS NULL

-- Targil 7

SELECT  c.CourseName + ' is the course and the lecturer is : ' + l.FirstName + ' ' + l.LastName as FullName  FROM Courses c
INNER JOIN Lecturer l ON c.LecturersId = l.Id
WHERE c.LecturersId IS NOT NULL 
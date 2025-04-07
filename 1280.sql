-- https://leetcode.com/problems/students-and-examinations/description/

SELECT Students.student_id, Students.student_name, Subjects.subject_name, COUNT(Examinations.subject_name) as attended_exams
FROM (Students CROSS JOIN Subjects) LEFT OUTER JOIN Examinations
ON (Examinations.student_id=Students.student_id AND Examinations.subject_name=Subjects.subject_name) OR Examinations.subject_name IS NULL
GROUP BY Students.student_id, Subjects.subject_name
ORDER BY Students.student_id, Subjects.subject_name;

-- https://leetcode.com/problems/project-employees-i/description/

SELECT project_id, ROUND(AVG(experience_years), 2) as average_years
FROM Project CROSS JOIN Employee
ON Project.employee_id=Employee.employee_id
GROUP BY project_id;

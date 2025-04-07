-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/

SELECT contest_id, ROUND(COUNT(CASE WHEN Register.user_id IS NOT NULL THEN Register.user_id END) / (SELECT COUNT(Users.user_id) FROM Users) * 100, 2) as percentage
FROM Users LEFT OUTER JOIN Register
ON Users.user_id=Register.user_id OR Register.user_id IS NULL
WHERE contest_id IS NOT NULL
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;

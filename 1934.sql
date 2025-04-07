-- https://leetcode.com/problems/confirmation-rate/description/

SELECT
    Signups.user_id,
    IF(action IS NOT NULL,
        -- Calculate the rate if not null
        COUNT(CASE WHEN action='confirmed' THEN Signups.user_id END) /
        COUNT(CASE WHEN action='confirmed' OR action='timeout' THEN Signups.user_id END),
        -- If null -> zero
        0
        ) as confirmation_rate
FROM Signups LEFT OUTER JOIN Confirmations
ON Signups.user_id=Confirmations.user_id OR Confirmations.user_id IS NULL
GROUP BY Signups.user_id;

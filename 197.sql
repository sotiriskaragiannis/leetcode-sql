SELECT Weather.id
FROM Weather CROSS JOIN Weather as Weather2 ON Weather2.recordDate = DATE_SUB(Weather.recordDate, INTERVAL 1 DAY)
WHERE Weather.temperature > Weather2.temperature;

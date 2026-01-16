-- View all reports
SELECT *
FROM user_reports
ORDER BY timestamp_created DESC;

-- View all reports submitted by a specific user
SELECT *
FROM user_reports
WHERE reporting_user_id = 992
ORDER BY timestamp_created DESC;

-- View all reports about a specific user
SELECT *
FROM user_reports
WHERE reported_user_id = 556
ORDER BY timestamp_created DESC;

-- View only open or in-review reports
SELECT *
FROM user_reports
WHERE current_status IN ('open', 'in_review')
ORDER BY timestamp_created DESC;

-- Count reports by status
SELECT current_status, COUNT(*)
FROM user_reports
GROUP BY current_status;

-- Insert a new user report
INSERT INTO user_reports (
    reported_user_id,
    reporting_user_id,
    report_reason,
    report_description
)
VALUES
    (556, 992, 'Harassment', 'User sent threatening messages.'),
    (102, 450, 'Spam', 'User repeatedly posted promotional links.'),
    (300, 120, 'Inappropriate Content', 'User shared offensive images.');

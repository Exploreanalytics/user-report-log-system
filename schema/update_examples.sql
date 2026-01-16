-- Move report into review
UPDATE user_reports
SET current_status = 'in_review',
    timestamp_updated = NOW()
WHERE report_id = 1;

-- Resolve a report
UPDATE user_reports
SET current_status = 'resolved',
    admin_notes = 'Issue verified. User warned.',
    timestamp_updated = NOW()
WHERE report_id = 2;

-- Dismiss a report
UPDATE user_reports
SET current_status = 'dismissed',
    admin_notes = 'No violation found.',
    timestamp_updated = NOW()
WHERE report_id = 3;

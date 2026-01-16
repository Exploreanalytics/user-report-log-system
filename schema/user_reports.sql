CREATE TABLE user_reports (
    report_id BIGSERIAL PRIMARY KEY,
    reported_user_id BIGINT NOT NULL,
    reporting_user_id BIGINT NOT NULL,
    report_reason VARCHAR(255) NOT NULL,
    report_description TEXT,
    timestamp_created TIMESTAMP DEFAULT NOW(),
    timestamp_updated TIMESTAMP DEFAULT NOW(),
    current_status VARCHAR(20) DEFAULT 'open',
    admin_notes TEXT,
    shared_to_reported_user BOOLEAN DEFAULT TRUE
);

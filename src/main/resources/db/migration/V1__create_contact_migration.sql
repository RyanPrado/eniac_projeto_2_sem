CREATE TABLE contact (
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50),
  email VARCHAR(512) NOT NULL,
  phone CHAR(13) NOT NULL,
  message VARCHAR(2048) NOT NULL,
  created_at DATETIME NOW
)
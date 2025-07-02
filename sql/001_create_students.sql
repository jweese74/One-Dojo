-- Students table holds core personal information
CREATE TABLE IF NOT EXISTS students (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('male', 'female', 'other') DEFAULT 'other',
    email VARCHAR(255) UNIQUE,
    -- Store password hashes so students can log in
    password_hash VARCHAR(255) NOT NULL,
    home_phone VARCHAR(50),
    cell_phone VARCHAR(50),
    mailing_address TEXT,
    medical_conditions TEXT,
    status ENUM('active', 'inactive') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

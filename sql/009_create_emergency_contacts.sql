-- Emergency contacts can be shared across students and may also be students
CREATE TABLE IF NOT EXISTS emergency_contacts (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    email VARCHAR(255),
    linked_student_id INT UNSIGNED DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_ec_linked_student FOREIGN KEY (linked_student_id) REFERENCES students(id)
        ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Join table associating students with emergency contacts
CREATE TABLE IF NOT EXISTS student_emergency_contacts (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student_id INT UNSIGNED NOT NULL,
    emergency_contact_id INT UNSIGNED NOT NULL,
    relationship VARCHAR(255) NOT NULL,
    CONSTRAINT fk_sec_student FOREIGN KEY (student_id) REFERENCES students(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_sec_contact FOREIGN KEY (emergency_contact_id) REFERENCES emergency_contacts(id)
        ON DELETE CASCADE,
    UNIQUE KEY uniq_student_contact (student_id, emergency_contact_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Roles define permission groups for students and other users
CREATE TABLE IF NOT EXISTS roles (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Link table connecting students to roles (many-to-many)
CREATE TABLE IF NOT EXISTS student_roles (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student_id INT UNSIGNED NOT NULL,
    role_id INT UNSIGNED NOT NULL,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_sr_student FOREIGN KEY (student_id) REFERENCES students(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_sr_role FOREIGN KEY (role_id) REFERENCES roles(id)
        ON DELETE CASCADE,
    UNIQUE KEY uniq_student_role (student_id, role_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

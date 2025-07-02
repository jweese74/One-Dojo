-- Many-to-many relationship between students and classes
CREATE TABLE IF NOT EXISTS student_class_assignments (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student_id INT UNSIGNED NOT NULL,
    class_id INT UNSIGNED NOT NULL,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_sca_student FOREIGN KEY (student_id) REFERENCES students(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_sca_class FOREIGN KEY (class_id) REFERENCES classes(id)
        ON DELETE CASCADE,
    UNIQUE KEY uniq_student_class (student_id, class_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

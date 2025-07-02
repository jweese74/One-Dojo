-- Many-to-many relationship between instructors and classes
CREATE TABLE IF NOT EXISTS class_instructors (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    class_id INT UNSIGNED NOT NULL,
    instructor_id INT UNSIGNED NOT NULL,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_ci_class FOREIGN KEY (class_id) REFERENCES classes(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_ci_instructor FOREIGN KEY (instructor_id) REFERENCES instructors(id)
        ON DELETE CASCADE,
    UNIQUE KEY uniq_class_instructor (class_id, instructor_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Track student progress through belts or levels
CREATE TABLE IF NOT EXISTS student_belt_progress (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student_id INT UNSIGNED NOT NULL,
    belt_level_id INT UNSIGNED NOT NULL,
    achieved_at DATE NOT NULL,
    notes TEXT,
    CONSTRAINT fk_sbp_student FOREIGN KEY (student_id) REFERENCES students(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_sbp_belt FOREIGN KEY (belt_level_id) REFERENCES belt_levels(id)
        ON DELETE CASCADE,
    UNIQUE KEY uniq_student_belt (student_id, belt_level_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create the database
CREATE DATABASE internship_management;

-- Use the database
USE internship_management;

-- Table to store student details
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    date_of_birth DATE,
    cgpa DECIMAL(3, 2) NOT NULL, -- For example: 3.75
    major VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table to store skills
CREATE TABLE skills (
    skill_id INT AUTO_INCREMENT PRIMARY KEY,
    skill_name VARCHAR(50) UNIQUE NOT NULL
);

-- Table to store projects
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE
);

-- Associative table to link students and skills (Many-to-Many)
CREATE TABLE student_skills (
    student_id INT,
    skill_id INT,
    PRIMARY KEY (student_id, skill_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id) ON DELETE CASCADE
);

-- Associative table to link students and projects (Many-to-Many)
CREATE TABLE student_projects (
    student_id INT,
    project_id INT,
    PRIMARY KEY (student_id, project_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (project_id) REFERENCES projects(project_id) ON DELETE CASCADE
);
-- Create the database
CREATE DATABASE internship_management;

-- Use the database
USE internship_management;

-- Table to store student details
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    date_of_birth DATE,
    cgpa DECIMAL(3, 2) NOT NULL, -- For example: 3.75
    major VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table to store skills
CREATE TABLE skills (
    skill_id INT AUTO_INCREMENT PRIMARY KEY,
    skill_name VARCHAR(50) UNIQUE NOT NULL
);

-- Table to store projects
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE
);

-- Associative table to link students and skills (Many-to-Many)
CREATE TABLE student_skills (
    student_id INT,
    skill_id INT,
    PRIMARY KEY (student_id, skill_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id) ON DELETE CASCADE
);

-- Associative table to link students and projects (Many-to-Many)
CREATE TABLE student_projects (
    student_id INT,
    project_id INT,
    PRIMARY KEY (student_id, project_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (project_id) REFERENCES projects(project_id) ON DELETE CASCADE
);

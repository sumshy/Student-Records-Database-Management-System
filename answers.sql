-- Create the database
CREATE DATABASE student_records_db;
USE student_records_db;

-- Table: students
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth DATE
);

-- Table: instructors
CREATE TABLE instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- Table: courses
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

-- Table: enrollments 
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


-- populating the data so that I can test
-- Insert sample students
INSERT INTO students (first_name, last_name, email, date_of_birth) VALUES
('Alice', 'Johnson', 'alice.johnson@gmail.com', '2002-05-10'),
('Brian', 'Otieno', 'brian.otieno@gmail.com', '2001-11-22'),
('Clara', 'Njeri', 'clara.njeri@gmail.com', '2003-01-15'),
('Daniel', 'Mwangi', 'daniel.mwangi@gmai.com', '2002-07-09'),
('Eva', 'Wanjiru', 'eva.wanjiru@gmail.com', '2003-03-30');

-- Insert sample instructors
INSERT INTO instructors (first_name, last_name, email) VALUES
('Sumaya', 'Abdul', 'sumayaabdul@gmail.com'),
('James', 'Omondi', 'james.omondi@gmail.com');

-- Insert sample courses
INSERT INTO courses (course_name, instructor_id) VALUES
('Database Systems', 1),
('Web Development', 1),
('Data Structures', 2),
('Operating Systems', 2);

-- Insert sample enrollments
INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(1, 2, 'B+'),
(2, 1, 'B'),
(2, 3, 'A-'),
(3, 2, 'C+'),
(4, 3, 'B'),
(5, 4, 'A');

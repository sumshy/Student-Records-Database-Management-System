# 🎓 Student Records Database Management System

Objective:
Design and implement a full-featured database using only MySQL.

What to do:

Choose a real-world use case (e.g., Library Management, Student Records, Clinic Booking System, Inventory Tracking, etc.)

Create a well-structured relational database using SQL.

Use SQL to create:

Tables with proper constraints (PK, FK, NOT NULL, UNIQUE)

Relationships (1-1, 1-M, M-M where needed)


## 📘 Project Description

This project is a complete relational database management system built using MySQL for managing student academic records. It models a real-world scenario where institutions track students, instructors, courses, and enrollment with performance (grades).


## 🎯 Features

- Students and Instructors tables with unique identifiers and constraints
- Courses linked to instructors (1-to-many relationship)
- Enrollments as a join table between students and courses (many-to-many relationship)
- Sample data for testing the database
- Views to simplify common queries
- ERD diagram for database structure
- Indexed fields to improve query performance
- A stored procedure to enroll a student (optional future enhancement)


## 🛠️ How to Set Up

1. Open **MySQL Workbench**
2. Run the following to create and use the database:


if you want to verify the tables you can just key in 

SHOW TABLES;
SELECT * FROM students;

## You can test the following too by keying in :
SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;



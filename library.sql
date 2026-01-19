CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

CREATE TABLE Book(
book_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
author VARCHAR(100),
category VARCHAR(50),
status VARCHAR(20)DEFAULT 'Available'
);

CREATE TABLE Member (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15)
);

CREATE TABLE Issue_Record (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

INSERT INTO Book (title, author, category)
VALUES
('DBMS', 'Korth', 'Education'),
('Operating Systems', 'Silberschatz', 'CS');

INSERT INTO Member (name, phone)
VALUES
('Rahul', '9876543210'),
('Anita', '9123456789');

SELECT * FROM Book;
SELECT * FROM Member;

INSERT INTO Book (title, author, category, status) VALUES
('DBMS', 'Korth', 'Education', 'Available'),
('Operating Systems', 'Silberschatz', 'CS', 'Available'),
('Computer Networks', 'Tanenbaum', 'CS', 'Available'),
('Data Structures', 'Mark Allen Weiss', 'CS', 'Available'),
('Algorithms', 'CLRS', 'CS', 'Available'),
('Software Engineering', 'Pressman', 'CS', 'Available'),
('Artificial Intelligence', 'Russell', 'AI', 'Available'),
('Machine Learning', 'Tom Mitchell', 'AI', 'Available'),
('Deep Learning', 'Goodfellow', 'AI', 'Available'),
('Python Programming', 'Guido', 'Programming', 'Available'),
('Java Programming', 'Herbert Schildt', 'Programming', 'Available'),
('C Programming', 'Dennis Ritchie', 'Programming', 'Available'),
('C++ Programming', 'Bjarne Stroustrup', 'Programming', 'Available'),
('Web Development', 'Duckett', 'Web', 'Available'),
('HTML & CSS', 'Duckett', 'Web', 'Available'),
('JavaScript', 'Flanagan', 'Web', 'Available'),
('ReactJS', 'Banks', 'Web', 'Available'),
('NodeJS', 'Cantelon', 'Web', 'Available'),
('MySQL Essentials', 'DuBois', 'Database', 'Available'),
('PostgreSQL', 'Douglas', 'Database', 'Available'),
('MongoDB', 'Kristina', 'Database', 'Available'),
('Cloud Computing', 'Buyya', 'Cloud', 'Available'),
('AWS Basics', 'Barr', 'Cloud', 'Available'),
('Azure Fundamentals', 'Microsoft', 'Cloud', 'Available'),
('DevOps', 'Kim', 'DevOps', 'Available'),
('Docker', 'Turnbull', 'DevOps', 'Available'),
('Kubernetes', 'Hightower', 'DevOps', 'Available'),
('Cyber Security', 'Stallings', 'Security', 'Available'),
('Ethical Hacking', 'EC-Council', 'Security', 'Available'),
('Cryptography', 'Kahn', 'Security', 'Available'),
('Big Data', 'Han', 'Data', 'Available'),
('Data Mining', 'Han', 'Data', 'Available'),
('Data Analytics', 'Wes McKinney', 'Data', 'Available'),
('Statistics', 'Gupta', 'Math', 'Available'),
('Discrete Mathematics', 'Rosen', 'Math', 'Available'),
('Linear Algebra', 'Strang', 'Math', 'Available'),
('Calculus', 'Thomas', 'Math', 'Available'),
('Physics', 'Resnick', 'Science', 'Available'),
('Chemistry', 'Brown', 'Science', 'Available'),
('Biology', 'Campbell', 'Science', 'Available'),
('Economics', 'Samuelson', 'Arts', 'Available'),
('Psychology', 'Baron', 'Arts', 'Available'),
('Sociology', 'Giddens', 'Arts', 'Available'),
('Philosophy', 'Plato', 'Arts', 'Available'),
('English Grammar', 'Wren & Martin', 'Language', 'Available'),
('French Basics', 'Collins', 'Language', 'Available'),
('German Basics', 'Langenscheidt', 'Language', 'Available'),
('Spanish Basics', 'McGraw Hill', 'Language', 'Available'),
('Public Speaking', 'Dale Carnegie', 'Personality', 'Available');

INSERT INTO Member (name, phone) VALUES
('Rahul', '9000000001'),
('Anita', '9000000002'),
('Suresh', '9000000003'),
('Priya', '9000000004'),
('Amit', '9000000005'),
('Neha', '9000000006'),
('Vikram', '9000000007'),
('Kiran', '9000000008'),
('Pooja', '9000000009'),
('Ramesh', '9000000010'),
('Sneha', '9000000011'),
('Arjun', '9000000012'),
('Meena', '9000000013'),
('Rohit', '9000000014'),
('Kavya', '9000000015'),
('Nikhil', '9000000016'),
('Divya', '9000000017'),
('Manoj', '9000000018'),
('Swathi', '9000000019'),
('Ajay', '9000000020'),
('Sanjay', '9000000021'),
('Rekha', '9000000022'),
('Varun', '9000000023'),
('Asha', '9000000024'),
('Deepak', '9000000025'),
('Bhavya', '9000000026'),
('Harish', '9000000027'),
('Ishita', '9000000028'),
('Gopal', '9000000029'),
('Lakshmi', '9000000030'),
('Surya', '9000000031'),
('Nandini', '9000000032'),
('Prakash', '9000000033'),
('Chitra', '9000000034'),
('Ravi', '9000000035'),
('Keerthi', '9000000036'),
('Mahesh', '9000000037'),
('Anjali', '9000000038'),
('Sathish', '9000000039'),
('Monika', '9000000040'),
('Rajesh', '9000000041'),
('Preethi', '9000000042'),
('Karthik', '9000000043'),
('Shalini', '9000000044'),
('Uday', '9000000045'),
('Suman', '9000000046'),
('Pankaj', '9000000047'),
('Ritu', '9000000048'),
('Yogesh', '9000000049'),
('Tanvi', '9000000050');

INSERT INTO Issue_Record (book_id, member_id, issue_date, return_date) VALUES
(1, 1, '2025-01-01', '2025-01-10'),
(2, 2, '2025-01-02', '2025-01-11'),
(3, 3, '2025-01-03', '2025-01-12'),
(4, 4, '2025-01-04', '2025-01-13'),
(5, 5, '2025-01-05', '2025-01-14'),
(6, 6, '2025-01-06', '2025-01-15'),
(7, 7, '2025-01-07', '2025-01-16'),
(8, 8, '2025-01-08', '2025-01-17'),
(9, 9, '2025-01-09', '2025-01-18'),
(10, 10, '2025-01-10', '2025-01-19'),
(11, 11, '2025-01-11', '2025-01-20'),
(12, 12, '2025-01-12', '2025-01-21'),
(13, 13, '2025-01-13', '2025-01-22'),
(14, 14, '2025-01-14', '2025-01-23'),
(15, 15, '2025-01-15', '2025-01-24'),
(16, 16, '2025-01-16', '2025-01-25'),
(17, 17, '2025-01-17', '2025-01-26'),
(18, 18, '2025-01-18', '2025-01-27'),
(19, 19, '2025-01-19', '2025-01-28'),
(20, 20, '2025-01-20', '2025-01-29'),
(21, 21, '2025-01-21', '2025-01-30'),
(22, 22, '2025-01-22', '2025-01-31'),
(23, 23, '2025-01-23', '2025-02-01'),
(24, 24, '2025-01-24', '2025-02-02'),
(25, 25, '2025-01-25', '2025-02-03'),
(26, 26, '2025-01-26', '2025-02-04'),
(27, 27, '2025-01-27', '2025-02-05'),
(28, 28, '2025-01-28', '2025-02-06'),
(29, 29, '2025-01-29', '2025-02-07'),
(30, 30, '2025-01-30', '2025-02-08'),
(31, 31, '2025-02-01', '2025-02-10'),
(32, 32, '2025-02-02', '2025-02-11'),
(33, 33, '2025-02-03', '2025-02-12'),
(34, 34, '2025-02-04', '2025-02-13'),
(35, 35, '2025-02-05', '2025-02-14'),
(36, 36, '2025-02-06', '2025-02-15'),
(37, 37, '2025-02-07', '2025-02-16'),
(38, 38, '2025-02-08', '2025-02-17'),
(39, 39, '2025-02-09', '2025-02-18'),
(40, 40, '2025-02-10', '2025-02-19'),
(41, 41, '2025-02-11', '2025-02-20'),
(42, 42, '2025-02-12', '2025-02-21'),
(43, 43, '2025-02-13', '2025-02-22'),
(44, 44, '2025-02-14', '2025-02-23'),
(45, 45, '2025-02-15', '2025-02-24'),
(46, 46, '2025-02-16', '2025-02-25'),
(47, 47, '2025-02-17', '2025-02-26'),
(48, 48, '2025-02-18', '2025-02-27'),
(49, 49, '2025-02-19', '2025-02-28'),
(50, 50, '2025-02-20', '2025-03-01');

CREATE TABLE Author (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50)
);

CREATE TABLE Publisher (
    publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    publisher_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE Category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Fine (
    fine_id INT PRIMARY KEY AUTO_INCREMENT,
    issue_id INT,
    amount DECIMAL(6,2),
    paid_status VARCHAR(10) DEFAULT 'Unpaid',
    FOREIGN KEY (issue_id) REFERENCES Issue_Record(issue_id)
);

ALTER TABLE Book
ADD author_id INT,
ADD publisher_id INT,
ADD category_id INT,
ADD FOREIGN KEY (author_id) REFERENCES Author(author_id),
ADD FOREIGN KEY (publisher_id) REFERENCES Publisher(publisher_id),
ADD FOREIGN KEY (category_id) REFERENCES Category(category_id);

INSERT INTO Author (author_name, nationality) VALUES
('Korth', 'USA'),
('Silberschatz', 'USA'),
('Tanenbaum', 'Netherlands'),
('Mark Allen Weiss', 'USA'),
('CLRS', 'USA'),
('Pressman', 'USA'),
('Russell', 'USA'),
('Tom Mitchell', 'USA'),
('Goodfellow', 'Canada'),
('Guido', 'Netherlands'),
('Herbert Schildt', 'USA'),
('Dennis Ritchie', 'USA'),
('Bjarne Stroustrup', 'Denmark'),
('Jon Duckett', 'UK'),
('David Flanagan', 'USA'),
('Alex Banks', 'USA'),
('Mario Casciaro', 'Italy'),
('Paul DuBois', 'USA'),
('Douglas', 'USA'),
('Kristina Chodorow', 'USA'),
('Rajkumar Buyya', 'Australia'),
('Jeff Barr', 'USA'),
('Microsoft', 'USA'),
('Gene Kim', 'USA'),
('Nigel Poulton', 'UK'),
('Kelsey Hightower', 'USA'),
('William Stallings', 'USA'),
('EC-Council', 'Global'),
('Thomas H. Cormen', 'USA'),
('Dale Carnegie', 'USA');

INSERT INTO Publisher (publisher_name, country) VALUES
('Pearson', 'USA'),
('McGraw Hill', 'USA'),
('OReilly', 'USA'),
('Springer', 'Germany'),
('Wiley', 'USA'),
('Oxford Press', 'UK'),
('Cambridge Press', 'UK'),
('MIT Press', 'USA'),
('Packt', 'UK'),
('Elsevier', 'Netherlands'),
('Apress', 'USA'),
('Addison-Wesley', 'USA'),
('PHI Learning', 'India'),
('Cengage', 'USA'),
('Pearson India', 'India'),
('BPB Publications', 'India'),
('TMH', 'India'),
('No Starch Press', 'USA'),
('Sams Publishing', 'USA'),
('HarperCollins', 'USA');

INSERT INTO Category (category_name) VALUES
('Education'),
('Computer Science'),
('Programming'),
('Web Development'),
('Database'),
('Artificial Intelligence'),
('Machine Learning'),
('Cloud Computing'),
('DevOps'),
('Cyber Security'),
('Data Science'),
('Mathematics'),
('Science'),
('Arts'),
('Personality Development');

UPDATE Book SET author_id = 1, publisher_id = 1, category_id = 1 WHERE book_id = 1;
UPDATE Book SET author_id = 2, publisher_id = 2, category_id = 2 WHERE book_id = 2;
UPDATE Book SET author_id = 3, publisher_id = 3, category_id = 2 WHERE book_id = 3;
UPDATE Book SET author_id = 4, publisher_id = 4, category_id = 2 WHERE book_id = 4;
UPDATE Book SET author_id = 5, publisher_id = 5, category_id = 2 WHERE book_id = 5;
UPDATE Book SET author_id = 6, publisher_id = 6, category_id = 2 WHERE book_id = 6;
UPDATE Book SET author_id = 7, publisher_id = 7, category_id = 6 WHERE book_id = 7;
UPDATE Book SET author_id = 8, publisher_id = 8, category_id = 7 WHERE book_id = 8;
UPDATE Book SET author_id = 9, publisher_id = 9, category_id = 6 WHERE book_id = 9;
UPDATE Book SET author_id = 10, publisher_id = 10, category_id = 3 WHERE book_id = 10;

UPDATE Book
SET author_id = (book_id % 30) + 1,
    publisher_id = (book_id % 20) + 1,
    category_id = (book_id % 15) + 1
WHERE book_id > 10;

INSERT INTO Fine (issue_id, amount, paid_status) VALUES
(1, 50.00, 'Paid'),
(2, 30.00, 'Unpaid'),
(3, 25.00, 'Paid'),
(4, 40.00, 'Unpaid'),
(5, 20.00, 'Paid'),
(6, 35.00, 'Unpaid'),
(7, 60.00, 'Paid'),
(8, 45.00, 'Unpaid'),
(9, 15.00, 'Paid'),
(10, 55.00, 'Unpaid'),
(11, 30.00, 'Paid'),
(12, 25.00, 'Paid'),
(13, 40.00, 'Unpaid'),
(14, 20.00, 'Paid'),
(15, 50.00, 'Unpaid'),
(16, 45.00, 'Paid'),
(17, 35.00, 'Paid'),
(18, 60.00, 'Unpaid'),
(19, 25.00, 'Paid'),
(20, 40.00, 'Unpaid');

SELECT book_id, author_id, publisher_id, category_id FROM Book;

UPDATE Book SET author_id = 1, publisher_id = 1, category_id = 1 WHERE book_id = 1;
UPDATE Book SET author_id = 2, publisher_id = 2, category_id = 2 WHERE book_id = 2;
UPDATE Book SET author_id = 3, publisher_id = 3, category_id = 2 WHERE book_id = 3;
UPDATE Book SET author_id = 4, publisher_id = 4, category_id = 2 WHERE book_id = 4;
UPDATE Book SET author_id = 5, publisher_id = 5, category_id = 2 WHERE book_id = 5;
UPDATE Book SET author_id = 6, publisher_id = 6, category_id = 2 WHERE book_id = 6;
UPDATE Book SET author_id = 7, publisher_id = 7, category_id = 6 WHERE book_id = 7;
UPDATE Book SET author_id = 8, publisher_id = 8, category_id = 7 WHERE book_id = 8;
UPDATE Book SET author_id = 9, publisher_id = 9, category_id = 6 WHERE book_id = 9;

ALTER TABLE Book
MODIFY author_id INT NOT NULL,
MODIFY publisher_id INT NOT NULL,
MODIFY category_id INT NOT NULL;

SELECT COUNT(*) FROM Book
WHERE author_id IS NULL
   OR publisher_id IS NULL
   OR category_id IS NULL;

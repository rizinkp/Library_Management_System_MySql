create database Library;

use Library;

#1. Branch Branch_no - Set as PRIMARY KEY Manager_Id Branch_address Contact_no 
CREATE TABLE Branch 
(
Branch_No int auto_increment PRIMARY KEY,
Manager_Id int not null, 
Branch_Address varchar(100), 
Contact_No varchar(15) not null
);

desc Branch;

INSERT INTO Branch (Manager_Id, Branch_Address, Contact_No) 
VALUES 
(101, '123 Main St, New York, NY', '212-555-1234'),
(102, '456 Elm St, Los Angeles, CA', '310-555-5678'),
(103, '789 Oak St, Chicago, IL', '312-555-9876'),
(104, '321 Maple St, Houston, TX', '713-555-4321'),
(105, '654 Pine St, Phoenix, AZ', '602-555-8765'),
(106, '987 Cedar St, Philadelphia, PA', '215-555-3456'),
(107, '159 Birch St, San Antonio, TX', '210-555-6789'),
(108, '753 Walnut St, San Diego, CA', '619-555-4567'),
(109, '852 Cherry St, Dallas, TX', '214-555-7890'),
(110, '951 Ash St, San Jose, CA', '408-555-2345');

select * from Branch;

#2. Employee Emp_Id – Set as PRIMARY KEY Emp_name Position Salary Branch_no - Set as FOREIGN KEY and it refer Branch_no in Branch table.
create table Employee 
(
Emp_Id int auto_increment PRIMARY KEY,
Emp_Name varchar(50) not null, 
Position varchar(30), 
Salary bigint,
Branch_No int, 
foreign key(Branch_No) references Branch(Branch_No)
);

desc Employee;

INSERT INTO Employee (Emp_Name, Position, Salary, Branch_No) 
VALUES
('Alice Johnson', 'Manager', 90000, 1),
('Bob Smith', 'Assistant Manager', 75000, 1),
('Charlie Davis', 'Sales Executive', 50000, 2),
('Diana White', 'HR Specialist', 60000, 2),
('Ethan Brown', 'IT Support', 55000, 3),
('Fiona Green', 'Receptionist', 35000, 3),
('George Hall', 'Branch Manager', 95000, 4),
('Hannah Moore', 'Accountant', 70000, 4),
('Ian Clark', 'Marketing Specialist', 65000, 5),
('Jessica Adams', 'Clerk', 40000, 5),
('Kevin Turner', 'Developer', 80000, 6),
('Laura Scott', 'QA Engineer', 70000, 6),
('Michael Lee', 'Project Manager', 120000, 7),
('Natalie Young', 'Office Assistant', 30000, 7),
('Oscar Harris', 'Logistics Coordinator', 60000, 8),
('Pauline Martinez', 'Customer Support', 45000, 8),
('Quinn Walker', 'Network Engineer', 85000, 9),
('Rachel Robinson', 'Software Engineer', 95000, 9),
('Steve Edwards', 'Business Analyst', 85000, 10),
('Tina Lopez', 'Technical Writer', 65000, 10),
('Alice Williams', 'Software Engineer', 80000, 1),
('Bob Martin', 'Data Analyst', 75000, 1),
('Charlie Brown', 'HR Manager', 70000, 1),
('Diana Green', 'Product Manager', 85000, 1);

select * from Employee;

#3. Books ISBN - Set as PRIMARY KEY Book_title Category Rental_Price Status [Give yes if book available and no if book not available] Author Publisher. 
create table Book
(
ISBN int auto_increment PRIMARY KEY, 
Book_Title varchar(50) not null, 
Category varchar(50), 
Rental_Price int not null, 
Availability_Status varchar(20), 
Author varchar(50), 
Publisher varchar(50)
);

desc Book;

INSERT INTO Book (Book_Title, Category, Rental_Price, Availability_Status, Author, Publisher)
VALUES
('The Great Gatsby', 'Fiction', 100, 'Yes', 'F. Scott Fitzgerald', 'Scribner'),
('To Kill a Mockingbird', 'Fiction', 120, 'No', 'Harper Lee', 'J.B. Lippincott & Co.'),
('1984', 'Dystopian', 150, 'Yes', 'George Orwell', 'Secker & Warburg'),
('Pride and Prejudice', 'Romance', 90, 'Yes', 'Jane Austen', 'T. Egerton'),
('Moby Dick', 'Adventure', 130, 'No', 'Herman Melville', 'Harper & Brothers'),
('The Catcher in the Rye', 'Fiction', 110, 'Yes', 'J.D. Salinger', 'Little, Brown and Company'),
('The Hobbit', 'Fantasy', 140, 'Yes', 'J.R.R. Tolkien', 'George Allen & Unwin'),
('War and Peace', 'Historical Fiction', 200, 'No', 'Leo Tolstoy', 'The Russian Messenger'),
('Crime and Punishment', 'Psychological Fiction', 160, 'Yes', 'Fyodor Dostoevsky', 'The Russian Messenger'),
('Brave New World', 'Dystopian', 150, 'Yes', 'Aldous Huxley', 'Chatto & Windus'),
('The Alchemist', 'Adventure', 80, 'No', 'Paulo Coelho', 'HarperTorch'),
('The Odyssey', 'Epic Poetry', 100, 'Yes', 'Homer', 'Ancient Greece'),
('A Tale of Two Cities', 'Historical Fiction', 120, 'Yes', 'Charles Dickens', 'Chapman & Hall'),
('Les Misérables', 'Drama', 180, 'No', 'Victor Hugo', 'A. Lacroix, Verboeckhoven & Cie'),
('The Lord of the Rings', 'Fantasy', 200, 'Yes', 'J.R.R. Tolkien', 'George Allen & Unwin'),
('Harry Potter', 'Fantasy', 150, 'Yes', 'J.K. Rowling', 'Bloomsbury'),
('Frankenstein', 'Horror', 100, 'No', 'Mary Shelley', 'Lackington, Hughes, Harding, Mavor & Jones'),
('Dracula', 'Horror', 110, 'Yes', 'Bram Stoker', 'Archibald Constable and Company'),
('The Divine Comedy', 'Epic Poetry', 140, 'Yes', 'Dante Alighieri', '14th Century Florence'),
('The Kite Runner', 'Drama', 130, 'No', 'Khaled Hosseini', 'Riverhead Books'),
('A Brief History of Time', 'Science', 150, 'Yes', 'Stephen Hawking', 'Bantam Books'),
('The History of the Ancient World', 'History', 200, 'Yes', 'Susan Wise Bauer', 'Norton & Company'),
('The Little Prince', 'Fiction', 20, 'Yes', 'Antoine de Saint-Exupéry', 'Harcourt Brace Jovanovich'),
('The Old Man and the Sea', 'Fiction', 18, 'Yes', 'Ernest Hemingway', 'Charles Scribner\'s Sons'),
('Animal Farm', 'Political Satire', 22, 'Yes', 'George Orwell', 'Secker & Warburg');

select * from Book;

#4. Customer Customer_Id - Set as PRIMARY KEY Customer_name Customer_address Reg_date.
create table Customer 
(
Customer_Id int auto_increment PRIMARY KEY, 
Customer_Name varchar(50) not null, 
Customer_Address varchar(100), 
Reg_Date date
); 

desc Customer;

INSERT INTO Customer (Customer_Name, Customer_Address, Reg_Date)
VALUES
('Alice Johnson', '123 Main St, New York, NY', '2024-01-15'),
('Bob Smith', '456 Elm St, Los Angeles, CA', '2024-01-20'),
('Charlie Davis', '789 Oak St, Chicago, IL', '2024-01-25'),
('Diana White', '321 Maple St, Houston, TX', '2024-01-30'),
('Ethan Brown', '654 Pine St, Phoenix, AZ', '2024-02-05'),
('Fiona Green', '987 Cedar St, Philadelphia, PA', '2024-02-10'),
('George Hall', '159 Birch St, San Antonio, TX', '2024-02-15'),
('Hannah Moore', '753 Walnut St, San Diego, CA', '2024-02-20'),
('Ian Clark', '852 Cherry St, Dallas, TX', '2024-02-25'),
('Jessica Adams', '951 Ash St, San Jose, CA', '2024-03-01'),
('Kevin Turner', '123 Maple Ave, Seattle, WA', '2024-03-05'),
('Laura Scott', '456 Oak Ave, Miami, FL', '2024-03-10'),
('Michael Lee', '789 Cedar Ave, Denver, CO', '2024-03-15'),
('Natalie Young', '321 Birch Ave, Portland, OR', '2024-03-20'),
('Oscar Harris', '654 Walnut Ave, Atlanta, GA', '2024-03-25'),
('Pauline Martinez', '987 Cherry Ave, Boston, MA', '2024-03-30'),
('Quinn Walker', '159 Pine Ave, Austin, TX', '2024-04-05'),
('Rachel Robinson', '753 Cedar Ave, Sacramento, CA', '2024-04-10'),
('Steve Edwards', '852 Birch Ave, Tampa, FL', '2024-04-15'),
('Tina Lopez', '951 Oak Ave, Orlando, FL', '2024-04-20'),
('Uma Patel', '123 Ash Ave, Las Vegas, NV', '2024-04-25'),
('Victor Cruz', '456 Maple Blvd, San Francisco, CA', '2024-05-01'),
('Wendy Carter', '789 Elm Blvd, San Antonio, TX', '2024-05-05'),
('Xavier Hughes', '321 Pine Blvd, Chicago, IL', '2024-05-10'),
('Yvonne Price', '654 Birch Blvd, Dallas, TX', '2024-05-15'),
('Zachary King', '987 Cedar Blvd, Houston, TX', '2024-05-20'),
('Amy Rogers', '159 Cherry Blvd, Phoenix, AZ', '2024-05-25'),
('Brian Bell', '753 Walnut Blvd, New York, NY', '2024-05-30'),
('Catherine Evans', '852 Ash Blvd, Los Angeles, CA', '2024-06-05'),
('Daniel Taylor', '951 Maple Blvd, Philadelphia, PA', '2024-06-10'),
('John Doe', '123 Elm Street, Springfield', '2020-11-25'),
('Jane Smith', '456 Oak Avenue, Rivertown', '2021-10-15'),
('Michael Johnson', '789 Pine Lane, Greenfield', '2021-09-10'),
('Emily Davis', '321 Maple Drive, Lakeside', '2021-08-05'),
('David Wilson', '654 Cedar Road, Hilltop', '2020-07-20'),
('Sarah Brown', '987 Birch Street, Valleyview', '2019-06-30'),
('Chris Taylor', '123 Willow Court, Brookville', '2021-05-25'),
('Amanda Miller', '456 Aspen Way, Riverbend', '2021-04-15'),
('Brian Anderson', '789 Redwood Terrace, Mountaintop', '2021-03-10'),
('Laura Martinez', '321 Sequoia Circle, Seaside', '2018-02-05');

select * from Customer;

#5. IssueStatus Issue_Id - Set as PRIMARY KEY Issued_cust – Set as FOREIGN KEY and it refer customer_id in CUSTOMER table Issued_book_name Issue_date Isbn_book – Set as FOREIGN KEY and it should refer isbn in BOOKS table.
create table IssueStatus 
(
Issue_Id int auto_increment PRIMARY KEY, 
Customer_Id int,
FOREIGN KEY(Customer_Id) references CUSTOMER(Customer_Id),  
Issued_Book_Name varchar(50) not null, 
Issue_Date date not null, 
ISBN_Book int,
FOREIGN KEY(ISBN_Book) references Book(ISBN)
);

desc IssueStatus;

INSERT INTO IssueStatus (Customer_Id, Issued_Book_Name, Issue_Date, ISBN_Book)
VALUES
(1, 'The Great Gatsby', '2024-01-15', 1),
(2, 'To Kill a Mockingbird', '2024-01-20', 2),
(3, '1984', '2024-01-25', 3),
(4, 'Pride and Prejudice', '2024-01-30', 4),
(5, 'Moby Dick', '2024-02-05', 5),
(6, 'The Catcher in the Rye', '2024-02-10', 6),
(7, 'The Hobbit', '2024-02-15', 7),
(8, 'War and Peace', '2024-02-20', 8),
(9, 'Crime and Punishment', '2024-02-25', 9),
(10, 'Brave New World', '2024-03-01', 10),
(11, 'The Alchemist', '2024-03-05', 11),
(12, 'The Odyssey', '2024-03-10', 12),
(13, 'A Tale of Two Cities', '2024-03-15', 13),
(14, 'Les Misérables', '2024-03-20', 14),
(15, 'The Lord of the Rings', '2024-03-25', 15),
(16, 'Harry Potter and the Sorcerer\'s Stone', '2024-03-30', 16),
(17, 'Frankenstein', '2024-04-05', 17),
(18, 'Dracula', '2024-04-10', 18),
(19, 'The Divine Comedy', '2024-04-15', 19),
(20, 'The Kite Runner', '2024-04-20', 20),
(1, 'The Great Gatsby', '2023-06-05', 1),
(3, 'To Kill a Mockingbird', '2023-06-15', 5),
(5, 'Moby Dick', '2023-07-20', 8);

select * from IssueStatus;

#6. ReturnStatus Return_Id - Set as PRIMARY KEY Return_cust Return_book_name Return_date Isbn_book2 - Set as FOREIGN KEY and it should refer isbn in BOOKS table Display all the tables.
create table ReturnStatus 
(
Return_Id int PRIMARY KEY, 
Customer_Id int,
FOREIGN KEY(Customer_Id) references CUSTOMER(Customer_Id),  
Return_Book_Name varchar(50), 
Return_Date date not null, 
ISBN_Book int,
FOREIGN KEY(ISBN_Book) references Book(ISBN)
);

desc ReturnStatus;

INSERT INTO ReturnStatus (Return_Id, Customer_Id, Return_Book_Name, Return_Date, ISBN_Book)
VALUES
(1, 1, 'The Great Gatsby', '2024-02-10', 1),
(2, 2, 'To Kill a Mockingbird', '2024-02-15', 2),
(3, 3, '1984', '2024-02-20', 3),
(4, 4, 'Pride and Prejudice', '2024-02-25', 4),
(5, 5, 'Moby Dick', '2024-03-01', 5),
(6, 6, 'The Catcher in the Rye', '2024-03-05', 6),
(7, 7, 'The Hobbit', '2024-03-10', 7),
(8, 8, 'War and Peace', '2024-03-15', 8),
(9, 9, 'Crime and Punishment', '2024-03-20', 9),
(10, 10, 'Brave New World', '2024-03-25', 10),
(11, 11, 'The Alchemist', '2024-03-30', 11),
(12, 12, 'The Odyssey', '2024-04-05', 12),
(13, 13, 'A Tale of Two Cities', '2024-04-10', 13),
(14, 14, 'Les Misérables', '2024-04-15', 14),
(15, 15, 'The Lord of the Rings', '2024-04-20', 15);

select * from ReturnStatus;

#1. Retrieve the book title, category, and rental price of all available books.
select Book_Title, Category, Rental_Price from Book;


#2. List the employee names and their respective salaries in descending order of salary.
select Emp_Name, Salary from Employee order by Salary desc;

#3. Retrieve the book titles and the corresponding customers who have issued those books.
select B.Book_Title, C.*, IST.Issue_Date from IssueStatus IST join Customer C on C.Customer_Id = IST.Customer_Id join Book B on B.ISBN = IST.ISBN_Book;


#4. Display the total count of books in each category. 
select Category, Count(Category) as BooksCount from Book group by Category;

#5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
select Emp_Name, Position from Employee where Salary > 50000;


#6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 
select Customer_Name, Reg_Date, Issue_Date from Customer C LEFT JOIN IssueStatus IST on IST.Customer_Id = C.Customer_Id 
where Reg_Date < '2022-01-01' and IST.Customer_Id is null;

#7. Display the branch numbers and the total count of employees in each branch. 
select Branch_No, Count(Branch_No) as 'No. of Employee in Each Branch' from Employee Group By Branch_No;


#8. Display the names of customers who have issued books in the month of June 2023. 
select C.Customer_name, IST.Issue_Date from Customer C join IssueStatus IST on IST.Customer_Id = C.Customer_Id where IST.Issue_Date between '2023-06-01' and '2023-06-30';

#9. Retrieve book_title from book table containing history. 
select Book_Title from Book where Book_Title like '%History%';


#10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees 
select Branch_No, Count(emp_id) as 'count of employees' from Employee Group By Branch_No having count(emp_id) > 5;

#11. Retrieve the names of employees who manage branches and their respective branch addresses. 
select E.Emp_Name, E.Position, B.Branch_Address from Employee E join Branch B on B.Branch_No = E.Branch_No where E.Position = 'Branch Manager';


#12. Display the names of customers who have issued books with a rental price higher than Rs. 25.
select C.Customer_Name, B.Rental_Price from Customer C join IssueStatus IST on IST.Customer_Id = C.Customer_Id join Book B on B.ISBN = IST.ISBN_Book 
where B.Rental_Price > 25;
 
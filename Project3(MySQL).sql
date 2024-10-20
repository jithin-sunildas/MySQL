CREATE DATABASE library;
USE library;

CREATE TABLE branch (
    branchno INT PRIMARY KEY,
    managerid INT,
    branch_address VARCHAR(20),
    cntctno VARCHAR(15)
); 
ALTER TABLE branch MODIFY branch_address VARCHAR(100);
INSERT INTO branch (branchno, managerid, branch_address, cntctno) VALUES
(101, 1, 'MG Road, Bengaluru', '080-12345678'),
(102, 2, 'Park St, Kolkata', '033-23456789'),
(103, 3, 'Anna Salai, Chennai', '044-34567890'),
(104, 4, 'Connaught Pl, Delhi', '011-45678901'),
(105, 5, 'Marine Dr, Mumbai', '022-56789012'),
(106, 6, 'Banjara Hills, Hyd', '040-67890123'),
(107, 7, 'Sector 17, Chandigarh', '0172-78901234'),
(108, 8, 'Koregaon Pk, Pune', '020-89012345'),
(109, 9, 'Hazratganj, Lucknow', '0522-90123456'),
(110, 10, 'Rajarhat, Kolkata', '033-01234567'),
(111, 11, 'Vashi, Navi Mumbai', '022-12345678'),
(112, 12, 'Gomti Ngr, Lucknow', '0522-23456789'),
(113, 13, 'Indiranagar, Blr', '080-34567890'),
(114, 14, 'Salt Lake, Kolkata', '033-45678901'),
(115, 15, 'T Nagar, Chennai', '044-56789012'),
(116, 16, 'Jubilee Hills, Hyd', '040-67890123'),
(117, 17, 'DLF Ph 3, Gurgaon', '0124-78901234'),
(118, 18, 'Andheri W, Mumbai', '022-89012345'),
(119, 19, 'BTM Layout, Blr', '080-90123456'),
(120, 20, 'Alkapuri, Vadodara', '0265-01234567'),
(121, 21, 'Civil Lines, Jaipur', '0141-12345678'),
(122, 22, 'Sector 62, Noida', '0120-23456789'),
(123, 23, 'Khar W, Mumbai', '022-34567890'),
(124, 24, 'Hitech City, Hyd', '040-45678901'),
(125, 25, 'Jayanagar, Blr', '080-56789012');

CREATE TABLE emp (
    empid INT PRIMARY KEY,
    empname VARCHAR(20),
    pstn VARCHAR(20),
    salary INT,
    brnchno INT,
    FOREIGN KEY (brnchno) REFERENCES branch(branchno)
);
INSERT INTO emp (empid, empname, pstn, salary, brnchno) VALUES
(1, 'John Doe', 'Manager', 50000, 101),
(2, 'Aiko Tanaka', 'Analyst', 45000, 102),
(3, 'Carlos Mendez', 'Clerk', 30000, 103),
(4, 'Fatima Al-Sayed', 'Salesman', 35000, 104),
(5, 'Jessica Wilson', 'Manager', 52000, 101),
(6, 'Daniel Taylor', 'Analyst', 46000, 102),
(7, 'Sarah Johnson', 'Clerk', 31000, 103),
(8, 'David Lee', 'Salesman', 36000, 104),
(9, 'Laura Martinez', 'Manager', 53000, 101),
(10, 'James Anderson', 'Analyst', 47000, 102),
(11, 'Fayis', 'Clerk', 32000, 103),
(12, 'Robert Jackson', 'Salesman', 37000, 104),
(13, 'Olivia White', 'Manager', 54000, 101),
(14, 'William Harris', 'Analyst', 48000, 102),
(15, 'Isabella Martin', 'Clerk', 33000, 103),
(16, 'Diya Haridas', 'Salesman', 38000, 104),
(17, 'Mia Garcia', 'Manager', 55000, 101),
(18, 'Henry Martinez', 'Analyst', 49000, 102),
(19, 'Ava Robinson', 'Clerk', 34000, 103),
(20, 'Lucas Clark', 'Salesman', 39000, 104);

CREATE TABLE books (
    ISBN INT PRIMARY KEY,
    title VARCHAR(100),
    category VARCHAR(60),
    rental_price INT,
    status VARCHAR(3) CHECK (status IN ('YES', 'NO')),
    author VARCHAR(100),
    publisher VARCHAR(100)
);
INSERT INTO books (ISBN, title, category, rental_price, status, author, publisher) VALUES
(1, 'The Martian', 'Science Fiction', 300, 'YES', 'Andy Weir', 'Crown'),
(2, 'Harry Potter and the Goblet of Fire', 'Fantasy', 250, 'NO', 'J.K. Rowling', 'Scholastic'),
(3, 'To Kill a Mockingbird', 'Classic', 200, 'YES', 'Harper Lee', 'Harper Perennial'),
(4, 'The Road', 'Dystopian', 150, 'YES', 'Cormac McCarthy', 'Vintage'),
(5, 'The Great Gatsby', 'Classic', 180, 'NO', 'F. Scott Fitzgerald', 'Scribner'),
(6, 'The Da Vinci Code', 'Thriller', 220, 'YES', 'Dan Brown', 'Doubleday'),
(7, 'The Catcher in the Rye', 'Classic', 190, 'NO', 'J.D. Salinger', 'Little, Brown and Company'),
(8, 'The Book Thief', 'Historical Fiction', 210, 'YES', 'Markus Zusak', 'Knopf'),
(9, '1984', 'Dystopian', 170, 'YES', 'George Orwell', 'Plume'),
(10, 'Brave New World', 'Dystopian', 160, 'NO', 'Aldous Huxley', 'Harper Perennial'),
(11, 'The Alchemist', 'Adventure', 200, 'YES', 'Paulo Coelho', 'HarperOne'),
(12, 'Gone Girl', 'Thriller', 230, 'NO', 'Gillian Flynn', 'Crown'),
(13, 'The Fault in Our Stars', 'Romance', 180, 'YES', 'John Green', 'Dutton Books'),
(14, 'The Handmaid\'s Tale', 'Dystopian', 200, 'YES', 'Margaret Atwood', 'Anchor'),
(15, 'Life of Pi', 'Adventure', 210, 'NO', 'Yann Martel', 'Mariner Books'),
(16, 'The Kite Runner', 'Historical Fiction', 220, 'YES', 'Khaled Hosseini', 'Riverhead Books'),
(17, 'The Girl on the Train', 'Thriller', 240, 'NO', 'Paula Hawkins', 'Riverhead Books'),
(18, 'The Secret Life of Bees', 'Historical Fiction', 190, 'YES', 'Sue Monk Kidd', 'Penguin Books'),
(19, 'The Lovely Bones', 'Mystery', 200, 'YES', 'Alice Sebold', 'Back Bay Books'),
(20, 'The Martian', 'Science Fiction', 300, 'YES', 'Andy Weir', 'Crown');

CREATE TABLE cstmr (
    cstid INT PRIMARY KEY,
    cname VARCHAR(20),
    c_address VARCHAR(20),
    reg_date DATE
);
INSERT INTO cstmr (cstid, cname, c_address, reg_date) VALUES
(1, 'Alice Johnson', '123 Main St', '2023-01-01'),
(2, 'Bob Smith', '456 Elm St', '2023-02-01'),
(3, 'Charlie Brown', '789 Oak St', '2023-03-01'),
(4, 'David Wilson', '101 Pine St', '2023-04-01'),
(5, 'Eve Davis', '202 Maple St', '2023-05-01'),
(6, 'Frank Miller', '303 Birch St', '2023-06-01'),
(7, 'Grace Lee', '404 Cedar St', '2023-07-01'),
(8, 'Hank Green', '505 Spruce St', '2023-08-01'),
(9, 'Ivy White', '606 Willow St', '2023-09-01'),
(10, 'Jack Black', '707 Ash St', '2023-10-01'),
(11, 'Karen Brown', '808 Cherry St', '2023-11-01'),
(12, 'Leo King', '909 Walnut St', '2023-12-01'),
(13, 'Mia Scott', '1010 Poplar St', '2024-01-01'),
(14, 'Nina Adams', '1111 Fir St', '2024-02-01'),
(15, 'Oscar Clark', '1212 Hemlock St', '2024-03-01'),
(16, 'Paul Young', '1313 Redwood St', '2024-04-01'),
(17, 'Quinn Hall', '1414 Cypress St', '2024-05-01'),
(18, 'Rita Allen', '1515 Magnolia St', '2024-06-01'),
(19, 'Sam Harris', '1616 Dogwood St', '2024-07-01'),
(20, 'Tina Evans', '1717 Sycamore St', '2024-08-01'),
(21, 'Uma Foster', '1818 Hickory St', '2024-09-01'),
(22, 'Vince Gray', '1919 Alder St', '2024-10-01'),
(23, 'Wendy Hill', '2020 Beech St', '2024-11-01'),
(24, 'Xander Reed', '2121 Maple St', '2024-12-01'),
(25, 'Yara Stone', '2222 Elm St', '2025-01-01'),
(26, 'Zane Ford', '2323 Oak St', '2025-02-01'),
(27, 'Amy Knight', '2424 Pine St', '2025-03-01'),
(28, 'Brian Lane', '2525 Birch St', '2025-04-01'),
(29, 'Cathy Moore', '2626 Cedar St', '2025-05-01'),
(30, 'Dylan Nash', '2727 Spruce St', '2025-06-01');

CREATE TABLE issue_status (
    issueid INT PRIMARY KEY,
    issued_cust INT,
    issuedbookname VARCHAR(20),
    issued_date DATE,
    ISBN1 INT,
    FOREIGN KEY (issued_cust) REFERENCES cstmr(cstid),
    issued_bookname VARCHAR(60),
    FOREIGN KEY (ISBN1) REFERENCES books(ISBN)
);
INSERT INTO issue_status (issueid, issued_cust,issuedbookname,issued_date,isbn1) VALUES
(1,1,"fndsf",'2018-06-02',10),
(2,1,"alkf",'2020-12-02',1),
(3,10,"wleihrfbb",'2024-02-02',13),
(4,18,"uafhb",'2023-11-02',12),
(5,4,"skajnf",'2019-01-02',3),
(6,21,"	qkjdnjkqwbd",'2020-04-02',7),
(7,14,"dwn",'2019-07-02',4),
(8,13,"qkmd",'2018-06-02',5),
(9,30,"vgsx",'2024-05-02',8),
(10,11,"hdbikwef",'2018-06-02',20);

CREATE TABLE return_status (
    returnid INT PRIMARY KEY,
    returncust INT,
    returnbookname VARCHAR(20),
    returndate DATE,
    ISBN2 INT,
    FOREIGN KEY (returncust) REFERENCES cstmr(cstid),
    FOREIGN KEY (returnbookname) REFERENCES books(title),
    FOREIGN KEY (ISBN2) REFERENCES books(ISBN)
);

-- Answer 1
SELECT title, category, rental_price FROM books WHERE status = 'YES';

-- Answer 2
SELECT empname, salary
FROM emp
ORDER BY salary DESC;

-- Answer 3
SELECT cstmr.cname AS Name, books.title AS Book FROM issue_status 
INNER JOIN books ON issue_status.ISBN1 = books.ISBN 
INNER JOIN cstmr ON issue_status.issued_cust = cstmr.cstid;

-- Answer 4
SELECT category, COUNT(ISBN) AS "No: books" FROM books GROUP BY category;

-- Answer 5
SELECT empname AS NAME, pstn AS Position FROM emp WHERE salary > 50000;

-- Answer 6
SELECT cname AS Name FROM cstmr WHERE reg_date < '2024-01-01' AND cstid NOT IN (SELECT issued_cust FROM issue_status);

-- Answer 7
SELECT brnchno AS "Branch no:" , COUNT(empid) AS "no: Employees" FROM emp GROUP BY brnchno;

-- Answer 8
SELECT cstmr.cname AS Name FROM issue_status INNER JOIN cstmr ON cstmr.cstid = issue_status.issued_cust
WHERE issued_date BETWEEN '2023-05-30' AND '2023-07-01';

-- Answer 9
SELECT title, category FROM books 
WHERE title LIKE '%history%' OR title LIKE '%historical%' OR category LIKE '%history%' OR category LIKE '%historical%';

-- Answer 10
SELECT brnchno AS "Branch no:", COUNT(empid) AS "no: Employees" FROM emp GROUP BY brnchno HAVING COUNT(empid) > 5;

-- Answer 11
SELECT emp.empname,emp.brnchno,branch.branch_address FROM emp INNER JOIN branch ON emp.empid = branch.managerid WHERE pstn = 'manager';

-- Answer 12
SELECT cstmr.cname AS Customer, books.title AS Book, books.rental_price AS Price FROM issue_status
INNER JOIN cstmr ON cstid = issued_cust
INNER JOIN books ON ISBN = ISBN1;
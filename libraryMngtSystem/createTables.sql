use Library

-- Create the tables

-- Create Users Table
CREATE TABLE Users (
    user_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15),
    membership_date DATE NOT NULL
);

-- Create Categories Table
CREATE TABLE Categories (
    category_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

-- Create Books Table
CREATE TABLE Books (
    book_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    publisher VARCHAR(100),
    publication_year INT,
    isbn VARCHAR(20) UNIQUE,
    copies_available INT DEFAULT 1
);

-- Create BookCategories Table
CREATE TABLE BookCategories (
    book_category_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    book_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Create BorrowedBooks Table
CREATE TABLE BorrowedBooks (
    borrow_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
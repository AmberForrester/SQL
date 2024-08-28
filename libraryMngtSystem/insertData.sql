use Library

--Insert the data

-- Insert Sample Users
INSERT INTO Users (first_name, last_name, email, phone_number, membership_date)
VALUES 
    ('John', 'Doe', 'john.doe@example.com', '1234567890', '2023-08-01'),
    ('Jane', 'Smith', 'jane.smith@example.com', '0987654321', '2023-08-15'),
    ('Alice', 'Johnson', 'alice.johnson@example.com', '1112223333', '2023-08-20'),
    ('Bob', 'Williams', 'bob.williams@example.com', '4445556666', '2023-08-25');

-- Insert Sample Categories
INSERT INTO Categories (category_name)
VALUES 
    ('Science Fiction'),
    ('Fantasy'),
    ('Non-Fiction'),
    ('Mystery'),
    ('Biography');

-- Insert Sample Books
INSERT INTO Books (title, author, publisher, publication_year, isbn, copies_available)
VALUES 
    ('Dune', 'Frank Herbert', 'Chilton Books', 1965, '9780441013593', 5),
    ('The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', 1937, '9780345339683', 3),
    ('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Harper', 2011, '9780062316097', 4),
    ('1984', 'George Orwell', 'Secker & Warburg', 1949, '9780451524935', 6),
    ('Becoming', 'Michelle Obama', 'Crown Publishing Group', 2018, '9781524763138', 2);

-- Insert Sample BookCategories
INSERT INTO BookCategories (book_id, category_id)
VALUES 
    (1, 1), -- Dune -> Science Fiction
    (2, 2), -- The Hobbit -> Fantasy
    (3, 3), -- Sapiens -> Non-Fiction
    (4, 1), -- 1984 -> Science Fiction
    (5, 5); -- Becoming -> Biography

-- Insert Sample BorrowedBooks
INSERT INTO BorrowedBooks (user_id, book_id, borrow_date, due_date, return_date)
VALUES 
    (1, 1, '2024-08-01', '2024-08-15', NULL), -- John Doe borrowed Dune
    (2, 3, '2024-08-10', '2024-08-24', NULL), -- Jane Smith borrowed Sapiens
    (3, 2, '2024-08-05', '2024-08-19', '2024-08-18'), -- Alice Johnson borrowed and returned The Hobbit
    (4, 4, '2024-08-12', '2024-08-26', NULL); -- Bob Williams borrowed 1984
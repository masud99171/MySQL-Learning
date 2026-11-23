CREATE DATABASE Student_lib_management;
use Student_lib_management;

CREATE TABLE Student
(
roll varchar(4) PRIMARY KEY,
name varchar(50) NOT NULL
);

CREATE TABLE Librarian
(
lib_id varchar(4) PRIMARY KEY,
lib_name varchar(50) NOT NULL
);
CREATE TABLE Book
(
book_id varchar(4) PRIMARY KEY,
book_name varchar(50) NOT NULL,
book_genre varchar(50) NOT NULL
);

CREATE TABLE borro
(
borrow_date DATE,
return_date DATE,
which_book_id varchar(4),
how_borrod_roll varchar(4),
FOREIGN KEY (how_borrod_roll) REFERENCES Student(roll),
FOREIGN KEY (which_book_id) REFERENCES Book(book_id),
PRIMARY KEY(which_book_id, how_borrod_roll)
);

CREATE TABLE parmition
(
which_book_id varchar(4),
how_parmited varchar(4) ,
FOREIGN KEY (which_book_id) REFERENCES Book(book_id),
FOREIGN KEY (how_parmited) REFERENCES Librarian(lib_id),
primary key(how_parmited,which_book_id)
);
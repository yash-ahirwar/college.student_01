# I will begin with creating a database named college.
# All commands shall be in capitals and values should be in lower case and no spaces in between as it is case sensitive.

CREATE DATABASE college;

# After creating the database, I will use the command 'USE' to work with it.

USE college;

# I will create few tables inside the database and give a particular type to each column.

CREATE TABLE student (
	roll_number INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

# INT refers to integer value, VARCHAR is for limited number of characters and NOT NULL is used as a constraint, where a value must be filled.
# PRIMARY KEY is the constraint where the value should be UNIQUE and NOT NULL.
# I can make a combination of columns a primary key. EX. PRIMARY KEY (roll_number, name)
# Now, I will put some values inside the table.

INSERT INTO 
	student
VALUES
	(101, "Tom", 15),
	(102, "Jerry", 13),
    (103, "Bull", 17);

# Now, let's see the dataset.

SELECT * FROM college.student;

# If I have to add more students in the same table, I will use the INSERT INTO/VALUES command

INSERT INTO student
VALUES 
	(104, "Doraemon", 14),
	(105, "Nobita", 16),
    (106, "Shizuka", 16);

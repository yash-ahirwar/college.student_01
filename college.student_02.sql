# On day 2, I'll perform ALTER TABLE, MODIFY/ADD COLUMN, UPDATE-SET-WHERE commands
# I'll share how to add more columns in the pre-existing table
# I'll alsp share how to change the data type and how to update values in the table 

# I'll use last dataset that I've created for this mini=project

USE college;

# I will add more columns in the pre-existing dataset with ALTER TABLE command

ALTER TABLE
	student
ADD COLUMN (
	result INT,
    marks INT
);

SELECT * FROM college.student;

# Let's say, if I want to change the data type of result as VARCHAR from INT, I'll use ALTER TABLE MODIFY COLUMN command

ALTER TABLE
	student
MODIFY COLUMN
	result VARCHAR(20);

# I'll fill the result column as pass or fail by using UPDATE SET WHERE command
# to add pass in result column

UPDATE
	student
SET
	result = "pass"
WHERE
	roll_number IN (101, 102, 104, 106);
    
# to add fail in result column
    
UPDATE
	student
SET
	result = "fail"
WHERE
	roll_number IN (103, 105);
    
# I'll add marks at some place while leaving few empty for DEFAULT command

UPDATE
	student
SET
	marks = (12), result = "fail"
WHERE
	roll_number IN (103);
    
UPDATE
	student
SET
	marks = (27), result = "fail"
WHERE
	roll_number IN (105);
    
UPDATE
	student
SET
	marks = (54), result = "pass"
WHERE
	roll_number IN (101);
    
# If the numbers are different, then I'll have to write command for each value
# If the numbers are same, then I can do it in a simgle command

UPDATE
	student
SET
	marks = (76), result = "pass"
WHERE
	roll_number IN (102,104,106);
    

    
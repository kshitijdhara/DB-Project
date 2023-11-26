-- Drop interdependent constraints
ALTER TABLE
    Employee DROP CONSTRAINT DEPT_ID_FK;

-- Drop existing tables (if any)
DROP TABLE Department;

DROP TABLE Employee;

DROP TABLE Course;

DROP TABLE Class;

DROP TABLE Instructor;

DROP TABLE Training;

-- Create Course table
CREATE TABLE Course (
    Crs_ID VARCHAR(6) CONSTRAINT Course_Crs_ID_PK PRIMARY KEY,
    Crs_Title VARCHAR(255),
    Crs_Type VARCHAR(50),
    College_Name VARCHAR(50),
    Tuition NUMBER(8, 2) CONSTRAINT Course_Tuition_CK CHECK (Tuition > 0)
);

-- Create Class table
CREATE TABLE Class (
    Crs_ID VARCHAR(6),
    Section CHAR(2),
    Sem_Cmpltd VARCHAR(20),
    Day DATE,
    Time TIMESTAMP,
    Instr_ID VARCHAR(8),
);

-- Create Instructor Table
CREATE TABLE Instructor (
    Instr_ID INT PRIMARY KEY,
    Fname VARCHAR(25) NOT NULL,
    Lname VARCHAR(25) NOT NULL,
    Phone INT NOT NULL,
    Speciality VARCHAR(100)
);

-- Create Employee table
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Fname VARCHAR(25) NOT NULL,
    Lname VARCHAR(25) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Position VARCHAR(25) NOT NULL,
    DOB DATE NOT NULL,
    Allowance NUMBER(8, 2) NOT NULL,
    Street VARCHAR(25) NOT NULL,
    City VARCHAR(25) NOT NULL,
    State VARCHAR(25) NOT NULL,
    Zip_Code VARCHAR(25) NOT NULL,
    Dept_ID INT NOT NULL,
    Sup_ID INT,
    -- FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID), -- Can add this as a constraint later
    CONSTRAINT supervisor_fk FOREIGN KEY (Sup_ID) REFERENCES Employee(Emp_ID),
    --ON DELETE to be added
    CONSTRAINT chck_positive_emp_id CHECK (EMP_ID > 0),
    CONSTRAINT chck_dob CHECK (MONTHS_BETWEEN(SYSDATE, DOB) / 12 >= 18) -- ask TA how to do this 
);

--
-- Create Department table
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(255) NOT NULL,
    Dept_Mngr INT,
    Phone INT,
    Training_Budget NUMBER(20, 2) NOT NULL,
    CONSTRAINT manager_fk FOREIGN KEY (Dept_Mngr) REFERENCES Employee(Emp_ID)
);

-- Create Training Table
CREATE TABLE Training (
    TID INT PRIMARY KEY,
    Appr_Date DATE,
    Grade VARCHAR(2),
    Score NUMBER(3, 2),
    Crs_ID VARCHAR(6) NOT NULL,
    Section CHAR(2) NOT NULL,
    Sem_Cmpltd VARCHAR(20),
    Emp_ID INT,
    ApprovedBy INT,
    CONSTRAINT emp_id_fk FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
    CONSTRAINT approved_by_fk FOREIGN Key (ApprovedBy) REFERENCES Employee(Emp_ID)
);

ALTER TABLE
    Employee
ADD
    CONSTRAINT DEPT_ID_FK FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID);

ALTER TABLE
    Class
ADD
    CONSTRAINT CLASS_PK PRIMARY KEY (Crs_ID, Section, Sem_Cmpltd);
-- page formatting
set linesize 1000
set pagesize 1000

-- Drop interdependent constraints
ALTER TABLE
Employee DROP CONSTRAINT Employee_Dept_ID_FK;

-- Drop existing tables
DROP TABLE Training;

DROP TABLE Class;

DROP TABLE Course;

DROP TABLE Instructor;

DROP TABLE Department;

DROP TABLE Employee;

-- Create Instructor table
CREATE TABLE Instructor (
    Instr_ID INT CONSTRAINT Instructor_Instr_ID_PK PRIMARY KEY,
    Fname VARCHAR(40) CONSTRAINT Instructor_Fname_NN NOT NULL,
    Lname VARCHAR(40) CONSTRAINT Instructor_Lname_NN NOT NULL,
    Phone VARCHAR(15),
    Specialty VARCHAR(50)
);

-- Create Course table
CREATE TABLE Course (
    Crs_ID VARCHAR(10) CONSTRAINT Course_Crs_ID_PK PRIMARY KEY,
    Crs_Title VARCHAR(100) CONSTRAINT Course_Crs_Title_NN NOT NULL,
    Crs_Type VARCHAR(20),
    College_Name VARCHAR(100),
    Tuition DECIMAL(10, 2) CONSTRAINT Course_Tuition_CK CHECK (Tuition >= 0)
);

-- Create Class Table
CREATE TABLE Class (
    Crs_ID VARCHAR(10),
    Section VARCHAR(2),
    Sem_Cmpltd VARCHAR(15),
    Day VARCHAR(6),
    Time VARCHAR (10) CONSTRAINT Class_Time_CK CHECK (
        Time BETWEEN '00:00:00'
        AND '23:59:59'
    ),
    Instr_ID INT,
    CONSTRAINT Class_Crs_ID_Section_Sem_Compltd_PK PRIMARY KEY (Crs_ID, Section, Sem_Cmpltd),
    CONSTRAINT Class_Crs_ID_FK FOREIGN KEY (Crs_ID) REFERENCES Course(Crs_ID),
    CONSTRAINT Class_Instr_ID_FK FOREIGN KEY (Instr_ID) REFERENCES Instructor(Instr_ID)
);

-- Create Employee table
CREATE TABLE Employee (
    Emp_ID INT CONSTRAINT Employee_Emp_ID_PK PRIMARY KEY,
    Fname VARCHAR(40) CONSTRAINT Employee_Fname_NN NOT NULL,
    Lname VARCHAR(40) CONSTRAINT Employee_Lname_NN NOT NULL,
    Email VARCHAR(28),
    Position VARCHAR(50),
    DOB DATE,
    Hire_Date DATE,
    Allowance DECIMAL(10, 2),
    Street VARCHAR(100),
    City VARCHAR(40),
    State VARCHAR(20),
    Zip_Code INT,
    Dept_ID INT,
    Sup_ID INT,
    CONSTRAINT Employee_Emp_ID_FK FOREIGN KEY (Sup_ID) REFERENCES Employee(Emp_ID)
);

-- Create Training table
CREATE TABLE Training (
    TID INT CONSTRAINT Training_TID_PK PRIMARY KEY,
    Appr_Date DATE CONSTRAINT Training_Appr_Date_NN NOT NULL,
    Grade CHAR(2) CONSTRAINT Training_Grade_CK CHECK (Grade IN ('A+', 'A', 'A-', 'B+', 'B','B-','C+','C','C-','D','R','I')),
    Score DECIMAL(3, 2) CONSTRAINT Training_Score_CK CHECK (
        Score BETWEEN 0
        AND 4.33
    ),
    Crs_ID VARCHAR(10),
    Section VARCHAR(2),
    Sem_Cmpltd VARCHAR(20),
    Emp_ID INT,
    ApprovedBy INT,
    CONSTRAINT Training_Crs_ID_Section_Sem_Cmpltd_FK FOREIGN KEY (Crs_ID, Section, Sem_Cmpltd) REFERENCES CLASS(Crs_ID, Section, Sem_Cmpltd),
    CONSTRAINT Training_Emp_ID_FK FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID),
    CONSTRAINT Training_ApprovedBy_FK FOREIGN KEY (ApprovedBy) REFERENCES EMPLOYEE(Emp_ID)
);

-- Create Department Table
CREATE TABLE Department (
    Dept_ID INT CONSTRAINT Department_Dept_ID_PK PRIMARY KEY,
    Dept_Name VARCHAR(50) CONSTRAINT Department_Dept_Name_NN NOT NULL,
    Phone VARCHAR(15),
    Training_Budget DECIMAL(10, 2),
    Dept_Mngr INT,
    CONSTRAINT Department_Dept_Mngr_FK FOREIGN KEY (Dept_Mngr) REFERENCES EMPLOYEE(Emp_ID)
);


ALTER TABLE Employee
ADD CONSTRAINT Employee_Dept_ID_FK FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID);


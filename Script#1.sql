
-- Drop existing tables (if any, to be dropped in this order)
DROP TABLE Training;

-- Drop interdependent constraints
ALTER TABLE
Employee DROP CONSTRAINT Employee_Dept_ID_FK;

DROP TABLE Class;

DROP TABLE Course;

DROP TABLE Instructor;

DROP TABLE Department;

DROP TABLE Employee;

-- Create Instructor table
CREATE TABLE Instructor (
    Instr_ID VARCHAR(10) CONSTRAINT Instructor_Instr_ID_PK PRIMARY KEY,
    Fname VARCHAR(255) CONSTRAINT Instructor_Fname_NN NOT NULL,
    Lname VARCHAR(255) CONSTRAINT Instructor_Lname_NN NOT NULL,
    Phone VARCHAR(15),
    Specialty VARCHAR(250)
);

-- Create Course table
CREATE TABLE Course (
    Crs_ID VARCHAR(6) CONSTRAINT Course_Crs_ID_PK PRIMARY KEY,
    Crs_Title VARCHAR(255) CONSTRAINT Course_Crs_Title_NN NOT NULL,
    Crs_Type VARCHAR(50),
    College_Name VARCHAR(255),
    Tuition DECIMAL(10, 2)
);

-- Create Class Table
 CREATE TABLE Class (
    Crs_ID VARCHAR(6),
    Section VARCHAR(2),
    Sem_Cmpltd VARCHAR(10),
    Day DATE,
    Time TIMESTAMP CONSTRAINT Class_Time_CK CHECK (Time BETWEEN '00:00:00' AND '23:59:59'),
    Instr_ID INT,
    CONSTRAINT Class_Crs_ID_Section_Sem_Compltd_PK PRIMARY KEY (Crs_ID, Section, Sem_Cmpltd),
    CONSTRAINT Class_Crs_ID_FK FOREIGN KEY (Crs_ID) REFERENCES Course(Crs_ID),
    CONSTRAINT Class_Instr_ID_FK FOREIGN KEY (Instr_ID) REFERENCES Instructor(Instr_ID)
);

-- Create Employee table
CREATE TABLE Employee (
    Emp_ID INT CONSTRAINT Employee_Emp_ID_PK PRIMARY KEY,
    Fname VARCHAR(255) CONSTRAINT Employee_Fname_NN NOT NULL,
    Lname VARCHAR(255) CONSTRAINT Employee_Lname_NN NOT NULL,
    Email VARCHAR(255),
    Position VARCHAR(50),
    DOB DATE,
    Hire_Date DATE,
    Allowance DECIMAL(10, 2),
    Street VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(20),
    Zip_Code VARCHAR(10),
    Dept_ID INT,
    Sup_ID INT,
    CONSTRAINT Employee_Emp_ID_FK FOREIGN KEY (Sup_ID) REFERENCES Employee(Emp_ID)
);

--
-- Create Training table
CREATE TABLE Training (
    TID INT CONSTRAINT Training_TID_PK PRIMARY KEY,
    Appr_Date DATE CONSTRAINT Training_Appr_Date_NN NOT NULL,
    Grade CHAR(1) CONSTRAINT Training_Grade_CK CHECK (Grade IN ('A', 'B', 'C', 'D', 'F')),
    Score DECIMAL(3, 2) CONSTRAINT Training_Score_CK CHECK (Score BETWEEN 0 AND 4),
    Crs_ID VARCHAR(6),
    Section VARCHAR(1),
    Sem_Cmpltd VARCHAR(6),
    Emp_ID INT,
    ApprovedBy INT,
    CONSTRAINT Training_Crs_ID_Section_Sem_Cmpltd_FK FOREIGN KEY (Crs_ID, Section, Sem_Cmpltd) REFERENCES CLASS(Crs_ID, Section, Sem_Cmpltd),
    CONSTRAINT Training_Emp_ID_FK FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID),
    CONSTRAINT Training_ApprovedBy_FK FOREIGN KEY (ApprovedBy) REFERENCES EMPLOYEE(Emp_ID)
);

-- Create Department Table
CREATE TABLE Department (
    Dept_ID INT CONSTRAINT Department_Dept_ID_PK PRIMARY KEY,
    Dept_Name VARCHAR(255) CONSTRAINT Department_Dept_Name_NN NOT NULL,
    Phone VARCHAR(15),
    Training_Budget DECIMAL(10, 2),
    Dept_Mngr INT,
    CONSTRAINT Department_Dept_Mngr_FK FOREIGN KEY (Dept_Mngr) REFERENCES EMPLOYEE(Emp_ID)
);


ALTER TABLE Employee 
ADD CONSTRAINT Employee_Dept_ID_FK FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID);


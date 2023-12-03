-- Assuming Employee table already has some data

-- Insert data into Department table
INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (1, 'IT Department', 101, 1234567890, 50000.00);
  INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (2, 'HR Department', 102, 9876543210, 30000.00);
  INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (3, 'Finance Department', 103, 5555555555, 45000.00);
  INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (4, 'Marketing Department', 104, 3333333333, 60000.00);
  INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (5, 'Sales Department', 105, 4444444444, 55000.00);
  INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (6, 'Research Department', 106, 6666666666, 48000.00);
INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (7, 'Customer Support', 107, 7777777777, 40000.00);
  INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (8, 'Production Department', 108, 8888888888, 70000.00);
  INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (9, 'Quality Assurance', 109, 9999999999, 52000.00);
  INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (10, 'Administration Department', 110, 1111111111, 38000.00);

-- Insert data into Employee table
INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (101, 'John', 'Doe', 'john.doe@andrew.cmu.edu', 'Manager', TO_DATE('1990-01-15', 'YYYY-MM-DD'), 5000.00, '123 Main St', 'Pittsburgh', 'Pennsylvania', '15217', 1, NULL);
INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (102, 'Jane', 'Smith', 'jane.smith@andrew.cmu.edu', 'Developer', TO_DATE('1985-05-20', 'YYYY-MM-DD'), 4500.00, '456 Oak St', 'Pittsburgh', 'Pennsylvania', '67890', 1, 101);
    INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (103, 'Mike', 'Johnson', 'mike.johnson@andrew.cmu.edu', 'HR Specialist', TO_DATE('1988-08-10', 'YYYY-MM-DD'), 4800.00, '789 Pine St', 'Pittsburgh', 'Pennsylvania', '54321', 2, 101);
    INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (104, 'Emily', 'Brown', 'emily.brown@andrew.cmu.edu', 'Sales Representative', TO_DATE('1992-03-25', 'YYYY-MM-DD'), 4300.00, '101 Cedar St', 'Pittsburgh', 'Pennsylvania', '98765', 5, 103);
    INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (105, 'Alex', 'Miller', 'alex.miller@andrew.cmu.edu', 'Customer Support', TO_DATE('1993-12-05', 'YYYY-MM-DD'), 4200.00, '202 Elm St', 'Pittsburgh', 'Pennsylvania', '45678', 7, 103);
    INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (106, 'Chris', 'Wong', 'chris.wong@andrew.cmu.edu', 'Research Analyst', TO_DATE('1991-06-15', 'YYYY-MM-DD'), 4900.00, '303 Maple St', 'Pittsburgh', 'Pennsylvania', '23456', 6, 106);
    INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (107, 'Sophia', 'Clark', 'sophia.clark@andrew.cmu.edu', 'Quality Assurance', TO_DATE('1989-09-30', 'YYYY-MM-DD'), 4700.00, '404 Birch St', 'Pittsburgh', 'Pennsylvania', '87654', 9, 105);
    INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (108, 'David', 'White', 'david.white@andrew.cmu.edu', 'Production Manager', TO_DATE('1987-04-12', 'YYYY-MM-DD'), 5200.00, '505 Oak St', 'Pittsburgh', 'Pennsylvania', '54321', 8, 108);
    INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (109, 'Olivia', 'Taylor', 'olivia.taylor@andrew.cmu.edu', 'Administrator', TO_DATE('1995-02-08', 'YYYY-MM-DD'), 4000.00, '606 Pine St', 'Pittsburgh', 'Pennsylvania', '78901', 10, 108);
    INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (110, 'Daniel', 'Lee', 'daniel.lee@andrew.cmu.edu', 'IT Specialist', TO_DATE('1994-11-18', 'YYYY-MM-DD'), 4800.00, '707 Cedar St', 'Pittsburgh', 'Pennsylvania', '12345', 1, 101);

-- Insert data into Course table
INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('CS101', 'Introduction to Computer Science', 'Computer Science', 'School of Compueter Science', 1500.00);
    INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('ENG201', 'Advanced English Composition', 'English', 'College of Fine Arts', 1200.00);
    INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('MATH301', 'Calculus I', 'Mathematics', 'Mellon College of Science', 1800.00);
    INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('HIST101', 'World History', 'History', 'Dietrich College of Humanities & Social Sciences', 1000.00);
    INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('PHYS202', 'Physics II', 'Physics', 'Mellon College of Science', 2000.00);
    INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('CHEM101', 'Introduction to Chemistry', 'Chemistry', 'College of Engineering', 1600.00);
    INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('PSYC301', 'Abnormal Psychology', 'Psychology', 'Dietrich College of Humanities & Social Sciences', 1400.00);
    INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('ART202', 'Art History', 'Art', 'Dietrich College of Humanities & Social Sciences', 1100.00);
    INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('SOC101', 'Introduction to Sociology', 'Sociology', 'Dietrich College of Humanities & Social Sciences', 1300.00);
    INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('BUS401', 'Strategic Management', 'Business', 'Heinz College', 1700.00);

-- Insert data into Class table
INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('CS101', 'A', 'Fall 2022', TO_DATE('2022-12-15', 'YYYY-MM-DD'), TO_TIMESTAMP('12:30:00', 'HH24:MI:SS'), 'INST001');
    INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('ENG201', 'B', 'Spring 2023', TO_DATE('2023-05-10', 'YYYY-MM-DD'), TO_TIMESTAMP('14:00:00', 'HH24:MI:SS'), 'INST002');
    INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('MATH301', 'C', 'Fall 2022', TO_DATE('2022-12-18', 'YYYY-MM-DD'), TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'), 'INST003');
    INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('HIST101', 'D', 'Spring 2023', TO_DATE('2023-04-20', 'YYYY-MM-DD'), TO_TIMESTAMP('09:30:00', 'HH24:MI:SS'), 'INST004');
    INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('PHYS202', 'E', 'Fall 2022', TO_DATE('2022-12-17', 'YYYY-MM-DD'), TO_TIMESTAMP('13:45:00', 'HH24:MI:SS'), 'INST005');
    INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('CHEM101', 'F', 'Spring 2023', TO_DATE('2023-05-15', 'YYYY-MM-DD'), TO_TIMESTAMP('11:15:00', 'HH24:MI:SS'), 'INST006');
    INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('PSYC301', 'G', 'Fall 2022', TO_DATE('2022-12-16', 'YYYY-MM-DD'), TO_TIMESTAMP('15:30:00', 'HH24:MI:SS'), 'INST007');
    INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('ART202', 'H', 'Spring 2023', TO_DATE('2023-05-12', 'YYYY-MM-DD'), TO_TIMESTAMP('16:45:00', 'HH24:MI:SS'), 'INST008');
    INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('SOC101', 'I', 'Fall 2022', TO_DATE('2022-12-14', 'YYYY-MM-DD'), TO_TIMESTAMP('08:00:00', 'HH24:MI:SS'), 'INST009');
    INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('BUS401', 'J', 'Spring 2023', TO_DATE('2023-05-18', 'YYYY-MM-DD'), TO_TIMESTAMP('12:00:00', 'HH24:MI:SS'), 'INST010');

-- Insert data into Instructor table
INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    ('CS001', 'Michael', 'Johnson', 4155551234, 'Computer Science');
    INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    ('ENG002', 'Laura', 'Anderson', 4085555678, 'English Literature');
    INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    ('MTH003', 'Christopher', 'Martin', 5105558765, 'Mathematics');
    INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    ('HST004', 'Elena', 'Rodriguez', 9255554321, 'History');
    INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    ('PHY005', 'Robert', 'Garcia', 6505559876, 'Physics');
    INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    ('CHM006', 'Megan', 'Baker', 4155556543, 'Chemistry');
    INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    ('PSY007', 'Jonathan', 'Clark', 4085557890, 'Psychology');
    INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    ('ART008', 'Amelia', 'Evans', 5105558765, 'Art History');
    INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    ('SOC009', 'Gregory', 'Wong', 9255552345, 'Sociology');
    INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    ('BUS010', 'Sophie', 'Fisher', 6505557890, 'Business Management');

-- Insert data into Training table
INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (1, TO_DATE('2022-10-15', 'YYYY-MM-DD'), 'A', 92.5, 'CS101', 'A', 'Fall 2022', 101, 101);
    INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (2, TO_DATE('2023-04-05', 'YYYY-MM-DD'), 'B+', 85.0, 'ENG201', 'B', 'Spring 2023', 102, 101);
    INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (3, TO_DATE('2022-12-22', 'YYYY-MM-DD'), 'A-', 89.5, 'MATH301', 'C', 'Fall 2022', 103, 101);
    INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (4, TO_DATE('2023-05-18', 'YYYY-MM-DD'), 'B', 80.0, 'HIST101', 'D', 'Spring 2023', 104, 101);
    INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (5, TO_DATE('2022-11-30', 'YYYY-MM-DD'), 'A+', 95.0, 'PHYS202', 'E', 'Fall 2022', 105, 101);
    INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (6, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'A', 92.5, 'CHEM101', 'F', 'Spring 2023', 106, 101);
    INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (7, TO_DATE('2022-12-05', 'YYYY-MM-DD'), 'B', 87.0, 'PSYC301', 'G', 'Fall 2022', 107, 101);
    INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (8, TO_DATE('2023-01-20', 'YYYY-MM-DD'), 'B-', 82.5, 'ART202', 'H', 'Spring 2023', 108, 101);
    INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (9, TO_DATE('2022-11-12', 'YYYY-MM-DD'), 'A-', 88.5, 'SOC101', 'I', 'Fall 2022', 109, 101);
    INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (10, TO_DATE('2023-03-15', 'YYYY-MM-DD'), 'B+', 86.0, 'BUS401', 'J', 'Spring 2023', 110, 101);

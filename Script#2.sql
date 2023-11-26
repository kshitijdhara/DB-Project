-- Assuming Employee table already has some data

-- Insert data into Department table
INSERT INTO Department (Dept_ID, Dept_Name, Dept_Mngr, Phone, Training_Budget)
VALUES
  (1, 'IT Department', 101, 1234567890, 50000.00),
  (2, 'HR Department', 102, 9876543210, 30000.00),
  (3, 'Finance Department', 103, 5555555555, 45000.00),
  (4, 'Marketing Department', 104, 3333333333, 60000.00),
  (5, 'Sales Department', 105, 4444444444, 55000.00),
  (6, 'Research Department', 106, 6666666666, 48000.00),
  (7, 'Customer Support', 107, 7777777777, 40000.00),
  (8, 'Production Department', 108, 8888888888, 70000.00),
  (9, 'Quality Assurance', 109, 9999999999, 52000.00),
  (10, 'Administration Department', 110, 1111111111, 38000.00);

-- Insert data into Employee table
INSERT INTO Employee (
    Emp_ID, Fname, Lname, Email, Position, DOB, Allowance, Street, City, State, Zip_Code, Dept_ID, Sup_ID
)
VALUES
    (101, 'John', 'Doe', 'john.doe@email.com', 'Manager', TO_DATE('1990-01-15', 'YYYY-MM-DD'), 5000.00, '123 Main St', 'Pittsburgh', 'Pennysilvania', '15217', 1, NULL),
    (102, 'Jane', 'Smith', 'jane.smith@email.com', 'Developer', TO_DATE('1985-05-20', 'YYYY-MM-DD'), 4500.00, '456 Oak St', 'CityB', 'StateB', '67890', 1, 101),
    (103, 'Mike', 'Johnson', 'mike.johnson@email.com', 'HR Specialist', TO_DATE('1988-08-10', 'YYYY-MM-DD'), 4800.00, '789 Pine St', 'CityC', 'StateC', '54321', 2, 101),
    (104, 'Emily', 'Brown', 'emily.brown@email.com', 'Sales Representative', TO_DATE('1992-03-25', 'YYYY-MM-DD'), 4300.00, '101 Cedar St', 'CityD', 'StateD', '98765', 5, 105),
    (105, 'Alex', 'Miller', 'alex.miller@email.com', 'Customer Support', TO_DATE('1993-12-05', 'YYYY-MM-DD'), 4200.00, '202 Elm St', 'CityE', 'StateE', '45678', 7, 107),
    (106, 'Chris', 'Wong', 'chris.wong@email.com', 'Research Analyst', TO_DATE('1991-06-15', 'YYYY-MM-DD'), 4900.00, '303 Maple St', 'CityF', 'StateF', '23456', 6, 106),
    (107, 'Sophia', 'Clark', 'sophia.clark@email.com', 'Quality Assurance', TO_DATE('1989-09-30', 'YYYY-MM-DD'), 4700.00, '404 Birch St', 'CityG', 'StateG', '87654', 9, 109),
    (108, 'David', 'White', 'david.white@email.com', 'Production Manager', TO_DATE('1987-04-12', 'YYYY-MM-DD'), 5200.00, '505 Oak St', 'CityH', 'StateH', '54321', 8, 108),
    (109, 'Olivia', 'Taylor', 'olivia.taylor@email.com', 'Administrator', TO_DATE('1995-02-08', 'YYYY-MM-DD'), 4000.00, '606 Pine St', 'CityI', 'StateI', '78901', 10, 110),
    (110, 'Daniel', 'Lee', 'daniel.lee@email.com', 'IT Specialist', TO_DATE('1994-11-18', 'YYYY-MM-DD'), 4800.00, '707 Cedar St', 'CityJ', 'StateJ', '12345', 1, 101);

-- Insert data into Course table
INSERT INTO Course (
    Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition
)
VALUES
    ('CS101', 'Introduction to Computer Science', 'Computer Science', 'ABC College', 1500.00),
    ('ENG201', 'Advanced English Composition', 'English', 'XYZ University', 1200.00),
    ('MATH301', 'Calculus I', 'Mathematics', '123 Institute', 1800.00),
    ('HIST101', 'World History', 'History', 'DEF College', 1000.00),
    ('PHYS202', 'Physics II', 'Physics', '456 University', 2000.00),
    ('CHEM101', 'Introduction to Chemistry', 'Chemistry', 'LMN Institute', 1600.00),
    ('PSYC301', 'Abnormal Psychology', 'Psychology', '789 College', 1400.00),
    ('ART202', 'Art History', 'Art', 'GHI University', 1100.00),
    ('SOC101', 'Introduction to Sociology', 'Sociology', 'JKL Institute', 1300.00),
    ('BUS401', 'Strategic Management', 'Business', 'MNO College', 1700.00);

-- Insert data into Class table
INSERT INTO Class (
    Crs_ID, Section, Sem_Cmpltd, Day, Time, Instr_ID
)
VALUES
    ('CS101', 'A', 'Fall 2022', TO_DATE('2022-12-15', 'YYYY-MM-DD'), TO_TIMESTAMP('12:30:00', 'HH24:MI:SS'), 'INST001'),
    ('ENG201', 'B', 'Spring 2023', TO_DATE('2023-05-10', 'YYYY-MM-DD'), TO_TIMESTAMP('14:00:00', 'HH24:MI:SS'), 'INST002'),
    ('MATH301', 'C', 'Fall 2022', TO_DATE('2022-12-18', 'YYYY-MM-DD'), TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'), 'INST003'),
    ('HIST101', 'D', 'Spring 2023', TO_DATE('2023-04-20', 'YYYY-MM-DD'), TO_TIMESTAMP('09:30:00', 'HH24:MI:SS'), 'INST004'),
    ('PHYS202', 'E', 'Fall 2022', TO_DATE('2022-12-17', 'YYYY-MM-DD'), TO_TIMESTAMP('13:45:00', 'HH24:MI:SS'), 'INST005'),
    ('CHEM101', 'F', 'Spring 2023', TO_DATE('2023-05-15', 'YYYY-MM-DD'), TO_TIMESTAMP('11:15:00', 'HH24:MI:SS'), 'INST006'),
    ('PSYC301', 'G', 'Fall 2022', TO_DATE('2022-12-16', 'YYYY-MM-DD'), TO_TIMESTAMP('15:30:00', 'HH24:MI:SS'), 'INST007'),
    ('ART202', 'H', 'Spring 2023', TO_DATE('2023-05-12', 'YYYY-MM-DD'), TO_TIMESTAMP('16:45:00', 'HH24:MI:SS'), 'INST008'),
    ('SOC101', 'I', 'Fall 2022', TO_DATE('2022-12-14', 'YYYY-MM-DD'), TO_TIMESTAMP('08:00:00', 'HH24:MI:SS'), 'INST009'),
    ('BUS401', 'J', 'Spring 2023', TO_DATE('2023-05-18', 'YYYY-MM-DD'), TO_TIMESTAMP('12:00:00', 'HH24:MI:SS'), 'INST010');

-- Insert data into Instructor table
INSERT INTO Instructor (
    Instr_ID, Fname, Lname, Phone, Speciality
)
VALUES
    (1, 'John', 'Smith', 1234567890, 'Computer Science'),
    (2, 'Jane', 'Doe', 9876543210, 'English Literature'),
    (3, 'Mike', 'Johnson', 5555555555, 'Mathematics'),
    (4, 'Emily', 'Brown', 3333333333, 'History'),
    (5, 'Alex', 'Miller', 4444444444, 'Physics'),
    (6, 'Chris', 'Wong', 6666666666, 'Chemistry'),
    (7, 'Sophia', 'Clark', 7777777777, 'Psychology'),
    (8, 'David', 'White', 8888888888, 'Art History'),
    (9, 'Olivia', 'Taylor', 9999999999, 'Sociology'),
    (10, 'Daniel', 'Lee', 1111111111, 'Business Administration');

-- Insert data into Training table
INSERT INTO Training (
    TID, Appr_Date, Grade, Score, Crs_ID, Section, Sem_Cmpltd, Emp_ID, ApprovedBy
)
VALUES
    (1, TO_DATE('2022-10-15', 'YYYY-MM-DD'), 'A', 92.5, 'CS101', 'A', 'Fall 2022', 101, 101),
    (2, TO_DATE('2023-04-05', 'YYYY-MM-DD'), 'B+', 85.0, 'ENG201', 'B', 'Spring 2023', 102, 101),
    (3, TO_DATE('2022-12-22', 'YYYY-MM-DD'), 'A-', 89.5, 'MATH301', 'C', 'Fall 2022', 103, 101),
    (4, TO_DATE('2023-05-18', 'YYYY-MM-DD'), 'B', 80.0, 'HIST101', 'D', 'Spring 2023', 104, 101),
    (5, TO_DATE('2022-11-30', 'YYYY-MM-DD'), 'A+', 95.0, 'PHYS202', 'E', 'Fall 2022', 105, 101),
    (6, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'A', 92.5, 'CHEM101', 'F', 'Spring 2023', 106, 101),
    (7, TO_DATE('2022-12-05', 'YYYY-MM-DD'), 'B', 87.0, 'PSYC301', 'G', 'Fall 2022', 107, 101),
    (8, TO_DATE('2023-01-20', 'YYYY-MM-DD'), 'B-', 82.5, 'ART202', 'H', 'Spring 2023', 108, 101),
    (9, TO_DATE('2022-11-12', 'YYYY-MM-DD'), 'A-', 88.5, 'SOC101', 'I', 'Fall 2022', 109, 101),
    (10, TO_DATE('2023-03-15', 'YYYY-MM-DD'), 'B+', 86.0, 'BUS401', 'J', 'Spring 2023', 110, 101);

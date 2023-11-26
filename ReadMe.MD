# H1 DB Project
## A. Create two separate SQL scripts to be used to create all necessary tables, data integrity constraints, and then to insert data into the tables:

### 1. Script #1: 
   Write all CREATE TABLE statements that have the necessary integrity constraints including primary keys, foreign keys, check, etc. Start the script with a set of “Drop Table” statements that will allow you to clean up the database before creating it (very useful when you recreate the database using the script). Use the names of tables as well as the names of attributes exactly as provided in the conceptual model above. All constraints, except one, must be created and enforced within the “Create Table” statements and must be named using the convention discussed in class (lecture 12). Run the script to create the DB tables and to create the missing constraint (as a last statement in your script). Also include four useful check constraints of your choice (but not the “Not Null” or “Unique” constraints).
### 2. Script #2:
 After the DB tables and all data integrity constraints are created, insert about ten rows of data into each table. Provide data that are logical and that would allow you to test all queries as defined below (each query must give you realistic results). It may be required to add more than 10 rows in some tables in order to show that your queries work as intended. Department and Instructor tables could have fewer rows. Run the script to perform the task of populating the tables in your database. (Note: All constraints must be enabled and enforced – not deferred – before you populate your tables.)
### 3. After all tables are populated, list the content of each table.
---
## B. Create SQL queries to answer the following questions
1. Create a report of employee training information. For each department, list the name of each supervisor, the name of employee (concatenate first and last name for both the employee and his/her supervisor), and the trainings each employee has had. For each training list the title of
the course, semester when it was completed, and grade received. Sort the result by department name, supervisor name, and employee name. For employees who did not take any class, include ‘NA’ in the last three columns.
2. In order to plan its training budget for the next year, the company needs to evaluate its spending so far in this calendar year. For each department, list the number of employees working in the department, the total amount spent on training by the department this year, and the average spending per employee.
3. Some of the employees do not take their classes seriously and they do not get good grades from those classes. List department name, employee ID and name (concatenated together), number of classes taken by the employee, and GPA (i.e., grade point average). Rank employees within their departments based on their GPA (provide both the GPA and the rank).
4. For each department and semester, provide number of trainings (i.e., number of classes taken by employees). List the name of the department as well as the name of the manager of the department. Sort the result by department and then by semester in chronological order. Last row should have the total number of classes completed.
5. For each supervisor (list ID and name of each supervisor) provide the number of class approvals in each month of the third quarter of this year. Last column should provide the total number of approval by each supervisor during the quarter. Last row should list the total for each month and for all supervisors. Sort the results by supervisor last name. Organize the
report in the following way:

Supervisor July August September Supervisor total:

ID: Name 1

ID: Name 2

ID: Name 3

Month Total:

6. For every employee list ID, name, the total tuition provided/spent, and the number of classes
taken by the employee. Also provide the rank of each employee (in terms of the tuition
amount) and the indicator of the “quarter” (also based on the total tuition amount) each
employee belongs to.
7. List the top four employees ranked by the number of different courses they have taken. The employee who has taken most of them should receive rank one. List the employee ID, first name, last name, number of courses taken, and the rank. Provide two different ways to answer this question:

   a. Using Fetch clause, and
   
   b.Without a Fetch clause
8. List employees who took and passed a Database Management class from an Instructor that specializes in Data Engineering or in Analytics. Include only those employees who have been working for the company for at least 5 years.
9. Find the most popular class (based on the number of employees that took the class). List the class ID and title, the college name that offers that class, instructor of the class, and the measure of popularity. Do not use the Fetch clause this time.
10. For each department (list id and name), provide the number of “IT courses” the department employees have completed and cost of the training. Sort the results by department name.
11. Create a pivot query that lists colleges against categories of training (i.e., type of course) and the count of how many classes were taken in each of the combinations of college and category. Also, include grand totals.
12. Due to a recent re-organization, the company needs a list that shows who supervises who. List all the employees in the company clearly indicating the organizational hierarchy. Include the “level” in the hierarchy each employee is at, name of the department where the employee
works at, and name of the manager of the department.

---
## Entity Relationship Diagram
![ERD](ERD.png)
---
## Schema
**EMPLOYEE** (Emp_ID, Fname, Lname, Email, Position, DOB, Hire_Date, Allowance, Street, City, State, Zip_Code, Dept_ID@, Sup_ID@)

**DEPARTMENT** (Dept_ID, Dept_Name, Phone, Training_Budget, Dept_Mngr@)

**TRAINING** (TID, Appr_Date, Grade, Score, Crs_ID@, Section@, Sem_Cmpltd@,Emp_ID@,ApprovedBy@)

**COURSE** (Crs_ID, Crs_Title, Crs_Type, College_Name, Tuition)

**CLASS** (Crs_ID@, Section, Sem_Cmpltd, Day, Time, Instr_ID@)

**INSTRUCTOR** (Instr_ID, Fname, Lname, Phone, Specialty)
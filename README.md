# database_design_for_college

## 🏗️ Tables & Relationships

### 1. `Department`
Stores department details.
- **Primary Key:** `Dept_codee`
- **Fields:** `Dept_name`, `Dept_officeNo`, `Dept_address`

### 2. `Head`
Stores department head information.
- **Primary Key:** `Head_id`
- **Foreign Key:** `Dept_Codee` → Department
- **Fields:** `FName`, `LName`, `Head_officeNo`, `Head_salary`, `Gender`

### 3. `Instructor`
Stores instructors' data.
- **Primary Key:** `inst_id`
- **Foreign Key:** `Dept_Codee` → Department
- **Fields:** `FName`, `LName`, `Gender`, `Employ_Date`, `sallary`

### 4. `Course`
Contains course information.
- **Primary Key:** `C_code`
- **Foreign Keys:**
  - `Dept_Codee` → Department
  - `inst_ID` → Instructor
- **Fields:** `C_inst`, `C_title`, `C_crh`

### 5. `Student`
Stores student personal and academic data.
- **Primary Key:** `Stud_id`
- **Fields:** `FName`, `LName`, `Gender`, `DOB`, `GPA`, `status`

### 6. `Enroll`
Represents the enrollment of students in courses.
- **Composite Primary Key:** `Sid`, `Cid`
- **Fields:** `Enroll_date`

## 📥 Sample Data

Sample entries are inserted for:
- 5 departments
- 6 department heads
- 9 instructors
- 8 courses
- 6 students
- 8 enrollment records

## 🔍 Sample Queries

Some useful queries included:
- List all departments
- Retrieve all instructors' salaries
- Get students with GPA = 4.0
- Identify instructors earning > 7000
- List departments in 'Kuiha' or 'Arid'
- Find female students with GPA > 3.6
- Students whose names start with 'G'
- All male head managers
- Courses with 7 credit hours
- Courses in the Computer Science department

## ✅ How to Use

1. Run the SQL script on your local SQL Server or MySQL environment.
2. The script will:
   - Create the database
   - Create tables with proper constraints
   - Insert sample data
   - Run sample queries

## 📝 Notes

- Some foreign key insertions may fail if parent keys are missing. Ensure the referenced data exists.
- You can extend the schema with additional features like attendance, results, or admin panels.

---

Created for educational purposes to demonstrate relational database design and basic SQL usage.

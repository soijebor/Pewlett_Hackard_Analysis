# Pewlett_Hackard_Analysis

## Challenge

An analysis on Pewlett Hackard to determine the total number of employees per title who will be retiring, and identify employees who are eligible to participate in a mentorship program

### Challenge Overview

* Technical Analysis Deliverable 1: Number of Retiring Employees by Title. You will create three new tables, one showing number of [titles] retiring, one showing number of employees with each title, and one showing a list of current employees born between Jan. 1, 1952 and Dec. 31, 1955. New tables are exported as CSVs.

* Technical Analysis Deliverable 2: Mentorship Eligibility. A table containing employees who are eligible for the mentorship program (and the CSV containing the data)


## Resources

* Data Source: departments.csv, employees.csv, dept_emp.csv, dept_manager.csv, salaries.csv and titles.csv
* Software: SQL (pgAdmin 4)

## Summary

 A copy of the ERD I created when mapping out the database;
 
 ![ERD](https://github.com/soijebor/Pewlett_Hackard_Analysis/blob/master/Images/EmployeeDB.png)

  I created a table containing the number of employees who are about to retire (those born 1952-1955), grouped by job title using 2 inner join(salaries, dept_no and titles). Checked for duplicates and then used partitioning to remove duplicates and show only most recent title per employee. I used the count function to get the number of employees and they're 72,458 employees who are about to retire(those born 1952-1955) using the count function. 
  
  In this analysis, I created a total of 3 tables and exportred them as csv files;
  
  * no_of_retiring_emp.csv - containd
  * retiring_emp_no_dup.csv
  * retiring_emp_no_dup_count.csv

  In technical analysis 2, To be eligible to participate in the mentorship program, employees will need to have a date of birth that falls between January 1, 1965 and December 31, 1965. I created a table containing employees who are eligible for the mentorship program using 2 inner joins (dept_emp and titles).I also checked for duplicates and removed them using partitioning after which i got a count of employees who are eligible for the mentorship program which is a total of 1,549 employees using the count function.
  
  In this analysis, I created a total of 3 tables and exported them as csv files;
  
  * mentorship_eligibility.csv - contains number of employees eligible for mentorship program
  * mentorship_eligibility_no_dup.csv - contains the number of employees eligible for mentorship program after i removed duplicates
  * mentorship_eligibility_no_dup_count.csv - contains number of employees eligible for mentorship program grouped by title

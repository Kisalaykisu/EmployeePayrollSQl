## UC2

SHOW DATABASES;                   #TO see all Databases
#UC1
CREATE DATABASE payroll_service;   #create database
USE payroll_service;               # To use payroll_service Database
SELECT DATABASE();                 # To see current database


 CREATE TABLE employee_payroll    #create table
    (
    id  INT unsigned NOT NULL AUTO_INCREMENT,    #Unique ID for the record
    name VARCHAR(150) NOT NULL,                  #Name of the Employee
    salary DOUBLE NOT NULL,                      #Employee Salary
    start  DATE NOT NULL,                        #Employee start date
    PRIMARY KEY (id)                             # Make id primary key
    );
    
DROP TABLE employee_payroll;                # Drop Table employee_payroll
DESCRIBE employee_payroll;                  # Describe Table

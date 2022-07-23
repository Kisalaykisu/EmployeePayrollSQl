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





## UC3

 INSERT INTO employee_payroll ( name,salary, start) VALUES     // Inserting the values in the table
      ('Bill',100000.00,'2018-01-03'),
      ('Kisalay',2000000,'2019-11-13'),
      ('Charlie',3000000,'2020-05-21');






#UC4


SELECT * FROM employee_payroll;           # Retrieve the values from the tables





#UC5

SELECT salary FROM employee_payroll WHERE name = 'Bill';      #SELECTING Bill entry

SELECT * FROM employee_payroll                                          #Select Employee from Date Range
     WHERE start BETWEEN CAST('2018-01-01' AS DATE) AND DATE(NOW());








#UC6

ALTER TABLE employee_payroll ADD gender CHAR(1) AFTER name;       #Adding gender field


update employee_payroll set gender='F' where name = 'Bill';
update employee_payroll set gender='M' where name = 'Kisalay' or name = 'Charlie';
update employee_payroll set salary = 300000000.00  where name = 'Kisalay';


#UC7


SELECT AVG(salary) FROM  employee_payroll  WHERE name = 'Bill' GROUP BY gender;     #Using AVG function to find average

SELECT COUNT(salary) FROM  employee_payroll  WHERE name = 'Charlie' GROUP BY id;     #Using COUNT function to find total number of occurences of records

SELECT MIN(salary) FROM  employee_payroll  WHERE name = 'Charlie' GROUP BY id;       #Using MIN function to find min salary 

SELECT MAX(salary) FROM  employee_payroll  WHERE name = 'Charlie' GROUP BY id;        #Using MAX function to find min salary 





# UC8 -Extend_Employee_Payroll

ALTER TABLE employee_payroll ADD phone_number  VARCHAR(250) AFTER name;  # Adding phone_number field

ALTER TABLE employee_payroll ADD address  VARCHAR(250) AFTER phone_number;  # Adding address field

ALTER TABLE employee_payroll ADD department  VARCHAR(150) NOT NULL AFTER address ;  # Adding department field

ALTER TABLE employee_payroll ADD address SET DEFAULT 'TBD';  # Setting Default Value

INSERT INTO employee_payroll(name,salary,start) VALUES ('Bill',1000000.00,'2010-01-03')

#UC7


SELECT AVG(salary) FROM  employee_payroll  WHERE name = 'Bill' GROUP BY gender;     #Using AVG function to find average

SELECT COUNT(salary) FROM  employee_payroll  WHERE name = 'Charlie' GROUP BY id;     #Using COUNT function to find total number of occurences of records

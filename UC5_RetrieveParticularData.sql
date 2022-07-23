#UC5

SELECT salary FROM employee_payroll WHERE name = 'Bill';      #SELECTING Bill entry

SELECT * FROM employee_payroll                                          #Select Employee from Date Range
     WHERE start BETWEEN CAST('2018-01-01' AS DATE) AND DATE(NOW());

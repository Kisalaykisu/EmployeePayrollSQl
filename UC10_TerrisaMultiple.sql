# UC10  Ability to make Terissa as part of Sales and Marketing Department


update employee_payroll set department='Sales' where name = 'Terisa';

INSERT INTO employee_payroll
(name,department,gender,basic_pay,deductions,taxable_pay,tax,net_pay,start) VALUES
('Terisa','Marketting','F',3000000.00.1000000.00,2000000.00,500000.00,1500000.00,'2010-01-03');

ALTER TABLE employee_payroll DROP gender;   #Dropping gender field

DROP DATABASE payroll_service;               #Dropping payroll_service DATABASE

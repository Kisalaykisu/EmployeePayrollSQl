# UC8 -Extend_Employee_Payroll

ALTER TABLE employee_payroll ADD phone_number  VARCHAR(250) AFTER name;  # Adding phone_number field

ALTER TABLE employee_payroll ADD address  VARCHAR(250) AFTER phone_number;  # Adding address field

ALTER TABLE employee_payroll ADD department  VARCHAR(150) NOT NULL AFTER address ;  # Adding department field

ALTER TABLE employee_payroll ADD address SET DEFAULT 'TBD';  # Setting Default Value

INSERT INTO employee_payroll(name,salary,start) VALUES ('Bill',1000000.00,'2010-01-03')

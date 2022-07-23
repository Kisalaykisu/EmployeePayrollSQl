## UC9_AbilityToExtendEmployeePayroll


ALTER TABLE employee_payroll RENAME COLUMN salary To basic_pay;

ALTER TABLE employee_payroll ADD deductions Double NOT NULL AFTER  basic_pay;

ALTER TABLE employee_payroll ADD taxable_pay Double NOT NULL AFTER  deductions;

ALTER TABLE employee_payroll ADD tax Double NOT NULL AFTER taxable_pay;

ALTER TABLE employee_payroll ADD net_pay Double NOT NULL AFTER tax;

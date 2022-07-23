#UC6

ALTER TABLE employee_payroll ADD gender CHAR(1) AFTER name;       #Adding gender field


update employee_payroll set gender='F' where name = 'Bill';
update employee_payroll set gender='M' where name = 'Kisalay' or name = 'Charlie';
update employee_payroll set salary = 300000000.00  where name = 'Kisalay';


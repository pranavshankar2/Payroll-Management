
create table company(comp_id int primary key, Cname varchar(30));

create table branches(branch_id int primary key, Bname varchar(30) , 
company_id int, foreign key(company_id) references company(comp_id) on 
delete set null on update cascade);

create table branch_head(Mgr_id int primary key, Fname varchar(20), Lname varchar(20), 
Dept varchar(10) , B_ID int, foreign key(B_ID) references branches(branch_id) 
on delete set null on update cascade);

create table salary(Payslip_no int primary key, Basic_pay int , DA int , TA int , 
Gross_pay int , incentive int, Medical_Allowance int , mgr_ID int, 
foreign key(mgr_ID) references branch_head(Mgr_id) 
on delete set null on update cascade);

create table emp_addr(empid int,address varchar(30), 
foreign key(empid) references employee(empid) 
on delete set null on update cascade);

create table employee(empid int primary key, Fname varchar(20), Lname varchar(20), 
DOB date, phone_no bigint, mgrid int , foreign key(mgrid) references branch_head(Mgr_id) 
on delete set null on update cascade);

create table get_sal(empid int, payslip int, hrs int, foreign key(empid) 
references employee(empid) , foreign key(payslip) 
references salary(Payslip_no) on delete set null on update cascade);






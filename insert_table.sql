
insert into company(comp_id,Cname) values
(1	,"Apple"), 
(2	,"Microsoft"),
(3	,"Meta"),
(4	,"Google"), 
(5	,"Goldman saches"),
(6	,"Adobe");

insert into branches(branch_id,Bname,company_id) values
(1	,"Microsoft - Blr",2), 
(2	,"Google - Mum",4),
(3	,"Apple - Hyd",1),
(4	,"Adobe-Che",6), 
(5	,"Meta - Del",3),
(6	,"Goldman Saches - Blr",5),
(7,"Microsoft-Del",2),
(8,"Google-Blr",4);


insert into branch_head(Mgr_id,f_name,l_name,dept,B_ID) values
     (500,"Vedavalli","Srinath","Research",1),
     (501,"Subbu","Bhardwaj","IT",1),
     (502,"Sheela","Kumar","Sales",2),
     (503,"Bharti","Devgan","Marketing",7),
     (504,"Virat","Murthy","Administration",8);

insert into employee(empid,Fname,Lname,DOB,phone_no,mgrid) values
    
     (101,"Muhammed","Ali",'1996-12-12',9845012345,500),
     (102,"Sai Deepak","Reddy",'1967-04-08',9900123456,500),
     (103,'Rudra','Agarwal','1968-04-14',9845012345,501),
     (104  ,'Rahul','Khanna','1969-04-14',9900123456,501),
     (105,  'Nirmala','Seturaman','1970-04-08',9845012345,501),
     (106 ,'Ajit','Sethi','1971-06-12',9845012349,503),
     (107, 'Sethi','Kiran','1972-12-01',9900123456,503),
     (108, 'Rashkit', 'Shetty','1974-07-15',9845012345,503),
     (109,'Margaret','Alva','1978-02-21',9900123456,504);

insert into salary(Payslip_no,Basic_pay,DA,TA,Gross_pay,incentive,Medical_Allowance,mgr_ID) values
    
     (1011,80000,1000,500,85000,2.2,2000,500),
     (1012,10000,5500,2000,20000,3,3000,501),
     (1013,6500,2500,1500,20000,2,5000,501),
     (1014,80000,4000,1000,85000,2,2000,502),
     (1015,70000,15000,2000,95000,3,3000,502),
     (1016,14000,8000,1500,50000,1,6000,500),
     (1017,91000,9000,750,100000,2.5,1000,504),
     (1018,50000,7000,1200,65000,3.5,5000,504);


insert into get_sal(empid,payslip,hrs) values
     (101,1010,40),
     (102,1012,35),
     (105,1012,33),
     (106,1013,29),
     (107,1014,36),
     (108,1015,40),
     (109,1016,35);
     
     


insert into emp_addr(empid,address) values
     (100,'10 Janpath New Delhi'),
     (101,'10 Downing Bangalore'),
     (102,'14 Kailsh Marg Mumbai'),
     (103,'3 Blue Avenue'),
     (104,'4 Banyan Avenie Hydrabad'),
     (105,'6 Poes Garden Chennai'),
     (106,'7 Dhamaka street New Delhi'),
     (107,'JC Road Bangalore'),
     (108,'Thiru V ka Salai Chennai'),
     (109,'Old Jail Road ');



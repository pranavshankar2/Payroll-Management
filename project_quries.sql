
select fname,address from emp_addr, employee where emp_addr.empid = employee.empid;

select fname,lname from employee, branch_head where employee.mgr_id = 
branch_head.mgr_id and f_name like 'Subbu'; 

select empid,fname,lname,dob from employee as e where e.empid not in (select employee
.empid from employee join branch_head on employee.mgr_id = 
branch_head.mgr_id and Dept like 'IT'); 

select avg(Basic_pay) from salary, branch_head where salary.mgr_ID= branch_head.Mgr_id 
group by dept; 

select sum(basic_pay) from salary, branch_head where salary.mgr_id = branch_head.Mgr_id 
and f_name like 'Virat'; 

select fname,lname,max(hrs) from employee natural join get_sal;

select fname,address from employee,emp_addr where 
employee.empid = emp_addr.empid and dob like '1971%'
union 
select fname,address from employee,emp_addr where 
employee.empid = emp_addr.empid and dob like '1969%' ; 
 
 
 DELIMITER $$ 
CREATE FUNCTION isPay_Valid(
Basic_pay INTEGER ) 
RETURNS VARCHAR(15) 
DETERMINISTIC 
BEGIN 
	DECLARE pay varchar(15);
           IF Basic_pay > 5000 THEN
				RETURN ('VALID PAY'); 
			ELSE 
				RETURN('INVALID PAY'); 
END IF; 
END$$
DELIMITER ;

 SELECT isPay_Valid(200);
 
 
 DELIMITER $$ 
CREATE FUNCTION bonus_pay(
hrs INTEGER ) 
RETURNS VARCHAR(30) 
DETERMINISTIC 
BEGIN 
	DECLARE b_pay varchar(30);
           IF hrs > 35 THEN
				RETURN ('Applicable for bonus of 3%'); 
			ELSE 
				RETURN('No bonus pay'); 
END IF; 
END$$
DELIMITER ;


select bonus_pay(40); 
 
 
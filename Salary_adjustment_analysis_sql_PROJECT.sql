  -- pay increase and bonus 
    -- < 50000 = 5%
    -- > 50000 = 7%
    -- finance = 10% bonus 
    
    SELECT 
		first_name,
		last_name,
	    salary,
    CASE
		WHEN salary <= 50000 then salary + (salary * 0.5)
		WHEn salary > 50000 THEN salary + (salary * 0.7)
	END AS Adjusted_salary,
    CASE 
		WHEN dept_id = 6 THEN salary * .10
    END AS finance_bonus
    FROM employee_salary ; 
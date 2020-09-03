select * from actor;

-- all Roberts born before 1960
select * from actor
 where firstname = 'Robert'
   and birthdate < '1960-01-01';
   
-- all actors born before 1960 or after 1980
select * from actor
 where birthdate < '1960-01-01'
    or birthdate > '1979-12-31';
    
-- and / or example
select * from actor
 where firstname like 'R%'
   and (lastname = 'Downey Jr.'
	or  lastname = 'Carradine');

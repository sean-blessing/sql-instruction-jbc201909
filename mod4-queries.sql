-- select all columns, all rows
select * from customer;
select * from orders;

-- select all columns for customers in OH
select * from customer
 where state = 'OH';
 
-- select all columns for customers in OH, ordered by name
select * from customer
 where state = 'OH'
 order by name desc; -- 'desc' returns in descending order
 
 select 1;
 
-- select name and credit limit columns, all rows
select name 'Name', creditLimit as 'Credit Limit'
  from customer;

-- select name and credit limit columns, all rows, using table alias
select cust.name 'Name', cust.creditLimit as 'Credit Limit'
  from customer cust;
  
-- join view - all columns
select * 
  from customer
  join orders
    on customer.id = orders.customerID;

-- join view - report format - customer name,
--                          order date, total
select c.name as 'Customer Name', 
		DATE_FORMAT(o.date, "%M %d %Y") as 'Order Date', 
        concat('$', o.total) as 'Order Total'
  from orders o
  join customer c
    on c.id = customerID
    order by c.name;

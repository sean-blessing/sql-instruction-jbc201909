select * from student;

select * from course;

select count(*) from student
where state = 'NY';

-- how many students per state?
select state, count(*)
 from student
 group by state;
 
-- students with no middle initial
select * 
  from student
  where middleInitial is null;
  
-- oldest / youngest student
select firstname, lastname, birthday
  from student
  where birthday = (select min(birthday) from student);
  
-- figure out dates
select birthday, year(birthday), CURDATE(), year(curdate()),
	(year(curdate()) - year(birthday)) as Age
  from student
  order by age;
 
-- age of oldest student
select firstname, lastname, 
	   (year(curdate()) - year(birthday)) as Age
  from student
 where birthday = (select min(birthday) from student);
 
-- how many social studies courses
select * from course
 where subject = 'math';
 
-- list all subjects starting with the letter 'm'
select * from course
 where subject like 'm%';
 
-- inner join - show all students enrolled in courses
select *
  from student s
  join enrolled e
    on e.studentID = s.id
  join course c
    on e.courseID = c.id;

-- all students plus enrollments
select s.id, firstName, lastname, e.studentID, e.courseID, e.grade, c.name
 from student s
 left join enrolled e
    on e.studentId = s.id
 left join course c
    on e.courseID = c.id;


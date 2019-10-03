select * from movie;
select * from actor;

select * from actor where birthdate > '1970-11-23';

-- list all actors for a movie - attempt1
select * from actor a
  join credit c
    on c.ActorID = a.ID
 where c.movieId = 1;
 
 -- select a movie by name
 select id from movie
  where title = 'Revenge of the Nerds';
 
 -- list all actors for a movie - attempt2 - subselect
select * from actor a
  join credit c
    on c.ActorID = a.ID
 where c.movieId = (select id from movie
  where title = 'Avengers Infinity War');
  
-- list all movies and associated actors - 3 table join
select title, year, role, 
	concat(firstname, " ", lastname) as 'Actor' 
  from movie m
  join credit c
    on c.MovieID = m.ID
  join actor a
    on c.ActorID = a.ID;
    
-- another way to join
select * from actor, credit
 where actor.id = credit.ActorID;

select * from movie;
-- example of a unique constraint violation
insert into movie (Title, Year, Rating, Director)
 values ('Revenge of the Nerds', 1984, 'r', 'asdf');
 
-- example of a fk vioaltion
insert into credit (movieid, actorid, role)
 values (99,99,'test');
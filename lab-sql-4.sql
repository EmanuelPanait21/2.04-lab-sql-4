/*
1.Get film ratings.
2.Get release years.
3.Get all films with ARMAGEDDON in the title.
4.Get all films with APOLLO in the title.
5.Get all films which title ends with APOLLO.
6.Get all films with word DATE in the title.
7.Get 10 films with the longest title.
8.Get 10 the longest films.
9.How many films include Behind the Scenes content?
10.List films ordered by release year and title in alphabetical order. 
*/
select * from film;
-- 1.Get film ratings.
 select  title, rating from film;
 
 -- 2.Get release years.
 select title, release_year from film;
 
 -- 3.Get all films with ARMAGEDDON in the title.
select * from film
where title like 'ARMAGEDDON%';

-- 4.Get all films with APOLLO in the title.
select * from film
where title like 'APOLLO%';

-- 5.Get all films which title ends with APOLLO.
select * from film
where title regexp 'APOLLO$'; 

-- 6.Get all films with word DATE in the title.
select title from film
where title regexp '(^|[[:space:]])date([[:space:]]|$)'; 

-- 7.Get 10 films with the longest title.
select title, length(title) from film  order by  length(title) desc limit 10;

-- 8.Get 10 the longest films.
select title, length from film  order by length desc limit 10; 

-- 9.How many films include Behind the Scenes content?
select count(special_features) from film where special_features  like  '%Behind the Scenes%';

-- 10.List films ordered by release year and title in alphabetical order. 
select title, release_year from film order by  title asc, release_year asc;

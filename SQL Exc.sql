USE world;

SELECT "hello World" as message , 123 as ID;
SELECT * FROM city; 
SELECT * FROM city WHERE District= 'aceh';
select Name from city where CountryCode = 'BFA';
select Name  District from city where CountryCode like '%tto';
select Name as nm, District as dis from city where CountryCode='ARM';
select * from city where Name like 'bor%';
select * from city where Name like "%orto" ;
select * from city where Population <1000;
select * from city where CountryCode like '%UKR' and  Population >'1000000';
select * from city where Population <'200' or Population >'9500000' ;
select * from city where CountryCode ='TKJ' or CountryCode='MRT' or CountryCode ='AND' or CountryCode = 'PNG' or CountryCode ='SJM';
SELECT * FROM city WHERE Population between '200'and Population < '700';
select * from country where Population between '8000' and Population < '20000';
select Name from country where IndepYear <0;
select IndepYear from country order by IndepYear = 0  and Population > '1000000';
select Name,SurfaceArea from country order by SurfaceArea <-10 and LifeExpectancy;

/* JOIN EXCERCISE*/

select Name,Population from city order by Population like'PING%';
select Name,Population from city order by Population like'RAN%';
select count(*) from city;
select avg(Population) from city;
select max(Population) from city;
select min(Population) from city;
select sum(Population) from city where Population <'10000';
select count(*)  from city where CountryCode in ('MOZ','VNM');
select count(*)  from city where CountryCode in ('MOZ','VNM') group by CountryCode;
select avg(Population),CountryCode from city where CountryCode in ('MOZ','VNM') group by CountryCode;
select ID,CountryCode,Population from city where CountryCode  >'200';
select ID,CountryCode,Population from city where CountryCode  >'200' order by CountryCode; 
select Population,Language from countrylanguage, city where Population between  '400'and '500';
select ID,Population,Name,Language from city,countrylanguage where Population between '500'and '600';

/*
TEST
select country.Name,city.Name from country inner join city	on country.Name =city.Name where city.Name =2; 
select country.Population,city.Population from country inner join city on country.Population=city.Population where city.Population=5;
*/


/*SITTER FAST.*/
select country.Name, country.Population,city.Name,city.Population from country inner join city
on country.Name=city.Name and city.Population=country.Population; 

select Capital,country.Name,city.Name from country inner join city	on country.Name =city.Name order by Capital in ('Luanda ');
select Region,Capital,country.Name,city.Name from country inner join city on country.Name =city.Name order by Region in( 'Yaren'); 

select Language,country.Name,city.Name from countrylanguage,country 
inner join city	on country.Name =city.Name where Region in ('Riga') ; 
 

 /*SISTA FRÅGAN*/
select max(Name), max(Population) from city; 
--CREATE TABLE QUERY

create table cars(
	make varchar(120),
	model varchar(120),	
	year int,	
	engine_size double precision not null,
	fuel_type varchar(120),
	price double precision 
)

--COPY QUERY	
	
copy cars from 'E:\ARC\SQL\day6\cars_2010_2020.csv' delimiter ',' csv header

--SELECT QUERY
	
select * from cars

--INSERT QUERY

insert into cars values ('BMW','Mustang',2020,4.9,'Diesel',42678.54)
	
--DISTINCT QUERY

select distinct model, make from cars

--SELECT WITH AND QUERY

select * from cars where engine_size >= 3.5 AND fuel_type = 'Petrol'

--SELECT WITH OR QUERY

select * from cars where year < 2011 or year > 2019

--SELECT WITH NOT QUERY

select * from cars where not fuel_type = 'Petrol'

--UPDATE QUERY
	
begin
	rollback
	
update cars set fuel_type = 'new fuel type' where engine_size = 4

--DELETE QUERY

begin
rollback

delete from cars where year >=2015

--ALTER TABLE ADD QUERY

alter table cars add column mileage int 

update cars set mileage = 1234 where fuel_type = 'Hybrid'

--ALTER TABLE DROP QUERY

alter table cars drop column mileage

--ALTER TABLE RENAME QUERY

alter table cars rename column year to years

--ALTER TABLE ADD CONSTRAINT QUERY

alter table cars add constraint price_not_null check (price is not null)

--IN QUERY

select * from cars where years in(2020,2019,2018)

--BETWEEN QUERY

select * from cars where engine_size between 4 and 5







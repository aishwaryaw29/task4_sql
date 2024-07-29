create table person(
	id int primary key,
	name varchar(50),
	age int check (age<=78)                --constraint to check a age should not be greater than 78								
)

insert into person values (1,'name1',22),(2,'name2',38),(3,'name3',78)

select * from person

insert into person values (4,'name4',88)           --error



alter table person add column status varchar not null default 0

alter table person add constraint check_status check ( status not in ('a1','b1','check'))      --custom constraint after table is created that, perticular column to not allow value ('a1', 'b1' , 'check')								

update person set status = 'a1' where id =1        --error

update person set status = 'b1' where id =2        --error

update person set status = 'check' where id =3     --error
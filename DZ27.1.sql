create table car_brands(
id int unique auto_increment,
title varchar(128)
);
insert into car_brands (title)
values 
("audi");
select * from car_brands;

create table car_models(
id int unique auto_increment,
carBrandId varchar(128),
Title varchar(128)
);
insert into car_models (carBrandId, Title)
values 
("audi", "TT");
select * from car_models;



create table users(
id int unique auto_increment,
firstName varchar(128),
lastName varchar(128),
email varchar(128),
passwords varchar(128)
);
insert into users (firstName, lastName, email, passwords)
values 
("Den", "Zyiev", "blablabla@gmail.com", "qweqweqwe");
select * from users;


create table cars (
id int unique auto_increment,
userId varchar(128),
carBrandId varchar(128),
carModelId varchar(128),
passwords varchar(128),
initialMilleage varchar(128)
);

insert into cars (carBrandId, carModelId, passwords, initialMilleage)
values 
("Audi", "TT", "qweweqweq", "123123");
select * from cars;
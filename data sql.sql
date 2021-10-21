/* to create a database use, create database then name of the database, eg; 
create database person */

/* to create a table */
create table person (
person_id smallint unsigned,
fname varchar(30),
lname varchar(30),
eye_colour enum('GR','BL'),
borough varchar(30),
country varchar(30),
post_code varchar(20) not null,
gender varchar(10),
constraint pk_person primary key(person_id)
);

/* craete 2nd table*/
create table favourite_food (
 person_id smallint unsigned,
food varchar(30),
constraint pk_favourite_food primary key (person_id, food),
constraint fk_fav_food_person_id foreign key (person_id)
references person (person_id)
);
set foreign_key_checks=0;
alter table person
modify person_id smallint unsigned auto_increment;
set foreign_key_checks=1;

/* inserting data into 1st table*/
insert into person
 (person_id, fname, lname, eye_colour, borough, country, 
 post_code)
value (1, 'Keke', 'Owo', 'BL', 'Newham', 'UK', 'BN1-76L'),
	(2, 'John', 'Olaji', 'BL', 'Barking', 'UK', 'ALF-96L'),
	(3, 'Phlip', 'Cook', 'GR', 'Newham', 'UK', 'BN1-67L'),
	(4, 'Ewa', 'John', 'GR', 'Essex', 'UK', 'RM1-26L'),
	(5, 'Pam', 'Keith', 'BL', 'Redbridge', 'UK', 'G2R-4MN'),
	(6, 'Lucinda', 'Charles', 'BL', 'Newham', 'UK', 'WLS-K4S'),
	(7, 'Frank', 'Paul', 'GR', 'Redbridge', 'UK', 'P23-BNE'),
	(8, 'Kas', 'Olakonmi', 'GR', 'Essex', 'UK', 'GL2- A67'),
	(9, 'Yasmin', 'Oba', 'BL', 'Kent', 'UK', 'T21-FQR'),
    (10, 'Tolu', 'Juwon', 'GR', 'Kent', 'UK', 'H79-P8V'),


/* inserting data  into second table*/    
insert into favourite_food
        (person_id, food)
values (1, 'kebab'),
       (2, 'pizza'),
       (3, 'chips'),
       (4, 'salad'),
       (5, 'fried rice'),
       (6, 'grill chicken'),
       (7, 'jollofrice'),
       (8, 'plaintain'),
       (9, 'eba with egusi'),
       (10, 'suya');
       
/* updating data  */
      update person 
      set fname = 'Harry'
      where person_id = 5;
      
/* deleting data*/
delete from person
where person_id = 5;



/* order the data
select *
from favourite_food
where person_id =1
order by eye_colour
or
order by food; */



-- create database imdb
-- use imdb
-- 1. Movie should have multiple media(Video or Image) 
-- create table Movie(
-- id int auto_increment,
-- Movie_name varchar(255) not null,
-- date_published varchar(255) not null,
-- duration varchar(255) not null,
-- Director varchar(255) not null,
-- Stars varchar(500) not null,
-- img_id int not null,
-- img_url varchar(500) not null,
-- createdAt timestamp default current_timestamp,
-- updatedAt timestamp on update current_timestamp,
-- primary key(id)
-- )

 -- insert into Movie(Movie_name,date_published,duration,Director,Stars,img_url,img_id)
--  values('Ponniyan Selvan','30-09-2022','2hrs 50min','Ravi','Vikram','Karthi','Trisha','Aishwarya Rai';'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/7e25f103214ea7116adf106e3762b591a2b46469377bc310b5983dbeb623a0f4._UY500_UX667_RI_TTW_.jpg',1),

--  values('RRR','24-03-2022','3hrs 3min','N.T.Rama Rao Jr,Ram Charan,S.S.Rajamouli,Olivia Morris,Alia Bhatt','https://assets-in.bmscdn.com/iedb/movies/images/extra/vertical_logo/mobile/thumbnail/xxlarge/rrr-et00094579-12-05-2022-02-26-04.jpg',2)
--  
--  select * from Movie

-- 2. Movie can belongs to multiple Genre

-- create table Genre(
-- id int not null auto_increment,
-- Genre_id int,
-- Genre varchar(255),
-- primary key(id),
-- foreign key(Genre_id) references Movie(id)
-- )

-- insert into Genre(Genre_id,Genre) values(1,'Historic, Adventure, Action'),
-- (2,'Action, Drama')
-- select * from Genre


-- 3. Movie can have multiple reviews and Review can belongs to a user
-- create table Reviews(
-- id int not null auto_increment,
-- user_id int,
-- user_name varchar(255) not null,
-- rating int not null,
-- primary key(id),
-- foreign key(user_id) references Movie(id)
-- )
-- insert into Reviews(user_id,user_name,rating) values(1,'John',12),
-- (2,'John',13);
-- select * from Reviews


-- 4. Artist can have multiple skills

-- create table Skills(
-- id int not null auto_increment,
-- Artist_name varchar(255),
-- Artist_id int,
-- Skills varchar(255),
-- primary key(id),
-- foreign key(Artist_id) references Movie(id)
-- )

-- insert into Skills(Artist_name,Artist_id,Skills) values('kamal hassan',1,'Actor,Story Writter,Producer'),
-- ('sivakarthikeyan',2,'Actor,Producer,Lyrist')

-- select * from Skills


--  5. Artist can perform multiple role in a single film

-- create table Role(
-- id int not null auto_increment,
-- Artist_id int,
-- Artist_name varchar(255),
-- movie_name varchar(255),
-- Artist_role varchar(255),
-- primary key(id),
-- foreign key(Artist_id) references Movie(id)
-- )


--  insert into Role(Artist_id,Artist_name,movie_name,Artist_role) 
--  values(1,'sivakarthikeyan','DON','Actor,producer,lyrist writer')
--  ,(2,'kamal hassan','vishvarubam','Actor,producer,story writer')

-- select * from Role
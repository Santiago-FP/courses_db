CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int,
  "role" int
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "description" text,
  "level" varchar,
  "course_category" int
);

CREATE TABLE "course_videos" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "url" text,
  "course_id" int
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "user_courses" (
  "id" serial PRIMARY KEY,
  "user_id" serial,
  "course_id" serial
);

ALTER TABLE "users" ADD FOREIGN KEY ("role") REFERENCES "roles" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("course_category") REFERENCES "categories" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

insert into roles(name)
 values
 ('normal'),
 ('admin')
 
 insert into categories(name)
 values
 ('frontend'),
 ('backend')
 
 insert into users(name,email,password,age,role)
 values
 ('Ash','ash@pokemon.com','Pikachu',10,1),
 ('Brock','brock@pokemon.com','Onix',15,2)
 
 insert into courses (title,description,level,course_category)
 values
 ('React',
 'In this course you will learn to create the frontend for a website using a js library called React',
 'Intermediate',
 1
 ),
 ('Node JS',
 'In this course you will learn how to create servers using node js and interact with databases',
 'Intermediate',
 2
 )
 
 insert into course_videos (title,url,course_id)
 values 
 ('Setting up React','https://genericlink.com/react',1),
 ('Creating a new server','https://genericlink.com/node_js',2)
 
 insert into user_courses (user_id,course_id)
 values
 (1,1),
 (2,2)
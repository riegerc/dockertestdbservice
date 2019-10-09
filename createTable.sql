use dbname;

CREATE TABLE account(
   user_id serial PRIMARY KEY,
   username VARCHAR (50) UNIQUE NOT NULL,
   password VARCHAR (50) NOT NULL,
   email VARCHAR (355) UNIQUE NOT NULL,
   fk_role_id INTEGER NOT NULL
);

CREATE TABLE role(
   role_id serial PRIMARY KEY,
   role_name VARCHAR (255) UNIQUE NOT NULL
);

insert into role (role_name) values ('user'), ('guest'), ('adimin'), ('nsa');

insert into account (username,password,email, fk_role_id) values 
('maria','db','maria@maria.db', 1),
('frank','sinatra','frank@sinatra.ok', 2),
('herbert','h@be.rt','h@be.rt', 3),
('snow','den','snow@den.ru', 4);
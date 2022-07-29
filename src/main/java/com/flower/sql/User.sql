use flower;
create table t_user(
	id int(10) primary key auto_increment,
	username varchar(20) not null unique,
	password varchar(32) not null,
	email varchar(200)
);
use flower;
create table t_flower(
id int(10) primary key auto_increment,
flower_name varchar(20),
flower_kind varchar(255),
flower_language varchar(255),
price decimal(11,2),
material varchar(255),
star varchar(20),
pack varchar(255),
img_path varchar(255)
);
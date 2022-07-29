use flower;
CREATE TABLE t_order(
order_id varchar(50) primary key,
create_time datetime,
price decimal(11,2),
status int(2),
user_id int(10),
foreign key(user_id) references t_user(id)
);

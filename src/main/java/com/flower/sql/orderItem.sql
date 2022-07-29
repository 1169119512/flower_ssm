use flower;
create TABLE t_order_item(
id int(10) primary key auto_increment,
name varchar(100),
count int(10),
price decimal(11,2),
total_price decimal(11,2),
order_id varchar(50),
foreign key(order_id) references t_order(order_id)
);

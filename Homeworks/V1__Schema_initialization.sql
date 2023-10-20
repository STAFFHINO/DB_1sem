create table if not exists locations( 
id bigint primary key,
locations varchar(100));

create table if not exists suppliers( 
id bigint primary key,
company_name varchar(100),
adress varchar(100),
phone varchar(30),
suppliers_full_name varchar(100),
location_id bigint references locations(id));

create table if not exists customers( 
id bigint primary key,
company_name varchar(100),
adress varchar(100),
phone varchar(30),
customers_full_name varchar(100),
location_id bigint references locations(id));

create table if not exists  product_groups( 
id bigint primary key,
group_name varchar(100));

create table if not exists  products( 
id bigint primary key,
product_name varchar(100),
measuring_unit varchar(100),
product_group_id bigint references product_groups(id));

create table if not exists  employees( 
id bigint primary key,
phone varchar(30),
employees_full_name varchar(100),
positions varchar(50));

create table if not exists  purchases( 
id bigint primary key,
date_delivery date,
suppliers_id bigint references suppliers(id),
product_id bigint references products(id),
price int,
count_product int,
employees_id bigint references employees(id));

create table if not exists sales( 
id bigint primary key,
date_delivery date,
customers_id bigint references customers(id),
product_id bigint references products(id),
price int,
count_product int,
employees_id bigint references employees(id));


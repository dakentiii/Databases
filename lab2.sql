--Task 1

/*DDL
DDL is Data Definition Language and is used to define the structures like schema, database, tables, constraints etc.
Examples of DDL are create and alter statements.

DML
DML is Data Manipulation Language and is used to manipulate data.
Examples of DML are insert, update and delete statements.

  3 DDL commands: CREATE, ALTER,DROP
  4 DML commands: SELECT, INSERT, UPDATE, DELETE
*/


--Task2
create table customer(
    id integer primary key,
    full_name varchar(50) not null,
    timestamp timestamp not null,
    delivery_address text not null
);

create table orders(
    code integer primary key,
    customer_id integer,
    total_sum double precision check (total_sum>0) not null,
    is_paid boolean not null,
    foreign key (customer_id) references customer
);

create table products(
    id varchar primary key,
    name varchar not null unique,
    description text,
    price double precision not null check (price>0)
);

create table order_items(
    order_code integer,
    product_id varchar,
    quantity integer not null check (quantity>0),
    primary key (order_code,product_id),
    foreign key (order_code) references orders,
    foreign key (product_id) references products
);

--Task3


create table student(
    full_name varchar primary key,
    age integer not null,
    birth_date integer not null,
    gender varchar not null ,
    average_date integer not null ,
    information_about_yourself text not null ,
    need_for_dormitory boolean not null ,
    additional_info text not null

);

create table instructors (
  full_name  varchar primary key ,
  speaking_languages text not null ,
  remote_lessons boolean not null
);
create table lesson_participants(
    lesson_title varchar,
    instructor varchar,
    room_num integer not null,
    primary key(lesson_title,instructor),
    foreign key(instructor) references instructors(full_name)
);

--Task 4

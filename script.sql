-- MySQL Script

-- create database db_ibsenlinea;

create table student
(
    id varchar(10) not null,
    name varchar(100) not null,
    number varchar (15) not null,
    email varchar(100) not null,
    password varchar(150) not null,
    age int not null
)
    comment 'table for all students';

create unique index student_email_uindex
    on student (email);

create unique index student_id_uindex
    on student (id);

alter table student
    add constraint student_pk
        primary key (id);

create table service
(
    id int auto_increment,
    id_student varchar(10) not null,
    type varchar(20) not null,
    started_at date not null,
    amount float not null,
    dues tinyint not null,
    payday tinyint not null,
    constraint service_pk
        primary key (id),
    constraint student__fk
        foreign key (id_student) references student (id)
)
    comment 'table for all services';

create table payment
(
    id int auto_increment,
    id_student varchar(10) not null,
    id_service int not null,
    paid_at date default now() not null,
    card_number varchar(50) not null,
    card_date varchar(10) not null,
    card_safecode smallint not null,
    constraint payment_pk
        primary key (id),
    constraint id_service___fk
        foreign key (id_service) references service (id),
    constraint id_student___fk
        foreign key (id_student) references student (id)
)
    comment 'this table catch all the services taked by one student';

-- INSERTING DATA

INSERT INTO student (id, name, number, email, password, age)
VALUES ('73822427', 'Luis Enco', '+51 995 807 789', 'encoluis@hotmail.com', '3230184', 21);
INSERT INTO student (id, name, number, email, password, age)
VALUES ('73835643', 'Ariana Candiotti', '+51 995 807 521', 'arianacand@hotmail.com', 'arianafellow', 16);

INSERT INTO service (id_student, type, started_at, amount, dues, payday)
VALUES ('73822427', 'préstamo', '2020-02-10', 1000, 12, 10);
INSERT INTO service (id_student, type, started_at, amount, dues, payday)
VALUES ('73835643', 'préstamo', '2020-02-10', 1000, 12, 10);

INSERT INTO payment (id_student, id_service, card_number, card_date, card_safecode)
VALUES ('73822427', 2, '983924893558921', '11/2028', 790);
INSERT INTO payment (id_student, id_service, card_number, card_date, card_safecode)
VALUES ('73835643', 1, '983924893558921', '11/2028', 790);

SELECT * FROM student;
SELECT * FROM service;
SELECT * FROM payment;

SELECT
    ser.id_student, id_service, paid_at, card_number, card_date, card_safecode, type, started_at, amount, dues, payday, name, number, email, password, age
FROM payment
         INNER JOIN service ser on payment.id_service = ser.id
         INNER JOIN student stu on ser.id_student = stu.id;

SELECT * FROM payment WHERE id_student = '73822427' AND id_service = 1;
SELECT * FROM payment WHERE id_student = '73822427';

SELECT service.id_student, paid_at
FROM payment
         INNER JOIN service on payment.id_service = service.id
WHERE service.id_student = '73822427';


create table student
(
	id varchar(10) not null,
	name varchar(100) not null,
	email varchar(100) not null,
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
	start_at date not null,
	amount int not null,
	dues int not null,
	payday int not null,
	constraint service_pk
		primary key (id),
	constraint student_fk
		foreign key (id_student) references student (id)
)
comment 'table for all services';

create table user_service
(
	id_student varchar(10) not null,
	id_service int not null,
	paid_at date default now() not null,
	card_number varchar(50) not null,
	card_date varchar(10) not null,
	card_safecode int not null,
	constraint id_service___fk
		foreign key (id_service) references service (id),
	constraint id_student___fk
		foreign key (id_student) references student (id)
)
comment 'this table catch all the services taked by one student';

INSERT INTO student VALUES (73822427, 'Luis Enco', 'encoluis@hotmail.com', 21);

INSERT INTO service VALUES (null, 73822427, 'préstamo', '2020-01-23', 760, 6, 15);

INSERT INTO user_service VALUES (73822427, 1, now(), 8804521487005213, '08/2025', 759);

SELECT * FROM student;
SELECT * FROM service;
SELECT * FROM user_service;
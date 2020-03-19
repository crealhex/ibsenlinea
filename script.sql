-- MySQL Script

-- create database db_ibsenlinea;

create table student --register
(
	id varchar(10) not null, --dni
	name varchar(100) not null, --nombre y apellido
	number varchar (15) not null, --numero de telefono
	email varchar(100) not null, --correo electronico
	password varchar(150) not null, --contraseña
	age int not null -- edad
)
comment 'table for all students';

create unique index student_email_uindex
	on student (email);

create unique index student_id_uindex
	on student (id);

create unique index student_number_uindex
	on student (number);

alter table student
	add constraint student_pk
		primary key (id);




create table student_service --solicitar prestamos.jsp
(
	id_service int auto_increment,		--id service autogenerado
	id_student varchar(10) not null, 	--dni
	type varchar (20) not null,			--tipo de prestamo
	started_at date not null,			--fecha de cuando se inició el prestamo 
	amount double not null,				--cantidad total del prestamo
	dues int not null,					--elija la cantidad de cuotas en que desea pagar
	pagoxmes double not null,			--la cantidad que se pagara cada mes
	card_number varchar(50) not null,	--numero de tarjeta autogenerado que tendra el efectivo
	card_date varchar(10) not null,		--fecha mm/año de cuando se creo la tarjeta con el efectivo
	card_safecode int not null,			--codigo de la tarjeta que tendra el efectivo

	constraint id_service_pk
		primary key (id_service),
	constraint id_student_fk,
		foreign key (id_student) references student (id)
)
	create unique index student_service_card_number 
		on student_service(card_number);

	create unique index student_service_card_safecode 
		on student_service(card_safecode);

comment 'this table catch all the services taked by one student';




create table service --micuenta/miprestamo.html
(
	id int not null, 				--id service fk 
	id_student varchar(10) not null,--id student (DNI)
	type varchar(20) not null, 		--tipo de prestamo
	started_at date not null, 		--fecha de cuando se inició el prestamo
	amount double not null, 		--cantidad total del prestamo
	dues int not null, 				--cantidad de cuotas que eligió
	pagoxmes double not null,		--la cantidad que se pagara cada mes
	duespagados int not null,		--cantidad de cuotas pagadas hasta el momento
	pagado double not null, 		--cantidad pagada hasta el momento
	debt int not null,  			--lo que debe hasta el momento (la resta)
	payday int not null, 			--dia de pago al mes (1-30)

	constraint id_service_pk
		primary key (id),
	constraint id_service_fk
		foreign key (id) references student_service (id_service),
	constraint id_student_fk
		foreign key (id_student) references student (id),
	constraint type_fk

)
comment 'table for all services';


create table pagado -- pagar.jsp
(	
	id_pago varchar(10) not null,			--codigo de la boleta autogenerado
	id_student varchar(10) not null,		--te pedira tu DNI
	id_service int not null,				--te pedira el codigo de tu prestamo
	pagoxmes double not null, 				--te mostrara lo que tendrás que pagar (cuota/mes)

	constraint id_pago_pk
		primary key (id_pago),
	constraint id_student___fk
		foreign key (id_student) references student (id),
	constraint id_service_fk
		foreign key (id_service) references student_service (id_service)
	
)





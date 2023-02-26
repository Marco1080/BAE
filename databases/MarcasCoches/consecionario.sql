create database MarcasDeCoches;
use MarcasDeCoches;

create table CLIENTES(
dni varchar(9),
nombre varchar(15),
apellidos varchar(30),
ciudad varchar(20),
constraint cli_dni_pk primary key(dni)
);

create table MARCAS(
cifm int(11),
nombre varchar(15),
ciudad varchar(20),
constraint marc_cif_pk primary key(cifm)
);

create table CONCESIONARIO(	
cifc int(11),
nombre varchar(15),
ciudad varchar(20),
constraint con_cif_pk primary key(cifc)
);

create table COCHES(
codcoche int(11),
nombre varchar(15),
modelo varchar(15),
cifm int(11),
constraint coc_cod_pk primary key(codcoche),
constraint coc_cif_fk foreign key(cifm) references MARCAS(cifm)
);
create table VENTAS(
cifc int (11),
dni varchar(9),
codcoche int(11),
color varchar(10),
constraint ven_cco_pk primary key(cifc, codcoche),
constraint ven_cif_fk foreign key(cifc) references CONCESIONARIO(cifC),
constraint ven_cod_fk foreign key(codcoche) references COCHES(codcoche),
constraint ven_dni_fk foreign key(dni) references CLIENTES(dni)
);

create table DISTRIBUCION(
cifc int(11),
codcoche int (11),
cantidad int(11),
constraint dis_cif_pk primary key(codcoche, cifc),
constraint  dis_cic_fk foreign key(codcoche) references COCHES(codcoche),
constraint dis_cod_fk foreign key(cifc) references CONCESIONARIO(cifc)
);






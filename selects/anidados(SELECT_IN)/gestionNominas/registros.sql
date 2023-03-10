/*Empleados*/
insert into Empleados values (00011, 'Juan Ignacio Martinez', '1960-01-01', 0, 10, '12341234121234567890');
insert into Empleados values (00001, 'José Luis Pérez', '1964-04-12',2, 12, '12342233121122334455');
insert into Empleados values (02341, 'Fernando Romero Días','1955-09-25', 1, 8, '21341234560987654321');
insert into Empleados values (11223, 'Manuel Lopez Marín', '1963-12-13',0, 10, '55443322110099887766');
insert into Empleados values (67890, 'Alfonso Gutierrez Lopez', '1967-11-05', 1, 12, '12563478001234567890');
insert into Empleados values (00111, 'Encarna Lopez Lopez', '1968-03-15',0, 10, '99118822773344665500');
insert into Empleados values (02031, 'Ines Montero Zafra', '1972-02-22',1, 8, '42341534129234567890');
insert into Empleados values (09876, 'Rosa Lorite Lopez', '1975-08-18', 0, 10, '52341234521214567890');
insert into Empleados values (96352, 'Lola Martinez Contreras', '1975-03-09',1, 11, '22341224121224567820');
insert into Empleados values (76543, 'Francisca Colate Gonzalez', '1969-03-02', 3, 7, '12343234121334567893');
insert into Empleados values (73152, 'María Pascual Rojo', '1973-09-12', 3, 7, '12351234151234567590');
insert into Empleados values (64738, 'Andrés Morales Martín', '1964-01-20',3, 7, '22341154116231563690');

/*Departamentos*/
insert into Departamentos values (00001, 'Ventas');
insert into Departamentos values (00002, 'Compras');
insert into Departamentos values (00003, 'Marketing');
insert into Departamentos values (00004, 'Recursos Humanos');
insert into Departamentos values (00005, 'Administración');
insert into Departamentos values (00006, 'Dirección');

/*Trabajan*/
insert into Trabajan values (00001, 00001, 'Vendedor');
insert into Trabajan values (00001, 00003, 'Diseñador');
insert into Trabajan values (02341, 00005, 'Administrativo');
insert into Trabajan values (11223, 00006, 'Asesor Dirección');
insert into Trabajan values (11223, 00005, 'Administrativo');
insert into Trabajan values (11223, 00004, 'Selección de Personal');
insert into Trabajan values (67890, 00002, 'Gestor de compras');
insert into Trabajan values (00111, 00001, 'Vendedor');
insert into Trabajan values (02031, 00001, 'Vendedor');
insert into Trabajan values (09876, 00006, 'Director');
insert into Trabajan values (96352, 00003, 'Publicista');
insert into Trabajan values (96352, 00004, 'Encuestador');
insert into Trabajan values (96352, 00005, 'Secretaria de Dirección');
insert into Trabajan values (76543, 00001, 'Vendedor');
insert into Trabajan values (73152, 00005, 'Administrativo');
insert into Trabajan values (73152, 00003, 'Publicista');
insert into Trabajan values (64738, 00001, 'Vendedor');
insert into Trabajan values (64738, 00004, 'Selección de Personal');
insert into Trabajan values (64738, 00002, 'Gestor de compras');
insert into Trabajan values (64738, 00003, 'Diseñador');

/*Justificantes de Nóminas*/
insert into Just_nominas values (10, 2006, 1200, 200, 00001);
insert into Just_nominas values (11, 2006, 1200, 200, 00001);
insert into Just_nominas values (12, 2006, 1200, 200, 00001);
insert into Just_nominas values (01, 2007, 1200, 200, 00001);
insert into Just_nominas values (10, 2006, 1500, 300, 02341);
insert into Just_nominas values (11, 2006, 1500, 300, 02341);
insert into Just_nominas values (12, 2006, 1500, 300, 02341);
insert into Just_nominas values (01, 2007, 1500, 300, 02341);
insert into Just_nominas values (10, 2006, 1000, 100, 11223);
insert into Just_nominas values (11, 2006, 1000, 100, 11223);
insert into Just_nominas values (12, 2006, 1000, 100, 11223);
insert into Just_nominas values (01, 2007, 1000, 100, 11223);
insert into Just_nominas values (10, 2006, 1200, 200, 67890);
insert into Just_nominas values (11, 2006, 1200, 200, 67890);
insert into Just_nominas values (12, 2006, 1200, 200, 67890);
insert into Just_nominas values (01, 2007, 1200, 200, 67890);
insert into Just_nominas values (10, 2006, 1200, 200, 00111);
insert into Just_nominas values (11, 2006, 1200, 200, 00111);
insert into Just_nominas values (12, 2006, 1200, 200, 00111);
insert into Just_nominas values (01, 2007, 1200, 200, 00111);
insert into Just_nominas values (10, 2006, 1200, 200, 02031);
insert into Just_nominas values (11, 2006, 1200, 200, 02031);
insert into Just_nominas values (12, 2006, 1200, 200, 02031);
insert into Just_nominas values (01, 2007, 1200, 200, 02031);
insert into Just_nominas values (10, 2006, 1200, 200, 09876);
insert into Just_nominas values (11, 2006, 1200, 200, 09876);
insert into Just_nominas values (12, 2006, 1200, 200, 09876);
insert into Just_nominas values (01, 2007, 1200, 200, 09876);
insert into Just_nominas values (10, 2006, 1200, 200, 96352);
insert into Just_nominas values (11, 2006, 1200, 200, 96352);
insert into Just_nominas values (12, 2006, 1200, 200, 96352);
insert into Just_nominas values (01, 2007, 1200, 200, 96352);
insert into Just_nominas values (10, 2006, 1200, 200, 76543);
insert into Just_nominas values (11, 2006, 1200, 200, 76543);
insert into Just_nominas values (12, 2006, 1200, 200, 76543);
insert into Just_nominas values (01, 2007, 1200, 200, 76543);
insert into Just_nominas values (10, 2006, 1200, 200, 73152);
insert into Just_nominas values (11, 2006, 1200, 200, 73152);
insert into Just_nominas values (12, 2006, 1200, 200, 73152);
insert into Just_nominas values (01, 2007, 1200, 200, 73152);
insert into Just_nominas values (10, 2006, 1200, 200, 64738);
insert into Just_nominas values (11, 2006, 1200, 200, 64738);
insert into Just_nominas values (12, 2006, 1200, 200, 64738);
insert into Just_nominas values (01, 2007, 1200, 200, 64738);

/*Lineas*/
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 00001);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 00001);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 00001);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 00001);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 00001);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 00001);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 00001);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 00001);
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 02341);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 02341);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 02341);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 02341);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 02341);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 02341);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 02341);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 02341);
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 11223);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 11223);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 11223);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 11223);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 11223);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 11223);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 11223);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 11223);
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 67890);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 67890);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 67890);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 67890);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 67890);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 67890);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 67890);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 67890);
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 00111);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 00111);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 00111);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 00111);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 00111);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 00111);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 00111);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 00111);
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 02031);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 02031);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 02031);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 02031);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 02031);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 02031);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 02031);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 02031);
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 09876);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 09876);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 09876);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 09876);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 09876);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 09876);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 09876);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 09876);
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 96352);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 96352);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 96352);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 96352);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 96352);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 96352);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 96352);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 96352);
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 76543);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 76543);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 76543);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 76543);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 76543);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 76543);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 76543);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 76543);
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 73152);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 73152);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 73152);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 73152);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 73152);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 73152);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 73152);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 73152);
insert into Lineas values (00001, 1200, NULL, NULL, 10, 2006, 64738);
insert into Lineas values (00002, -200, 1200, 10, 10, 2006, 64738);
insert into Lineas values (00001, 1200, NULL, NULL, 11, 2006, 64738);
insert into Lineas values (00002, -200, 1200, 10, 11, 2006, 64738);
insert into Lineas values (00001, 1200, NULL, NULL, 12, 2006, 64738);
insert into Lineas values (00002, -200, 1200, 10, 12, 2006, 64738);
insert into Lineas values (00001, 1200, NULL, NULL, 01, 2007, 64738);
insert into Lineas values (00002, -200, 1200, 10, 01, 2007, 64738);




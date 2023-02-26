USE `ies21_22`;
DROP procedure IF EXISTS `procedimiento1`;

DELIMITER $$
USE `ies21_22`$$
CREATE PROCEDURE `procedimiento1` (proce varchar(15),dato2 varchar(30),dato3 varchar(15),numero4 int, dato5 varchar(15), numero6 int,numero7 int)
BEGIN
declare codigoin int;
declare codigoa int;
declare codigob int;
declare codigoalum int;
declare finbucle int;
declare notamedia int;
declare codigoasig int;
set codigoasig = (select codigo from asignatura where Denominacion like dato2);
set notamedia =(select codigoalumno from alumnonota group by codigoalumno having avg(nota)>=9 );

set codigoa = (select codigo from asignatura where denominacion like 'gestion de datos');
set codigoin = (select max(codigo) from alumno);
set codigob =(select codigo from asignatura where denominacion like 'ingles' and codigo like '941%');
set codigoalum = (select max(codigo) from alumno);
set finbucle = codigoalum;
case proce
when 'alta' then
insert into alumno (codigo,nombre,apellidos,telefono,CodigoGrupo)values (codigoin+1,dato2,dato3,numero4,dato5);
select * from alumno;
insert into alumnonota values(codigoin,codigoa,4);
insert into alumnonota values(codigoin,codigob,8);
select alumno.nombre,alumno.apellidos,alumnonota.nota,asignatura.denominacion from alumno inner join alumnonota inner join asignatura on
alumno.codigo = alumnonota.codigoalumno and alumnonota.codigoasignatura = asignatura.codigo where alumno.codigo = codigoin;
when 'MH' then
update alumno set observaciones = 'Matricula de Honor' where codigo = notamedia;
select alumno.nombre,alumno.apellidos,alumno.CodigoGrupo, avg(alumnonota.nota) as media from alumno inner join alumnonota on alumno.codigo = alumnonota.CodigoAlumno group by alumnonota.CodigoAlumno having avg(alumnonota.Nota)>=9;
when 'Modificar' then
start transaction;

while codigoalum>0 do

update alumnonota set Nota = Nota+1  where CodigoAsignatura = codigoasig;

set codigoalum=codigoalum -1;
end while;
end case;
END$$

DELIMITER ;
select alumno.nombre,alumno.apellidos,asignatura.Denominacion, alumnonota.nota from alumno inner join alumnonota inner join asignatura on alumno.codigo = alumnonota.CodigoAlumno and alumnonota.CodigoAsignatura = asignatura.Codigo where Denominacion like 'Gestion de datos';

select * from alumnonota;
select * from alumno;
select * from asignatura;
select * from asignaturasgrupo;
Call procedimiento1('Alta', 'Jorge', 'Hernández', 7777777, '941NMA', 4, 8);
Call procedimiento1('MH', '', '', 0, '741NMA', 0, 0);
Call procedimiento1('Modificar', 'Gestion de datos', '', 0, '941NMA', 0, 0);
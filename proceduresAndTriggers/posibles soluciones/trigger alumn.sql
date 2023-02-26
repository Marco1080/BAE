/*
Si las notas de los alumnos son modificadas, vamos a guardar en una tabla histórica las notas que tenían  antes de la modificación. 
- Cuando actualizo una nota de un alumno, salta el trigger y antes de actualizar que copie en la tabla “notas_del_curso_97” el código del alumno, el código de la asignatura y la nota antigua.
Por su importancia, NO quiero que nadie esté utilizando la tabla mientras se introducen los nuevos datos en la tabla “notas_del_curso_97”. Una vez hecha la transacción que se pueda utilizar otra vez dicha tabla. 
Ahora ejecuta de nuevo el procedimiento del apartado c de la pregunta anterior y comprueba que se han guardado las notas antiguas en la tabla histórica.*/

 delimiter //
 
 create trigger gestion before update on alumnonota for each row
 begin
 
 
 insert into notas_del_curso_97 (select cast(alumnonota.CodigoAlumno as double), cast(alumnonota.CodigoAsignatura as double),alumnonota.Nota);
 end//
 
// delimiter ;
update alumnonota set Nota=0  where alumnonota.CodigoAlumno =1710;

select * from notas_del_curso_97;
select * from alumnonota;

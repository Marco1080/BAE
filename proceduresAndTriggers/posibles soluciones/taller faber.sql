/*EJERCICIO 2
Realizar un procedimiento que recibe la matrícula de un vehículo y la operación a realizar. 
Utilizando un switch, que muestre:
1.- Si la operación es 'datos': escriba la marca, modelo y color del automóvil
2.- Si la operación es 'reparaciones': me da el número de reparaciones que ha sufrido ese 
automóvil
3.- Si la operación es 'empleados': me dice los empleados que han realizado esas reparaciones
4.- Si la operación es 'marca': muestra los datos de los vehículos de la misma marca.*/

USE `talleresfaber`;
DROP procedure IF EXISTS `datosvehiculo`;

USE `talleresfaber`;
DROP procedure IF EXISTS `talleresfaber`.`datosvehiculo`;
;

DELIMITER $$
USE `talleresfaber`$$
CREATE PROCEDURE `datosvehiculo`(matriculaIn varchar(8), input varchar (15))
BEGIN


case input
when 'datos' then select marca,modelo,color from vehiculos where matricula like matriculaIn;
when 'reparaciones' then select count(idreparacion) from reparaciones where  matricula like matriculaIn;
when 'empleados' then select nombre , apellidos from empleados where codempleado in (select codempleado from intervienen where idreparacion in (select idreparacion from reparaciones where matricula like matriculaIn) );
when 'marca' then select matricula,modelo,color from vehiculos where marca like(select marca from vehiculos where matricula like matriculaIn);
end case;

END$$

DELIMITER ;
call datosvehiculo('1313 DEF','marca');

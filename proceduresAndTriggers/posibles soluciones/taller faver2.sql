/*
EJERCICIO 3
Creación de un procedimiento donde envías el Código de Reparación y una de las siguientes 
opciones:
1.- Y me devuelve el importe de los recambios sustituidos en una reparación (para calcular el 
importe multiplica las unidades por el importe del recambio). 
2.- Me da el importe de las actuaciones que se llevan a cabo en una reparación (para calcular el 
importe multiplica las horas por el importe de cada actuación).
Cualquier otro número.- Hacer una consulta que calcule el importe total (mano de obra y 
recambios) de las reparaciones que se le hayan realizado.
En cualquier caso pasa como variable el Id de la reparación.*/

USE `talleresfaber`;
DROP procedure IF EXISTS `talleresfaber`.`Importe`;


DELIMITER $$
USE `talleresfaber`$$
CREATE PROCEDURE `Importe`(codrepara int, numero int)

BEGIN

declare v1 double;
declare v2 double;
case numero
when 1 then
select sum(incluyen.unidades*recambios.PrecioReferencia) from recambios inner join incluyen on recambios.IdRecambio = incluyen.IdRecambio where incluyen.IdReparacion = codrepara;
when 2 then
select sum(realizan.horas*actuaciones.importe) from actuaciones inner join realizan on actuaciones.Referencia = realizan.Referencia where realizan.IdReparacion = codrepara;
else 
 set v1  = (select sum(incluyen.unidades*recambios.PrecioReferencia) from recambios inner join incluyen on recambios.IdRecambio = incluyen.IdRecambio where incluyen.IdReparacion = codrepara);
 set v2  = (select sum(realizan.horas*actuaciones.importe) from actuaciones inner join realizan on actuaciones.Referencia = realizan.Referencia where realizan.IdReparacion = codrepara);
 select v1 as recambio,v2 as mano, sum(v1+v2);

end case;
END$$

DELIMITER ;

call Importe (3,5);
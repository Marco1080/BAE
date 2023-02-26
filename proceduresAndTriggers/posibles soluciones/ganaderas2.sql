/*
Para gestionar la dieta que le ponemos a los animales, según su peso, crearemos un procedimiento que inicie una nueva dieta para un determinado tipo de animal y su peso.
Si el peso del animal es inferior a un determinado valor (parámetro peso_animal) se asigna, con fecha actual, una nueva dieta (parámetro codigo_de_dieta) para dicho animal con las siguientes opciones, donde utilizarás un SWITCH:
a.- Poner: Si el peso del animal es menor que el peso medio de los animales de ese tipo, le ponemos una dieta de crecimiento de este tipo de animal a la fecha de hoy. Por ejemplo, 
call procemiento1(‘Poner’, 'Vaca', 350);
compruebo que los 350 kilos que pesa esta vaca es menor que la media de peso de las vacas, en ese caso le pongo a esa vaca o vacas una dieta especial de “Crecimiento de vacas” a la fecha de hoy.
La tabla dieta_animal_fechainicio antes de hacer el call:
*/

USE `diestasganaderas`;
DROP procedure IF EXISTS `procedimiento1`;

DELIMITER $$
USE `diestasganaderas`$$
CREATE PROCEDURE `procedimiento1` (proced varchar(15),animalin varchar(15),pesoin double)
BEGIN
declare media double;
declare finbucle double;
declare total double;
set finbucle =1;
set media = (select avg(peso) from animal where tipo_animal like animalin);

case proced
when 'Poner' then 
if pesoin < media  then insert into dieta_animal_fechainicio 
values((select cod_animal from animal where peso = pesoin and tipo_animal= animalin),(curdate()),(select cod_dieta from dieta where finalidad like 'Crecimiento de Vacas'),('crecimiento vacas'));
select dieta_animal_fechainicio.*,animal.tipo_animal,animal.peso from dieta_animal_fechainicio inner join animal on dieta_animal_fechainicio.cod_animal = animal.cod_animal;
end if;
when 'Gordos' then
update dieta_animal_fechainicio set od_resultado = 'Quitar dieta' where cod_animal in (select cod_animal from animal where peso > media and tipo_animal = animalin);
select dieta_animal_fechainicio.*,animal.tipo_animal,animal.peso from dieta_animal_fechainicio inner join animal on dieta_animal_fechainicio.cod_animal = animal.cod_animal where od_resultado like 'quitar dieta';
when 'Coste' then

while pesoin >= 1 do

set total = total +(select  sum(cantidad_toma*coste_alimento)  from alimento inner join alimento_dieta on alimento.nombre_alimento = alimento_dieta.nombre_alimento where cantidad_toma =pesoin and alimento.tipo_alimento like animalin);
select  sum(cantidad_toma*coste_alimento)  from alimento inner join alimento_dieta on alimento.nombre_alimento = alimento_dieta.nombre_alimento where cantidad_toma =pesoin and alimento.tipo_alimento like animalin;
set pesoin = pesoin -1;
end while;
select  total;
end case;

END$$

DELIMITER ;
select * from alimento_dieta;
select cod_animal,fecha_inicio,cod_dieta,od_resultado  from dieta_animal_fechainicio;
select * from animal;
select * from dieta;
select * from alimento;
select  sum(coste_alimento) from alimento inner join alimento_dieta on alimento.nombre_alimento = alimento_dieta.nombre_alimento where cantidad_toma =10;
call procedimiento1('Coste','Forraje',10);
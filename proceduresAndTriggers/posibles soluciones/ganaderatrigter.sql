/*
Vamos a ver las dietas que lleva cada animal dependiendo de su peso. 
Para ello crea una tabla que guarde el código del animal, la dieta que lleva, así como lo que pesa y que tipo de animal es,
 con los campos id (entero y autoicremental), cod_animal (varchar (10)), tipo animal (varchar(20)), cod_dieta (entero) y peso (entero). La tabla se llama “animal_dieta_temporal”.
- Hacer un listado el código del animal, el tipo de animal y el código de la dieta que sigue para todos los animales que pesen 30 Kilos o más.
*/
SET autocommit = OFF;
start transaction;
create table animal_dieta_temporal(
id int auto_increment primary key,
cod_animal varchar(10),
tipo_animal varchar(20),
cod_dieta int,
peso int
);
set sql_safe_updates=0;
select  animal.cod_animal,animal.tipo_animal,dieta_animal_fechainicio.cod_dieta,animal.peso from  animal  inner join dieta_animal_fechainicio on animal.cod_animal = dieta_animal_fechainicio.cod_animal where peso >30;
lock tables animal write;
lock tables animal_dieta_temporal write;
delimiter //
create trigger borrar before
delete on animal for each row 
begin
insert into animal_dieta_temporal (cod_animal,tipo_animal,cod_dieta,peso) (select  animal.cod_animal,animal.tipo_animal,dieta_animal_fechainicio.cod_dieta,animal.peso from  animal  inner join dieta_animal_fechainicio on animal.cod_animal = dieta_animal_fechainicio.cod_animal where peso >30);
end;

//delimiter ;

delete from animal where peso > 30;

select * from animal_dieta_temporal;
select * from animal;
unlock tables;
rollback;
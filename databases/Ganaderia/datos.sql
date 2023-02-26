/* Datos*/

-- Se inserta en la tabla Animal
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('V-01-D1','Vaca',650,1993,'Leche','35 l','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('L-03-D8','Cordero',25,1995,'Carne','25 Kg','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('C-01-D1','Caballo',250,1996,'Trabajo','8 horas','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('G-01-D1','Gallina',6,1999,'ponedora','4 huevos','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('L-01-D3','Cordero',35,1998,'Carne','55 Kg','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('V-01-D2','Vaca',490,1999,'Leche','32 l','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('V-02-D2','Vaca',400,1999,'Leche','40 l','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('G-02-D1','Gallina',5,1999,'Huevos','3 huevos','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('V-03-D1','Vaca',400,1999,'Leche','30 l','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('V-04-D2','Vaca',350,1999,'Leche','30 l','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('V-05-D2','Vaca',430,1997,'Leche','35 l','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('G-03-D1','Gallina',5,1998,'Huevos','3 huevos','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('G-04-D1','Gallina',4,1998,'Huevos','4 huevos','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('G-05-D1','Gallina',3,1998,'Huevos','3 huevos','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('G-06-D1','Gallina',4,1998,'Huevos','5 huevos','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('L-02-D2','Cordero',31,1999,'Carne','31 Kg','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('P-01-D1','Cerdo',150,1999,'Carne','150 Kg','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('P-02-D2','Cerdo',200,1999,'Carne','200 Kg','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('P-03-D3','Cerdo',175,1999,'Carne','175 Kg','');
INSERT
  INTO Animal (cod_animal,tipo_animal,peso,ano_nacimiento,
       utilidad_animal,produccion_animal,od_animal)
  VALUES ('P-04-D4','Cerdo',230,1999,'Carne','230 Kg','');



-- Se inserta en la tabla Alimento
INSERT
  INTO Alimento (nombre_alimento,tipo_alimento,magnitud_alimento,
       coste_alimento,od_alimento)
  VALUES ('Maiz','Cereal','Kg',120,'');
INSERT
  INTO Alimento (nombre_alimento,tipo_alimento,magnitud_alimento,
       coste_alimento,od_alimento)
  VALUES ('Avena','Cereal','Kg',300,
         'Necesario en dieta de Caballos');
INSERT
  INTO Alimento (nombre_alimento,tipo_alimento,magnitud_alimento,
       coste_alimento,od_alimento)
  VALUES ('Forraje','Forraje','Kg',30,'');
INSERT
  INTO Alimento (nombre_alimento,tipo_alimento,magnitud_alimento,
       coste_alimento,od_alimento)
  VALUES ('Procria A-30','Pienso','Kg',230,
         'Pollonas en crecimiento');
INSERT
  INTO Alimento (nombre_alimento,tipo_alimento,magnitud_alimento,
       coste_alimento,od_alimento)
  VALUES ('Procria A-51','Pienso','Kg',280,'Pollonas en Jaula');
INSERT
  INTO Alimento (nombre_alimento,tipo_alimento,magnitud_alimento,
       coste_alimento,od_alimento)
  VALUES ('Procria C-5','Pienso','Kg',330,'Preiniciado Lechones');
INSERT
  INTO Alimento (nombre_alimento,tipo_alimento,magnitud_alimento,
       coste_alimento,od_alimento)
  VALUES ('Procria C-30','Pienso','Kg',290,
         'Crecimiento y desarrollo');
INSERT
  INTO Alimento (nombre_alimento,tipo_alimento,magnitud_alimento,
       coste_alimento,od_alimento)
  VALUES ('Procria V-40','Pienso','Kg',370,'Vacas Lecheras');
INSERT
  INTO Alimento (nombre_alimento,tipo_alimento,magnitud_alimento,
       coste_alimento,od_alimento)
  VALUES ('Procria V-55','Pienso','Kg',390,'Vacas');
INSERT
  INTO Alimento (nombre_alimento,tipo_alimento,magnitud_alimento,
       coste_alimento,od_alimento)
  VALUES ('Galope','Pienso','Kg',420,'Caballos');



-- Se inserta en la tabla Nutriente
INSERT
  INTO Nutriente (nombre_nutriente,magnitud_nutriente,
       estado,od_nutriente)
  VALUES ('Vitamina A','mg','Sólido','Necesario');
INSERT
  INTO Nutriente (nombre_nutriente,magnitud_nutriente,
       estado,od_nutriente)
  VALUES ('Vitamina B','mg','Sólido',' No necesario');
INSERT
  INTO Nutriente (nombre_nutriente,magnitud_nutriente,
       estado,od_nutriente)
  VALUES ('Vitamina C','mg','Sólido','Necesario');
INSERT
  INTO Nutriente (nombre_nutriente,magnitud_nutriente,
       estado,od_nutriente)
  VALUES ('Hierro','mg','Líquido','Necesario');
INSERT
  INTO Nutriente (nombre_nutriente,magnitud_nutriente,
       estado,od_nutriente)
  VALUES ('Cobre','mg','Líquido','No necesario');
INSERT
  INTO Nutriente (nombre_nutriente,magnitud_nutriente,
       estado,od_nutriente)
  VALUES ('Calcio','mg','Sólido','Necesario');
INSERT
  INTO Nutriente (nombre_nutriente,magnitud_nutriente,
       estado,od_nutriente)
  VALUES ('Potacio','mg','Sólido','Necesario');
INSERT
  INTO Nutriente (nombre_nutriente,magnitud_nutriente,
       estado,od_nutriente)
  VALUES ('Riboflavina','mg','Sólido','Necesario');



-- Se inserta en la tabla Nutriente_Alimento
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina A','Maiz',1.1);  
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina B','Maiz',0.7);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina C','Maiz',1.4);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Hierro','Maiz',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Cobre','Maiz',0.9);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Calcio','Maiz',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Potacio','Maiz',1.0);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Riboflavina','Maiz',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina B','Avena',0.6);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina C','Avena',0.6);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Hierro','Avena',1.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Calcio','Avena',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Potacio','Avena',1.1);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Riboflavina','Avena',1.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina A','Forraje',0.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina B','Forraje',0.4);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina C','Forraje',1.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Hierro','Forraje',1.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Cobre','Forraje',0.9);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Calcio','Forraje',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Potacio','Forraje',0.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Riboflavina','Forraje',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina A','Procria A-30',1.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina B','Procria A-30',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina C','Procria A-30',0.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Hierro','Procria A-30',0.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Cobre','Procria A-30',0.9);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Calcio','Procria A-30',1.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Potacio','Procria A-30',1.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Riboflavina','Procria A-30',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina A','Procria A-51',0.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina B','Procria A-51',1.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina C','Procria A-51',1.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Hierro','Procria A-51',0.7);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Cobre','Procria A-51',0.4);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Calcio','Procria A-51',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Potacio','Procria A-51',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Riboflavina','Procria A-51',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina A','Procria C-5',1.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina B','Procria C-5',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina C','Procria C-5',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Hierro','Procria C-5',0.8);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Cobre','Procria C-5',1.4);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Calcio','Procria C-5',0.7);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Potacio','Procria C-5',0.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Riboflavina','Procria C-5',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina A','Procria C-30',0.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina B','Procria C-30',1.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina C','Procria C-30',0.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Hierro','Procria C-30',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Cobre','Procria C-30',0.4);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Calcio','Procria C-30',0.7);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Potacio','Procria C-30',0.7);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Riboflavina','Procria C-30',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina A','Procria V-40',0.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina B','Procria V-40',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina C','Procria V-40',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Hierro','Procria V-40',0.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Cobre','Procria V-40',1.4);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Calcio','Procria V-40',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Potacio','Procria V-40',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Riboflavina','Procria V-40',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina A','Procria V-55',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina B','Procria V-55',1.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina C','Procria V-55',0.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Hierro','Procria V-55',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Cobre','Procria V-55',0.4);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Calcio','Procria V-55',0.8);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Potacio','Procria V-55',1.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Riboflavina','Procria V-55',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina A','Galope',0.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina B','Galope',0.5);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Vitamina C','Galope',1.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Hierro','Galope',0.3);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Cobre','Galope',1.4);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Calcio','Galope',0.9);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Potacio','Galope',1.2);
INSERT
  INTO Nutriente_Alimento (nombre_nutriente,nombre_alimento,
       cantidad_contenida)
  VALUES ('Riboflavina','Galope',1.3);



-- Se inserta en la tabla Animal_Nutriente
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D1','Vitamina A',50);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D1','Riboflavina',50);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D1','Vitamina B',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D1','Vitamina C',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D1','Hierro',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D1','Cobre',3);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D1','Calcio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D1','Potacio',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-03-D8','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-03-D8','Riboflavina',50);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-03-D8','Vitamina B',50);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-03-D8','Vitamina C',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-03-D8','Hierro',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-03-D8','Cobre',3);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-03-D8','Calcio',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-03-D8','Potacio',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('C-01-D1','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('C-01-D1','Vitamina B',50);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('C-01-D1','Vitamina C',50);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('C-01-D1','Hierro',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('C-01-D1','Cobre',3);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('C-01-D1','Calcio',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('C-01-D1','Potacio',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-01-D1','Vitamina A',50);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-01-D1','Vitamina B',70);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-01-D1','Vitamina C',60);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-01-D1','Hierro',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-01-D1','Cobre',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-01-D1','Calcio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-01-D1','Potacio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-01-D3','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-01-D3','Riboflavina',50);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-01-D3','Vitamina B',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-01-D3','Vitamina C',50);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-01-D3','Hierro',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-01-D3','Cobre',3);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-01-D3','Calcio',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-01-D3','Potacio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D2','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D2','Riboflavina',80);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D2','Vitamina B',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D2','Vitamina C',70);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D2','Hierro',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D2','Cobre',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D2','Calcio',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-01-D2','Potacio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-02-D2','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-02-D2','Riboflavina',80);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-02-D2','Vitamina B',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-02-D2','Vitamina C',70);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-02-D2','Hierro',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-02-D2','Cobre',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-02-D2','Calcio',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-02-D2','Potacio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-02-D1','Vitamina A',60);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-02-D1','Vitamina B',30);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-02-D1','Vitamina C',30);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-02-D1','Hierro',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-02-D1','Cobre',3);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-02-D1','Calcio',3);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-02-D1','Potacio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-03-D1','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-03-D1','Riboflavina',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-03-D1','Vitamina B',70);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-03-D1','Vitamina C',80);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-03-D1','Hierro',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-03-D1','Cobre',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-03-D1','Calcio',8);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-03-D1','Potacio',9);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-04-D2','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-04-D2','Riboflavina',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-04-D2','Vitamina B',70);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-04-D2','Vitamina C',80);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-04-D2','Hierro',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-04-D2','Cobre',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-04-D2','Calcio',8);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-04-D2','Potacio',9);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-05-D2','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-05-D2','Riboflavina',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-05-D2','Vitamina B',70);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-05-D2','Vitamina C',80);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-05-D2','Hierro',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-05-D2','Cobre',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-05-D2','Calcio',8);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('V-05-D2','Potacio',9);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-03-D1','Vitamina A',40);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-03-D1','Vitamina B',30);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-03-D1','Vitamina C',30);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-03-D1','Hierro',1);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-03-D1','Cobre',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-03-D1','Calcio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-03-D1','Potacio',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-04-D1','Vitamina A',40);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-04-D1','Vitamina B',30);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-04-D1','Vitamina C',30);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-04-D1','Hierro',1);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-04-D1','Cobre',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-04-D1','Calcio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-04-D1','Potacio',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-05-D1','Vitamina A',60);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-05-D1','Vitamina B',30);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-05-D1','Vitamina C',30);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-05-D1','Hierro',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-05-D1','Cobre',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-05-D1','Calcio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-05-D1','Potacio',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-06-D1','Vitamina A',60);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-06-D1','Vitamina B',30);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-06-D1','Vitamina C',30);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-06-D1','Hierro',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-06-D1','Cobre',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-06-D1','Calcio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('G-06-D1','Potacio',2);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-02-D2','Vitamina A',70);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-02-D2','Riboflavina',80);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-02-D2','Vitamina B',40);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-02-D2','Vitamina C',60);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-02-D2','Hierro',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-02-D2','Cobre',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-02-D2','Calcio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('L-02-D2','Potacio',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-01-D1','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-01-D1','Riboflavina',80);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-01-D1','Vitamina B',70);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-01-D1','Vitamina C',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-01-D1','Hierro',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-01-D1','Cobre',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-01-D1','Calcio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-01-D1','Potacio',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-02-D2','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-02-D2','Riboflavina',80);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-02-D2','Vitamina B',70);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-02-D2','Vitamina C',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-02-D2','Hierro',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-02-D2','Cobre',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-02-D2','Calcio',4);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-02-D2','Potacio',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-03-D3','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-03-D3','Riboflavina',80);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-03-D3','Vitamina B',90);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-03-D3','Vitamina C',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-03-D3','Hierro',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-03-D3','Cobre',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-03-D3','Calcio',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-03-D3','Potacio',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-04-D4','Vitamina A',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-04-D4','Riboflavina',90);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-04-D4','Vitamina B',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-04-D4','Vitamina C',100);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-04-D4','Hierro',5);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-04-D4','Cobre',6);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-04-D4','Calcio',7);
INSERT
  INTO Animal_Nutriente (cod_animal,nombre_nutriente,
       cantidad_necesitada)
  VALUES ('P-04-D4','Potacio',6);  



-- Se inserta en la tabla Dieta
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (342567,'Crecimiento de vacas','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (442567,'Normal para vacas','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (642567,'Producción de leche','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (742567,'Producción huevos','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (842567,'Crecimiento de Gallinas','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (942567,'Normal de Gallinas','');
       
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (104256,'Crecimiento de Cordero','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (114256,'Normal de Cordero','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (124256,'Crecimiento de Caballos','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (134256,'Normal de Caballo','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (144256,'Crecimiento de Cerdos','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (154256,'Normal de Cerdos','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (111111,'Especial de Vacas','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (222222,'Especial de Gallinas','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (333333,'Especial de Corderos','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (444444,'Especial de Caballos','');
INSERT
  INTO Dieta (cod_dieta,finalidad,od_dieta)
  VALUES (555555,'Especial de Cerdos','');




-- Se inserta en la tabla Dieta_Animal
INSERT
  INTO Dieta_Animal_FechaInicio (cod_animal,fecha_inicio,
       cod_dieta,od_resultado)
  VALUES ('V-01-D1','1999-01-10',342567,'');
INSERT
  INTO Dieta_Animal_FechaInicio (cod_animal,fecha_inicio,
       cod_dieta,od_resultado)
  VALUES ('V-01-D1','2001-10-19',642567,'');
INSERT
  INTO Dieta_Animal_FechaInicio (cod_animal,fecha_inicio,
       cod_dieta,od_resultado)
  VALUES ('L-03-D8','2001-10-9',442567,'');
INSERT
  INTO Dieta_Animal_FechaInicio (cod_animal,fecha_inicio,
       cod_dieta,od_resultado)
  VALUES ('C-01-D1','2014-02-01',124256,'');
INSERT
  INTO Dieta_Animal_FechaInicio (cod_animal,fecha_inicio,
       cod_dieta,od_resultado)
  VALUES ('G-01-D1','2014-08-10',742567,'');
INSERT
  INTO Dieta_Animal_FechaInicio (cod_animal,fecha_inicio,
       cod_dieta,od_resultado)
  VALUES ('G-02-D1', '2015-09-9',842567,'');



-- Se inserta en la tabla Alimento_Dieta
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (342567,'Forraje',01,10);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (342567,'Procria V-55',03,20);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (342567,'Procria V-55',05,20);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (442567,'Forraje',01,10);           
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (442567,'Forraje',03,30);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (442567,'Forraje',05,30);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (642567,'Forraje',01,10);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (642567,'Procria V-40',03,30);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (642567,'Procria V-40',05,30);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (742567,'Procria A-51',01,0.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (742567,'Procria A-51',03,0.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (742567,'Procria A-51',05,0.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (842567,'Procria A-30',01,0.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (842567,'Procria A-30',03,0.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (842567,'Procria A-30',05,0.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (942567,'Maiz',01,0.7);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (942567,'Maiz',03,0.7);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (942567,'Maiz',05,0.7);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (104256,'Procria A-30',01,2);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (104256,'Procria A-30',03,2);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (104256,'Procria A-30',05,2);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (114256,'Forraje',01,2.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (114256,'Forraje',03,2.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (114256,'Forraje',05,2.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (124256,'Galope',01,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (124256,'Galope',03,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (124256,'Galope',05,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (134256,'Avena',01,3.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (134256,'Avena',03,5.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (134256,'Avena',05,5.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (144256,'Procria C-5',01,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (144256,'Procria C-5',02,2.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (144256,'Procria C-5',03,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (144256,'Procria C-5',04,2.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (144256,'Procria C-5',05,3.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (144256,'Maiz',05,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (154256,'Procria C-5',01,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (154256,'Procria C-5',03,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (154256,'Procria C-5',05,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (111111,'Procria C-30',01,20.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (111111,'Procria C-30',03,20.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (111111,'Procria C-30',05,20.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (222222,'Procria C-30',01,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (222222,'Procria C-30',03,4.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (222222,'Procria C-30',05,4.5);         
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (333333,'Procria C-30',01,7.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (333333,'Procria C-30',03,7.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (333333,'Procria C-30',05,7.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (444444,'Procria C-30',01,15.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (444444,'Procria C-30',03,15.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (444444,'Procria C-30',05,15.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (555555,'Procria C-30',01,7.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (555555,'Procria C-30',03,7.5);
INSERT
  INTO Alimento_Dieta (cod_dieta,nombre_alimento,
       cod_toma,cantidad_toma)
  VALUES (555555,'Procria C-30',05,7.5);

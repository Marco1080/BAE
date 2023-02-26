/* 
Crear el esquema de la base de datos correspondiente
al problema de las Dietas Ganaderas


*/
create database diestasganaderas;
use diestasganaderas;
CREATE TABLE Animal (
  cod_animal VARCHAR(10) NOT NULL,
  tipo_animal VARCHAR(20), 
  peso INT(4), 
  ano_nacimiento INT(4), 
  utilidad_animal VARCHAR(20), 
  produccion_animal VARCHAR(20), 
  od_animal TEXT, 
  PRIMARY KEY (cod_animal) 
  ); 
  
CREATE TABLE Nutriente (
  nombre_nutriente VARCHAR(30) NOT NULL,
  magnitud_nutriente VARCHAR(10), 
  estado VARCHAR(10), 
  od_nutriente TEXT, 
  PRIMARY KEY (nombre_nutriente) 
	); 
    
CREATE TABLE Animal_Nutriente (
  cod_animal VARCHAR(10) NOT NULL, 
  nombre_nutriente VARCHAR(30) NOT NULL,
  cantidad_necesitada INT(4), 
     PRIMARY KEY (cod_animal, nombre_nutriente), 
     FOREIGN KEY (cod_animal) REFERENCES Animal(cod_animal) ON DELETE CASCADE, 
     FOREIGN KEY (nombre_nutriente) REFERENCES Nutriente(nombre_nutriente) ON DELETE CASCADE 
    ); 
    
CREATE TABLE Alimento ( 
  nombre_alimento VARCHAR(30) NOT NULL,
  tipo_alimento VARCHAR(15), 
  magnitud_alimento VARCHAR(10), 
  coste_alimento INT(4), 
  od_alimento TEXT, 
    PRIMARY KEY (nombre_alimento) 
    ); 
    
CREATE TABLE Nutriente_Alimento (
  nombre_nutriente VARCHAR(30) NOT NULL,
  nombre_alimento VARCHAR(30) NOT NULL,
  cantidad_contenida DECIMAL(4,2), 
   PRIMARY KEY (nombre_nutriente, nombre_alimento), 
   FOREIGN KEY (nombre_nutriente) REFERENCES Nutriente(nombre_nutriente)ON DELETE CASCADE, 
   FOREIGN KEY (nombre_alimento) REFERENCES Alimento(nombre_alimento)ON DELETE CASCADE 
    ); 
    

    
CREATE TABLE Dieta (
  cod_dieta INT(6) NOT NULL,
  finalidad VARCHAR(60), 
  od_dieta TEXT, 
    PRIMARY KEY (cod_dieta) 
     ); 
     
CREATE TABLE Alimento_Dieta ( 
  cod_dieta INT(6) NOT NULL,
  nombre_alimento VARCHAR(30) NOT NULL,
  cod_toma INT(2) NOT NULL,
  cantidad_toma DECIMAL(4,2), 
    PRIMARY KEY (nombre_alimento, cod_dieta, cod_toma), 
    FOREIGN KEY (nombre_alimento) REFERENCES Alimento(nombre_alimento) ON DELETE CASCADE, 
    FOREIGN KEY (cod_dieta) REFERENCES Dieta(cod_dieta) ON DELETE CASCADE
 ); 
 
CREATE TABLE Dieta_Animal_FechaInicio ( 
  cod_animal VARCHAR(10) NOT NULL,
  fecha_inicio DATE NOT NULL,
  cod_dieta INT(6) NOT NULL,
  od_resultado TEXT,
    PRIMARY KEY (cod_animal, fecha_inicio), 
    FOREIGN KEY (cod_dieta) REFERENCES Dieta(cod_dieta), 
    FOREIGN KEY (cod_animal) REFERENCES Animal(cod_animal) ON DELETE CASCADE 
    ); 

CREATE DATABASE IF NOT EXISTS `ies21_22`;
USE `iesies21_22`;

#
# Table structure for table 'Grupo'
#

DROP TABLE IF EXISTS `Grupo`;

CREATE TABLE `Grupo` (
  `Codigo` VARCHAR(6) NOT NULL, 
  `CodigoTutor` TINYINT, 
  PRIMARY KEY (`Codigo`)
);

#
# Table structure for table 'Asignatura'
#

DROP TABLE IF EXISTS `Asignatura`;

CREATE TABLE `Asignatura` (
  `Codigo` INTEGER NOT NULL, 
  `Denominacion` VARCHAR(45), 
  INDEX (`Denominacion`), 
  PRIMARY KEY (`Codigo`)
);

#
# Table structure for table 'Alumno'
#

DROP TABLE IF EXISTS `Alumno`;

CREATE TABLE `Alumno` (
  `Codigo` INTEGER NOT NULL DEFAULT 0, 
  `Nombre` VARCHAR(19) NOT NULL, 
  `Apellidos` VARCHAR(34) NOT NULL, 
  `Nombre Padre` VARCHAR(19), 
  `Apellidos Padre` VARCHAR(34), 
  `Telefono` VARCHAR(9) NOT NULL, 
  `CodigoGrupo` VARCHAR(6) NOT NULL, 
  `Direccion` VARCHAR(38), 
  `Codigo Postal` VARCHAR(5), 
  `Municipio` VARCHAR(26),
  `Observaciones` VARCHAR(26),
  INDEX (`CodigoGrupo`, `Apellidos`, `Nombre`), 
  INDEX (`Apellidos`, `Nombre`), 
  PRIMARY KEY (`Codigo`),
  foreign key (CodigoGrupo) references Grupo(Codigo)
);

#
# Table structure for table 'Profesor'
#

DROP TABLE IF EXISTS `Profesor`;

CREATE TABLE `Profesor` (
  `Codigo` INT NOT NULL, 
  `Nombre` VARCHAR(54), 
  INDEX (`Nombre`), 
  PRIMARY KEY (`Codigo`)
);

#
# Table structure for table 'AlumnoNota'
#

DROP TABLE IF EXISTS `AlumnoNota`;

CREATE TABLE `AlumnoNota` (
  `CodigoAlumno` INTEGER NOT NULL, 
  `CodigoAsignatura` INTEGER NOT NULL, 
  `Nota` TINYINT DEFAULT 0, 
  INDEX (`CodigoAsignatura`, `CodigoAlumno`), 
  PRIMARY KEY (`CodigoAlumno`, `CodigoAsignatura`),
  foreign key (CodigoAlumno) references Alumno(Codigo),
  foreign key (CodigoAsignatura) references Asignatura(Codigo)
);





#
# Table structure for table 'AsignaturasGrupo'
#

DROP TABLE IF EXISTS `AsignaturasGrupo`;

CREATE TABLE `AsignaturasGrupo` (
  `CodigoGrupo` VARCHAR(6) NOT NULL, 
  `CodigoAsignatura` INTEGER NOT NULL, 
  `CodigoProfesor` INT NOT NULL, 
  PRIMARY KEY (`CodigoGrupo`, `CodigoAsignatura`, `CodigoProfesor`),
  foreign key (CodigoGrupo) references Grupo(Codigo),
  foreign key (CodigoAsignatura) references Asignatura(Codigo),
  foreign key (CodigoProfesor) references Profesor(Codigo)
);






#
# Table structure for table 'Notas_del_curso_97'
#

DROP TABLE IF EXISTS `Notas_del_curso_97`;

CREATE TABLE `Notas_del_curso_97` (
  `ExpAlumno` DOUBLE NULL, 
  `CodAsignatura` DOUBLE NULL, 
  `Nota` INTEGER DEFAULT 0
);


#
# Table structure for table 'Alumnos_de_Baja'
#

DROP TABLE IF EXISTS `Alumnos_de_Baja`;

CREATE TABLE `Alumnos_de_Baja` (
  `Nombre` VARCHAR(19), 
  `Apellidos` VARCHAR(34), 
  `Nombre Padre` VARCHAR(19), 
  `Apellidos Padre` VARCHAR(34), 
  `Telefono` DOUBLE NULL, 
  `Grupo` VARCHAR(6), 
  `Direccion` VARCHAR(38), 
  `Codigo Postal` DOUBLE NULL, 
  `Provincia` VARCHAR(15), 
  `Municipio` VARCHAR(26), 
  `Numero Expediente` DOUBLE NULL
);

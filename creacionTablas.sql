-- Se Accede a la base de datos ElUniversitario

use ElUniversitario;

-- se crea departamento

CREATE TABLE departamento (
	id INT (10) PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL
);

-- se crea profesor
CREATE TABLE profesor (
	id INT (10) PRIMARY KEY,
	nif VARCHAR (9),
	nombre  VARCHAR(25) NOT NULL,
	apellido1 VARCHAR(50) NOT NULL,
	apellido2 VARCHAR(50) NOT NULL,
	ciudad VARCHAR(25) NOT NULL,
	direccion VARCHAR(50) NOT NULL,
	telefono VARCHAR (9),
	fecha_nacimiento DATE NOT NULL,
	sexo ENUM('H', 'M'),
	id_departamento INT(10),
	FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

-- se crea grado
CREATE TABLE grado(
	id INT (10) PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);


-- se crea asignatura
CREATE TABLE asignatura (
	id INT (10) PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	creditos VARCHAR(100) NOT NULL,
	tipo ENUM('básica', 'obligatoria','optativa') NOT NULL,
	curso TINYINT(3) NOT NULL,
	cuatrimestre TINYINT (3) NOT NULL,
	id_profesor  INT (10),
	id_grado  INT (10) NOT NULL,
	FOREIGN KEY (id_profesor) REFERENCES profesor(id),
	FOREIGN KEY (id_grado) REFERENCES grado(id)
);
-- se crea alumno
CREATE TABLE alumno (
	id INT (10) PRIMARY KEY,
	nif VARCHAR (9),
	nombre  VARCHAR(25) NOT NULL,
	apellido1 VARCHAR(50) NOT NULL,
	apellido2 VARCHAR(50) NOT NULL,
	ciudad VARCHAR(25) NOT NULL,
	direccion VARCHAR(50) NOT NULL,
	telefono VARCHAR (9),
	fecha_nacimiento DATE NOT NULL,
	sexo ENUM('H', 'M')
);
-- se crea curso escolar
CREATE TABLE curso_escolar(
	id INT (10) PRIMARY KEY,
	anyo_inicio YEAR(4),
	anyo_fin YEAR(4)
);

-- se crea alumno_se_matricula_asignatura

CREATE TABLE alumno_se_matricula_asignatura(
	id_alumno INT (10)NOT NULL,
	id_asignatura INT (10) NOT NULL,
	id_curso_escolar INT (10) NOT NULL,
	PRIMARY KEY (id_alumno,id_asignatura,id_curso_escolar),
	FOREIGN key (id_alumno) REFERENCES alumno(id),
	FOREIGN key (id_asignatura) REFERENCES asignatura(id),
	FOREIGN key (id_curso_escolar) REFERENCES curso_escolar(id)
);

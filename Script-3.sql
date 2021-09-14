CREATE TABLE estudiante(
  legajo INTEGER NOT NULL PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  carrera VARCHAR(45) NOT NULL
)

 CREATE TABLE curso(
 codigo INTEGER NOT NULL PRIMARY KEY,
 nombre VARCHAR(45) NOT NULL,
 descripcion VARCHAR(45),
 cupo INTEGER,
 turno VARCHAR(45) NOT NULL,
 PROFESOR_id INT,
 CONSTRAINT FK_profesor_curso
 FOREIGN KEY(PROFESOR_id) REFERENCES profesor(id)
 )
 
 CREATE TABLE inscripcion(
 numero INTEGER NOT NULL PRIMARY KEY,
 CURSO_codigo INT NOT NULL,
 ESTUDIANTE_legajo INt NOT NULL,
 fecha_hora TIMESTAMP,
 CONSTRAINT FK_curso_inscripcion
 FOREIGN KEY(CURSO_codigo) REFERENCES curso(codigo),
 CONSTRAINT FK_estudiante_inscripcion
 FOREIGN KEY(ESTUDIANTE_legajo) REFERENCES estudiante(legajo)

 )
 
INSERT INTO curso VALUES (101, 'Algoritmos','Algoritmos y estructuras de datos',20,'Mañana', 1)
INSERT INTO curso VALUES (102, 'Matemática Discreta',null,20,'Tarde', 2)
INSERT INTO curso VALUES (103, 'Programación Java','POO en Java',35,'Noche', 4)
INSERT INTO curso VALUES (104, 'Programación Web',null,35,'Noche', 5)
INSERT INTO curso VALUES (105, 'Programación C#','.NET, Visual Studio 2019',30,'Noche', 6)

INSERT INTO estudiante VALUES (36485, 'Romina','Nieva','1999-11-26','Mecánica')
INSERT INTO estudiante VALUES (39685, 'Brenda','Madrano','2000-09-25','Sistemas')
INSERT INTO estudiante VALUES (41258, 'Ramiro','Ríos','1994-12-06','Sistemas')
INSERT INTO estudiante VALUES (43651, 'Cristian','Gómez','1995-03-19','Mecánica')
INSERT INTO estudiante VALUES (47521, 'María','Velazquez','1998-01-02','Sistemas')
INSERT INTO estudiante VALUES (47961, 'Alexis','Reinoso','1994-12-17','Sistemas')
INSERT INTO estudiante VALUES (48952, 'Gabriel','Morales','1996-10-03','Sistemas')
INSERT INTO estudiante VALUES (51200, 'Lourdes','Martinez','2001-12-13','Sistemas')

INSERT INTO inscripcion VALUES (1,101,41258,'2012-05-02 18:45:00')
INSERT INTO inscripcion VALUES (2,102,41258,'2012-04-02 18:45:00')
INSERT INTO inscripcion VALUES (3,102,47961,'2012-01-02 20:01:00')
INSERT INTO inscripcion VALUES (4,103,47961,'2012-04-28 18:45:00')
INSERT INTO inscripcion VALUES (5,101,39685,'2012-04-12 18:45:00')
INSERT INTO inscripcion VALUES (6,103,36485,'2012-04-28 18:45:00')
INSERT INTO inscripcion VALUES (7,103,43651,'2012-04-28 18:45:00')
INSERT INTO inscripcion VALUES (8,101,47961,'2012-04-28 18:45:00')
INSERT INTO inscripcion VALUES (11,101,43651,'2012-04-21 18:45:00')
INSERT INTO inscripcion VALUES (13,102,47521,'2012-04-03 18:45:00')
INSERT INTO inscripcion VALUES (14,102,51200,'2012-05-02 18:45:00')

SELECT carrera, COUNT(*)
FROM estudiante
WHERE carrera LIKE 'Mecánica'
GROUP BY carrera HAVING COUNT(*);

SELECT MIN(Salario) as 'Mínimo Salario'
FROM profesor 
WHERE fecha_nacimiento BETWEEN '1980-00-00' AND '1989-12-12' 

CREATE TABLE pais(
  idpais INTEGER NOT NULL PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL
)

CREATE TABLE pasajero(
 idpasajero INTEGER NOT NULL PRIMARY KEY,
 nombre VARCHAR(45) NOT NULL,
 apartamento INT NOT NULL,
 amaterno VARCHAR(45) NOT NULL,
 tipo_documento INT NOT NULL,
 fecha_nacimiento DATE NOT NULL,
 PAIS_id INT NOT NULL,
 telefono INT,
 email VARCHAR(45) NOT NULL,
 clave INT NOT NULL,
 CONSTRAINT FK_pais_pasajero
 FOREIGN KEY(PAIS_id) REFERENCES pais(idpais)
 )


CREATE TABLE pago(
idpago INTEGER NOT NULL PRIMARY KEY,
idreserva INTEGER UNIQUE,
fecha DATE NOT NULL,
PASAJERO_id INTEGER NOT NULL,
monto FLOAT NOT NULL,
tipo_comprobante VARCHAR(45) NOT NULL,
num_comprobante INTEGER NOT NULL,
impuesto INTEGER NOT NULL,

CONSTRAINT FK_pasajero_pago
FOREIGN KEY(PASAJERO_id) REFERENCES pasajero(idpasajero)
)


INSERT INTO pais VALUES (1,'Italia')
INSERT INTO pais VALUES (2,'Argentina')
INSERT INTO pais VALUES (3,'Mexico')
INSERT INTO pais VALUES (4,'Estados Unidos')
INSERT INTO pais VALUES (5,'Chile')
INSERT INTO pais VALUES (6,'Peru')
INSERT INTO pais VALUES (7,'Jamaica')
INSERT INTO pais VALUES (8,'España')

INSERT INTO pasajero VALUES (10,'jorgito',5,'roberto',40200540, '1997-11-12',1,44590023,'jorgito@gmail.com',25)
INSERT INTO pasajero VALUES (11,'alberto',7,'miguel',30200540, '1987-08-12',7,44590023,'alberto@gmail.com',30)
INSERT INTO pasajero VALUES (12,'maria',24,'sonia',25200540, '1995-04-12',8,44590023,'maria@gmail.com',10)
INSERT INTO pasajero VALUES (13,'romina',17,'kuzco',36200540, '1990-11-12',3,44590023,'romina@gmail.com',20)
INSERT INTO pasajero VALUES (14,'alicia',3,'billy',42200540, '1991-10-12',1,44590023,'alicia@gmail.com',17)
INSERT INTO pasajero VALUES (15,'cintia',45,'mandy',41200540, '2000-11-07',2,44590023,'cintia@gmail.com',40)

INSERT INTO pago VALUES (101, 201, '2020-05-12', 10, 25000.6,'liquidacion', 25, 10)
INSERT INTO pago VALUES (102, 202, '2021-05-12', 10, 30000.8,'cuotas', 45, 20)
INSERT INTO pago VALUES (103, 203, '2020-05-12', 11, 20000,'completo', 35, 10)
INSERT INTO pago VALUES (104, 204, '2019-05-12', 10, 80000,'liquidacion', 18, 10)
INSERT INTO pago VALUES (105, 205, '2010-05-12', 15, 90000.5,'cuotas', 15, 20)
INSERT INTO pago VALUES (106, 206, '2014-05-12', 11, 70000,'liquidacion', 60, 40)
INSERT INTO pago VALUES (107, 207, '2015-05-12', 15, 40000,'completo', 70, 30)

SELECT PAIS_id, COUNT(*)
FROM pasajero
GROUP BY PAIS_id HAVING COUNT(*);

SELECT SUM(monto) as 'total de pagos realizados'
FROM pago

SELECT SUM(monto), PASAJERO_id as 'total de pagos realizados de cada pasajero'
FROM pago
GROUP BY PASAJERO_id 

SELECT ROUND(AVG(monto),2)
FROM pago






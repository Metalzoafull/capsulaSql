CREATE TABLE profesor(
  id INTEGER NOT NULL PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  salario FLOAT
)

INSERT INTO profesor VALUES (1, 'Juan','Pérez','1990-06-06',55000);
INSERT INTO profesor VALUES (2, 'María Emilia','Paz','1984-07-15',72000);
INSERT INTO profesor VALUES (3, 'Martín','Correa','1987-12-07',63000);
INSERT INTO profesor VALUES (4, 'Lucía','Díaz','1991-02-24',45000);
INSERT INTO profesor VALUES (5, 'Raúl','Martínez','1980-10-15',85000);
INSERT INTO profesor VALUES (6, 'Mabel','Ríos','1982-06-12',83000);

SELECT nombre,apellido,fecha_nacimiento
FROM profesor 
ORDER BY fecha_nacimiento ; 

SELECT * 
FROM profesor
WHERE salario > 65000;

SELECT * 
FROM profesor
WHERE fecha_nacimiento 
BETWEEN '1980-00-00' AND '1989-12-12';

SELECT *
FROM profesor
LIMIT 5

SELECT * 
FROM profesor
WHERE apellido LIKE '%P%'


SELECT * 
FROM profesor
WHERE fecha_nacimiento BETWEEN '1980-00-00' AND '1989-12-12' 
AND salario > 80000;
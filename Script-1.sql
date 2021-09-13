 CREATE TABLE curso(
 id INTEGER NOT NULL PRIMARY KEY,
 nombre VARCHAR(45) NOT NULL,
 descripcion VARCHAR(45),
 turno VARCHAR(45) NOT NULL
 )
 
 ALTER TABLE curso ADD cupo INTEGER;

INSERT INTO curso VALUES (101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35);
INSERT INTO curso VALUES (102, 'Matemática Discreta','','Tarde',30);

INSERT INTO curso VALUES (108, null,'Algoritmos y Estructuras de Datos','Mañana',35);
INSERT INTO curso VALUES (101, '','Algoritmos y Estructuras de Datos','Mañana',35);
UPDATE curso SET cupo = 25;

DELETE FROM curso WHERE id = 101;
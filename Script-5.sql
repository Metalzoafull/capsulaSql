CREATE TABLE `persona_index` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL
);


INSERT INTO persona_index VALUES(5, 'tony')
INSERT INTO persona_index VALUES(1, 'robin')
INSERT INTO persona_index VALUES(8, 'sakura')
INSERT INTO persona_index VALUES(25, 'sergio')

SELECT *
FROM persona_index

ALTER TABLE persona_index add constraint pk_id primary key(id);

SELECT *
FROM persona_index



/* el orden cambia por que cuando se crea un indice clousterizado genera un orden especifico que debe poseer la base
 * de datos en base al elemento que se desidio clousterizar
 */

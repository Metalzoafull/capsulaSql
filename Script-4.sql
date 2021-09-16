SELECT nombre FROM profesor;

SELECT p.nombre, p.apellido, c.nombre
FROM profesor p INNER JOIN curso c ON p.id = c.profesor_id;

Nombre, apellido y cursos que realiza cada estudiante

SELECT e.nombre, e.apellido, c.nombre
FROM curso c, estudiante e 
INNER JOIN inscripcion i 
ON i.ESTUDIANTE_legajo = e.legajo 
WHERE c.codigo = i.CURSO_codigo 

SELECT e.nombre, e.apellido, c.nombre AS 'curso'
FROM curso c, estudiante e 
INNER JOIN inscripcion i 
ON i.ESTUDIANTE_legajo = e.legajo 
WHERE c.codigo = i.CURSO_codigo 
ORDER BY c.nombre 

Nombre, apellido y cursos que dicta cada profesor

SELECT p.nombre, p.apellido, c.nombre AS 'curso'
FROM profesor p 
INNER JOIN curso c ON p.id = c.PROFESOR_id 

SELECT p.nombre, p.apellido, c.nombre AS 'curso'
FROM profesor p 
INNER JOIN curso c ON p.id = c.PROFESOR_id
ORDER BY c.nombre 

SELECT c.nombre, (c.cupo - COUNT(*)) AS cupodisponible
FROM curso c 
INNER JOIN inscripcion i ON i.CURSO_codigo = c.codigo
GROUP BY c.codigo

SELECT c.nombre, (c.cupo - COUNT(*)) AS cupodisponible
FROM curso c 
INNER JOIN inscripcion i ON i.CURSO_codigo = c.codigo
GROUP BY c.codigo 
HAVING cupodisponible < 10


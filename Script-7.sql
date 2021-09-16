SELECT e.legajo, COUNT(c.codigo) AS 'cursos'
FROM curso c ,estudiante e 
INNER JOIN inscripcion i ON i.ESTUDIANTE_legajo = e.legajo 
WHERE c.codigo = i.CURSO_codigo 
GROUP BY e.legajo 


SELECT e.legajo, COUNT(c.codigo) AS 'cursos'
FROM curso c ,estudiante e 
INNER JOIN inscripcion i ON i.ESTUDIANTE_legajo = e.legajo 
WHERE c.codigo = i.CURSO_codigo 
GROUP BY e.legajo HAVING COUNT(*) > 1

SELECT *
FROM estudiante e 
WHERE e.legajo NOT IN(SELECT inscripcion.ESTUDIANTE_legajo FROM inscripcion i)

SELECT * 
FROM estudiante e 
WHERE NOT EXISTS (SELECT * FROM inscripcion i WHERE i.ESTUDIANTE_legajo = e.legajo)


SELECT DISTINCT e.*
FROM curso c, profesor p, estudiante e 
INNER JOIN inscripcion i ON i.ESTUDIANTE_legajo = e.legajo 
WHERE c.codigo = i.CURSO_codigo AND p.id = c.PROFESOR_id 
AND p.apellido LIKE 'Pérez' OR p.apellido LIKE 'Paz'


/*
 * curso, profesor, estudiante, inscripcion:
 * codigo, id, numero, legajo: es el indice clousterizados, y es su primary key, sirve para ordenar y servir como referente a la hora de relacionar entidades
 * 
 * curso,inscripcion:
 * profesor_id, estudiante_legajo, curso_codigo: son foreign key, sirve para relacionar una tabla con otra, para relacionarlas es necesario 
 * un elemento de referencia de la tabla a relacionar, casi siempre es la primary key, por que es una clave de valor unico que no se repetira en la
 * entidad de referencia
 * 
 * 
 * /
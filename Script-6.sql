SELECT COUNT(*) 
FROM profesor p 
INNER JOIN curso c ON p.id = c.PROFESOR_id
WHERE c.turno LIKE 'Noche'




SELECT *
FROM curso c, estudiante e 
INNER JOIN inscripcion i 
ON i.ESTUDIANTE_legajo = e.legajo 
WHERE c.codigo = i.CURSO_codigo 
AND NOT c.codigo = 105
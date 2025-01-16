
-- Consultas SELECT

/*
- ¿Que bootcamp tiene más estudiantes?
- ¿Cuantos bootcamps no tienen estudiantes?
- ¿Que estudiantes tienen más asistencias y cuales tiene menos?
- ¿Que modulo tiene mas puntuación de media y cual tiene menos puntuación de media?
- ¿Qué bootcamp tiene mayor puntuación de media?
- ¿Qué bootcamp tiene mas asistencias y cual tiene menos asistencias? Los bootcamps sin estudiantes no cuentan.
- ¿Qué día tiene el mayor número de asistencias y cual tiene el menor número de asistencias?
- ¿Cuales bootcamps le dan 10 al modulo de **Machine Learning**?
- Muestra los 10 estudiantes que tenga más asistencias (_subqueries_).
*/

use bootcamps;

-- ¿Que bootcamp tiene más estudiantes?
select 
b.bootcamp as nombre_bootcamp, 
count(e.estudiante_id) as numero_estudiantes
from bootcamps b
inner join estudiantes e on e.bootcamp_id = b.bootcamp_id
group by b.bootcamp
order by count(e.estudiante_id) desc; -- limit 1 para quedarse solo con el primero

-- ¿Cuantos bootcamps no tienen estudiantes?
select 
b.bootcamp as nombre_bootcamp, 
count(e.estudiante_id) as numero_estudiantes
from bootcamps b
left join estudiantes e on e.bootcamp_id = b.bootcamp_id
group by b.bootcamp
having count(e.estudiante_id) = 0;

-- ¿Que estudiantes tienen más asistencias y cuales tiene menos?
-- mayor asistencia
select a.estudiante_id, sum(a.asistencia)
from asistencias a
group by a.estudiante_id
order by sum(a.asistencia) desc;
-- menor asistencia:
select a.estudiante_id, sum(a.asistencia)
from asistencias a
group by a.estudiante_id
order by sum(a.asistencia);


-- ¿Que modulo tiene mas puntuación de media y cual tiene menos puntuación de media?

SELECT 
    m.nombre,
    ROUND(AVG(mb.puntuacion), 1) AS puntuacion_media
FROM 
    modulos m
JOIN 
   modulo_bootcamp mb ON m.modulo_id = mb.modulo_id
GROUP BY 
    m.nombre
ORDER BY 
    puntuacion_media DESC;

-- ¿Qué bootcamp tiene mayor puntuación de media?

SELECT 
    b.bootcamp,
    ROUND(AVG(mb.puntuacion), 2) AS puntuacion_media
FROM 
    bootcamps b
JOIN 
   modulo_bootcamp mb ON b.bootcamp_id = mb.bootcamp_id
GROUP BY 
    b.bootcamp
ORDER BY 
    puntuacion_media DESC;

-- ¿Qué bootcamp tiene mas asistencias y cual tiene menos asistencias? Los bootcamps sin estudiantes no cuentan.

select bootcamps.bootcamp, sum(asistencias.asistencia)
from bootcamps
inner join estudiantes on estudiantes.bootcamp_id = bootcamps.bootcamp_id
inner join asistencias on asistencias.estudiante_id = estudiantes.estudiante_id
group by bootcamps.bootcamp
order by sum(asistencias.asistencia) desc;

-- ¿Qué fecha tiene el mayor número de asistencias y cual tiene el menor número de asistencias?



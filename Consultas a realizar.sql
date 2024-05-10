
-- Se Accede a la base de datos ElUniversitario

use ElUniversitario;

-- ###### Consultas a realizar ########
-- 1. Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados.
SELECT p.nombre, p.apellido1 , p.apellido2, d.nombre from profesor p, departamento d 
inner join profesor p on  departamento d = id;
-- 2. Devuelve un listado con los profesores que no están asociados a un departamento.
select  nombre from profesor where id_departamento =NULL ;

-- 3. Devuelve un listado con los departamentos que no tienen profesores asociados.
SELECT * from departamento d WHERE id > 6;  

-- 4. Devuelve un listado con los profesores que no imparten ninguna asignatura.

SELECT p.nombre, a. id_profesor from profesor p , asignatura a 
WHERE  = NULL ;

select * from libro;
-- A_1. 
--       Indicar cuáles son los títulos y autores de los libros cuyo tipo sea ‘no’ y sus precios
--       originales superen los $21. 

SELECT titulo, autor, tipo, precio_ori  FROM libro WHERE TIPO = 'no'   and precio_ori > 21;

-- A_2. 
--		¿Cuáles son los números, precios originales y ediciones de los libros cuyo tipo sea ‘no’
--		o que sus precios originales superen $21 y las ediciones sean posteriores a 1985? 	

SELECT nro_libro, tipo, precio_ori, edicion  FROM libro WHERE TIPO = 'no'   or precio_ori > 21 and edicion > 1985;

-- A_3. 
--	     Obtener la lista autores y ediciones de los libros cuyos nombres de autores comiencen
--		 con la letra L

SELECT autor, edicion  FROM libro WHERE autor like 'L%';


-- A_4. 
--		Obtener la lista de autores y ediciones de los libros cuyos nombres de autores no
--		comiencen con la letra G.

SELECT autor, edicion  FROM libro WHERE autor not like 'G%';

--A_5. 
--		Obtener la lista de autores, precios originales y ediciones de los libros cuyos autores
--		tengan la hilera "RR" en algún lugar del nombre.


SELECT autor, edicion  FROM  libro  WHERE autor like '%rr%';

--A_6. 
--		Obtener la lista de títulos y ediciones de aquellos libros cuyos precios originales no
--		estén comprendidos entre $12 y $25.

SELECT titulo, edicion FROM libro where precio_ori not between 12 and 25;

-- A_7. 
--		Obtener todos los tipos y ediciones DISTINTAS(en tipo y Edición) de los libros,
--		ordenado por Edición y año de edición ascendente.

SELECT tipo, edicion FROM libro ORDER BY tipo, edicion asc;

--A_8.
--		Listar los números, ediciones, tipos, precios originales, precios actuales y diferencias
--		de precios para todos los libros clasificado por tipo y por dicha diferencia en forma
--		ascendente, en ese orden.

SELECT nro_libro, edicion, tipo, precio_ori, precio_act, (precio_act - precio_ori) AS diferencia_precios FROM libro 
ORDER BY tipo, diferencia_precios ASC;


--A_9. 
--		Listar los números, ediciones, tipos, precios originales, precios actuales y diferencias
--		de precios para todos los libros de estudio.

SELECT nro_libro, edicion, tipo, precio_ori, precio_act, (precio_act - precio_ori) AS diferencia_precios FROM libro 
WHERE tipo = 'es';


--A_10. 
--		¿Cuáles son los números, precios originales y ediciones de los libros cuyas ediciones
--		son posteriores a 1985 y además o bien el tipo es ‘no’ o el precio original supera $21? 

SELECT nro_libro, precio_ori, edicion FROM libro WHERE edicion >1985 and tipo = 'no' or precio_ori >21;


--A_11. 
--		¿Cuáles son los títulos y nombres de los autores de los libros cuyo tipo sea ‘no’ o
--		aquellos cuyos precios de origen superan $21? 

--A_12. 
--		Obtener la lista de títulos y precios originales de los libros que se editaron en 1948,
--		1978 y 1985 



--A_13. 
--		Obtener los títulos y ediciones de los libros cuyos precios originales estén dentro del
--		rango de $12 a $25 inclusive 




--A_14.
--		Obtener la lista de títulos, precios originales y ediciones de aquellos libros cuyos títulos
--		tengan las letras "R" y "S" en algún lugar y en ese orden. 

--A_15. 
--		Obtener la lista de títulos, precios originales y ediciones de aquellos libros que tengan
--		la letra "A" en la segunda posición del título. 


--A_16.
--		Ordenar en secuencia ascendente por año de edición los títulos de los libros cuyo tipo
--		sea ‘no’. Listar también la edición. 

--A_17. 
--		Listar los números, ediciones y tipos de libros cuyos precios originales superen los $20.
--		Clasificar por edición en forma descendente y por número de libro ascendente en eseorden. 


--A_18. 
--		Listar los números, ediciones, tipos, precios originales, precios actuales y diferencias
--		de precios para todos los libros cuyas diferencias de precio sean superiores a $10. 



--A_19.	
--		Listar los números, ediciones, tipos, precios originales, precios actuales y diferencias
--		de precios para todos los libros cuyas diferencias de precio sean superiores a $10,
--		clasificado por dicha diferencia en forma descendente. 

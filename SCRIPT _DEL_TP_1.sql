select * from libro;
-- A_1. 
--       Indicar cu�les son los t�tulos y autores de los libros cuyo tipo sea �no� y sus precios
--       originales superen los $21. 

SELECT titulo, autor, tipo, precio_ori  FROM libro WHERE TIPO = 'no'   and precio_ori > 21;

-- A_2. 
--		�Cu�les son los n�meros, precios originales y ediciones de los libros cuyo tipo sea �no�
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
--		tengan la hilera "RR" en alg�n lugar del nombre.


SELECT autor, edicion  FROM  libro  WHERE autor like '%rr%';

--A_6. 
--		Obtener la lista de t�tulos y ediciones de aquellos libros cuyos precios originales no
--		est�n comprendidos entre $12 y $25.

SELECT titulo, edicion FROM libro where precio_ori not between 12 and 25;

-- A_7. 
--		Obtener todos los tipos y ediciones DISTINTAS(en tipo y Edici�n) de los libros,
--		ordenado por Edici�n y a�o de edici�n ascendente.

SELECT tipo, edicion FROM libro ORDER BY tipo, edicion asc;

--A_8.
--		Listar los n�meros, ediciones, tipos, precios originales, precios actuales y diferencias
--		de precios para todos los libros clasificado por tipo y por dicha diferencia en forma
--		ascendente, en ese orden.

SELECT nro_libro, edicion, tipo, precio_ori, precio_act, (precio_act - precio_ori) AS diferencia_precios FROM libro 
ORDER BY tipo, diferencia_precios ASC;


--A_9. 
--		Listar los n�meros, ediciones, tipos, precios originales, precios actuales y diferencias
--		de precios para todos los libros de estudio.

SELECT nro_libro, edicion, tipo, precio_ori, precio_act, (precio_act - precio_ori) AS diferencia_precios FROM libro 
WHERE tipo = 'es';


--A_10. 
--		�Cu�les son los n�meros, precios originales y ediciones de los libros cuyas ediciones
--		son posteriores a 1985 y adem�s o bien el tipo es �no� o el precio original supera $21? 

SELECT nro_libro, precio_ori, edicion FROM libro WHERE edicion >1985 and tipo = 'no' or precio_ori >21;


--A_11. 
--		�Cu�les son los t�tulos y nombres de los autores de los libros cuyo tipo sea �no� o
--		aquellos cuyos precios de origen superan $21? 

--A_12. 
--		Obtener la lista de t�tulos y precios originales de los libros que se editaron en 1948,
--		1978 y 1985 



--A_13. 
--		Obtener los t�tulos y ediciones de los libros cuyos precios originales est�n dentro del
--		rango de $12 a $25 inclusive 




--A_14.
--		Obtener la lista de t�tulos, precios originales y ediciones de aquellos libros cuyos t�tulos
--		tengan las letras "R" y "S" en alg�n lugar y en ese orden. 

--A_15. 
--		Obtener la lista de t�tulos, precios originales y ediciones de aquellos libros que tengan
--		la letra "A" en la segunda posici�n del t�tulo. 


--A_16.
--		Ordenar en secuencia ascendente por a�o de edici�n los t�tulos de los libros cuyo tipo
--		sea �no�. Listar tambi�n la edici�n. 

--A_17. 
--		Listar los n�meros, ediciones y tipos de libros cuyos precios originales superen los $20.
--		Clasificar por edici�n en forma descendente y por n�mero de libro ascendente en eseorden. 


--A_18. 
--		Listar los n�meros, ediciones, tipos, precios originales, precios actuales y diferencias
--		de precios para todos los libros cuyas diferencias de precio sean superiores a $10. 



--A_19.	
--		Listar los n�meros, ediciones, tipos, precios originales, precios actuales y diferencias
--		de precios para todos los libros cuyas diferencias de precio sean superiores a $10,
--		clasificado por dicha diferencia en forma descendente. 

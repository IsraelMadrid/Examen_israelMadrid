--A.	Escriba la consulta en SQL que devuelva el nombre del proyecto y sus productos correspondientes del proyecto premia cuyo código es 1

select A.NOMBRE, C.PRODUCTO, C.DESCRIPCION
from PROYECTO A, PRODUCTO C
   INNER JOIN PRODUCTO_PROYECTO B ON A.PROYECTO = B.PROYECTO
where 
A.PROYECTO  = 1
B.PRODUCTO = C.PRODUCTO

--B.	Escriba una consulta SQL que devuelva los distintos mensajes que hay, indicando a qué proyecto y producto pertenecen.
select A.*, B.NOMBRE PROYECTO, C.DESCRIPCION PRODUCTO
from MENSAJE A, PRODUCTO_PROYECTO C
INNER JOIN PROYECTO ON  A.PROYECTO = B.PROYECTO
INNER JOIN PRODUCTO ON A.PRODUCTO = B.PRODUCTO
WHERE A.PROYECTO  = C.PROYECTO 
  AND B.PRODUCTO = C.PRODUCTO

--C.Escriba una consulta SQL que devuelva los distintos mensajes que hay, 
--indicando a qué proyecto y producto pertenecen. 
--Pero si el mensaje está en todos los productos de un proyecto, 
--en lugar de mostrar cada producto, 
--debe mostrar el nombre del proyecto y un solo producto que diga “TODOS”.
SELECT PROYECTO,PRODUCTO,COD_MENSAJE, COUNT(COD_MENSAJE) CANTIDAD FROM MENSAJES 
INT TMP_MENSAJES
WHERE PRODUCTO_PROYECTO.PRODUCTO  = MENSAJES.PRODUCTO
  AND PRODUCTO_PROYECTO.PROYECTO  =  MENSAJES.PROYECTO
GROUP BY PROYECTO,PRODUCTO,COD_MENSAJE


SELECT A.*, B.NOMBRE PROYECTO, 
CASE WHEN  D.CANTIDAD > 1 THEN 'Todos' else C.DESCRIPCION end PRODUCTO
FROM from MENSAJE A, PRODUCTO_PROYECTO C TMP_MENSAJES D
INNER JOIN PROYECTO ON  A.PROYECTO = B.PROYECTO
INNER JOIN PRODUCTO ON A.PRODUCTO = B.PRODUCTO
INNER JOIN TMP_MENSAJES D ON C.PRODUCTO = D.PRODUCTO AND C.PROYECTO = D.PROYECTO
WHERE A.PROYECTO  = C.PROYECTO 
  AND B.PRODUCTO = C.PRODUCTO
  AND A.COD_MENSAJE = D.COD_MENSAJE
  




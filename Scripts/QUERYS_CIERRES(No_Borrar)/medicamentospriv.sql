select
	                       
                datePART(month, A.FECHA) as mes,
                --A.COD_SERVICIO,
                B.NOMBRE,
                AVG(DISTINCT A.COSTO) PRECIO_PROMEDIO,
                SUM(A.CANTIDAD) AS TOTAL_CANTIDAD,
            	SUM(A.SUBTOTAL) AS TOTAL_FACTURADO,
                MAX(B.COSTO_REAL) AS COSTO_REAL
               -- A.FECHA,
               -- A.CORREL              
from
	        DET_FACTURA A,
	        SERVICIOS B	       
where	
	A.COD_SERVICIO=B.COD_SERVICIO AND
	A.COD_CATEGORIA=B.COD_CATEGORIA and
     a.fecha >= '2007/06/01' AND A.FECHA <= '2007/09/25' AND
    A.COD_CATEGORIA = '6'
    
GROUP BY
        datePART(month, A.FECHA),
         B.NOMBRE
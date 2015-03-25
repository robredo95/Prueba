--obtener la suma de las salidas por departamento durante el 2do. semestre del 2006 end la farmacia interna
select	
    	DATEPART(MONTH, S.FECHA) AS MES,   
        T.DESCRIPCION_SALIDA AS TIPO_SALIDA,
        S.SUB_TIPO, 	    
    	D.NOMBRE AS DEPTO,
	    SUM(S.TOTAL_SALIDA)
from	
	SALIDAS 	    S,
    TIPOS_SALIDA	T,
	DEPTOS		    D

where	
	S.COD_BODEGA	=	2	AND
    S.FECHA BETWEEN '2006/07/01' AND '2006/12/31' AND
    S.COD_TIPO_SALIDA 	*=  T.COD_TIPO_SALIDA		AND
	S.COD_DEPTO	        *= D.COD_DEPTO	
GROUP BY
    DATEPART(MONTH, S.FECHA),
    T.DESCRIPCION_SALIDA,
    S.SUB_TIPO,
    D.NOMBRE    	
    
    
    
--Obtener la suma de los traslados a almacen realizados durante el 2do. semestre de 2007    
select	
    	DATEPART(MONTH, S.FECHA) AS MES,    	    
	    SUM(S.TOTAL_SALIDA) as TOTAL_TRASLADO
from	
	SALIDAS 	    S
where	
	S.COD_BODEGA	=	4	AND
    S.FECHA BETWEEN '2007/07/01' AND '2007/12/31' AND
    S.COD_TIPO_SALIDA = 5
GROUP BY
    DATEPART(MONTH, S.FECHA)        


--Obtener 
    
select	
        s.CREADO_POR,
    	S.COD_SALIDA,
    	S.FECHA,    	
    	T.DESCRIPCION_SALIDA,
	    S.OBS,
    	D.NOMBRE,
	    S.TOTAL_SALIDA,
	    S.REQUISICION,
	    (CASE
                            WHEN T.DESCRIPCION_SALIDA = 'DEPARTAMENTO' THEN
                            (
                                CASE
                            			WHEN S.COD_PACIENTE = 'TEMPCOD' THEN S.PACIENTE
                            			ELSE P.PRIMER_NOM + ' ' + P.SEGUNDO_NOM + ' ' + P.PRIMER_APE  + ' ' + P.SEGUNDO_APE
                                END        
                            )
                            WHEN  T.DESCRIPCION_SALIDA = 'EMPLEADO' THEN 
                             (
                                CASE
                            			WHEN S.COD_EMPLEADO IS NULL THEN S.PACIENTE
                            			ELSE E.PRIMER_NOM + ' ' + E.SEGUNDO_NOM + ' ' + E.PRIMER_APE  + ' ' + E.SEGUNDO_APE
                                END        
                            )
                            ELSE
                                ''                                       
        END ),
        C.DESCRIPCION,
        B.NOMBRE
from	
	SALIDAS 	S,
	BODEGAS	B,
	TIPOS_SALIDA	T,
	DEPTOS		D,
	PACIENTES	P,
	CAMAS		C,
	EMPLEADOS	E

where	
	S.COD_BODEGA		*=  B.COD_BODEGA 		AND
	S.COD_TIPO_SALIDA 	*=  T.COD_TIPO_SALIDA		AND
	S.COD_DEPTO	      	*= D.COD_DEPTO			AND
	S.COD_EMPLEADO 	*= E.COD_EMPLEADO   		AND	
	S.COD_PACIENTE 		*= P.COD_PACIENTE   		AND
            	S.CORREL_PACIENTE 	*= P.CORREL_PACIENTE 		AND
	S.CAMA			*= C.CODIGO and
    s.COD_BODEGA = 2 and
    s.FECHA >= '2007/01/01'
       
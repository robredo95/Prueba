SELECT	
        A.cod_planilla,
        A.cod_empleado, 
        B.Primer_Nom, 
        B.Segundo_Nom,
        B.Primer_Ape,
        B.Segundo_Ape,
        B.sueldo_base,
        B.FECHA_INGRESO,
        floor (DATEDIFF(month,B.FECHA_INGRESO,getdate())/12)  as anios_trabajar,
        DATEDIFF(month,B.FECHA_INGRESO,getdate()) % 12 as meses_laborar,
        C.nombre as depto,
        p.nombre as puesto
                
from	
        DET_PLANILLA A, 
        EMPLEADOS B, 
        DEPTOS C,
        puestos p
where	
        A.cod_empleado=B.cod_empleado and 
        A.cod_planilla in (320, 321) AND
	    B.cod_depto = C.cod_depto and
        b.COD_PUESTO = p.cod_puesto
ORDER BY  
        a.cod_planilla,
        C.nombre
        		SELECT 
        				A.COD_PLANILLA, 
        				A.FECHAI,
                        D.NOMBRE AS DEPARTAMENTO,
        				B.COD_EMPLEADO,
        				C.PRIMER_NOM + ' ' + C.PRIMER_APE AS NOMBRE,
                        B.*
        				/*B.bonificaciones,
                        B.horas_extras, 
                        B.otros_ingresos,
                        B.sueldo_pagado,
                        B.turnos,
        				B.sueldo_pagado*/
				FROM 
        				PLANILLA A, 
        				DET_PLANILLA B, 
        				EMPLEADOS C,
                        DEPTOS  D
				WHERE 
        				A.COD_PLANILLA=B.COD_PLANILLA AND 
        				B.COD_EMPLEADO=C.COD_EMPLEADO AND 
                        C.COD_DEPTO = D.COD_DEPTO AND
        				FECHAI >= '2007/01/01' AND 
        				FECHAI<= '2008/04/30'
				ORDER BY
						A.FECHAI ASC  
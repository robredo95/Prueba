
        SELECT	
               	F.FECHA_INGRESO, 
                I.NOMBRE AS ESPECIALIDAD,
                A.COD_MEDICO,
                B.NOMBRE AS NOMBRE_MEDICO,               
                --A.COSTO,
                --A.FECHA,
				--A.ESTADO_PAGO,
                F.COD_FACTURA,
                A.DESCRIPCION,
			    F.CORREL_PACIENTE,
				F.COD_PACIENTE,
			    P.PRIMER_NOM + ' ' + P.SEGUNDO_NOM + ' ' + P.PRIMER_APE  + ' ' + P.SEGUNDO_APE	AS NOMBRE_PACIENTE,
				E.NOMBRE AS EMPRESA,						
			    F.DESCRIPCION			                                 
		FROM	
                FACTURASA       F,
                PACIENTES		P,
                EMPRESAS        E,
                DET_HONORARIOSA A, 
                MEDICOS         B,
                ESPECIALIDAD    I
		WHERE	
                F.COD_FACTURA =   A.COD_FACTURA AND
				A.COD_MEDICO = B.COD_MEDICO AND
                P.COD_PACIENTE  	= F.COD_PACIENTE AND
				P.CORREL_PACIENTE  	= F.CORREL_PACIENTE AND
                E.COD_EMPRESA  		= P.COD_EMPRESA AND	
                B.COD_ESPECIALIDAD  = I.COD_ESPECIALIDAD AND
                F.FECHA_INGRESO BETWEEN "2007/01/01" AND "2007/12/31" 
		ORDER BY 
                F.FECHA_INGRESO,
                I.NOMBRE,
                A.COD_MEDICO,
                 B.NOMBRE,                            
                F.COD_FACTURA
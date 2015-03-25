UPDATE
        pacientes
SET
    P.DISPONIBLE =         
    (
        SELECT
            SUM(F.TOTAL)
        FROM
            FACTURASA F
        WHERE
            F.ESTADO_PROCESO = 1 AND
            F.COD_PACIENTE = P.COD_PACIENTE   
        GROUP BY
            F.COD_PACIENTE                                     
    
    ) + 
     (
        SELECT
            SUM(O.TOTAL)
        FROM
            ORDENES_SERVICIO O
        WHERE
            O.ESTADO = 1 AND
            O.COD_PACIENTE = P.COD_PACIENTE   
        GROUP BY
            O.COD_PACIENTE                                     
    
    ),
    P.FECHA_MODIFICACION = GETDATE()
from 
    PACIENTES P
where 
    P.tipo_s = 'ASEGURADO' AND 
    (P.disponible is null or
     p.disponible > p.monto_aseg
    )
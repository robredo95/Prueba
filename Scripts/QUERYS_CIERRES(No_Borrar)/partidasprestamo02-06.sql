select	
        p.cod_partida,
        p.fecha,
        p.descripcion,
        A.correlativo,
        A.cod_cuenta,
        A.nombre,
        A.concepto,
        A.cargo,
        A.credito
from	 
        PARTIDAS P,
        DET_PARTIDAS A        
where	
        A.COD_PARTIDA = P.COD_PARTIDA AND
        P.FECHA > '2002/01/01' AND
        EXISTS (
                SELECT
                    D.COD_CUENTA
                FROM
                    DET_PARTIDAS D
                WHERE
                    D.COD_PARTIDA = P.COD_PARTIDA AND                                        
                    D.COD_CUENTA IN ('212-02', '210-01') AND
                     (D.CONCEPTO LIKE '%NC%' OR    D.CONCEPTO LIKE '%N/C%' OR  D.CONCEPTO LIKE '%ND%'   OR D.CONCEPTO LIKE '%N/D%'  )
                )
       
ORDER BY
    P.COD_PARTIDA,
    A.CORRELATIVO        
--Query para validar que todas las partidas de un periodo esten cuadradas
select 
    COD_PARTIDA,
    SUM(CARGO),
    SUM(CREDITO) 
from 
    DET_partidas a where A.COD_PARTIDA IN (SELECT COD_PARTIDA FROM PARTIDAS WHERE fecha between '2008/01/01' and '2008/01/31')
GROUP BY
    COD_PARTIDA
HAVING
    round(SUM(CARGO),2) <> round(SUM(CREDITO),2)



--Ejecutar la mayorizacion del periodo actual
UPDATE
    PARTIDAS
SET
    TOTAL_CARGO = NULL
WHERE
    TOTAL_CARGO = 0        

UPDATE
    PARTIDAS
SET
    TOTAL_DEBITO = NULL
WHERE
    TOTAL_DEBITO = 0        

dump transaction hbetesda with no_log;
exec mayorizar_cuentas






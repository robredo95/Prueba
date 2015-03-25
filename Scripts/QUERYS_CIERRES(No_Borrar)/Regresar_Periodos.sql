--La table cuentas tiene los datos del periodo actual, hist_cuentas tiene el historico de todas los periodos
--El periodo actual esta en la Table PARAMETROS (CODIGO=1)




--Este Update basicamente me regresa al Periodo anterior, esto en caso de que el cierre que estoy haciendo salga malo, y tenga que volver a cerrar
--Ejemplo, si estoy cerrando Noviembre/2006 y este cierre esta malo, me tengo que regresar a Octubre/2006

update 
    cuentas
set 
    c.debe_mes = h.debe_mes,
    c.haber_mes = h.haber_mes,
    c.saldo_mes = h.saldo_mes,
    c.debe_acum = h.debe_acumulado,
	c.haber_acum = h.haber_acumulado,
    c.saldo_acum = h.saldo_acumulado,
    c.saldo_anual = h.saldo_anual,
    c.debe_anual = h.debe_anual,
    c.haber_anual = h.haber_anual
from
    cuentas c,
    hist_cuentas h  
where
    c.cod_cuenta = h.cod_cuenta and
    h.fechai = '2006/10/01' and h.fechaf='2006/10/31';

--Se debe actualizar los parametros para que el periodo actual sea el periodo al que nos estamos regresando Octubre/2006
UPDATE 
    PARAMETROS 
SET 
    FECHAI_PROC = '2006/10/01',
    FECHAF_PROC = '2006/10/31'
WHERE
    CODIGO = 1;   
    
    
--Borrar del HIST_CUENTAS el mes al que nos regresamos, esto porque al hacer cambio de periodo desde el sistema
--no nos de error al enviarlo de nuevo a HIST_CUENTAS    

delete from hist_cuentas where fechai = '2006/10/01' and fechaf='2006/10/31';
    
--Se debe actualizar las partidas del periodo que queremos cerrar de nuevo Noviembre/2006
UPDATE PARTIDAS SET SUMARIZADA = 0 WHERE FECHA between '2006/11/01' and '2006/11/30'
        

-- y luego cambiar de periodo a Noviembre/2005(esto se hace desde el sistema)
-- y realizar de nuevo el cierre        
        
--Query para validar que todas las partidas de un periodo esten cuadradas
select 
    COD_PARTIDA,
    SUM(CARGO),
    SUM(CREDITO) 
from 
    DET_partidas a where A.COD_PARTIDA IN (SELECT COD_PARTIDA FROM PARTIDAS WHERE fecha between '2006/11/01' and '2006/11/30')
GROUP BY
    COD_PARTIDA
HAVING
    SUM(CARGO) <> SUM(CREDITO)                  
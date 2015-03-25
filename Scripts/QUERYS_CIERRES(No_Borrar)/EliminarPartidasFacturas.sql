
delete
    det_partidas   
from
    det_partidas d, 
    partidas p,
    facturas f
where
    d.cod_partida = p.cod_partida and
    p.cod_partida = 'PFACT' + convert(varchar, f.cod_factura) and
    --f.estado_proceso = 0 and   
    f.fecha_ingreso <='2007/03/31' and
    f.fecha_egreso  >='2007/04/01'   
    
delete
    partidas   
from 
    partidas p,
    facturas f
where
    p.cod_partida = 'PFACT' + convert(varchar, f.cod_factura) and
    --f.estado_proceso = 0 and   
    f.fecha_ingreso <='2007/03/31' and
    f.fecha_egreso  >='2007/04/01'     
    
 
DELETE
    det_partidas
from 
    det_partidas d, 
    partidas p
where  
    d.cod_partida = p.cod_partida and
    p.fecha >= '2007/04/01'
    and p.cod_partida like 'PFACT%'   
     
DELETE
    PARTIDAS
FROM    
    partidas p
where  
    p.fecha >= '2007/04/01'    
    and p.cod_partida like 'PFACT%'
    
    
 
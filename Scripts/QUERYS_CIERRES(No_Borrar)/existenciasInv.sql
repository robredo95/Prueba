update  entradas 
set
    incluye_costos = 1
    
where incluye_costos !=1 and cod_bodega = 4



select 
    e.fecha,
    d.* 
from 
    entradas e,
    detalle_entradas d
where
    e.cod_entrada = d.cod_entrada and 
    d.cod_medicamento = 'I5775' and 
    d.cod_bodega = 4 
    
    
select 
    e.fecha,
    d.* 
from 
    entradas e,
    detalle_entradas d
where
    e.cod_entrada = d.cod_entrada and 
    d.cod_medicamento = 'I9147' and 
    d.cod_bodega = 4    
    
    
select 
    e.fecha,
    d.* 
from 
    salidas e,
    detalle_salidas d
where
    e.cod_salida = d.cod_salida and 
    d.cod_medicamento = 'I9147' and 
    d.cod_bodega = 4 
    
    
          
select 
    e.fecha,
    d.* 
from 
    salidas e,
    detalle_salidas d
where
    e.cod_salida = d.cod_salida and 
    d.cod_medicamento = 'I5775' and 
    d.cod_bodega = 4     
    

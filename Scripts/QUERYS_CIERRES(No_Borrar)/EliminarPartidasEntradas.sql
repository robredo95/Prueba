delete
    det_partidas   
from
    det_partidas d, 
    partidas p,
    entradas f
where
    d.cod_partida = p.cod_partida and
    p.cod_partida = 'PENT' + f.cod_entrada  and
    --f.estado_proceso = 0 and   
    f.fecha between '2007/07/01' and '2007/12/31'    
    
    
    
delete
    partidas   
from 
    partidas p,
    entradas f
where
    p.cod_partida = 'PENT' + f.cod_entrada and
    --f.estado_proceso = 0 and   
    f.fecha between '2007/07/01' and '2007/12/31'    
    
    
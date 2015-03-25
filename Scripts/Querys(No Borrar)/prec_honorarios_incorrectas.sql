select DISTINCT p.cod_partida
from 
    det_partidas d,
    partidas p
where
    p.cod_partida = d.cod_partida and
    p.cod_partida like 'prec%'and
    d.cod_cuenta = '511-08' AND
    P.cerrada = 0
    
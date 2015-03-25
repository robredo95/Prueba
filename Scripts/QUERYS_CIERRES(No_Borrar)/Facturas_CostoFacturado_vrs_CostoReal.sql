/*query para cambiarle el costo a todos los servicios que incluye una factura
            costo3 = costo de empleado
            costo2 = costo real
            costo1 = costo aseguradora
            costo = costo maquilas/privados*/
select
    f.cod_factura,
    f.cod_categoria,
    c.nombre as categoria,
    f.cod_servicio,
    s.nombre as servicio,
    f.cantidad,
    f.costo,  
    f.subtotal,  
    s.costo * f.cantidad as subtotal_maq_priv,
    s.costo as costo_maq_priv,
    s.costo_real,
    e.porcentaje1,
    (s.COSTO_REAL) * (1+ porcentaje1) as costo_escala
from
    det_factura     f, 
    servicios       s,
    categ_servicios c,
    escala           e
where
    f.cod_factura = 11722 and
    --f.cod_categoria != '7' and
    f.cod_servicio = s.cod_Servicio and
    f.cod_categoria = s.cod_categoria and
    s.cod_categoria = c.cod_categoria 	and
    (S.COSTO_REAL) >= e.minimo 	and 
	(S.COSTO_REAL) <= e.maximo   	and
    s.cod_categoria 		   = e.COD_CATEGORIA
    
    
    
     /*f.costo = s.costo3,
    f.subtotal = f.cantidad * s.costo3*/
  
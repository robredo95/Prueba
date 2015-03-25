/*query para cambiarle el costo a todos los servicios que incluye una factura
            costo3 = costo de empleado
            costo2 = costo real
            costo1 = costo aseguradora
            costo = costo maquilas/privados*/
update
    det_factura
set
        
    f.costo = s.costo3,
    f.subtotal = f.cantidad * s.costo3
  
from
    det_factura f, 
    servicios s
where
    f.cod_factura = 9953 and
    f.cod_categoria != '7' and
    f.cod_servicio = s.cod_Servicio and
    f.cod_categoria = s.cod_categoria 
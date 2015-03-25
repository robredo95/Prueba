select
    m.nombre as medico,
    (case 
        when f.origen_paciente = 0 then "Del Hospital"
         when f.origen_paciente = 1 then "Del Medico"
     end    
    ) as origen,
    count(f.cod_factura) total_facturas
from 
    facturas f,
    medicos m
where
    f.cod_medico *= m.cod_medico   and
    f.fecha_ingreso between '2007/01/01' and '2007/12/31'    
group by
    m.nombre ,
    f.origen_paciente
    
    
    
   

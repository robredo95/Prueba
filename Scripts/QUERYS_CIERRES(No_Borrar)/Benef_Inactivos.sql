select 
    p.*
from
    pacientes p    
where
    estado_pac = 1 and
    correl_paciente !='0' and
    exists(
            select
                t.cod_paciente
            from
                pacientes t
            where                                
                 t.cod_paciente = p.cod_paciente and
                 t.correl_paciente = '0' and
                 estado_pac = 0
        
    
    )    
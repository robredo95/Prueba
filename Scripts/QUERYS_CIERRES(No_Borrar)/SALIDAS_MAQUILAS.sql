select 
    distinct
        s.cod_empresa,
        e.nombre,
        e.cod_cuenta
from 
    salidas s,
    empresas e
where
    s.cod_empresa *= e.cod_empresa    
select * from entradas e where e.incluye_costos = 1 and not exists (select g.cod_grupo from grupos_med g where g.cod_grupo = e.cod_grupo)

select * from entradas where obs like '%esperanza%'

select * from grupos_med where nombre like '%rivera%'


update
    entradas
set
   incluye_costos = 0
 where 
 
 cod_grupo is null      
 
 
 
select * from entradas where (cod_grupo is not null or factura is not null ) and cod_tipo_entrada != 1
 

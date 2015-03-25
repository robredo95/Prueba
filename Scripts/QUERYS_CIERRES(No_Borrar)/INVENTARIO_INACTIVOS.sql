SELECT 
				I.COD_MEDICAMENTO,
    				I.COD_CATEGORIA,    				
    				I.EXISTENCIA,
				isnull(R.EXISTENCIA,0)
			FROM
				INVENTARIO_MED I,
				INVENTARIO_REAL R
			WHERE
				I.COD_BODEGA = 4 AND				
				I.COD_MEDICAMENTO *= R.COD_MEDICAMENTO AND
				I.COD_CATEGORIA *= R.COD_CATEGORIA
                
                
                
                
select
    i.cod_medicamento,
    i.cod_categoria,
    s.nombre
from
    inventario_med i,
    servicios s
where
    i.cod_medicamento = s.cod_servicio and
    i.cod_categoria = s.cod_categoria and
    s.en_uso = 0
            
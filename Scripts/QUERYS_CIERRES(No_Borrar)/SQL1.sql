SELECT 
    				*
    		FROM 
    				facturas
        	WHERE 
        			fecha_ingreso <='2007/03/31' and
                    fecha_egreso  >='2007/04/01'
                    
                    
                    
                    SELECT * FROM PARTIDAS WHERE COD_PARTIDA LIKE 'PFACT%' AND FECHA>='2007/04/01'
                    
                    
                    
SELECT 
    				cod_factura
    		FROM 
    				facturas
        	WHERE 
        			--(fecha_ingreso>=@fechai and fecha_ingreso<=@fechaf) 
        			fecha_ingreso <='2007/03/31' and
                    fecha_egreso  >='2007/04/01'                    
                    
                    
                    
select * from
    partidas
where

    total_debito = 0                 or
    total_cargo = 0
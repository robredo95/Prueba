                   update	
							servicios
					set							
						COSTO 		= (s.COSTO_REAL) * (1+ porcentaje1),
						COSTO1 		= (s.COSTO_REAL) * (1+ porcentaje2),
						COSTO2		= (s.COSTO_REAL) * (1+ porcentaje3),
						COSTO3		= (s.COSTO_REAL) * (1+ porcentaje)
					from	
    					servicios s,
						escala e
					where	
	 					(S.COSTO_REAL) >= e.minimo 	and 
	 					(S.COSTO_REAL) <= e.maximo   	and
                        s.cod_categoria 		   = e.COD_CATEGORIA	 and
	 					s.cod_categoria	in ('3', '2', '15', '10', '6', '11', '12' )

	 					
                        
                        

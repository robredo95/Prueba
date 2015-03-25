--cirugia y oxigeno 3

Select 
        A.COD_FACTURA,
        A.DESCRIPCION,
        A.COD_PACIENTE,
        A.CORREL_PACIENTE,
        B.PRIMER_NOM+'   ' +B.PRIMER_APE as paciente,
        B.DIRECCION,
       convert(varchar(12),A.FECHA_INGRESO,103) as fecha_ingreso, 
        A.TOTAL,
       E.NOMBRE AS EMPRESA      		
from	 
        FACTURAS A,
        PACIENTES B,
        EMPRESAS E
where	
        A.COD_PACIENTE      =B.COD_PACIENTE AND
        A.CORREL_PACIENTE   =B.CORREL_PACIENTE AND
        B.COD_EMPRESA       *= E.COD_EMPRESA AND
        A.FECHA_INGRESO BETWEEN '2007/01/01' AND '2007/12/31'and
        exists ( SELECT D.CORREL  FROM DET_FACTURA D WHERE D.COD_CATEGORIA in ('3') and d.COD_FACTURA = a.cod_factura) /*and 
        not exists ( SELECT D.CORREL  FROM DET_FACTURA D WHERE D.COD_CATEGORIA in ('10') and d.COD_FACTURA = a.cod_factura)*/





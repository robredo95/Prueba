--select * from identitys where maximo = 16944


select 
A.cod_cheque,
A.num_cheque,
A.fecha ,
A.monto,
A.beneficiario,
A.concepto,
C.nombre,
B.cuenta_banco,
A.cod_partida,
A.cod_conciliacion,
A.estado,
D.nombre as tipo

from 
    cheques A,
    cuentas_banco B , 
    bancos C, 
    Tipo_Cheques D

where 
        A.correl*=B.correl and 
        A.cod_banco*=C.cod_banco and 
        A.cod_tipo*=D.cod_tipo AND	
        A.FECHA >= '2006/01/01' and
        A.FECHA <='2007/03/31'
order by
    A.fecha ,
A.num_cheque
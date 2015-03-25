--


select
    B.NOMBRE AS MEDICO,
	A.COD_FACTURA,
    A.DESCRIPCION,
	--A.CORREL,	
	A.FECHA AS FECHA_FACTURADO,
	A.COSTO AS MONTO_HONORARIO,
    P.NUMERO_PAGO,
	P.MONTO AS MONTO_PAGADO,	
    P.DOCUMENTO AS CHEQUE,
    P.DESCRIPCION AS CONCEPTO_PAGO
               
from
    PAGOS_A_MED     P,
	DET_HONORARIOS  A,
	MEDICOS         B
where
	P.CORREL = A.CORREL AND
	A.COD_MEDICO=B.COD_MEDICO
order by
    B.NOMBRE,
	A.COD_FACTURA,
    A.FECHA
    
   
   
   
select 
    A.beneficiario,
    A.num_cheque,
    A.fecha as fecha_emitido,
    A.monto,
    A.concepto
from 
    cheques      A
where
    
     A.estado != 'ANULADO' and
     /*not exists (
                select P.DOCUMENTO from PAGOS_A_MED P WHERE P.DOCUMENTO = CONVERT(VARCHAR, A.num_cheque)) AND*/
     exists (    
                select B.COD_CHEQUE from DETALLE_CHEQUES B WHERE A.COD_CHEQUE = B.COD_CHEQUE AND B.COD_CUENTA = '511-08' )
order by
     A.beneficiario,
     A.fecha
     
     
     
     
select 
    A.beneficiario,
    A.num_cheque,
    A.fecha as fecha_emitido,
    A.monto,
    A.concepto
from 
    cheques      A
where
    
     A.estado != 'ANULADO' and
     (
     a.beneficiario like '%Interiano%' or
     a.beneficiario like '%Rigo%' or
     a.beneficiario like '%Alvarenga%' or
     a.beneficiario like '%Gutie%' or
     a.beneficiario like '%Luz%' or
     a.beneficiario like '%Mendez%' or
     a.beneficiario like '%Cranio%' or
     a.beneficiario like '%Jaar%' or 
     a.beneficiario like '%Irias%' or
     a.beneficiario like '%Bendec%' or
     a.beneficiario like '%Gustavo%' or
     a.beneficiario like '%Villacorta%' or
     a.beneficiario like '%Ricardo%' or
     a.beneficiario like '%Castro%' or
     a.beneficiario like '%Banegas%' or
     a.beneficiario like '%Rivas%' or
     a.beneficiario like '%Medrano%' or
     a.beneficiario like '%Salomon%' or
     a.beneficiario like '%Astor%'/* or
     a.beneficiario like '%Dr%'*/
     
     )
order by
     A.beneficiario,
     A.fecha     
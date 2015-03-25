select * from cuentas where cod_cuenta in ('32','321','322','323')

update cuentas set debe_acum =0, haber_acum = 0 where cod_cuenta = '321'
update cuentas set saldo_acum = 1268219.41, haber_acum = 1268219.41 where cod_cuenta = '323'



select * from hist_cuentas where cod_cuenta in ('32','321','322','323') and fechai='2005/12/01';
select * from hist_cuentas where cod_cuenta in ('32','321','322','323') and fechai='2005/01/01'



@AbapCatalog.sqlViewName: 'ZV_CLNTS_LIB_02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Ventas'
define view Z0238_CLNTS_LIB
  as select from ztb_clnts_lib_02
{
      //ztb_clnts_lib_02
  key id_libro,
      count(distinct id_cliente) as Ventas
}
group by
  id_libro

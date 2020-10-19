@AbapCatalog.sqlViewName: 'ZV_CATEGO_0238'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
define view z0238_categorias
  as select from ztb_catego_0238
{
      //ztb_catego_0238
  key bi_categ,
      descripcion

}

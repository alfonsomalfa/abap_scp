@AbapCatalog.sqlViewName: 'ZV_CLIENTES_0238'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'clientes'
@Metadata.allowExtensions: true
@UI.headerInfo: { typeName      : 'Cliente',
                  title: {type  : #STANDARD,
                          value : 'NombreCompleto'},
                  description   : {type  : #STANDARD,
                                   value : 'IdCliente'},
                  imageUrl      : 'Imagen' }
define view z0238_clientes
  as select from ztb_clientes_023 as clientes
    inner join   ztb_clnts_lib_02 as clnts on clnts.id_cliente = clientes.id_cliente
{
  key id_libro                                as Idlibro,
  key clientes.id_cliente                     as IdCliente,
  key tipo_acceso                             as Acceso,
      nombre                                  as Nombre,
      apellidos                               as Apellido,
      email                                   as Email,
      url                                     as Imagen,
      concat_with_space(nombre, apellidos, 1) as NombreCompleto
}

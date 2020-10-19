@AbapCatalog.sqlViewName: 'ZV_LIBROS_0238'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros cds'
@Metadata.allowExtensions: true
@Search.searchable: true
@UI.headerInfo: { typeName      : 'Libro',
                  typeNamePlural: 'Libros',
                  title: {type  : #STANDARD,
                          value : 'Titulo'},
                  description   : {type  : #STANDARD,
                                   value : 'Autor'},
                  imageUrl      : 'Imagen' }

define view Z0238_libros
  as select from    ztb_libros_0238 as libros
    inner join      ztb_catego_0238 as catego on libros.bi_categ = catego.bi_categ
    left outer join Z0238_CLNTS_LIB as ventas on libros.id_libro = ventas.id_libro
  association [0..*] to z0238_clientes as _Clientes on $projection.Idlibro = _Clientes.Idlibro
{
  key libros.id_libro as Idlibro,
      titulo          as Titulo,
      libros.bi_categ as Categotia,
      autor           as Autor,
      editorial       as Editorial,
      idioma          as Idioma,
      paginas         as Paginas,
      @Semantics.amount: { currencyCode: 'moneda' }
      precio          as Precio,
      case
      when ventas.Ventas < 1 then 0
      when ventas.Ventas = 1 then 1
      when ventas.Ventas = 2 then 2
      when ventas.Ventas > 3 then 3
      else 0
      end             as Ventas,
      case ventas.Ventas
      when 0 then ''
      else ''
      end             as Text,
      @Semantics.currencyCode
      moneda          as Moneda,
      formato         as Formato,
      descripcion     as Descripcion,
      url             as Imagen,
      _Clientes

}

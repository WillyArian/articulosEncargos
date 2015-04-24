package articulosEncargos
/**
 * Created by sintelti3 on 24/04/15.
 */
class Pedido {
//    CuerpoPedido cuerpoPedido
//    CabeceraPedido cabeceraPedido
////    Fabrica fabrica
    static hasMany = [cuerpos: CuerpoPedido, cabeceras: CabeceraPedido, fabricas: Fabrica]
}

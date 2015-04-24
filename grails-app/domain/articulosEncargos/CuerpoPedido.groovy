package articulosEncargos

/**
 * Created by sintelti3 on 24/04/15.
 */
class CuerpoPedido {
    Integer cantidad
    static   hasMany = [articulos: Articulo]

    static constraints = {
        cantidad nullable: false
    }
}

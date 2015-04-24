package articulosEncargos
/**
 * Created by sintelti3 on 24/04/15.
 */
class Articulo {
    String descripcionArticulo
    static  hasMany = [fabricas: Fabrica]

    static constraints = {
        descripcionArticulo nullable: false, blank: false
    }
}

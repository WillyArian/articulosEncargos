package articulosEncargos
/**
 * Created by sintelti3 on 24/04/15.
 */
class Fabrica {
    String existencia
//    static hasMany = [articulos: Articulo]


    static constraints = {
        existencia nullable: false, blank: false
    }
}

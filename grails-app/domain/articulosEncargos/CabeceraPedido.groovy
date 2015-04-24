package articulosEncargos

/**
 * Created by sintelti3 on 24/04/15.
 */
class CabeceraPedido {
    Date fechaPedido
    static hasMany = [clientes: Clientes, direcciones: Direccion]

    static constraints = {
        fechaPedido nullable: false, blank: false
    }
}

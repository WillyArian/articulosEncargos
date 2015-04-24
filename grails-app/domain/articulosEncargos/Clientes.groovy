package articulosEncargos

/**
 * Created by sintelti3 on 24/04/15.
 */
class Clientes {
    BigDecimal saldo
    BigDecimal limiteCredito
    BigDecimal descuento
    static hasMany = [direcciones: Direccion]

    static constraints = {
        limiteCredito max: 3000000.00
    }
}

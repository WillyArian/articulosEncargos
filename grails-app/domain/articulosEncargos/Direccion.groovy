package articulosEncargos

import com.sun.security.ntlm.Client

/**
 * Created by sintelti3 on 24/04/15.
 */
class Direccion {
    Integer numero
    String calle
    String comunidad
    String ciudad

    static constraints = {
        numero nullable: false, blank: false
        calle nullable: false, blank: false
        comunidad nullable: false, blank: false
        ciudad nullable: false, blank: false
    }

}

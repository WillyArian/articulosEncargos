package articulosEncargos


class ClientesController {
    def index(){
        [clientesInstanceList: Clientes.findAll()]

    }
    def create(){
        println params
        []
    }

    def edit (){
        println params
        [clientesInstance: Clientes.findById(Long.parseLong(params.id))]
    }
    def show(){
        println params
                [clientesInstance: Clientes.findById(Long.parseLong(params.id))]
    }

    def save(){
        println params
        new Clientes(limiteCredito: params.limiteCredito, descuento: params.descuento, saldo: params.saldo).save(flush: true)
        redirect(action: 'index')
    }

    def update(){
        println params
        def cliente = Clientes.findById(Long.parseLong(params.id))
        cliente.limiteCredito = params.limiteCredito
        cliente.descuento = params.descuento
        cliente.saldo = params.saldo
        cliente.save(flush: true)
        redirect(action: 'index')
    }

}

import cosas.*

object camion {
    var almacenamiento = []

    //[knightRider,bumblebee,paqueteDeLadrillos,arenaAGranel,bateriaAntiaeria,contenedorPortuario,residuosRadiactivos,embalajeDeSeguridad]

    method almacenamiento() = almacenamiento

    method agregarTodosLosContenidos(unaListaDeContenidos){
        almacenamiento.addAll(unaListaDeContenidos)
    }

    method cargarContenido(unContenido){
        almacenamiento.add(unContenido)
    }

    method descargarContenido(unContenido){
        almacenamiento.remove(unContenido)
    }

    method calcularPesoTotalDeAlmacenamiento() {
        return almacenamiento.sum({unContenido => unContenido.peso()}) //+ 1000
    }

    method todosLosContenidosSonPares(){
        return almacenamiento.all({unContenido => unContenido.peso().even()}) //even es para saber si es par
    }

    method existenAlgunContenidoQuePesa_(nuevoPeso){
        return almacenamiento.any({unContenido => unContenido.peso() == nuevoPeso})
    }

    method obtenerPrimerContenidoConPeligrosidadDe_(nuevaCantidad){
        return almacenamiento.find({unContenido => unContenido.peligrosidad() == nuevaCantidad })//.first()
    }

    method obtenerContenidoConPeligrosidadMayorA_(nuevaCantidad){
        return almacenamiento.filter({unContenido => unContenido.peligrosidad() > nuevaCantidad})
    }

    method obtenerContenidoQueSupereLaPeligrosidadDe_(algunContenido){
        return almacenamiento.filter({unContenido => unContenido.peligrosidad() > algunContenido.peligrosidad()})
    }

    method noEstaExcedidoDePeso(){
        return almacenamiento.sum({unContenido => unContenido.peso()}) <= 2500
    }

    method puedeCircularConPeligrosidadDe_(nuevaCantidad){
        return self.noEstaExcedidoDePeso() and almacenamiento.all({unContenido => unContenido.peligrosidad() <= nuevaCantidad})
    }

    method existeAlgunContenidoQuePesaEntre_Y_(primerNumero,segundoNumero){
        return almacenamiento.any({unContenido => unContenido.peso().between(primerNumero,segundoNumero)})
    }

    method obtenerContenidoConMayorPeso(){
        return almacenamiento.max({unContenido => unContenido.peso()})
    }

}
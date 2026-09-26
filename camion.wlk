import cosas.*

object camion {
    var almacenamiento = []

    //method verAlmacenamiento() = almacenamiento

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
        return almacenamiento.filter({unContenido => unContenido.peligrosidad() == nuevaCantidad}).first()
    }

    method obtenerContenidoConPeligrosidadMayorA_(nuevaCantidad){
        return almacenamiento.filter({unContenido => unContenido.peligrosidad() > nuevaCantidad})
    }

    // falta alguno

    method noEstaExcedidoDePeso(){
        return almacenamiento.sum({unContenido => unContenido.peso()}) <= 2500
    }

    method puedeCircular(){
        return self.noEstaExcedidoDePeso() and self.obtenerContenidoConPeligrosidadMayorA_(1)
    }

    method existeAlgunContenidoQuePesaEntre_Y_(primerNumero,segundoNumero){
        return almacenamiento.any({unContenido => unContenido.peso().between(primerNumero,segundoNumero)})
    }

    method obtenerContenidoConMayorPeso(){
        return almacenamiento.max({unContenido => unContenido.peso()})
    }






}
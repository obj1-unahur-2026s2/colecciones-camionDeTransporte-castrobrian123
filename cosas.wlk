
object KnightRider {

    var pesoActual = 500

    method peso() = pesoActual

    var peligrosidadActual = 10

    method peligrosidad() = peligrosidadActual
}

object bumblebee {

    var estaTransformado = true

    var pesoActual = 800

    method peso() = pesoActual

    method peligrosidad(){
        if(estaTransformado){
            return 15
        } else {
            return 30
        }
    }

    method cambiarEstado(){
        estaTransformado = not estaTransformado
    }
}

object paqueteDeLadrillos {

    var ladrillosActuales = 0

    method cantidadDeLadrillos() = ladrillosActuales

    method peso() = 2 * self.cantidadDeLadrillos()

    method cambiarCantidadDeLadrillos(nuevaCantidad){
        ladrillosActuales = nuevaCantidad
    }

    var peligrosidadActual = 2

    method peligrosidad() = peligrosidadActual

}

object arenaAGranel {
    var pesoActual = 0

    method peso() = pesoActual

    method cambiarPeso(nuevoPeso){
        pesoActual = nuevoPeso
    }

    var peligrosidadActual = 1

    method peligrosidad() = peligrosidadActual
}

object bateriaAntiaeria {

    var estaConMisiles = false

    method peso(){
        if(estaConMisiles){
            return 300
        } else {
            return 200
        }
    }

    method peligrosidad(){
        if(estaConMisiles){
            return 100
        } else {
            return 0
        }
    }

    method activarMisiles() {
        estaConMisiles = true
    }

    method desactivarMisiles() {
        estaConMisiles = false
    }

}

object contenedorPortuario {
    //lo hare despues

    var contenedor = []

    method peso(){
        return 100 + contenedor.sum({ unContenido => unContenido.peso()})
    }

    method peligrosidad() {
        if(contenedor.isEmpty()){
            return 0
        } else {
            return contenedor.max({ unContenido => unContenido.peligrosidad() }).peligrosidad()
        }
    }

    method agregarContenido(unContenido){
        contenedor.add(unContenido)
    }

    method quitarContenido(unContenido){
        contenedor.remove(unContenido)
    }
}

object residuosRadiactivos {
    var pesoActual = 0

    method peso() = pesoActual

    method cambiarPeso(nuevoPeso) {
        pesoActual = nuevoPeso
    }

    var peligrosidadActual = 200

    method peligrosidad() = peligrosidadActual

}


object embalajeDeSeguridad {
    //lo hare despues

    var contenidoActual = KnightRider

    method contenido() = contenidoActual

    method cambiarContenido(nuevoContenido) {
        contenidoActual = nuevoContenido
    }

    method peso() = self.contenido().peso()

    method peligrosidad() = self.contenido().peligrosidad() / 2
}



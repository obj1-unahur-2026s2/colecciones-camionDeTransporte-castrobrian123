object cosas {
    
}

object KnightRider {
    var pesoActual = 500
    method peso() = pesoActual

    var peligrosidadActual = 10

    method peligrosidad() = peligrosidadActual
}

object bumblebee {

    var pesoActual = 800

    method peso() = pesoActual

    var peligrosidadActual = 0

    method peligrosidad() = peligrosidadActual

    method estaTransformadoEn_(unaTransformacion){

        if(unaTransformacion == "auto"){

            peligrosidadActual = 10

        } else {

            peligrosidadActual = 30

        }

    }


}

object paqueteDeLadrillos {
    var pesoActual = 2

    method peso() = pesoActual

    var peligrosidadActual = 2

    method peligrosidad() = peligrosidadActual
}

object arenaAGranel {
    var pesoActual = 0

    method peso() = pesoActual

    var peligrosidadActual = 1

    method peligrosidad() = peligrosidadActual
}

object bateriaAntiaeria {

    var pesoActual = 0

    method peso() = pesoActual

    var peligrosidadActual = 0

    method peligrosidad() = peligrosidadActual

    method estaConMisiles(algunaMunicion){

        if(algunaMunicion == "misiles"){

            pesoActual = 300
            peligrosidadActual = 100

        } else {

            pesoActual = 200
            peligrosidadActual = 0

        }

    }

}

object contenedorPortuario {
    //lo hare despues
}

object residuosRadiactivos {
    var pesoActual = 0

    method peso() = pesoActual

    var peligrosidadActual = 200

    method peligrosidad() = peligrosidadActual
}


object embalajeDeSeguridad {
    //lo hare despues
}

import pasajeros.*
object pasajeros {
    const listaPasajeros = [neo, morfeo, trinity]
    var pasajeroMayorVitalidad = null


    method subirPasajero(pasajero){
        listaPasajeros.add(pasajero)
    }

    method bajarPasajero(pasajero){
        listaPasajeros.remove(pasajero)
    }

    method ContarPasajeros() {
        return listaPasajeros.size()
    }

    method PasajeroMayorVitalidad() {
        return listaPasajeros.max({n => n.CalcularVitalidad()})
    }

    method estaEquilibrada() {
        var masVital = listaPasajeros.max({n => n.CalcularVitalidad()})
        var menosVital = listaPasajeros.min({n => n.CalcularVitalidad()})
        return masVital > menosVital * 2
    }

    method elegidoEnNave() {
        return listaPasajeros.any({n => n.EsElegido()})
    }

    method Colision() {
        listaPasajeros.forEach({n => n.saltar()})
        listaPasajeros.clear()
        return listaPasajeros.size()
    }

    method Acelerar() {
        listaPasajeros.forEach({p =>
            if (not p.EsElegido()) { 
                // se puede usar == false
                p.saltar()
            }
        })
    }
}
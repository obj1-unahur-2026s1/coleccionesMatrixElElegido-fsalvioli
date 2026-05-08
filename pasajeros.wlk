object neo {
    var energia = 100
    var vitalidad = 0
    const elegido = true

    method saltar() {
        energia = energia/2
        return energia
    }

    method CalcularVitalidad() {
        vitalidad = energia * 0.10
        return vitalidad
    }

    method EsElegido() {
        return elegido
    }
}

object morfeo {
    var vitalidad = 8
    const elegido = false

    method saltar() {
        if vitalidad > 0 {
            return vitalidad - 1
        } else {
            vitalidad = 0
            return vitalidad
        }
    }

    method CalcularVitalidad() {
        return vitalidad
    }

    method EsElegido() {
        return elegido
    }
}

object trinity {
    var vitalidad = 0
    const elegido = false

    method saltar() {
    }

    method CalcularVitalidad() {
        return vitalidad
    }

    method EsElegido() {
        return elegido
    }
}
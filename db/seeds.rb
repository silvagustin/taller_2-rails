# Tabla: Function ########################################################################

Function.delete_all

Function.create(nombre: "semaforo")
Function.create(nombre: "puesto de revistas")
Function.create(nombre: "casa de ropa")
Function.create(nombre: "restaurant")
Function.create(nombre: "heladería")

puts "# FUNCTIONS CARGADAS!"

# Tabla: Beacon #########################################################################

Beacon.delete_all

semaforo_id = Function.find_by(nombre: "semaforo").id

Beacon.create(uuid: "f7826da6-4fa2-4e98-8024-bc5b71e0893e",
  # Major and Minor are unsigned integer values between 1 and 65535.
              major: '65535',
              minor: '1',
              function_id: semaforo_id,
              nombre: "SEMAFORO-BLE"
              )

puts "# BEACONS CARGADOS!"

# Tabla: Semaforo #########################################################################

Semaforo.delete_all

beacon_id = Beacon.first.id

Semaforo.create(estado: "rojo",
                beacon_id: beacon_id)

puts "# SEMAFOROS CARGADOS!"

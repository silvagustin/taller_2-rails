# Tabla: Funcion ########################################################################

Funcion.delete_all

Funcion.create(nombre: "semaforo")
Funcion.create(nombre: "puesto de revistas")
Funcion.create(nombre: "casa de ropa")
Funcion.create(nombre: "restaurant")
Funcion.create(nombre: "heladería")

puts "# FUNCIONES CARGADAS!"

# Tabla: Beacon #########################################################################

Beacon.delete_all

semaforo_id = Funcion.find_by(nombre: "semaforo").id

Beacon.create(uuid: "f7826da6-4fa2-4e98-8024-bc5b71e0893e",
  # Major and Minor are unsigned integer values between 1 and 65535.
              major: '65535',
              minor: '1',
              funcion_id: semaforo_id
              )

puts "# BEACONS CARGADOS!"

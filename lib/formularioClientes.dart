import 'package:flutter/material.dart';
import 'package:gonzalez/drawer.dart';

class Formu5 extends StatefulWidget {
  static const String routeName = '/formu5';

  @override
  _Formu5State createState() => _Formu5State();
}

class _Formu5State extends State<Formu5> {
  TextEditingController idClienteController = TextEditingController();
  TextEditingController idVentaController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController localidadController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController edadController = TextEditingController();
  TextEditingController correoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Yuya Cosmetics",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff9a048e),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'Formulario Clientes',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff9a048e)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID Cliente', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idClienteController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa el ID del cliente',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('ID Venta', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idVentaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa el ID de la venta',
                ),
                keyboardType: TextInputType.number,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre del cliente', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.person, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa el nombre del cliente',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Direccion del cliente',
                  style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: direccionController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.directions, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa la direccion del cliente',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Localidad', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: localidadController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.location_city, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa la localidad del cliente',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Telefono', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                  controller: telefonoController,
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.call, color: Color(0xff9a048e)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffa555b2)), // Color del borde
                    ),
                    hintText: 'Ingresa el telefono del cliente',
                  ),
                  keyboardType: TextInputType.number),
              SizedBox(
                height: 10,
              ),
              const Text('Edad', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                  controller: edadController,
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.numbers, color: Color(0xff9a048e)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffa555b2)), // Color del borde
                    ),
                    hintText: 'Ingresa la edad del cliente',
                  ),
                  keyboardType: TextInputType.number),
              SizedBox(
                height: 10,
              ),
              const Text('Correo', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: correoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mail, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa el correo del cliente',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idClienteController.text);
                  print(idVentaController.text);
                  print(nombreController.text);
                  print(direccionController.text);
                  print(localidadController.text);
                  print(telefonoController.text);
                  print(edadController.text);
                  print(correoController.text);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xff9a048e)), // Cambia el color de fondo
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30), // Ajusta el padding
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold), // Cambia el estilo del texto
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Ajusta la forma del botón
                      // Puedes ajustar más propiedades aquí, como bordes, sombras, etc.
                    ),
                  ),
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

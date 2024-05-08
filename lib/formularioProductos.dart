import 'package:flutter/material.dart';
import 'package:gonzalez/drawer.dart';

class Formu1 extends StatefulWidget {
  static const String routeName = '/formu1';

  @override
  _Formu1State createState() => _Formu1State();
}

class _Formu1State extends State<Formu1> {
  TextEditingController idProductoController = TextEditingController();
  TextEditingController idProveedorController = TextEditingController();
  TextEditingController precioPaqueteController = TextEditingController();
  TextEditingController descripcionController = TextEditingController();
  TextEditingController precioUnidadController = TextEditingController();
  TextEditingController categoriaController = TextEditingController();
  TextEditingController noExistenciasController = TextEditingController();
  TextEditingController nombreProductoController = TextEditingController();

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
                'Formulario Productos',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff9a048e)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID Producto', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idProductoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa el ID del producto',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('ID Proveedor', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idProveedorController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa el ID del proveedor',
                ),
                keyboardType: TextInputType.number,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Precio Por Paquete', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                  controller: precioPaqueteController,
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.money, color: Color(0xff9a048e)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffa555b2)), // Color del borde
                    ),
                    hintText: 'Ingresa el precio por paquete',
                  ),
                  keyboardType: TextInputType.number),
              const SizedBox(
                height: 10,
              ),
              const Text('Descripcion del producto',
                  style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: descripcionController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.text_decrease, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa la descripcion del producto',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Precio Por Unidad', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: precioUnidadController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.money, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa el precio por unidad',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Categoria', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: categoriaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.category, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa la categoria del producto',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('No. Existencias', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: noExistenciasController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa el numero de existencias',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Nombre Del Producto', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreProductoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.text_decrease, color: Color(0xff9a048e)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xffa555b2)), // Color del borde
                  ),
                  hintText: 'Ingresa el nombre del producto',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idProductoController.text);
                  print(idProveedorController.text);
                  print(precioPaqueteController.text);
                  print(descripcionController.text);
                  print(precioUnidadController.text);
                  print(categoriaController.text);
                  print(noExistenciasController.text);
                  print(nombreProductoController.text);
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

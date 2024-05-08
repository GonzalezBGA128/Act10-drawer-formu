import 'package:flutter/material.dart';

//import 'main.dart';
import 'package:gonzalez/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.production_quantity_limits,
              text: 'Formulario Productos',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formu1)}),
          _buildDrawerItem(
              icon: Icons.shopping_cart,
              text: 'Formulario Pedidos',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formu2)}),
          _buildDrawerItem(
              icon: Icons.card_giftcard,
              text: 'Formulario Proveedor',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formu3)}),
          _buildDrawerItem(
              icon: Icons.event,
              text: 'Formulario Ventas',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formu4)}),
          _buildDrawerItem(
              icon: Icons.person,
              text: 'Formulario Clientes',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formu5)}),
          const Divider(),
          ListTile(
            title: const Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return const DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Yuya Cosmetics",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}

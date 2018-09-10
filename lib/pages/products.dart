import 'package:flutter/material.dart';
import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Column(children: <Widget>[
        AppBar(
          automaticallyImplyLeading: false, // remove the hamburger icon from the drawer/AppBar
          title: Text("Menu")
        ),
        ListTile(
          title: Text("Manage Products"), 
          onTap: () { Navigator.pushReplacementNamed(context, '/admin'); } 
        ),
      ],),),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager()
    );
  }
}


import 'package:flutter/material.dart';
import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Column(children: <Widget>[
        AppBar(
          title: Text("Menu"),
          automaticallyImplyLeading: false // remove the hamburger icon from the drawer/AppBar
        ),
        ListTile(title: Text("Manage Products"), onTap: () => {},)
      ],),),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager()
    );
  }
}


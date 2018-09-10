import 'package:flutter/material.dart';
import './products.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Column(children: <Widget>[
        AppBar(
          automaticallyImplyLeading: false,
          title: Text("Options"),
        ),
        ListTile(
          title: Text("Product Page"),
          onTap: () { Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProductsPage(),)); } 
        )
      ],),),
      appBar: AppBar(
        title: Text('Product Admin'),
      ),
      body: Container()
    );
  }
}
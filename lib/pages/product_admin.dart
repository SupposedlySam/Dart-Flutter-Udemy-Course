import 'package:flutter/material.dart';
import './products.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Sets up the page to be tab controllable (still need to add tabs)
      child: Scaffold(
        drawer: Drawer(child: Column(children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text("Options"),
          ),
          ListTile(
            title: Text("All Products"),
            onTap: () { Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProductsPage(),)); } 
          )
        ],),),
        appBar: AppBar(
          title: Text('Product Admin'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.create),
              text: 'Create Product'
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'My Products',
            )
          ],),
        ),
        body: Container(),
      ),
    );
  }
}
import "package:flutter/material.dart";

class ProductCardBuilder extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  ProductCardBuilder(this.products, this.deleteProduct);

  Widget _buildProductItem(BuildContext context,int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[FlatButton(
            child: Text('details'),
            onPressed: () => Navigator.pushNamed<bool>(context, '/product/' + index.toString())
              .then((value) {
                if(value == true)
                {
                    deleteProduct(index);
                }
              }),
          )])
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget productCards = Container();

    if(products.length > 0){
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }

    return productCards;
  }
}

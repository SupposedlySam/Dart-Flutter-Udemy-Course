import 'package:flutter/material.dart';
import './product_card_builder.dart';
import './product_control.dart';

class ProductContainer extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductContainer(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductControl(addProduct),
      ),
      Expanded(child: ProductCardBuilder(products, deleteProduct))
    ]);
  }
}

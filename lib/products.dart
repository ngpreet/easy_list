import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
          children: [Image.asset('assets/food.jpg'), Text(products[index])]),
    );
  }

  Widget _buildProductList(){
    Widget productList;
    if(products.length > 0){
      productList = ListView.builder(
            itemBuilder: _buildProductItem, itemCount: products.length);
    }
    else{
      productList = Center(
            child: Text('No products found'),
          );
    }
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}

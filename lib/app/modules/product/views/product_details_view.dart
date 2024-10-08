import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductModel product = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product.name, style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('\$${product.price}', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

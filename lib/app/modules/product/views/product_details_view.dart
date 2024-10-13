import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_chapter_1/app/modules/product/controllers/cart_controller.dart';
import 'package:getx_chapter_1/app/modules/product/controllers/product_controller.dart';
import 'package:getx_chapter_1/app/modules/product/views/cart_view.dart';
import '../models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    final ProductModel product = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Get.toNamed('/cart');
              //  Get.offNamed('/cart', arguments: product);
              //  Get.offAll(CartView(), arguments: product);
              //  Get.offAllNamed('/cart', arguments: product);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     Get.back();
            //   },
            //   child: Text('Go Back'),
            // ),
            Text(product.name, style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('\$${product.price}', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cartController.addToCart(product);

                Get.snackbar(
                    'Added to Cart', '${product.name} added to your cart');
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}

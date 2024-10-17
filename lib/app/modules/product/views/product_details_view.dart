import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_chapter_1/app/modules/product/controllers/cart_controller.dart';
import '../models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    final ProductModel product = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
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
            Text(product.title, style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('\$${product.price}', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cartController.addToCart(product);

                Get.snackbar(
                  'Added to Cart', // Title
                  '${product.title} has been added to your cart', // Message
                  snackPosition: SnackPosition.BOTTOM, // Snackbar position
                  duration: Duration(
                      seconds: 2), // How long the snackbar will be displayed
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                );
              },
              child: Text('Add to Cart'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.white,
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.shopping_cart),
                          title: Text('View Cart'),
                          onTap: () {
                            Get.toNamed('/cart');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.payment),
                          title: Text('Proceed to Checkout'),
                          onTap: () {
                            Get.toNamed('/checkout');
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text('More Actions'),
            )
          ],
        ),
      ),
    );
  }
}

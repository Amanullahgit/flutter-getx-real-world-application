import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_chapter_1/app/modules/product/controllers/cart_controller.dart';

class CheckoutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thank you for your purchase!',
                style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final CartController cartController =
                    Get.find<CartController>();

                cartController.cartService.clearCart();

                Get.snackbar(
                  'Order Completed',
                  'Your order has been successfully placed!',
                  snackPosition: SnackPosition.BOTTOM,
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.blue,
                  colorText: Colors.white,
                );

                Get.offAllNamed('/product');
              },
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}

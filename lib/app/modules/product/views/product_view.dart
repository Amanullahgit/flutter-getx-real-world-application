import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_chapter_1/app/modules/product/controllers/product_controller.dart';
import 'package:getx_chapter_1/app/modules/product/views/product_details_view.dart';

class ProductView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (context, index) {
            final product = productController.products[index];

            return ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price.toString()}'),
              onTap: () {
                Get.toNamed('/product-details', arguments: product);
                //Get.to(ProductDetailsView(), arguments: product);
                //  Get.off(ProductDetailsView(), arguments: product);
                //  Get.offNamed('/product-details', arguments: product);
                // Get.offAll(ProductDetailsView());
              },
            );
          },
        );
      }),
    );
  }
}

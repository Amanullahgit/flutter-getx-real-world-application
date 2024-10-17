import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_chapter_1/app/modules/product/controllers/product_controller.dart';
import 'package:getx_chapter_1/app/modules/product/views/product_details_view.dart';
import 'package:getx_chapter_1/app/services/theme_service.dart';

class ProductView extends StatelessWidget {
  final ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('product_list'.tr),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              if (Get.locale == Locale('en', 'US')) {
                Get.updateLocale(Locale('es', 'ES'));
              } else {
                Get.updateLocale(Locale('en', 'US'));
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              ThemeService().switchTheme();
            },
          ),
        ],
      ),
      body: Obx(() {
        if (productController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        if (productController.errorMessage.isNotEmpty) {
          return Center(child: Text(productController.errorMessage.value));
        }
        return ListView.builder(
          itemCount: productController.productList.length,
          itemBuilder: (context, index) {
            final product = productController.productList[index];

            return ListTile(
              title: Text(product.title),
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

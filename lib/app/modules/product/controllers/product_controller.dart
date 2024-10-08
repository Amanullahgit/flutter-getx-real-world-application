import 'package:get/get.dart';

import '../models/product_model.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;

  @override
  void onInit() {
    products.addAll([
      ProductModel(name: 'Product 1', price: 29.99),
      ProductModel(name: 'Product 2', price: 59.99),
      ProductModel(name: 'Product 3', price: 99.99),
    ]);
    super.onInit();
  }
}

import 'package:get/get.dart';
import 'package:getx_chapter_1/app/modules/product/controllers/cart_controller.dart';

import '../modules/product/controllers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.lazyPut<CartController>(() => CartController());
  }
}

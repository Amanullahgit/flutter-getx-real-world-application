import 'package:get/get.dart';
import 'package:getx_chapter_1/app/modules/product/controllers/cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}

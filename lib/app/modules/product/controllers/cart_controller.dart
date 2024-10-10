import 'package:get/get.dart';

import '../models/product_model.dart';

class CartController extends GetxController {
  var cartItems = <ProductModel>[].obs;
  var totalAmount = 0.0.obs;

  void addToCart(ProductModel product) {
    cartItems.add(product);
    calculateTotal();
  }

  void removeFromCart(ProductModel product) {
    cartItems.remove(product);
    calculateTotal();
  }

  void calculateTotal() {
    totalAmount.value = cartItems.fold(0, (sum, item) => sum + item.price);
  }
}

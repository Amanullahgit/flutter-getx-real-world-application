import 'package:get/get.dart';
import 'package:getx_chapter_1/app/bindings/CartBinding.dart';
import 'package:getx_chapter_1/app/bindings/ProductBinding.dart';
import 'package:getx_chapter_1/app/modules/product/views/cart_view.dart';
import 'package:getx_chapter_1/app/modules/product/views/checkout_view.dart';
import '../modules/product/views/product_view.dart';
import '../modules/product/views/product_details_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.PRODUCT,
        page: () => ProductView(),
        binding: ProductBinding()),
    GetPage(
        name: Routes.PRODUCT_DETAILS,
        page: () => ProductDetailsView(),
        binding: CartBinding()),
    GetPage(
      name: Routes.CART,
      page: () => CartView(),
    ),
    GetPage(
      name: Routes.CHECKOUT,
      page: () => CheckoutView(),
    ),
  ];
}

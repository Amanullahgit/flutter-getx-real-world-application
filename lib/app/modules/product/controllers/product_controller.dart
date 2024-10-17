import 'package:get/get.dart';
import 'package:getx_chapter_1/app/services/product_service.dart';

import '../models/product_model.dart';

class ProductController extends GetxController {
  var productList = <ProductModel>[].obs;
  var errorMessage = ''.obs;
  var isLoading = true.obs;

  final ProductService productService;

  ProductController({required this.productService});

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      errorMessage('');
      var products = await productService.fetchProducts();
      productList.assignAll(products);
    } catch (e) {
      errorMessage('Failed to fetch products');
    } finally {
      isLoading(false);
    }
  }
}

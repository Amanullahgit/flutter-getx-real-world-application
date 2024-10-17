import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
          'product_list': 'Product List',
          'add_to_cart': 'Add to Cart',
          'product_details': 'Product Details',
          'price': 'Price',
          'total': 'Total',
          'checkout': 'Checkout',
          'theme': 'Switch Theme',
          'language': 'Switch Language',
        },
        'es_ES': {
          'hello': 'Hola',
          'product_list': 'Lista de Productos',
          'add_to_cart': 'Añadir al carrito',
          'product_details': 'Detalles del Producto',
          'price': 'Precio',
          'total': 'Total',
          'checkout': 'Pagar',
          'theme': 'Cambiar Tema',
          'language': 'Cambiar Idioma',
        },
      };
}

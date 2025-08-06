import 'package:flutter/material.dart';
import 'screens/category_screen.dart';
import 'models/product.dart';
import 'screens/product_list_screen.dart';
import 'screens/product_detail_screen.dart';
import 'theme.dart';
import 'screens/cart_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/thanks_screen.dart';
import 'screens/login_screen.dart';
import 'screens/shipping_screen.dart';
import 'screens/payment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '小動物用品市集',
      theme: farmTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const CategoryScreen(),
        '/products': (context) {
          final category = ModalRoute.of(context)!.settings.arguments as String;
          return ProductListScreen(category: category);
        },
        '/product_detail': (context) {
          final product = ModalRoute.of(context)!.settings.arguments as Product;
          return ProductDetailScreen(product: product);
        },
        '/cart': (context) => const CartScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/checkout': (context) => const CheckoutScreen(),
        '/thanks': (context) => const ThanksScreen(),
        '/login': (context) => const LoginScreen(),
        '/shipping': (context) => const ShippingScreen(),
        '/payment': (context) => const PaymentScreen(),
      },
    );
  }
}

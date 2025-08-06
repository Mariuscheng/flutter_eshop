import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.imageUrl, height: 200, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(product.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('分類：${product.category}'),
            SizedBox(height: 8),
            Text(product.description),
            SizedBox(height: 16),
            Text('價格：NT${product.price}',
                style: TextStyle(fontSize: 20, color: Colors.teal)),
          ],
        ),
      ),
    );
  }
}

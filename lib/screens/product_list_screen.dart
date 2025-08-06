import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductListScreen extends StatelessWidget {
  final String category;
  const ProductListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final products =
        Product.sampleProducts.where((p) => p.category == category).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('$category 用品'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(product.imageUrl,
                        width: 80, height: 80, fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Text('NT\$${product.price}',
                            style: const TextStyle(
                                fontSize: 16, color: Color(0xFF6D4C41))),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_shopping_cart,
                        color: Color(0xFF6D4C41)),
                    tooltip: '加入購物車',
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${product.name} 已加入購物車')),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

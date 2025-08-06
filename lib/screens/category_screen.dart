import 'package:flutter/material.dart';
import '../drawer.dart';
import '../footer_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'name': '倉鼠', 'icon': Icons.pets},
      {'name': '兔子', 'icon': Icons.pets},
      {'name': '刺蝟', 'icon': Icons.pets},
      {'name': '天竺鼠', 'icon': Icons.pets},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('小動物用品市集'),
      ),
      drawer: const AppDrawer(),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/products',
                arguments: category['name'],
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(category['icon'] as IconData,
                        size: 48, color: Colors.orange),
                    const SizedBox(height: 12),
                    Text(category['name'] as String,
                        style: const TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const FooterWidget(),
    );
  }
}

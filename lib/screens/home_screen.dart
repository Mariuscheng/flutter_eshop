import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = ['倉鼠', '天竺鼠', '刺蝟', '兔子'];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小動物用品市集'),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories.map((cat) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Chip(label: Text(cat)),
              )).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    leading: Icon(Icons.pets),
                    title: Text('商品名稱 $index'),
                    subtitle: Text('適用於小動物'),
                    trailing: Text('NT\$${(index+1)*100}'),
                    onTap: () {
                      // TODO: 跳轉到商品詳情頁
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

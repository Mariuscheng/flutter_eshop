import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey[400],
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.flutter_dash, size: 80,), SizedBox(height:80), Text("+", style: TextStyle(fontSize: 80),), Icon(Icons.code, size: 80,),],
      ),
    );
  }
}
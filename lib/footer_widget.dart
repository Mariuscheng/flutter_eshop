import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFD7CCC8),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text('公司名稱：小動物用品市集有限公司',
              style: TextStyle(fontSize: 14, color: Color(0xFF6D4C41))),
          SizedBox(height: 4),
          Text('聯絡電話：0800-123-456  |  Email: info@marketplace.com',
              style: TextStyle(fontSize: 12, color: Color(0xFF6D4C41))),
          SizedBox(height: 4),
          Text('警告：本網站所有商品僅供示範用途，請勿用於非法用途。',
              style: TextStyle(fontSize: 12, color: Colors.red)),
          SizedBox(height: 4),
          Text('© 2025 小動物用品市集有限公司 版權所有',
              style: TextStyle(fontSize: 12, color: Color(0xFF6D4C41))),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('購物結帳')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_bag, size: 80, color: Colors.orange),
            const SizedBox(height: 24),
            const Text('購物過程模擬：', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            const Text('1. 確認商品', style: TextStyle(fontSize: 16)),
            const Text('2. 填寫收件資料', style: TextStyle(fontSize: 16)),
            const Text('3. 選擇付款方式', style: TextStyle(fontSize: 16)),
            const Text('4. 完成訂單', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/thanks', (route) => false);
              },
              child: const Text('完成購物'),
            ),
          ],
        ),
      ),
    );
  }
}

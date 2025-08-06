import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedMethod;
    return Scaffold(
      appBar: AppBar(title: const Text('選擇付款方式')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('請選擇付款方式：', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            RadioListTile<String>(
              title: const Text('信用卡'),
              value: '信用卡',
              groupValue: selectedMethod,
              onChanged: (value) {
                selectedMethod = value;
                Navigator.pushNamedAndRemoveUntil(
                    context, '/thanks', (route) => false);
              },
            ),
            RadioListTile<String>(
              title: const Text('貨到付款'),
              value: '貨到付款',
              groupValue: selectedMethod,
              onChanged: (value) {
                selectedMethod = value;
                Navigator.pushNamedAndRemoveUntil(
                    context, '/thanks', (route) => false);
              },
            ),
            RadioListTile<String>(
              title: const Text('超商取貨付款'),
              value: '超商取貨付款',
              groupValue: selectedMethod,
              onChanged: (value) {
                selectedMethod = value;
                Navigator.pushNamedAndRemoveUntil(
                    context, '/thanks', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}

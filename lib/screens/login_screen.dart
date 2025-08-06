import 'package:flutter/material.dart';
import '../drawer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('登入')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_outline, size: 80, color: Color(0xFF6D4C41)),
            const SizedBox(height: 24),
            const Text('請輸入帳號密碼登入', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextField(
                decoration: InputDecoration(
                  labelText: '帳號',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '密碼',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 180,
              child: ElevatedButton(
                onPressed: () {
                  AppDrawerState.isLoggedIn = true;
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
                child: const Text('登入'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 180,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
                child: const Text('回到主頁'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

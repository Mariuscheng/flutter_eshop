import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => AppDrawerState();
}

class AppDrawerState extends State<AppDrawer> {
  // 模擬登入狀態
  static bool isLoggedIn = true;

  void handleLogin() {
    setState(() {
      isLoggedIn = true;
    });
  }

  void handleLogout(BuildContext context) {
    setState(() {
      isLoggedIn = false;
    });
    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFFFFF8E1), // 柔和背景
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Color(0xFFFFCC80),
                  child: Icon(Icons.person, color: Color(0xFF6D4C41), size: 32),
                ),
                const SizedBox(height: 12),
                Text(
                  isLoggedIn ? '王小明 (示範登入)' : '未登入',
                  style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xFF6D4C41),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text('使用者選單',
                    style: const TextStyle(
                        fontSize: 14, color: Color(0xFF6D4C41))),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: const Icon(Icons.home, color: Color(0xFF6D4C41)),
                  title: const Text('首頁',
                      style: TextStyle(color: Color(0xFF6D4C41))),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (route) => false);
                  },
                ),
                ListTile(
                  leading:
                      const Icon(Icons.shopping_cart, color: Color(0xFF6D4C41)),
                  title: const Text('購物車',
                      style: TextStyle(color: Color(0xFF6D4C41))),
                  onTap: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person, color: Color(0xFF6D4C41)),
                  title: const Text('會員中心',
                      style: TextStyle(color: Color(0xFF6D4C41))),
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Color(0xFFD7CCC8)),
          isLoggedIn
              ? ListTile(
                  leading: const Icon(Icons.logout, color: Color(0xFF6D4C41)),
                  title: const Text('登出',
                      style: TextStyle(color: Color(0xFF6D4C41))),
                  onTap: () => handleLogout(context),
                )
              : ListTile(
                  leading: const Icon(Icons.login, color: Color(0xFF6D4C41)),
                  title: const Text('登入',
                      style: TextStyle(color: Color(0xFF6D4C41))),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/login', (route) => false);
                  },
                ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('會員中心')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.person, color: Colors.orange),
              title: const Text('會員個人資料'),
              subtitle: const Text(
                  '姓名：王小明\nEmail：test@example.com\n電話：0912345678\n地址：台北市信義區'),
              trailing: TextButton(
                child: const Text('修改'),
                onPressed: () {
                  // TODO: 實作修改個人資料
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('修改個人資料'),
                      content: const Text('此功能僅供展示。'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('確定'))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.lock, color: Colors.orange),
              title: const Text('修改密碼'),
              trailing: TextButton(
                child: const Text('修改'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('修改密碼'),
                      content: const Text('此功能僅供展示。'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('確定'))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.receipt_long, color: Colors.orange),
              title: const Text('訂單查詢'),
              subtitle: const Text('歷史訂單：\n2025/08/01 訂單編號 #A123456 狀態：已完成'),
              trailing: TextButton(
                child: const Text('更多'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('訂單查詢'),
                      content: const Text('此功能僅供展示。'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('確定'))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.location_on, color: Colors.orange),
              title: const Text('地址管理'),
              subtitle: const Text('收件地址：台北市信義區松高路1號'),
              trailing: TextButton(
                child: const Text('管理'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('地址管理'),
                      content: const Text('此功能僅供展示。'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('確定'))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.support_agent, color: Colors.orange),
              title: const Text('客服聯絡'),
              subtitle: const Text(
                  'Email: support@marketplace.com\n電話: 0800-123-456'),
              trailing: TextButton(
                child: const Text('聯絡'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('客服聯絡'),
                      content: const Text('請透過 Email 或電話聯絡客服。'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('確定'))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.help_outline, color: Colors.orange),
              title: const Text('常見問題'),
              subtitle: const Text('Q: 如何購買商品？\nA: 選擇商品加入購物車並結帳即可。'),
              trailing: TextButton(
                child: const Text('更多'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('常見問題'),
                      content: const Text('更多常見問題請參考官方網站。'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('確定'))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:const Color.fromARGB(255, 187, 184, 184),
        drawer: const Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Icon(Icons.favorite),),
              ListTile(leading: Icon(Icons.favorite),
              title: Text('My First App'),)
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //add a lib/images/1.jpg here
              Image.asset('lib/images/1.jpg',),
            ],
          ),
        )
      ),
    );
  }
}

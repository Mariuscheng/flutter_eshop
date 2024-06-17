import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'I N T R O',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text("My Name is MariusCheng.", style:TextStyle(fontSize: 20), textAlign: TextAlign.center,),
          Text("I study Higher-Diploma of Computer Study in Lingnan University CC.", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
          Text("My interest is frontend Dev and astrology.", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
          Text("I like to get idea from negative mind. This is my photographe Profile.", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
          Text("This is my flutter profile. I hope i can get a flutter freelance job", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
  }
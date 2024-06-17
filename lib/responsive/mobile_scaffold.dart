import 'package:flutter/material.dart';
import 'package:myfirstapp/constants.dart';
import 'package:myfirstapp/intro.dart';

import '../ContactPage.dart';
import '../ImageSection.dart';
import '../footer.dart';


class MobileScaffold extends StatefulWidget{
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
  }


class _MobileScaffoldState extends State<MobileScaffold>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      //appBar: myAppBar,
      backgroundColor: myDefaultColor,
      drawer: myDrawer,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ImageSection(image: 'images/1.jpg'),
            const SizedBox(height: 20, ),
            const Intro(),
            //const Text("Intro", style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            //const Text("My Name is MariusCheng.", style:TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            //const Text("I study Higher-Diploma of Computer Study in Lingnan University. My interest is landscape photography and web-design.", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            //const Text("I like to get idea from negative mind. This is my photographe Profile.", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            const SizedBox(height: 20,),
            const Text("My Gallery", style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            AspectRatio(aspectRatio: 1, child: SizedBox(
              //width: double.infinity,
              child: SizedBox(
                //width: double.infinity,
                child: GridView.builder(
                  itemCount: 12,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/${index + 1}.jpg'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                      );
                    }),
              ),
              ),),
            const ContactPage(),
            const SizedBox(height: 20,),
            const Footer(),
          ],
        ),
      ),
        // Your bottom navigation bar items here

    );
  }
}


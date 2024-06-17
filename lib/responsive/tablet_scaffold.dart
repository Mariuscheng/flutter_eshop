import 'package:flutter/material.dart';
import 'package:myfirstapp/constants.dart';

import '../ContactPage.dart';
import '../ImageSection.dart';
import '../Tablet_mygallery.dart';
import '../footer.dart';
import '../intro.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //appBar: myAppBar,
      backgroundColor: myDefaultColor,
      drawer: myDrawer,
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ImageSection(image: 'images/1.jpg'),
               SizedBox(
                height: 20,
              ),
               Intro(),
               SizedBox(
                height: 20,
              ),
              //const Text("My Gallery", style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              TabletMygGallery(),
              SizedBox(height: 20,),
              ContactPage(),
              SizedBox(height: 20,),
              Footer(),
            ]
      )
      )
    )
    );




  }
}

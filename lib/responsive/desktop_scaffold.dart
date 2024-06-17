import 'package:flutter/material.dart';
import 'package:myfirstapp/footer.dart';
import 'package:myfirstapp/Desktop_mygallery.dart';

//import '../ImageSection.dart';
import '../ContactPage.dart';
import '../ImageSection.dart';
import '../constants.dart';
import '../intro.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
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
            //const Text("Intro", style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            //const Text("My Name is MariusCheng.", style:TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            //const Text("I study Higher-Diploma of Computer Study in Lingnan University. My interest is landscape photography and web-design.", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            //const Text("I like to get idea from negative mind. This is my photographe Profile.", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            SizedBox(
              height: 20,
            ),
            //const Text("My Gallery", style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              DesktopMyMygGallery(),
              ContactPage(),
              Footer(),
       ]
      ),
    )
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TabUploadImage extends StatelessWidget {
  const TabUploadImage({required super.key});
  // Fields in a Widget subclass are always marked "final".
  // final Widget title;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(


            child: Column(

                children: const [
                  Padding(
                    padding: EdgeInsets.only(left:15, bottom: 20, right: 20, top:170), //apply padding to some sides only

                  ),
                  Text(
                    'Welcome! 👋',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48 ),
                  ),
                  Text("You can...",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),)

                ]),
          ),
        ));
  }
}
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TabUploadImage extends StatelessWidget {
  const TabUploadImage({required super.key});
  // Fields in a Widget subclass are always marked "final".
  // final Widget title;

  @override
  Widget build(BuildContext context) {
    

    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            
                  
                  
     child:
             GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 40,
                  crossAxisSpacing: 40,                  
                  // Images fetched from the users mobile storage would go below in the arry.
                  children: [

                  GestureDetector(
                      child: Image(
                            image: AssetImage('assets/example.png'),
                            fit: BoxFit.cover,
                          ),
                          onTap: (){
                            print("picture1");
                          },
                  ),

                  GestureDetector(
                      child: Image(
                            image: AssetImage('assets/example2.png'),
                            fit: BoxFit.cover,
                          ),
                          onTap: (){
                            print("picture2");
                          },
                  ),

                  GestureDetector(
                      child: Image(
                            image: AssetImage('assets/example3.png'),
                            fit: BoxFit.cover,
                          ),
                          onTap: (){
                            print("picture3");
                          },
                  ),

                  GestureDetector(
                      child: Image(
                            image: AssetImage('assets/example4.png'),
                            fit: BoxFit.cover,
                          ),
                          onTap: (){
                            print("picture4");
                          },
                  ),

                  GestureDetector(
                      child: Image(
                            image: AssetImage('assets/example5.png'),
                            fit: BoxFit.cover,
                          ),
                          onTap: (){
                            print("picture5");
                          },
                  ),

                  GestureDetector(
                      child: Image(
                            image: AssetImage('assets/example6.png'),
                            fit: BoxFit.cover,
                          ),
                          onTap: (){
                            print("picture6");
                          },
                  ),


                  ]
          ),
            )));
  }
}
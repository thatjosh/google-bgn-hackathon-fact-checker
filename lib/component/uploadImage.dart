import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TabUploadImage extends StatelessWidget {
  const TabUploadImage({required super.key});
  // Fields in a Widget subclass are always marked "final".
  // final Widget title;

  @override
  Widget build(BuildContext context) {
    final List<Image> myImages  = const [
    Image(
      image: NetworkImage('assets/text-image.jpeg'),
      fit: BoxFit.cover,
    ),
        Image(
        image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ), Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ), Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),
    Image(
    image: NetworkImage('assets/text-image.jpeg'),
    fit: BoxFit.cover,
    ),];

    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFFB3E5FC),
          body: Center(
            child: Column(

                children: [
                  Padding(
                    padding: EdgeInsets.only(left:15, bottom: 20, right: 20, top:10 ), //apply padding to some sides only

                  ),
                  Text(
                    'Select an Image from below',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white, backgroundColor:Color(0xFFB3E5FC)),
                  ),
                  SizedBox(
                      height: 20.0
                  ),
            Container(
              height: 435.0, // in logical pixels
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(color: Color(0xFFB3E5FC)),
              // Row is a horizontal, linear layout.
              child: GridView.count(
                  crossAxisCount: 3,
                  // Images fetched from the users mobile storage would go below in the arry.
                  children: [...myImages]  ),
            )
                ])
          ),
        ));
  }
}
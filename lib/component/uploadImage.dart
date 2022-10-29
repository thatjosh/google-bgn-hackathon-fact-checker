// ignore_for_file: file_names
import 'package:flutter/material.dart';

class TabUploadImage extends StatelessWidget {
  const TabUploadImage({required super.key});
  // Fields in a Widget subclass are always marked "final".
  // final Widget title;

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
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: GridView.count(
        crossAxisCount: 3,
        // Images fetched from the users mobile storage would go below in the arry.
        children: [...myImages]  ),
    );
  }
}

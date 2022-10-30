
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 60.0,
          fontFamily: 'SF',
        ),
        child: Center(
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              ScaleAnimatedText('Welcome!',scalingFactor: 0.9),
            ],
          ),
        ),
      ),
    );
  }
}

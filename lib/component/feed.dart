import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {

    return Container(
        height: 300,
        width: 300,
        child: Card(
            child: Text("Each new will go here")
        )
    );

  }
}
class TabFeed extends StatelessWidget {
  const TabFeed({required super.key});
  // Fields in a Widget subclass are always marked "final".
  // final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[200]),
      // Row is a horizontal, linear layout.
      child: GridView.count(
          crossAxisCount: 1,
          // Images fetched from the users mobile storage would go below in the arry.
          children: [
            CustomCard(
                index:1
            ),
            CustomCard(
                index:1
            ),
            CustomCard(
                index:1
            )

          ]
      ),
    );

  }
}


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
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0)
          ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: NetworkImage(), // image url from api
                // ),
                borderRadius: BorderRadius.circular(8.0)
              ),
            ),
          SizedBox(height: 8.0),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30.0)
            ),
            // child: Text() // Text from api would go here
          ),
           SizedBox(height: 8.0),
            // Text(
            //     textFromAPI
            // style: TextStyle(
            // fontWeight: FontWeight.bold
            // fontSize: 16.0,
            //   )
            // )
          ]
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

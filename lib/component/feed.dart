
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
        padding: EdgeInsets.all(20.0),
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
                height: 300.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("assets/space-1.jpeg"), // image url from api
                  ),
                    borderRadius: BorderRadius.circular(8.0)
                ),
              ),

              SizedBox(
                  height: 20.0
              ),
              Text(
                "title of the feed goes here",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0)
              ),
              SizedBox(
                  height: 20.0
              ),
              Text(
                  "Description about the feed should go here because this is the best place for it go as the best place for the description is here because the description should go here and it should go here otherwise it does not need to be here.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0)
              )
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
      height: 30.0, // in logical pixels
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
import 'package:flutter/material.dart';
import 'package:helloworld/component/feed.dart';
import 'component/uploadImage.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                  ),

                  // // Tab(icon: Icon(Icons.directions_car)),
                  // Text('Home', style: TextStyle(fontSize: 30)),
                  // Text('Upload', style: TextStyle(fontSize: 30))
                  // // Tab(icon: Icon(Icons.directions_transit))
                  ],
              ),
              title: const Text('Hide Facts'),
            backgroundColor: const Color(0xFF90CAF9),

            ),

            body: const TabBarView(
              children: <Widget>[
                TabFeed(
                  key: null,

                ),
                TabUploadImage(
                  key: null,

                )

              ],
            )),
      ),
    );
  }
}

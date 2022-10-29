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
                    icon: Icon(Icons.home, size:40),
                  ),
                  Tab(
                    icon: Icon(Icons.search, size:40) ,

                  ),

                  ],
              ),
              title: const Text('Hide Facts'),
            backgroundColor: const Color(0xFFB3E5FC),

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

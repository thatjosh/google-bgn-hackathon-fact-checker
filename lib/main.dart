import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloworld/component/feed.dart';
import 'package:helloworld/component/feed2.dart';
import 'package:helloworld/component/feed3.dart';
import 'component/uploadImage.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                toolbarHeight: 65,
                systemOverlayStyle: SystemUiOverlayStyle(
                  // Status bar color
                  statusBarColor: Color.fromARGB(255, 255, 255, 255),

                  // Status bar brightness (optional)
                  statusBarIconBrightness:
                      Brightness.dark, // For Android (dark icons)
                  statusBarBrightness: Brightness.light, // For iOS (dark icons)
                ),
                titleTextStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
                bottom: const TabBar(
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: 'From gallery',
                      icon: Icon(
                        Icons.photo_album_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      text: 'Feed',
                      icon: Icon(
                        Icons.newspaper_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                title: const Text("Fake or Fact"),
                centerTitle: true,
                backgroundColor: Colors.white),
            body: const TabBarView(
              children: <Widget>[
                TabUploadImage(
                  key: null,
                ),
                TabFeed(key: null, value: "Donald Trump"),
              ],
            )),
      ),
    );
  }
}

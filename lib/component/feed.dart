import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.index,
    required this.title,
    required this.description,
    required this.textualRating
  });

  final int index;
  final String title;
  final String description;
  final String textualRating;

  @override
  Widget build(BuildContext context) {


    
    return GestureDetector(
        onTap: (){
          _launchURL(description);
        },
    
    
  child: Container(
      
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 3.0)
            ]),

        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              
              Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0)
              ),
              SizedBox(
                  height: 20.0
              ),
              Text(
                "Verdict: " + textualRating,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19.0
                )
              ),
               SizedBox(
                  height: 20.0
              ),
              Text(
                  description,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 11.0)
              ),
              
              
              // )
            ]
        )
    ));
  }
}

class TabFeed extends StatefulWidget {
  final String value;
  const TabFeed({super.key, required this.value});


  @override
  State<TabFeed> createState() => _TabFeedState();
}


class _TabFeedState extends State<TabFeed> {

  Future getUserData(value) async {
    var url = Uri.parse('https://factchecktools.googleapis.com/v1alpha1/claims:search?languageCode=en&key=AIzaSyC9qBbkNUZlmPzt1T-66UUf9R8k5Iqx3xY&query={${widget.value}');
    var response =
    await http.get(url);
    var jsonData = jsonDecode(response.body);
    List<Claim> claims = [];
    // print(widget.value);
    for(var c in jsonData["claims"]){
      var cReview = c["claimReview"][0];

      Claim claim = Claim(c["text"],cReview["url"],cReview["textualRating"]);
      claims.add(claim);
    }
    print(claims.length);
    return claims;
  }
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        
        title: TextField(
          
          decoration: new InputDecoration.collapsed(
            hintText: 'Search for fact checked articles',
            hintStyle: TextStyle(fontSize: 18, color: Colors.white)
          ),
          controller: myController,
          cursorColor: Colors.white,
          style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold,
              fontSize: 18)
        ),
      ),
      body: Container(
        child: Card(
          child: FutureBuilder(
            future: getUserData(myController),
            builder: (context, snapshot) {
              if(snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text('Loading...'),
                  ),
                );
              } else {
                var data = snapshot.data as List;

                return ListView.builder(itemCount: data.length,
                    itemBuilder:(context, i){
                      //  Alter the function call every time here
                      return CustomCard(index: i, title: data[i].text, description: data[i].url, textualRating: data[i].textualRating,);
                    });
              }
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return TabFeed(key: null, value: myController.text);
            },
          );
        },
        tooltip: 'Search',
        child: const Icon(Icons.search, color: Colors.black,),
      ),
    );

  }
}
//Create class Claim to store the data
class Claim{

  final String text, url, textualRating;

  Claim(this.text, this.url, this.textualRating);
}

_launchURL(url) async {
  url = url;
  await launch(url);
}
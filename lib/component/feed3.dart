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

class TabFeed3 extends StatefulWidget {
  const TabFeed3({super.key});

  @override
  State<TabFeed3> createState() => _TabFeedState3();


}

class _TabFeedState3 extends State<TabFeed3> {

  Future getUserData() async {
    var url = Uri.parse('https://factchecktools.googleapis.com/v1alpha1/claims:search?languageCode=en&key=AIzaSyC9qBbkNUZlmPzt1T-66UUf9R8k5Iqx3xY&query={meta}');
    var response =
    await http.get(url);
    var jsonData = jsonDecode(response.body);
    List<Claim> claims = [];

    for(var c in jsonData["claims"]){
      var cReview = c["claimReview"][0];

      Claim claim = Claim(c["text"],cReview["url"],cReview["textualRating"]);
      claims.add(claim);
    }
    print(claims.length);
    return claims;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(          
          child: FutureBuilder(
            future: getUserData(),
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

                      return CustomCard(index: i, title: data[i].text, description: data[i].url, textualRating: data[i].textualRating,);
                    });
              }
            },
          ),
        ),
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
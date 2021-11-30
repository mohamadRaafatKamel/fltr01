import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class MyStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyStateful();
  }

}


class _MyStateful extends State<MyStateful> {

  String word = "";
  String selectLang = "Select Lang";
  var languages = ["C++","C#","Dart","Java"];
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20),
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              // onSubmitted: (String userInput){
              //   setState(() {
              //     word = userInput;
              //   });
              // },
              onChanged: (String userInput) {
                setState(() {
                  word = userInput;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(30),
                child: Text("You Write : $word"),
            ),
          ],
        ),
      ),
    );
  }
}
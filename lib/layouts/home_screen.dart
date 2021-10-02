import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        alignment: Alignment.topCenter,
        color: Colors.black,
        // width: 200,
        // height: 100,
        // padding: EdgeInsets.all(30),
        // margin: EdgeInsets.only(left: 20,top: 100),
        child: Column(
          children: [
            MyImage(),
            MyButton(),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'hi',
                    style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.red,
                        fontSize: 30,
                        fontFamily: "Birthstone"
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'By',
                    style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.yellow,
                        fontSize: 30,
                        fontFamily: "Birthstone"
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Home Page',
                    style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.red,
                        fontSize: 30,
                        fontFamily: "Birthstone"
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Welcome ',
                    style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.yellow,
                        fontSize: 30,
                        fontFamily: "Birthstone"
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      )
    );

  }

}

class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage image = new AssetImage('images/nnb1.jpg');
    Image myimg = new Image(image: image);
    return Container(child: myimg);
  }
}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    RaisedButton button = RaisedButton(
        onPressed: (){},
      color: Colors.white,
      child: Text(
        'My Button ',
        style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: "Birthstone"
        ),
      ),
    );
    return Container(child: button);
  }
}

/*

  return Material(
  color: Colors.lightBlueAccent,
  child: Center(
  child: Text(
  "Hello World",
  textDirection: TextDirection.ltr,
  style: TextStyle(color: Colors.white,fontSize: 30),
  ),
  ),
  );

*/
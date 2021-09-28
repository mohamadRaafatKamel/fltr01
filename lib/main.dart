import 'package:flutter/material.dart';

void main() {


  //
  // var stringName = "hi every one";
  // const constantString = " MRM";
  // num number = 55555; // can take an thing
  // int number1 = 55555;
  // double number2 = 555.55;
  //
  // print ("age is : $number");
  // print ("age is :" + number.toString());

  var car1 = new Car();
  // car1._setSpeed(55);


}


class Car {
  String color = "";
  int speed = 0;

  // Car.flexConstractor ([int speed = 0,String color = ""]){
  //   this.speed = speed;
  //   this.color = color;
  // }

  // set and get function
  int get _getSpeed => speed;
  set _setSpeed(int val) => speed = val;

}
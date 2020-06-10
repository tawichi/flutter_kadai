import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SaturdayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MyHomePageSa();
  }

}

class MyHomePageSa extends StatefulWidget{
  MyHomePageSa({this.title}): super();

  final String title;

  @override
  _MyHomePageStateSa createState() => new _MyHomePageStateSa();
}

class _MyHomePageStateSa extends State<MyHomePageSa>{
  String _message;
  bool _checked1 = false;
  bool _checked2 = false;


  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('土曜締め切り'),
      ),

      body:Text('課題の入力')
    );




  }



}
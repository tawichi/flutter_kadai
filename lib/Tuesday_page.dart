import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TuesdayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MyHomePageTu();
  }

}

class MyHomePageTu extends StatefulWidget{
  MyHomePageTu({this.title}): super();

  final String title;

  @override
  _MyHomePageStateTu createState() => new _MyHomePageStateTu();
}

class _MyHomePageStateTu extends State<MyHomePageTu>{
  String _message;
  bool _checked1 = false;
  bool _checked2 = false;


  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('火曜締め切り'),
      ),

      body: Text('課題の入力')
    );




  }



}
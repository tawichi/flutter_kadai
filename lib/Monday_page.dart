import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MondayPage extends StatelessWidget{
  MondayPage(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      new  MyHomePageM(




    );
  }
}

class MyHomePageM extends StatefulWidget{
  MyHomePageM({this.title}): super();

  final String title;

  @override
  _MyHomePageMState createState() => new _MyHomePageMState();
}


//インスタンスからウィジェットを作る

class _MyHomePageMState extends State<MyHomePageM>{
  String _message;
  bool _checked = false;


  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('月曜締め切り'),
      ),
      body: Text('課題の入力')

    );


  }



}
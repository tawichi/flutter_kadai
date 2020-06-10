import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MondayPage extends StatelessWidget{
  MondayPage(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      new  MyHomePage(




    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({this.title}): super();

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


//インスタンスからウィジェットを作る

class _MyHomePageState extends State<MyHomePage>{
  String _message;
  bool _checked = false;


  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('月曜締め切り'),
      ),
      body: Checkbox(
        value: _checked,
        onChanged: (bool value) {
          setState(() {
            _checked = value;
          });
        },
      )
      ,
    );


  }



}
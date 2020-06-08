import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MondayPage extends StatelessWidget{
  MondayPage(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('月曜締め切り')

      ),
      body: Column(
        children: <Widget>[


        ],
      ),
    );
  }

}
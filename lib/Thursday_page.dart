import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThursdayPage extends StatelessWidget{
  String _message;
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('木曜締め切り'),


      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('情報数学概論'),
          Row(

            children: <Widget>[

              Checkbox(
                value:  _checked,
                onChanged: checkChanged,
              ),
              Text('提出済み',)

            ],
          ),
          Text('備考欄'),
          TextField(
            decoration: InputDecoration(
                hintText: '臨時課題があれば記入'
            ),
          ),
        ],
      ),
    );
  }
  void checkChanged (bool value){
    setState((){
      _checked = value;
      _message = value ? 'checked' : 'not checked';
    });
  }
}

void setState(Null Function() param0) {
}
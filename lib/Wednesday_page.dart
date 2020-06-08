import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WednesdayPage extends StatelessWidget {
  String _message;
  bool _checked = false;
  @override
  Widget build (BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar (
        title: Text ( '水曜締め切り' ) ,
      ) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
              '計算機基礎   ',
          style: TextStyle(fontSize: 16.0),
          ),

          Row(

            children: <Widget>[

              Checkbox(
                value:  _checked,
                onChanged: checkChanged,
              ),
              Text('提出済み',)

            ],
          ),
          Text('コン実',
            style: TextStyle(fontSize: 16.0),),
          Row(
            children: <Widget>[

              Checkbox(
                value:  _checked,
                onChanged: checkChanged,
              ),
              Text('提出済み'),


            ],


          ),
          Text('備考欄'),
          TextField(),
        ],

      ) ,
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterkadai/main.dart';

class FridayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MyHomePageF();
  }

}

class MyHomePageF extends StatefulWidget{
  MyHomePageF({this.title}): super();

  final String title;

  @override
  _MyHomePageStateF createState() => new _MyHomePageStateF();
}

class _MyHomePageStateF extends State<MyHomePageF>{
  String _message;
  bool _checked1 = false;
  bool _checked2 = false;


  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('金曜締め切り'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '応用数学   ',
            style: TextStyle(fontSize: 16.0),
          ),

          Row(

            children: <Widget>[

              Checkbox(
                value:  _checked1,
                onChanged: (bool value) {
                  setState(() {
                    _checked1 = value;
                  });
                },
              ),
              Text('提出済み',)

            ],
          ),

          Text('備考欄'),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                hintText: '特記事項があれば記入'
            ),
          ),
          RaisedButton(
            onPressed: (){
              Navigator.pop(context);

            },
            child: Center(child: Text('戻る')),
          )
        ],

      ) ,
    );




  }



}
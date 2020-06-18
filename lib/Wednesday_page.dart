import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WednesdayPage extends StatelessWidget {
  String _message;
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   new MyHomePageW(



      );

  }
}

class MyHomePageW extends StatefulWidget{
  MyHomePageW({this.title}): super();

  final String title;

  @override
  _MyHomePageWState createState() => new _MyHomePageWState();
}


//インスタンスからウィジェットを作る

class _MyHomePageWState extends State<MyHomePageW>{
  String _message;
  bool _checked1 = false;
  bool _checked2 = false;
  bool _checked3 = false;

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('水曜締め切り'),
      ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '計算機基礎   ',
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
            Text('コン実',
              style: TextStyle(fontSize: 16.0),),
            Row(
              children: <Widget>[

                Checkbox(
                  value:  _checked2,
                  onChanged: (bool value) {
                    setState(() {
                      _checked2 = value;
                    });
                  },
                ),
                Text('提出済み'),


              ],


            ),
            Text(
              '情報数学概論  ',
              style: TextStyle(fontSize: 16.0),
            ),

            Row(

              children: <Widget>[

                Checkbox(
                  value:  _checked3,
                  onChanged: (bool value) {
                    setState(() {
                      _checked3 = value;
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
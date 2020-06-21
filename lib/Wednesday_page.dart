import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*class WednesdayPage extends StatelessWidget {
  String _message;
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   new MyHomePageW(



      );

  }
}*/
PageStorageKey mykey = new PageStorageKey("testkey");
final PageStorageBucket _bucket = new PageStorageBucket();

class MyHomePageW extends StatefulWidget{
  MyHomePageW({Key key}) : super(key: key);



  @override
  _MyHomePageWState createState() => new _MyHomePageWState();
}

class WednesdayParams{
  bool _checked1 = false;
  bool _checked2 = false;
  bool _checked3 = false;
}
//インスタンスからウィジェットを作る

class _MyHomePageWState extends State<MyHomePageW>{
  WednesdayParams _params = WednesdayParams();


  @override
  void didChangeDependencies() { // このメソッドをオーバーライド
    WednesdayParams p = _bucket.readState(context, identifier: ValueKey(mykey));
    print(p);
    if (p != null) {
      _params = p;
    } else {
      _params = WednesdayParams();
      print(_params._checked1);
    }
    super.didChangeDependencies();
  }

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
                  value:  _params._checked1,
                  onChanged: (bool value) {
                    setState(() {
                      _params._checked1 = value;

                    });
                    _bucket.writeState(context, _params, identifier: ValueKey(mykey));
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
                  value:  _params._checked2,
                  onChanged: (bool value) {
                    setState(() {
                      _params._checked2 = value;
                    });
                    _bucket.writeState(context, _params, identifier: ValueKey(mykey));
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
                  value:  _params._checked3,
                  onChanged: (bool value) {
                    setState(() {
                      _params._checked3 = value;
                    });
                    _bucket.writeState(context, _params, identifier: ValueKey(mykey));
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
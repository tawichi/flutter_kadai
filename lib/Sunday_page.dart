import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PageStorageKey mykey = new PageStorageKey("testkey");
final PageStorageBucket _bucket = new PageStorageBucket();

/*class SundayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MyHomePageSu();
  }

}*/

class MyHomePageSu extends StatefulWidget{
  MyHomePageSu({Key key}) : super(key: key);



  @override
  _MyHomePageStateSu createState() => new _MyHomePageStateSu();
}
class SundayPageParams{
  bool _checked1 = false;
  bool _checked2 = false;

}

class _MyHomePageStateSu extends State<MyHomePageSu>{
  SundayPageParams  _params = SundayPageParams();


  @override
  void didChangeDependencies() { // このメソッドをオーバーライド
    SundayPageParams p = _bucket.readState(context, identifier: ValueKey(mykey));
    print(p);
    if (p != null) {
      _params = p;
    } else {
      _params = SundayPageParams();
      print(_params._checked1);
      print(_params._checked2);
    }
    super.didChangeDependencies();
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('日曜締め切り'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '通信システム   ',
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
          Text(
            '電子回路基礎   ',
            style: TextStyle(fontSize: 16.0),
          ),

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
 
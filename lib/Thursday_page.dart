import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*class ThursdayPage extends StatelessWidget{
  String _message;
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MyHomePageTh(



    );

  }
}*/
PageStorageKey mykey = new PageStorageKey("testkey");
final PageStorageBucket _bucket = new PageStorageBucket();


class MyHomePageTh extends StatefulWidget{
  MyHomePageTh({Key key}) : super(key: key);
  @override
  _MyHomePageThState createState() => new _MyHomePageThState();
}

class ThursdayPageParams{
  bool _checked1 = false;
  bool _checked2 = false;
  bool _checked3 = false;
  bool _checked4 = false;
  bool _checked5 = false;
}

//インスタンスからウィジェットを作る

class _MyHomePageThState extends State<MyHomePageTh>{
  ThursdayPageParams _params = ThursdayPageParams();



  @override
  void didChangeDependencies() { // このメソッドをオーバーライド
    ThursdayPageParams p = _bucket.readState(context, identifier: ValueKey(mykey));
    print(p);
    if (p != null) {
      _params = p;
    } else {
      _params = ThursdayPageParams();
      print(_params._checked1);
    }
    super.didChangeDependencies();
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('木曜締め切り'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'プログラミング基礎   ',
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
          Text('フランス語',
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
          Text('ロシア語',
            style: TextStyle(fontSize: 16.0),),
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
              Text('提出済み'),


            ],


          ),
          Text('確率・統計',
            style: TextStyle(fontSize: 16.0),),
          Row(
            children: <Widget>[

              Checkbox(
                value:  _params._checked4,
                onChanged: (bool value) {
                  setState(() {
                    _params._checked4 = value;
                  });
                  _bucket.writeState(context, _params, identifier: ValueKey(mykey));
                },
              ),
              Text('提出済み'),


            ],


          ),
          Text(
            '英語  ',
            style: TextStyle(fontSize: 16.0),
          ),

          Row(

            children: <Widget>[

              Checkbox(
                value:  _params._checked5,
                onChanged: (bool value) {
                  setState(() {
                    _params._checked5 = value;
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
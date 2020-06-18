import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterkadai/main.dart';



/*class FridayPage extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MyHomePageF();
  }

}*/

class MyHomePageF extends StatefulWidget{
  MyHomePageF({Key key}) : super(key: key);

  @override

  State<StatefulWidget> createState() {
    return _MyHomePageFState();
  }
}
class FridayPageParams {
  bool _checked1= false ;
}

class _MyHomePageFState extends State<MyHomePageF>{
  FridayPageParams _params = FridayPageParams();


  //bool _checked1 = false ;

  @override
  void didChangeDependencies() { // このメソッドをオーバーライド
    FridayPageParams p = PageStorage.of(context).readState(context);
    if (p != null) {
      _params = p;
    } else {
      _params = FridayPageParams();
    }
    super.didChangeDependencies();
  }

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
                value:  _params._checked1,
                onChanged: (bool value) {
                  setState(() {
                    _params._checked1 = value;

                  });
                  PageStorage.of(context).writeState(context, _params);
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
              Navigator.pop(context,);

            },
            child: Center(child: Text('戻る')),
          )
        ],

      ) ,
    );




  }



}
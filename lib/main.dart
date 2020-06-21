import 'package:flutter/material.dart';
import 'package:flutterkadai/Friday_page.dart';
import 'package:flutterkadai/Monday_page.dart';
import 'package:flutterkadai/Saturday_page.dart';
import 'package:flutterkadai/Sunday_page.dart';
import 'package:flutterkadai/Thursday_page.dart';
import 'package:flutterkadai/Tuesday_page.dart';
import 'package:flutterkadai/Wednesday_page.dart';

void main() => runApp(new MyApp());
PageStorageKey mykey = new PageStorageKey("testkey");
final PageStorageBucket _bucket = new PageStorageBucket();


class MyApp extends StatelessWidget{
  final title = 'Flutter サンプル';

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      home: PageStorage(
        bucket: _bucket,
        key: mykey,
        child: MyHomePage(
          title:this.title,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


//インスタンスからウィジェットを作る

class _MyHomePageState extends State<MyHomePage>{


  //bool _checked1 = false;



  @override

  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: Text('課題管理App（曜日別）')
      ),
      body: Container(

        child: ListView(
          children: <Widget>[

            ListTile(

              title: Text('月曜締め切り'),
              trailing:  Icon(Icons.arrow_forward_ios),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:  (context) => MondayPage(),
                  )

                );

            },

            ),
            ListTile(
              title: Text('火曜締め切り'),
              trailing:  Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:  (context) => TuesdayPage(),
                    )
                );
              },
            ),
            ListTile(
              title: Text('水曜締め切り'),
              trailing:  Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:  (context) => MyHomePageW(key: PageStorageKey<String>("key_MyHomePageW")),
                    )
                );

              },
            ),
            ListTile(
              title: Text('木曜締め切り'),
              trailing:  Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:  (context) => MyHomePageTh(key: PageStorageKey<String>("key_MyHomePageTh")),
                    )
                );
              },
            ),
            ListTile(
              title: Text('金曜締め切り'),
              trailing:  Icon(Icons.arrow_forward_ios),
              onTap: (){
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:  (context) => MyHomePageF(key: PageStorageKey<String>("key_MyHomePageF")),
                    )
                );
              },
            ),
            ListTile(
              title: Text('土曜締め切り'),
              trailing:  Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:  (context) => SaturdayPage(),
                    )
                );
              },
            ),
            ListTile(
              title: Text('日曜締め切り'),
              trailing:  Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:  (context) => MyHomePageSu(key: PageStorageKey<String>("key_MyHomePageSu")),
                    )
                );
              },
            ),
            Text('備考欄'),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: '臨時課題があれば記入'
              ),

            ),
            /*Row(
              children: <Widget>[
                Checkbox(
                  value:  _checked1,
                  onChanged: (bool value) {
                    setState(() {
                      _checked1 = value;
                    });
                  },
                ),


                Text('全課題クリア！')
              ],
            )*/


          ],
        ),

      )

    );
  }

}
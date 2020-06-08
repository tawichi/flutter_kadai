import 'package:flutter/material.dart';
import 'package:flutterkadai/Friday_page.dart';
import 'package:flutterkadai/Monday_page.dart';
import 'package:flutterkadai/Saturday_page.dart';
import 'package:flutterkadai/Sunday_page.dart';
import 'package:flutterkadai/Thursday_page.dart';
import 'package:flutterkadai/Tuesday_page.dart';
import 'package:flutterkadai/Wednesday_page.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  final title = 'Flutter サンプル';

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(
        title:this.title,

      ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({this.title}): super();

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


//インスタンスからウィジェットを作る

class _MyHomePageState extends State<MyHomePage>{

  @override

  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: Text('課題管理App（曜日別）')
      ),
      body:Container(
        width: double.infinity,
        child: ListView(
          children: <Widget>[
            ListTile(

              title: Text('月曜締め切りだよ'),
              trailing:  Icon(Icons.arrow_forward_ios),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:  (context) => MondayPage('泰地'),
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
                      builder:  (context) => WednesdayPage(),
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
                      builder:  (context) => ThursdayPage(),
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
                      builder:  (context) => FridayPage(),
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
                      builder:  (context) => SundayPage(),
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

            )

          ],
        ),
      )
    );
  }
}
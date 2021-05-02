import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Bottom Sheet'),),
      
    body: Center(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

RaisedButton(onPressed: (){

  Get.bottomSheet(
    Container(
child: Wrap(children: [
ListTile(
  leading: Icon(Icons.wb_sunny_outlined),
  title: Text('Light Theme'),
  onTap: ()=>{
    Get.changeTheme(ThemeData.light()),
  },
),
ListTile(
  leading: Icon(Icons.wb_sunny),
  title: Text('Dark Theme'),
  onTap: ()=>{

    Get.changeTheme(ThemeData.dark()),
  },
),



],),

    ),
    barrierColor: Colors.greenAccent.shade100,
    backgroundColor: Colors.purple,
    isDismissible: true,
    shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(
        color: Colors.white,
        style: BorderStyle.solid,
        width: 2.0
      ),
    ),
  );
},
child: Text('Show Bottom Sheet'),
),
    ],),),),
      
      
    );
  }
}
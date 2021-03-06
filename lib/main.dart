import 'package:flutter/material.dart';
import 'package:flutter_app/data/ListData.dart';
import 'package:flutter_app/widget/CenterDemo.dart';
import 'package:flutter_app/widget/ContainerAndTextDemo.dart';
import 'package:flutter_app/widget/CustomScrollViewDemo.dart';
import 'package:flutter_app/widget/GridViewDemo.dart';
import 'package:flutter_app/widget/ImageDemo.dart';
import 'package:flutter_app/widget/ListViewDemo.dart';
import 'package:flutter_app/widget/SingleChildScrollViewDemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return HomeContent();
    return MaterialApp(
      //页面信息
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyFlutter"),
        ),
        body: CustomScrollViewDemo1(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

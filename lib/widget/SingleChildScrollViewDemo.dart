import 'package:flutter/material.dart';

/*
 * 滚动组件，类似于android的ScrollView
 */
class SingleChildScrollView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建⼀个List<Widget>
            children: str
                .split("")
                //每⼀个字⺟都⽤⼀个Text显示,字体为原来的两倍
                .map((c) => Text(
                      c,
                      textScaleFactor: 2.0,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

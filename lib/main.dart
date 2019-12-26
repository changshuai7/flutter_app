import 'package:flutter/material.dart';

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
        body: HomeContent7(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "你好Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          color: Color.fromARGB(100, 100, 100, 255),
        ),
      ),
    );
  }
}

class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容",
          textAlign: TextAlign.left,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.black,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0,
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
//        padding: EdgeInsets.all(10),
//        padding: EdgeInsets.fromLTRB(0, 10, 20, 30),
//        transform: Matrix4.translationValues(100, 0, 0)//位移
//        transform: Matrix4.rotationZ(1),
        transform: Matrix4.diagonal3Values(1.2, 1, 1),
        alignment: Alignment.topRight,
      ),
    );
  }
}

//远程图片
class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577359381804&di=bf467cdc5e6d366825a59ab4c1edc2bb&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D2348394515%2C2895775719%26fm%3D214%26gp%3D0.jpg";
    var imageUrl2 =
        "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg";
    return Center(
      //建议把图片放在一个Container中，可以控制图片的显示位置、方式等。
      child: Container(
        //注意这里虽然width、height是一个bool类型，但是可以不用输入.0
        width: 300, //设置宽度
        height: 500, //设置高度
        decoration: BoxDecoration(
            color: Colors.yellow, //容器背景颜色
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            )),
        //图片作为子组件
        child: Image.network(
          //加载远程图片
          imageUrl,
          alignment: Alignment.topLeft,
          repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}

//圆角图片
class HomeContent4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577359381804&di=bf467cdc5e6d366825a59ab4c1edc2bb&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D2348394515%2C2895775719%26fm%3D214%26gp%3D0.jpg";
    var imageUrl2 =
        "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg";
    return Center(
      //建议把图片放在一个Container中，可以控制图片的显示位置、方式等。
      child: Container(
        //注意这里虽然width、height是一个bool类型，但是可以不用输入.0
        width: 300, //设置宽度
        height: 300, //设置高度
        decoration: BoxDecoration(
            color: Colors.yellow, //容器背景颜色
            //如下两种方式都可以配置圆形的容器
            // borderRadius: BorderRadius.all(Radius.circular(150)),
            borderRadius: BorderRadius.circular(150),
            image: DecorationImage(
              //  image: Image.network(src)//注意这里使用Image.network会报错
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            )),
      ),
    );
  }
}

//圆角图片2
class HomeContent5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577359381804&di=bf467cdc5e6d366825a59ab4c1edc2bb&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D2348394515%2C2895775719%26fm%3D214%26gp%3D0.jpg";
    var imageUrl2 =
        "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg";
    var imageUrl3 =
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577958971&di=dbdc9d5c67a9de5afa16588d590a9e61&imgtype=jpg&er=1&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fbaike%2Fcrop%253D0%252C68%252C190%252C270%253Bw%253D138%253Bq%253D95%2Fsign%3D1a6070f50bfa513d45e5369e005d79cd%2Fb7003af33a87e950bec5164513385343faf2b4cd.jpg";
    return Center(
      //建议把图片放在一个Container中，可以控制图片的显示位置、方式等。
      child: Container(
        child: ClipOval(
          child: Image.network(
            imageUrl3,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

//加载本地图片
class HomeContent6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset('images/2.0x/a.png'),
        height: 300,
        width: 300,
      ),
    );
  }
}

class HomeContent7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10), //设置padding
      children: <Widget>[
        //可以放置任何组件(Image/Text/Container等)，
        //但是一般配合ListTile来使用
        ListTile(
          title: Text(
            "人人车上市了",
            style: TextStyle(fontSize: 18, color: Colors.red),
          ),
          subtitle: Text("这是二级标题111"),
        ),
        ListTile(
          title: Text("我爱人人车"),
          subtitle: Text("这是二级标题222"),
        ),
        ListTile(
          title: Text("人人车爱我"),
          subtitle: Text("这是二级标题333"),
        ),
      ],
    );
  }
}

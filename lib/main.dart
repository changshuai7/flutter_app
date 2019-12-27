import 'package:flutter/material.dart';
import 'package:flutter_app/listData.dart';

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
        body: HomeContent17(),
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

//垂直列表：ListTile
class HomeContent7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577359381804&di=bf467cdc5e6d366825a59ab4c1edc2bb&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D2348394515%2C2895775719%26fm%3D214%26gp%3D0.jpg";
    var imageUrl2 =
        "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg";
    var imageUrl3 =
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577958971&di=dbdc9d5c67a9de5afa16588d590a9e61&imgtype=jpg&er=1&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fbaike%2Fcrop%253D0%252C68%252C190%252C270%253Bw%253D138%253Bq%253D95%2Fsign%3D1a6070f50bfa513d45e5369e005d79cd%2Fb7003af33a87e950bec5164513385343faf2b4cd.jpg";

    return ListView(
      padding: EdgeInsets.all(10), //设置padding
      children: <Widget>[
        //可以放置任何组件(Image/Text/Container等)，
        //但是一般配合ListTile来使用
        ListTile(
          //后置图标
          trailing: Icon(
            Icons.home,
            color: Colors.red,
            size: 30,
          ),
          //前置图标
          leading: Image.network(imageUrl),
          //标题
          title: Text(
            "人人车上市了",
            style: TextStyle(fontSize: 18, color: Colors.red),
          ),
          //副标题
          subtitle: Text("这是二级标题111"),
          onTap: () {
            print('Item被点击了');
          },
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

//垂直图文列表
class HomeContent8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageUrl4 =
        "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1577378688&di=89d6c0ce04cfd3d5a79450ff23c054e9&src=http://pic1.win4000.com/wallpaper/d/59b775569da2a.jpg";
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Container(
          height: 50,
          child: Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        Image.network(imageUrl4),
        Image.network(imageUrl4),
        Image.network(imageUrl4),
        Image.network(imageUrl4),
      ],
    );
  }
}

//水平列表
class HomeContent9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577359381804&di=bf467cdc5e6d366825a59ab4c1edc2bb&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D2348394515%2C2895775719%26fm%3D214%26gp%3D0.jpg";

    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100, //在垂直列表中，设置宽度是无效的。
            color: Colors.blue,
          ),
          Container(
            width: 100,
            color: Colors.red,
            //可以继续嵌套
            child: ListView(
              children: <Widget>[
                Image.network(imageUrl),
                Text("你好1"),
                Text("你好2"),
                Text("你好3"),
                Text("你好4"),
                Text("你好5"),
                Text("你好6"),
                Text("你好7"),
              ],
            ),
          ),
          Container(
            width: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

//通过循环动态添加列表数据
class HomeContent10 extends StatelessWidget {
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("Item-->第$i条数据"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}

//通过外部数据添加列表数据
class HomeContent11 extends StatelessWidget {
  List<Widget> _getData() {
    var tempList = listData.map((value) {
      return ListTile(
        title: Text(value['title']),
        leading: Image.network(value['imageUrl']),
        subtitle: Text(value['author']),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getData(),
    );
  }
}

//通过ListView.builder动态添加列表数据
class HomeContent12 extends StatelessWidget {
  List<String> list = new List();

  //通过构造方法先初始化数据
  HomeContent12() {
    for (var i = 0; i < 20; i++) {
      list.add("我是第$i条数据");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length, //配置长度
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            this.list[index],
          ),
        );
      },
    );
  }
}

//通过ListView.builder动态添加列表外部的数据
class HomeContent13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getItemWidget, //这里只是把方法赋值，不是执行。不要用括号，用括号就成了执行调用改方法
    );
  }

  Widget _getItemWidget(BuildContext context, int index) {
    var value = listData[index];
    return ListTile(
      title: Text(value['title']),
      leading: Image.network(value['imageUrl']),
      subtitle: Text(value['author']),
    );
  }
}

//最简单的GridView
class HomeContent14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, //控制网格布局有几列，这里显示
      children: <Widget>[
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
      ],
    );
  }
}

//GridView.count添加循环数据
class HomeContent15 extends StatelessWidget {
  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "第$i条数据",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        color: Colors.blue,
        height: 100, //设置高度是无效的。只可一个根据childAspectRatio来设置宽高的比例。
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //控制网格布局有几列，这里显示
      crossAxisCount: 3,
      //水平网格间距
      crossAxisSpacing: 10.0,
      //竖直网格间距
      mainAxisSpacing: 10.0,
      //整体边距
      padding: EdgeInsets.all(10),
      //设置宽高比例:宽度/高度
      childAspectRatio: 0.7,

      children: _getListData(),
    );
  }
}

//GridView.count添加外部数据
class HomeContent16 extends StatelessWidget {
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      //ListView会平铺。但是Column不会,是多少大小就是多少大小
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(
              height: 10, //SizedBox主要是用于撑开一个距离
            ),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromRGBO(100, 100, 100, 1), width: 2)),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      children: _getListData(),
    );
  }
}

//GridView.builder实现网格布局
class HomeContent17 extends StatelessWidget {
  Widget _getListData(BuildContext context, int index) {
    var value = listData[index];
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(value['imageUrl']),
          SizedBox(
            height: 10,
          ),
          Text(
            value['title'],
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green, fontSize: 18),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //这些参数在builder中不能直接配置，必须通过gridDelegate内配置才行
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}

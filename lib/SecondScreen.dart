import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


/*第二个页面(关于 Text，Image,Button的用法)*/
class SecondScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new SecondScreenState();
  }
}

class SecondScreenState extends State<SecondScreen>  {
  String _counter = "xxx";

   void _tapRecognizer() {
    _counter+= "已点击span";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      /*
       * Center
       * Column
       *
       */
      body: Column(children: <Widget>[
        Text('文本内容文本内容文本内容文本内容文本内容文本内容文本内容',
          /*居中显示*/
          textAlign: TextAlign.center,
          /*字体样式*/
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red,
              /*行高*/
              height: 1.5,
              /*背景色*/
              background: new Paint() ..color = Colors.amberAccent,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed

          ),
          /*最大显示行数*/
          maxLines: 1,
          /*超过以省略号显示*/
          overflow: TextOverflow.ellipsis,
          /*放大倍数*/
          textScaleFactor: 1.5,
        ),
        /*TextSpan*/
        Text.rich(TextSpan(
            children: [
              TextSpan(
                  text: "Home: "
              ),
              TextSpan(
                text:"https://flutterchina,club",
                style: TextStyle(
                    color: Colors.blue
                ),
              ),

              TextSpan (
                text:'$_counter'
              )
            ]
        )
        ),
        Image.asset('images/ic_launcher.png',width: 100,height: 100),
        FadeInImage.assetNetwork(
            placeholder: 'images/ic_launcher.png',
            image: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566236566591&di=2f58be4bdee112f83e492e766d23e4cc&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20130416%2FImg372885486.jpg',
            fit: BoxFit.cover, // 图片拉伸模式
            width: 50,
            height: 50,
        ),
        CachedNetworkImage(
          imageUrl: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566236566591&di=2f58be4bdee112f83e492e766d23e4cc&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20130416%2FImg372885486.jpg",
          placeholder: (context, url) => new CircularProgressIndicator(),
          errorWidget: (context, url, error) => new Icon(Icons.error),
          width: 50,
          height: 50,
        ),
        ListView(
            shrinkWrap: true,//内容适配
          children: <Widget>[
            ListTile(leading: Icon(Icons.map),title: Text('map')),
            ListTile(leading: Icon(Icons.mail),title: Text('mail')),
            ListTile(leading: Icon(Icons.message),title: Text('message'))
          ]
        ),




      ]),
    );
  }

}

import 'package:flutter/material.dart';


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
        )
      ]),
    );
  }

}

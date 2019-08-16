import 'package:flutter/material.dart';

class LifeCycleTwoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LifeCycleTwoScreenState();
  }
}

class LifeCycleTwoScreenState extends State<LifeCycleTwoScreen> {
  @override
  Widget build(BuildContext context) {
    print("LifeCycleTwoScreenState: build");
    return new Scaffold(
      appBar: AppBar(
        title: Text("第二个state界面"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(child: Text("跳转到第二个widget"), onPressed: () => {}),
        ],
      ),
    );
  }

  /*State 对象的依赖关系发生变化后*/
  @override
  void didChangeDependencies() {
    print("LifeCycleTwoScreen: didChangeDependencies");
    super.didChangeDependencies();
  }

  /*当数据发生改变时*/
  @override
  void setState(VoidCallback fn) {
    print("LifeCycleTwoScreen: setState");
  }

  /*当widget的配置发生变化*/
  @override
  void didUpdateWidget(LifeCycleTwoScreen oldWidget) {
    print("LifeCycleTwoScreen: didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  /*当组件的可见状态发生变化*/
  @override
  void deactivate() {
    print("LifeCycleTwoScreen: deactivate");
    super.deactivate();
  }

  /*当state被永久地从视图树中删除*/
  @override
  void dispose() {
    super.dispose();
    print("LifeCycleTwoScreen: dispose");
  }

  @override
  void initState() {
    print("LifeCycleTwoScreen: initState");
    super.initState();
  }
}

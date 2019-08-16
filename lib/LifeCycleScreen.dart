import 'package:flutter/material.dart';

import 'LifeCycleTwoScreen.dart';

class LifeCycleScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LifeCycleScreenState();
  }
}

class LifeCycleScreenState extends State<LifeCycleScreen> {
  /*构造方法 生命周期的起点*/
  LifeCycleScreenState(){
    print("LifeCycleScreen: 构造方法");
  }

  /*会在构造函数之后调用，做一些初始化操作*/
  @override
  void initState() {
    super.initState();
    print("LifeCycleScreen: initState");
  }

  /*State 对象的依赖关系发生变化后，会在initState之后调用*/
  @override
  void didChangeDependencies() {
    print("LifeCycleScreen :didChangeDependencies");
    super.didChangeDependencies();
  }

  /*构建视图，Framework 认为State已经准备好了*/
  @override
  Widget build(BuildContext context) {
    print("LifeCycleScreenState: build");
    return new Scaffold(
      appBar: AppBar(
        title: Text("第一个state界面"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(child: Text("跳转到第一个widget"), onPressed: () => {
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new LifeCycleTwoScreen()))
          }),
        ],
      ),
    );
  }


  /*当数据发生改变时*/
  @override
  void setState(VoidCallback fn) {
    print("LifeCycleScreen: setState");
    super.setState(fn);
  }

  /*当widget的配置发生变化*/
  @override
  void didUpdateWidget(LifeCycleScreen oldWidget) {
    print("LifeCycleScreen: didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  /*当组件的可见状态发生变化*/
  @override
  void deactivate() {
    print("LifeCycleScreen: deactivate");
    super.deactivate();
  }

  /*当state被永久地从视图树中删除*/
  @override
  void dispose() {
    print("LifeCycleScreen: dispose");
    super.dispose();
  }

}

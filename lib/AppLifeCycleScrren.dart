import 'package:flutter/material.dart';

class AppLifeCycleScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AppLifeCycleScreenState();
  }

}


class AppLifeCycleScreenState extends State<AppLifeCycleScreen> with WidgetsBindingObserver{

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_){
        print("单次Frame绘制回调");
    });
//
    /*实时Frame绘制回调，可以用作fps检测*/
//    WidgetsBinding.instance.addPersistentFrameCallback((_) {
//        print("实时Frame绘制回调");
//    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("app的生命周期"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("app的生命周期"),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);

  }

  /*页面pop*/
  @override
  Future<bool> didPopRoute() {
    print("didpopRoute");
    return super.didPopRoute();
  }

  /*页面push*/
  @override
  Future<bool> didPushRoute(String route) {
    print("didPushRoute");
    return super.didPushRoute(route);
  }


  /*声明周期回调*/
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print("$state");
  }

  /*Accessibility 相关特性回调*/
  @override
  void didChangeAccessibilityFeatures() {
    print("didChangeAccessibilityFeatures");
    super.didChangeAccessibilityFeatures();
  }

  /*内存警告回调*/
  @override
  void didHaveMemoryPressure() {
    print("didHaveMemoryPressure");
    super.didHaveMemoryPressure();
  }

  /*本地化语言变化*/
  @override
  void didChangeLocales(List<Locale> locale) {
    print("didChangeLocales");
    super.didChangeLocales(locale);
  }

  /*系统亮度变化*/
  @override
  void didChangePlatformBrightness() {
    print("didChangePlatformBrightness");
    super.didChangePlatformBrightness();
  }

  /*文本缩放系统变化*/
  @override
  void didChangeTextScaleFactor() {
    print("didChangeTextScaleFactor");
    super.didChangeTextScaleFactor();
  }

  /*系统窗口相关改变回调，如旋转*/
  @override
  void didChangeMetrics() {
    print("didChangeMetrics");
    super.didChangeMetrics();
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_app/SecondScreen.dart';

import 'AppLifeCycleScrren.dart';
import 'LifeCycleScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page1'),
    );
  }
}

//首页
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
                child: Text('跳转到Text页面'),
                onPressed: () => {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SecondScreen()))
                    }),
            RaisedButton(
                child: Text('跳转到State生命周期页面'),
                onPressed: () => {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new LifeCycleScreen()))
                    }),
            RaisedButton(
                child: Text('跳转到app生命周期页面'),
                onPressed: () => {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new AppLifeCycleScreen()))
                    })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

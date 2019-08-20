import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("第二个页面")),
        body: ListView.builder(
            itemCount: 100,
            itemExtent: 100,
            itemBuilder: (BuildContext context, int index) => ListTile(
                title: Text("title$index"), subtitle: Text("body $index"))));
  }
}

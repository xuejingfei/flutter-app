import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('listView 展示方式'),
          bottom: TabBar(
              labelColor: Colors.red,
              unselectedLabelColor: Color(0xff666666),
              labelStyle: TextStyle(fontSize: 16),
              tabs: [
                Tab(text: '列表1',),
                Tab(text: '列表2',),
                Tab(text: '列表3',)
              ]
          ),
        ),
        body: TabBarView(
            children: <Widget>[
              buildVerticalListView(),
              buildHorizontalListView(),
              buildListView(),
        ]),
      ),
    );
  }

  Widget buildVerticalListView() {
    return ListView(
        children: <Widget>[
        ListTile(leading: Icon(Icons.mail),title: Text("mail")),
        ListTile(leading: Icon(Icons.mail),title: Text("mail")),
        ListTile(leading: Icon(Icons.mail),title: Text("mail")),
    ]);
  }

  Widget buildHorizontalListView() {
    return ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 140,
      children: <Widget>[
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.black),
        Container(color: Colors.green)
      ],
    );
  }

  Widget buildListView() {
    return ListView.separated(
        itemBuilder: (BuildContext context,int index) => ListTile(title: Text("titel:$index"),subtitle: Text("body:$index")),
        separatorBuilder: (BuildContext context,int index) => Divider(color: Colors.red),
        itemCount: 100,
    );
  }


}

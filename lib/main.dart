import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.pink

      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/one": (BuildContext context) => new Page(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("First App!"),
        elevation: defaultTargetPlatform == TargetPlatform.android? 5.0: 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.indigo,
                child: new Text("Y"),
              ),
              accountName: new Text("Hi! Yash"),
              accountEmail: new Text("tripathiyash97@gmail.com"),
            ),
            new ListTile(
              title: new Text("One"),
              trailing: new Icon( Icons.alarm),
              onTap: () => Navigator.of(context).pushNamed("/one"),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("The Home Page"),
        ),
      ),
    );
  }
}


class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Text("Page One"),
        ),
      ),
    );
  }
}
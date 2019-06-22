import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Movie App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                    decoration: new BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.movie,
                        size: 28,
                        color: Colors.white
                        ),
                      Padding(padding: EdgeInsets.only(right: 20)),
                      Text(
                        'Movie App',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                        ),
                        )
                    ],),
                    ),
            ),
            ListTile(
              title: Row(children: <Widget>[
                Icon(Icons.loupe), 
                Padding(padding: EdgeInsets.only(right: 20)),
                Text('Movie searching')
              ],),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(children: <Widget>[
                Icon(Icons.favorite),
                Padding(padding: EdgeInsets.only(right: 20)),
                Text('Favourites')
              ],),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
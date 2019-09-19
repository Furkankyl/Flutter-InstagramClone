import 'package:flutter/material.dart';
import 'package:flutter_app_instagram/Search.dart';

import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final pages = [
    HomePage(),
    SearchMain(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İnstagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Instagram",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          leading: Container(
            margin: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.camera_enhance,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.live_tv,
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.send,
                color: Colors.black,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: pages[selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
          currentIndex: selectedPageIndex,
          onTap: (int index) {
            setState(() {
              selectedPageIndex = index;
            });
          },
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text("Delete"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.add_box),
              title: new Text("Delete"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.favorite_border),
              title: new Text("Delete"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: new Text("Delete"),
            )
          ],
        ),
      ),
    );
  }
}
/*
Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Instagram",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        leading: Container(
          margin: EdgeInsets.only(left: 25),
          child: Icon(
            Icons.camera_enhance,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Icon(
              Icons.live_tv,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Icon(
              Icons.send,
              color: Colors.black,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: pages[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        currentIndex: selectedPageIndex,
        onTap: (int index){
          setState(() {
            selectedPageIndex = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text("Delete"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.add_box),
            title: new Text("Delete"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.favorite_border),
            title: new Text("Delete"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text("Delete"),
          )
        ],
      ),
    );;
 */

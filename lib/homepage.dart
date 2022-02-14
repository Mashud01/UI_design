import 'package:flip_box_bar_plus/flip_box_bar_plus.dart';
import 'package:flutter/material.dart';

import 'package:all/tabs/page1.dart';
import 'package:all/tabs/page2.dart';
import 'package:all/tabs/page3.dart';
import 'package:all/tabs/page4.dart';
import 'package:all/tabs/page5.dart';
import 'package:all/tabs/page5.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
  ];
GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LuLu'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon( Icons.search ),
              onPressed: (){},
            ),
            SizedBox(
              width: 15,
            ),
            IconButton(
              icon: Icon( Icons.call ),
              onPressed: (){},
            ),

        ],
        
      ),
      body: IndexedStack(
        children: pages,
        index: selectedIndex,
      ), //
      bottomNavigationBar: FlipBoxBarPlus(
        selectedIndex: selectedIndex,
        items: [
          FlipBarItem(
              icon: Icon(Icons.map),
              text: Text("Map"),
              frontColor: Colors.blue,
              backColor: Colors.blueAccent),
          FlipBarItem(
              icon: Icon(Icons.add),
              text: Text("Add"),
              frontColor: Colors.cyan,
              backColor: Colors.cyanAccent),
          FlipBarItem(
              icon: Icon(Icons.chrome_reader_mode),
              text: Text("Read"),
              frontColor: Colors.orange,
              backColor: Colors.orangeAccent),
          FlipBarItem(
              icon: Icon(Icons.print),
              text: Text("Print"),
              frontColor: Colors.purple,
              backColor: Colors.purpleAccent),
          FlipBarItem(
              icon: Icon(Icons.camera_indoor_sharp),
              text: Text("Videos"),
              frontColor: Colors.red,
              backColor: Colors.redAccent),
        ],
        
        onIndexChanged: (position) {
          setState(() {
            selectedIndex = position;
          }
          );
        },

      ),
    );
  }
}
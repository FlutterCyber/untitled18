import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:untitled18/pages/nav_bar.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speed dial'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, GoogleNavBar.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(
          size: 22.0,
        ),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: Icon(
                Icons.accessibility,
                color: Colors.white,
              ),
              backgroundColor: Colors.red,
              label: "First",
              labelStyle: TextStyle(
                fontSize: 18,
              ),
              onTap: () {
                print('first');
              }),
          SpeedDialChild(
              child: Icon(
                Icons.brush,
                color: Colors.white,
              ),
              backgroundColor: Colors.deepOrange,
              label: "Second",
              labelStyle: TextStyle(
                fontSize: 18,
              ),
              onTap: () {
                print('Second');
              }),
          SpeedDialChild(
              child: Icon(
                Icons.keyboard_voice,
                color: Colors.white,
              ),
              backgroundColor: Colors.green,
              label: "Third",
              labelStyle: TextStyle(
                fontSize: 18,
              ),
              onTap: () {
                print('Third');
              }),
          SpeedDialChild(
              child: Icon(
                Icons.access_time,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
              label: "Fourth",
              labelStyle: TextStyle(
                fontSize: 18,
              ),
              onTap: () {
                print('Fourth');
              }),
        ],
      ),
    );
  }
}

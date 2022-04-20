import 'package:flutter/material.dart';
import 'package:untitled18/pages/home_page.dart';
import 'package:untitled18/pages/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        GoogleNavBar.id: (context) => GoogleNavBar(),
      },
    );
  }
}

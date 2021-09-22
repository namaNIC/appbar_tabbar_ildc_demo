import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class MyBar extends AppBar {
  MyBar({Key? key, required Widget title})
      : super(key: key, title: title, actions: <Widget>[Icon(Icons.ac_unit)]);
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(
        title: Text("Home"),
      ),
    );
  }
}

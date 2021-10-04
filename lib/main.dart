import 'package:appbar_tabbar_ildc_demo/Slivers/sliver_AppBar.dart';
import 'package:appbar_tabbar_ildc_demo/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: CupertinoClass(),
    );
  }
}

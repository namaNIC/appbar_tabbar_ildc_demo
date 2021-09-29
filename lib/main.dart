import 'package:appbar_tabbar_ildc_demo/Scrollables/listExample.dart';
import 'package:appbar_tabbar_ildc_demo/Scrollables/singleChild.dart';
// import 'package:appbar_tabbar_ildc_demo/home.dart';
// import 'package:appbar_tabbar_ildc_demo/tabbar.dart';
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
      home: ListExample(),
    );
  }
}

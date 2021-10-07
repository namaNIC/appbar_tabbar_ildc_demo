import 'package:appbar_tabbar_ildc_demo/CupertinoClasses/cupertino_widgets.dart';
import 'package:appbar_tabbar_ildc_demo/ExpansionPanel/expansionPanelClass.dart';
import 'package:appbar_tabbar_ildc_demo/Slivers/sliver_AppBar.dart';

import 'package:appbar_tabbar_ildc_demo/Swapping/swapping.dart';
import 'package:appbar_tabbar_ildc_demo/Utils/AppTheme.dart';
import 'package:appbar_tabbar_ildc_demo/CupertinoClasses/cupertino.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: ExpantionClass(),
    );
  }
}

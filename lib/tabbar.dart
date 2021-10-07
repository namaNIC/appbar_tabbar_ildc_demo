import 'package:appbar_tabbar_ildc_demo/TabPages/one.dart';
import 'package:appbar_tabbar_ildc_demo/TabPages/three.dart';
import 'package:appbar_tabbar_ildc_demo/TabPages/two.dart';
import 'package:appbar_tabbar_ildc_demo/Utils/colors.dart';
import 'package:flutter/material.dart';

class TabbarClass extends StatefulWidget {
  const TabbarClass({Key? key}) : super(key: key);

  @override
  _TabbarClassState createState() => _TabbarClassState();
}

class _TabbarClassState extends State<TabbarClass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("Tabbar"),
          bottom: TabBar(
            tabs: [
              Container(
                height: 50,
                color: colorPrimary,
              ),
              Container(
                height: 50,
                color: Colors.green,
              ),
              Container(
                height: 50,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [OneScreen(), SeconfScreen(), ThreeScreen()],
        ),
      ),
    );
  }
}

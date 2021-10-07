import 'package:appbar_tabbar_ildc_demo/Slivers/sliver_appbar.dart';
import 'package:appbar_tabbar_ildc_demo/Swapping/swapping.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class BottomNavigationbarClass extends StatefulWidget {
  final int currentIndex;
  const BottomNavigationbarClass({Key? key, this.currentIndex = 0})
      : super(key: key);

  @override
  _BottomNavigationbarClassState createState() =>
      _BottomNavigationbarClassState();
}

class _BottomNavigationbarClassState extends State<BottomNavigationbarClass> {
  List<Widget> widgets = [];
  int currentIndex = 0;

  @override
  void initState() {
    currentIndex = widget.currentIndex;
    super.initState();
    widgets.add(HomeScreen());
    widgets.add(SliverAppBarClass());
    widgets.add(SwippingClass());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        // backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active,
                size: 35,
              ),
              label: 'Notifications'),
        ],
      ),
    );
  }
}

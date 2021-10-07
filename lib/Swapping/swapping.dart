import 'package:appbar_tabbar_ildc_demo/Swapping/swappig_external.dart';
import 'package:appbar_tabbar_ildc_demo/home.dart';
import 'package:flutter/material.dart';

class SwippingClass extends StatefulWidget {
  const SwippingClass({Key? key}) : super(key: key);

  @override
  _SwippingClassState createState() => _SwippingClassState();
}

class _SwippingClassState extends State<SwippingClass> {
  bool isIconSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(
        title: Text("Swapping"),
        backgroundColor: Colors.red,
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(Icons.access_alarm),
          ),
        ],
        leadingWidget: Icon(Icons.access_time_filled_rounded),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SwappingExternal(
                        isIconSelected: false,
                      ),
                    ));
              },
              child: Icon(
                Icons.bookmark,
                size: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}

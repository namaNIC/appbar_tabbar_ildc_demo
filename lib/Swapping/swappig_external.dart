import 'package:appbar_tabbar_ildc_demo/home.dart';
import 'package:flutter/material.dart';

class SwappingExternal extends StatefulWidget {
  final bool isIconSelected;
  const SwappingExternal({Key? key, required this.isIconSelected})
      : super(key: key);

  @override
  _SwappingExternalState createState() => _SwappingExternalState();
}

class _SwappingExternalState extends State<SwappingExternal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(
        title: Text("Swapping External"),
      ),
      body: Center(
        child: Icon(
          widget.isIconSelected ? Icons.bookmark : Icons.book_online_outlined,
          size: 100,
        ),
      ),
    );
  }
}

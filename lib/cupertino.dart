import 'package:appbar_tabbar_ildc_demo/Utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoClass extends StatefulWidget {
  const CupertinoClass({Key? key}) : super(key: key);

  @override
  _CupertinoClassState createState() => _CupertinoClassState();
}

class _CupertinoClassState extends State<CupertinoClass> {
  @override
  Widget build(BuildContext context) {
    final _myList = List.generate(50, (index) => 'Item $index');
    return CupertinoPageScaffold(
      // backgroundColor: CupertinoColors.activeBlue,
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino'),
        leading: Icon(CupertinoIcons.arrow_left),
        trailing: Icon(CupertinoIcons.add),
        backgroundColor: Colors.red.withOpacity(1),
        brightness: Brightness.dark, // SystemOverLayStyle in Appbar
      ),
      resizeToAvoidBottomInset: false,
      child: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            child: Image.asset('assets/mag5.png'),
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('Action one'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action two'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

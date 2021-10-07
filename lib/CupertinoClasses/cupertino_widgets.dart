import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuppertinoExample extends StatefulWidget {
  const CuppertinoExample({Key? key}) : super(key: key);

  @override
  _CuppertinoExampleState createState() => _CuppertinoExampleState();
}

class _CuppertinoExampleState extends State<CuppertinoExample> {
  final _myList = List.generate(50, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // backgroundColor: CupertinoColors.activeBlue,
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino'),
        leading: Icon(CupertinoIcons.add),
        trailing: Icon(CupertinoIcons.airplane),
        brightness: Brightness.light,
        // backgroundColor: Colors.amber.withOpacity(0.5),
      ),
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

import 'package:flutter/material.dart';

class GridExample extends StatefulWidget {
  const GridExample({Key? key}) : super(key: key);

  @override
  _GridExampleState createState() => _GridExampleState();
}

class _GridExampleState extends State<GridExample> {
  List myList = List.generate(50, (index) => Text('data $index'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView(
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.black,
          ),
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 150),
      ),
    );
  }
}

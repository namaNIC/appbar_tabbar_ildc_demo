import 'package:appbar_tabbar_ildc_demo/home.dart';
import 'package:flutter/material.dart';

class ExpantionClass extends StatefulWidget {
  const ExpantionClass({Key? key}) : super(key: key);

  @override
  _ExpantionClassState createState() => _ExpantionClassState();
}

class _ExpantionClassState extends State<ExpantionClass> {
  int? _activeMeterIndex = 0;

  List<ItemModel> list = [
    ItemModel(
        expand: false,
        headerTitle: 'Flutter',
        description: "n publishing and graphic design, Lorem i"),
    ItemModel(
        expand: false,
        headerTitle: 'Flutter',
        description: "n publishing and graphic design, Lorem i")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(
        title: Text('ExpansionPanel'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int i) {
            return ExpansionPanelList(
              expansionCallback: (int index, bool status) {
                setState(() {
                  _activeMeterIndex = _activeMeterIndex == i ? null : i;
                });
              },
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpand) {
                    return Column(
                      children: [
                        Text(list[i].headerTitle),
                      ],
                    );
                  },
                  body: Container(
                    child: Text(list[i].description),
                  ),
                  isExpanded: _activeMeterIndex == i,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ItemModel {
  ItemModel({
    required this.expand,
    required this.description,
    required this.headerTitle,
  });
  bool expand;
  final String headerTitle;
  final String description;
}

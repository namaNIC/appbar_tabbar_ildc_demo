import 'package:appbar_tabbar_ildc_demo/Model/ModelData.dart';
import 'package:flutter/material.dart';

class GridExample extends StatefulWidget {
  const GridExample({Key? key}) : super(key: key);

  @override
  _GridExampleState createState() => _GridExampleState();
}

class _GridExampleState extends State<GridExample> {
  List<ModelDemo> myList =
      arrModelData(); //List.generate(50, (index) => Text('data $index'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 150),
        itemCount: myList.length,
        itemBuilder: (ctx, intNaman) {
          return GridTile(
            header: Container(
              child: Text(myList[intNaman].title ?? ""),
              color: Colors.white,
            ),
            child: Image.network(
              myList[intNaman].image ?? "",
              fit: BoxFit.contain,
            ),
            footer: Container(
              child: Text(myList[intNaman].subTitle ?? ""),
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}

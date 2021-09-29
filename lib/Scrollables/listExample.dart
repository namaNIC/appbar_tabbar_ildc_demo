import 'package:flutter/material.dart';

class ListExample extends StatefulWidget {
  const ListExample({Key? key}) : super(key: key);

  @override
  _ListExampleState createState() => _ListExampleState();
}

class _ListExampleState extends State<ListExample> {
  List myList = List.generate(50, (index) => Text('data $index'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return Container(
            // color: Colors.red,
            child: Column(
              children: [
                ListTile(
                  // leading: Placeholder(),
                  title: myList[index],
                  subtitle: Text('Subtitle'),
                  // trailing: Placeholder(),
                ),
                Divider(
                  color: Colors.red,
                  height: 2,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

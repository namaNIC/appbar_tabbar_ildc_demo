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
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            // leading: Placeholder(),
            title: myList[index],
            subtitle: Text('Subtitle'),
            // trailing: Placeholder(),
          );
        },
        separatorBuilder: (ctx, i) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Divider(
              color: Colors.red,
              height: 15,
            ),
          );
        },
        itemCount: myList.length,
      ),
    );
  }
}

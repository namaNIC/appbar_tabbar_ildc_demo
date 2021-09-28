import 'package:flutter/material.dart';

class SingleChildScrollDemo extends StatefulWidget {
  const SingleChildScrollDemo({Key? key}) : super(key: key);

  @override
  _SingleChildScrollDemoState createState() => _SingleChildScrollDemoState();
}

class _SingleChildScrollDemoState extends State<SingleChildScrollDemo> {
  bool isRedClick = false;
  Widget getNormalContainer() {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.amber,
      ),
    );
  }

  Widget giveMeListViuewBuilder() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 100,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollables'),
      ),
      body: giveMeListViuewBuilder(),
    );
  }
}

class NewWidget extends StatelessWidget {
  final Color color;
  final String? strValue;
  final Function onClick;
  const NewWidget({
    Key? key,
    required this.color,
    this.strValue,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 200,
          width: 400,
          color: color,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  print("Red Click");
                  onClick();
                },
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
              ),
              InkWell(
                onTap: () {
                  print("Blue Click");
                },
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                ),
              ),
            ],
          )),
    );
  }
}

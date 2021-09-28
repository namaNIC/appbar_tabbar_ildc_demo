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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollables'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.star),
            trailing: Icon(Icons.account_balance),
            title: Text("Bank Information"),
            subtitle: Text("4000 0000 0000 xxxx"),
            onTap: () {
              print("isRedClick $isRedClick");
            },
          ),
          NewWidget(
            color: Colors.black,
            onClick: () {
              // print("Action Performed");
              isRedClick = !isRedClick;
              print("isRedClick $isRedClick");
            },
          )
        ],
      ),
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

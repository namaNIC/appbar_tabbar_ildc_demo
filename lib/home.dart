import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class MyBar extends AppBar {
  MyBar(
      {Key? key,
      required Widget title,
      Color backgroundColor = Colors.purple,
      List<Widget>? actions,
      Widget? leadingWidget})
      : super(
            key: key,
            title: title,
            actions: actions,
            backgroundColor: backgroundColor,
            leading: leadingWidget);
}

class _HomeScreenState extends State<HomeScreen> {
  var _scafoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      appBar: MyBar(
        title: Text("Home"),
        backgroundColor: Colors.red,
      ),
      endDrawer: DrawerClass(),
      drawer: DrawerClass(),
      body: InkWell(
        onTap: () {
          // _scafoldKey.currentState?.openDrawer();
          _scafoldKey.currentState?.openEndDrawer();
          print("Clicked");
        },
        child: Center(
          child: Container(
            width: 100,
            height: 50,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class DrawerClass extends StatelessWidget {
  const DrawerClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.red,
              height: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.yellow,
              height: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.purple,
              height: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Spacer(),
            Container(
              color: Colors.amber,
              height: 40,
              child: Text("Logout"),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

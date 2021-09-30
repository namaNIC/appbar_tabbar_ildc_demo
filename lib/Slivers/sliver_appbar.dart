import 'package:flutter/material.dart';

class SliverAppBarClass extends StatefulWidget {
  const SliverAppBarClass({Key? key}) : super(key: key);

  @override
  _SliverAppBarClassState createState() => _SliverAppBarClassState();
}

class _SliverAppBarClassState extends State<SliverAppBarClass> {
  Widget returnSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 250,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          "https://cdn.onebauer.media/one/empire-tmdb/films/49519/images/kYY4CKjjknT1GY45ZueZs556Mnl.jpg?format=jpg&quality=80&width=440&ratio=16-9&resize=aspectfill",
          fit: BoxFit.fill,
        ),
        collapseMode: CollapseMode.parallax,
        title: Text('Felexible Title'),
      ),
    );
  }

  Widget returnSliverGrid() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.5),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          color: Colors.teal[100 * (index % 9)],
        );
      }, childCount: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          returnSliverAppBar(),
          returnSliverGrid(),
        ],
      ),
    );
  }
}

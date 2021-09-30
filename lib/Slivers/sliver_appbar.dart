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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          returnSliverAppBar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Placeholder(),
                Placeholder(),
                Placeholder(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

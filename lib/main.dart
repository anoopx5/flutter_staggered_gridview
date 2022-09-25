import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STAGGERED GRID VIEW',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

List<StaggeredTile> _cardTile = <StaggeredTile>[
  const StaggeredTile.count(4, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
];

//List of Cards with color and icon
List<Widget> _listTile = <Widget>[
  const BackGroundTile(
      backgroundColor: Colors.lightGreenAccent,
      icondata: Icons.home_work_rounded),
  const BackGroundTile(
      backgroundColor: Colors.yellow, icondata: Icons.account_balance),
  const BackGroundTile(
      backgroundColor: Colors.red, icondata: Icons.account_balance_wallet),
  const BackGroundTile(
      backgroundColor: Colors.lightBlueAccent,
      icondata: Icons.account_box_sharp),
  const BackGroundTile(
      backgroundColor: Colors.orange, icondata: Icons.account_circle),
  const BackGroundTile(
      backgroundColor: Colors.purple, icondata: Icons.add_a_photo),
  const BackGroundTile(
      backgroundColor: Colors.pink, icondata: Icons.add_business_outlined),
  const BackGroundTile(
      backgroundColor: Colors.deepPurple, icondata: Icons.add_card),
  const BackGroundTile(
      backgroundColor: Colors.cyanAccent, icondata: Icons.add_chart_sharp),
  const BackGroundTile(
      backgroundColor: Colors.blueAccent, icondata: Icons.ac_unit_sharp),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STAGGERED GRID VIEW"),
        centerTitle: true,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: _cardTile,
        children: _listTile,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}

class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData icondata;

  const BackGroundTile({required this.backgroundColor, required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(icondata, color: Colors.white),
    );
  }
}

import 'package:fbcardproject/screens/carddesign.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('homepage'),
        ),
        // body: CardDesign(),
        // body: ListView(children: [_listview()],),

        // body: _listview(),
        body: ListView(
          children: [for (int i = 0; i < 10; i++) CardDesign()],
        ));
  }

  // Widget _listview() {
  //   return ListView(
  //     children: [
  //       for (int i = 0; i < 2; i++) CardDesign()
  //     ],
  //   );
  // }
}

import 'package:fbcardproject/screens/carddesign.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // CardDesign cardDesign = CardDesign();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text('Detail page'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Text(
              "this is the detail page. Please keep detail information here")),
    );
  }
}

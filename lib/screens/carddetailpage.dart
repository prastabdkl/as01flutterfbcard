import 'package:fbcardproject/screens/cardview.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  String cardText;
  Image image;

  DetailPage({@required this.cardText, @required this.image});

  // CardDesign cardDesign = CardDesign();
  @override
  Widget build(BuildContext context) {
    if (cardText == null) {
      cardText = 'this is the new text';
    }
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
      body: ListView(children: [
        Column(
          children: [
            Text(
              "The following is the update from facebook",
              style: TextStyle(fontSize: 18),
            ),
            image,
            Text(cardText),
            RaisedButton(
              onPressed: () {},
              child: Text('press me'),
            )
          ],
        ),
      ]),
    );
  }
}

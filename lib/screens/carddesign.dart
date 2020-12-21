import 'package:fbcardproject/screens/carddetailpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';

class CardDesign extends StatefulWidget {
  @override
  _CardDesignState createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('my facebook card'),
      // ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      // baccolor: Colors.blue,
      children: [_mycard()],
    );
  }

  Widget _mycard() {
    return Card(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [_cardHeader(), _cardBody(), _cardFooter()],
      ),
    );
  }

  Widget _cardHeader() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                OutlineButton(
                  onPressed: () {},
                  child: Text('f',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      )),
                ),
                // Image(
                // image: AssetImage('fb.png'),
                // ),

                // IconButton(
                //     icon: FaIcon(
                //       FontAwesomeIcons.facebook,
                //       size: 50,
                //     ),
                //     onPressed: () {}),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text('Facebook App',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                  size: 14,
                ),
                Text('updated their cover'),
              ]),
              Row(
                children: [Text('photo')],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Column(
                    children: [Text('Aug 26', style: TextStyle(fontSize: 13))],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Column(
                    children: [
                      Icon(Icons.stop_circle, size: 8, color: Colors.grey)
                    ],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Column(
                    children: [
                      Icon(CupertinoIcons.globe, size: 13, color: Colors.grey)
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(width: 20),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Icon(Icons.more_horiz, size: 25)],
          )
        ],
      ),
    );
  }

  Widget _cardBody() {
    return Column(children: [
      _bodytext(),
      Container(
          child: GestureDetector(
        onTap: () {
          print('on tap called');
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(),
              ));
        },
        child: Image.network(
            "https://clutchpoints.com/wp-content/uploads/2020/12/Warriors-news-Jeremy-Lin-returning-to-old-stomping-grounds-with-Golden-State-Thumbnail.jpg"),
      ))
    ]);
  }

  Widget _bodytext() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: RichText(
          text: TextSpan(
              text: "Pamper your pooch ",
              style: TextStyle(color: Colors.black),
              children: [
            TextSpan(
                text: "The Bark Shoppe ", style: TextStyle(color: Colors.blue)),
            TextSpan(
                text:
                    "is a pet care facility in New York ofering grooming products and makeovers with your pet's individual needs in mind Take a look and shop now",
                style: TextStyle(color: Colors.black)),
            TextSpan(
                text: " #BuyBlack: ", style: TextStyle(color: Colors.blue)),
            TextSpan(
                text: " https://bit.ly/BarkShoppe ",
                style: TextStyle(color: Colors.blue)),
            TextSpan(
                text: " #LiftBlackVoices ",
                style: TextStyle(color: Colors.blue)),
            TextSpan(
                text: " #MoreTogether ", style: TextStyle(color: Colors.blue)),
          ])),
    );
  }

  Widget _cardFooter() {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade500,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.thumb_up,
                              size: 15,
                              color: Colors.white,
                            )),
                        Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.favorite,
                              size: 15,
                              color: Colors.white,
                            )),
                        Text(" 5.3K"),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 110,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [Text("525 Comments ")],
                    ),
                    Column(
                      children: [
                        Icon(Icons.stop_circle, size: 5, color: Colors.black45)
                      ],
                    ),
                    Column(
                      children: [Text(" 187 Shares")],
                    ),
                  ],
                ),
              ],
            )
                // child: Text('Hello this is a print statement'),),
                )),
        _buttons(),
      ],
    );
  }

  Widget _buttons() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 40, right: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Like')
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.chat_bubble_outline),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Comment')
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.arrowshape_turn_up_right),
                    // Icon(CuportinIcons.arrowshape_turn_up_right),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Share')
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

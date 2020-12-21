import 'package:fbcardproject/screens/cardview.dart';
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
          title: Text('Home page'),
          centerTitle: true,
        ),
        // body: CardDesign(),
        // body: ListView(children: [_listview()],),

        // body: _listview(),
        body: ListView(
          // children: [for (int i = 0; i < 10; i++) CardView()],
          children: [
            CardView(
              likesCount: 5300,
              commentsCount: 525,
              sharesCount: 187,
              cardText: null,
              image: Image.network(
                  "https://clutchpoints.com/wp-content/uploads/2020/12/Warriors-news-Jeremy-Lin-returning-to-old-stomping-grounds-with-Golden-State-Thumbnail.jpg"),
            ),
            CardView(
              likesCount: 4300,
              commentsCount: 425,
              sharesCount: 487,
                cardText:
                    "Sylvester Enzio Stallone (/stəˈloʊn/; born Michael Sylvester Gardenzio Stallone, July 6, 1946) is an American actor, director, screenwriter, and producer.[1] After his beginnings as a struggling actor for a number of years upon arriving to New York City in 1969 and later Hollywood in 1974, he won his first critical acclaim as an actor for his co-starring role as Stanley Rosiello in The Lords of Flatbush.",
                image: Image.network("https://i.imgur.com/XsiwpaM.jpeg")),
            for (int i = 0; i < 3; i++)
            CardView(
                         likesCount: 8300,
              commentsCount: 825,
              sharesCount: 887,
                cardText:
                    "Cristiano Ronaldo dos Santos Aveiro GOIH ComM (Portuguese pronunciation: [kɾiʃˈtjɐnu ʁɔˈnaɫdu]; born 5 February 1985) is a Portuguese professional footballer who plays as a forward for Serie A club Juventus and captains the Portugal national team. Often considered the best player in the world and widely regarded as one of the greatest players of all time,[10] Ronaldo has won five Ballon d'Or awards[note 3] and four European Golden Shoes, both of which are records for a European player.",
                image:
                    Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cristiano_Ronaldo_2018.jpg/330px-Cristiano_Ronaldo_2018.jpg")
            )],
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

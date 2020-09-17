import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final avatarRadius = screenHeight / 20;
    var hgap = SizedBox(
      width: 5,
    );
    var p1 = CircleAvatar(
        radius: avatarRadius, backgroundImage: AssetImage("assets/f1.png"));

    var p2 = CircleAvatar(
        radius: avatarRadius, backgroundImage: AssetImage("assets/f2.png"));

    var p3 = CircleAvatar(
        radius: avatarRadius, backgroundImage: AssetImage("assets/f3.png"));

    var p4 = CircleAvatar(
        radius: avatarRadius, backgroundImage: AssetImage("assets/f4.png"));

    var p5 = CircleAvatar(
        radius: avatarRadius, backgroundImage: AssetImage("assets/f5.png"));

    var p6 = CircleAvatar(
        radius: avatarRadius, backgroundImage: AssetImage("assets/f6.png"));

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("It's Dinning Time!!!"),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // ignore: missing_required_param
            new UserAccountsDrawerHeader(
              accountName: new Text("SUSHI Time"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new AssetImage("assets/foods.png"),
                  backgroundColor: Colors.white70,
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/bg.jpeg"), fit: BoxFit.fill),
              ),
            ),
            new ListTile(
              title: new Text(" ヅ All About Sushi    ¯\_(๑❛ᴗ❛๑)_/¯ "),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.cancel),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        children: [
          Container(
            color: Colors.blueGrey,
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    p1,
                    hgap,
                    p2,
                    hgap,
                    p3,
                    hgap,
                    p4,
                    hgap,
                    p5,
                    hgap,
                    p6,
                    hgap
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: screenWidth,
            height: screenHeight,
            color: Colors.blueGrey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(
                                "assets/s1.jpg",
                                fit: BoxFit.cover,
                                width: screenWidth,
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(
                                "assets/s2.jpg",
                                fit: BoxFit.cover,
                                width: screenWidth,
                              ),
                            )),
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            "assets/s3.jpg",
                            fit: BoxFit.cover,
                            width: screenWidth,
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            "assets/s4.jpg",
                            fit: BoxFit.cover,
                            width: screenWidth,
                          ),
                        )),
                      ]),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/s5.jpg",
                        fit: BoxFit.cover,
                        width: screenWidth,

                        /// 2,
                        //height: screenHeight / 6,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ))),
    );
  }
}

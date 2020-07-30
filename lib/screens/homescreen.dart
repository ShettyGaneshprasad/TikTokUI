import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';
import 'package:tiktokUI/screens/activityScreen.dart';
import 'package:tiktokUI/screens/profileScreen.dart';
import 'package:tiktokUI/screens/searchScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool foryou = true;
  bool liked = false;
  bool added = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: RotatedBox(
          quarterTurns: 1,
          child: Container(
            color: Colors.blue,
            child: RotatedBox(
              quarterTurns: -1,
              child: Container(
                height: size.height,
                width: size.width,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: size.height,
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 20, bottom: 10),
                        child: SafeArea(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              followingORForyou(),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    bottomLeftVideoDetails(size),
                                    rightSideBar(size, context),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }

  Expanded rightSideBar(Size size, BuildContext context) {
    return Expanded(
      child: Container(
        height: size.height,
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.3,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 60,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        added = !added;
                      });
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/50592455?s=400&u=28c8f08d7fe165530a4d2d851cda87f59027726d&v=4"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          bottom: 3,
                          left: 18,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFC2D55),
                            ),
                            child: Container(
                              child: Center(
                                  child: added
                                      ? Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 15,
                                        )
                                      : Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 15,
                                        )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            liked = !liked;
                          });
                        },
                        child: Container(
                          child: liked
                              ? FaIcon(
                                  FontAwesomeIcons.heart,
                                  color: Colors.white,
                                  size: 29,
                                )
                              : Image.asset(
                                  'icons/corazon.png',
                                ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "25k",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    comments(context);
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'icons/comentarios.png',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Share.share('check out my website https://example.com');
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset('icons/compartir.png'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "5k",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                      ),
                      Center(
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1462804512123-465343c607ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"),
                                  fit: BoxFit.cover)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Future comments(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: 500,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Text(
                "1 comments",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://avatars2.githubusercontent.com/u/50592455?s=400&u=28c8f08d7fe165530a4d2d851cda87f59027726d&v=4"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("first comments"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container bottomLeftVideoDetails(Size size) {
    return Container(
      width: size.width * 0.8,
      height: size.height,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "User Name 😎😎",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Videos caption shown here which may be long 😛",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                color: Colors.white,
                size: 15,
              ),
              Flexible(
                child: Text(
                  "Song name used in the video",
                  style: TextStyle(color: Colors.white, height: 1.5),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Row followingORForyou() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              foryou = false;
            });
          },
          child: Text(
            "Following",
            style: TextStyle(
                color: foryou
                    ? Colors.white.withOpacity(0.3)
                    : Colors.white.withOpacity(1),
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "|",
          style: TextStyle(
            color: Colors.white.withOpacity(1),
            fontSize: 17,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              foryou = true;
            });
          },
          child: Text(
            "For You",
            style: TextStyle(
                color: foryou
                    ? Colors.white.withOpacity(1)
                    : Colors.white.withOpacity(0.3),
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }

  Widget bottomBar() {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('icons/inicio.png'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('icons/tendencias.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  child: Image.asset('icons/plus.png'),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ActivityScreen()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('icons/bandeja.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Activity",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('icons/yo.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

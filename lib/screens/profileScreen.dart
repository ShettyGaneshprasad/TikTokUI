import 'package:flutter/material.dart';
import 'package:tiktokUI/screens/login.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: buildDrawer(),
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: Text(
          "MR.ROBOT",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Container(
                width: 120,
                height: 120,
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
              Center(
                child: Text(
                  "@_mr_robot",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.grey,
                thickness: .5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "239",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "12",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "12",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "likes",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: .5,
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      "No video posted",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Text(
              "Privacy and Setting",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Language"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Help Center"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.add_to_home_screen),
              title: Text("Safety Center"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Community Guidelines"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.mobile_screen_share),
              title: Text("Terms of use"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.find_in_page),
              title: Text("Privacy Policy"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Copyright Policy"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              color: Colors.grey,
            ),
            Expanded(
              child: Container(),
            ),
            Divider(
              color: Colors.grey,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: ListTile(
                leading: Icon(Icons.language),
                title: Text("logout"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            // Row(
            //   children: <Widget>[
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Icon(Icons.language),
            //     ),
            //     Text("language")
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: Text(
          "All Activity",
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.message,
                  size: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "No Recent Activity",
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding discovertiles() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 5,
          ),
          dp(),
          SizedBox(
            width: 5,
          ),
          Column(
            children: <Widget>[
              Text(
                "name",
                style: TextStyle(fontSize: 22),
              ),
              Text(
                "@username",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  Container dp() {
    return Container(
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
    );
  }
}

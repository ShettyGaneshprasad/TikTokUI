import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: Text(
          "Discover",
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
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                    discovertiles(),
                  ],
                ),
              ),
            ],
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
